# Package

version       = "0.1.0"
author        = "Thiago Navarro"
description   = "Generates random SVG avatars"
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim >= 1.5.1"
requires "nimsvg"

bin = @["randomAvatar"]
binDir = "build"

task build_release, "Builds the release version":
  exec "nimble -d:release build"
task build_danger, "Builds the danger version":
  exec "nimble -d:danger build"
task gen_docs, "Generates the documentation":
  exec "nim doc --project --out:docs src/randomSvg.nim"
