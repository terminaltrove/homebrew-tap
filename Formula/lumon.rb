class Lumon < Formula
  desc "Macrodata refinement game for the terminal"
  homepage "https://github.com/terminaltrove/lumon"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/terminaltrove/lumon/releases/download/v#{version}/lumon_darwin_amd64"
      sha256 "4d00797225456bc6e39222f5d900cfe6f9be993cab3eda3dde0aaee5a6b9c4dd"
    end

    on_arm do
      url "https://github.com/terminaltrove/lumon/releases/download/v#{version}/lumon_darwin_arm64"
      sha256 "d4cea768cf97cc471077de77beef642cf01f86cb0037167f9ff3f04030fd3646"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/terminaltrove/lumon/releases/download/v#{version}/lumon_linux_amd64"
      sha256 "43a15023ec552f0128ece70e03a6ca88bc4e49b74680a72f23acf115092e538b"
    end

    on_arm do
      url "https://github.com/terminaltrove/lumon/releases/download/v#{version}/lumon_linux_arm64"
      sha256 "2d86e342ecb8d4ab27f615f9adae627a8aaf4e4938eab6fc9bcbddadc5aa96c3"
    end
  end

  def install
    bin.install Dir["lumon_*"].first => "lumon"
  end

  test do
    assert_match "lumon v#{version}", shell_output("#{bin}/lumon --version")
  end
end
