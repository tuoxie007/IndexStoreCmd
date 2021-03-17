// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IndexStoreCmd",
    platforms: [.macOS(.v10_13)],
    dependencies: [
        .package(name: "IndexStoreDB", url: "https://github.com/apple/indexstore-db.git", .branch("swift-5.2.5-RELEASE")),
        .package(name: "swift-tools-support-core", url: "https://github.com/apple/swift-tools-support-core", from: "0.2.0"),
        .package(name: "swift-argument-parser", url: "https://github.com/apple/swift-argument-parser.git", from: "0.4.1"),
        .package(name: "XcodeGen", url: "https://github.com/yonaskolb/XcodeGen.git", from: "2.19.0"),
    ],
    targets: [
        .target(
            name: "IndexStoreCmd",
            dependencies: [
                "IndexStoreDB",
                .product(name: "SwiftToolsSupport", package: "swift-tools-support-core"),
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "XcodeGenKit", package: "XcodeGen"),
            ]
        ),
    ]
)
