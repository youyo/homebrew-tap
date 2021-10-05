# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Awssh < Formula
  desc "CLI tool to login ec2 instance"
  homepage "https://github.com/youyo/awssh"
  version "0.3.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/youyo/awssh/releases/download/v0.3.2/awssh_0.3.2_Darwin_x86_64.tar.gz"
      sha256 "b7f181380efb3eb285ad2f096894b86052efced863721a2ec00321bd214c4df7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/youyo/awssh/releases/download/v0.3.2/awssh_0.3.2_Linux_x86_64.tar.gz"
      sha256 "8c69fca8b0705f94326a4651d2dab98093c813ede6d8828654c8767b9bb4e8b9"
    end
  end

  def install
    bin.install "awssh"
    zsh_completion.install '_awssh'
  end

  test do
    system "#{bin}/awssh --version"
  end
end
