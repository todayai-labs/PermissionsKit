// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "PermissionsKit",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v18),
        .macOS(.v14),
    ],
    products: [
        .library(name: "CameraPermission", targets: ["CameraPermission"]),
        .library(name: "PhotoLibraryPermission", targets: ["PhotoLibraryPermission"]),
        .library(name: "NotificationPermission", targets: ["NotificationPermission"]),
        .library(name: "MicrophonePermission", targets: ["MicrophonePermission"]),
        .library(name: "CalendarPermission", targets: ["CalendarPermission"]),
        .library(name: "ContactsPermission", targets: ["ContactsPermission"]),
        .library(name: "RemindersPermission", targets: ["RemindersPermission"]),
        .library(name: "LocationPermission", targets: ["LocationPermission"]),
        .library(name: "MediaLibraryPermission", targets: ["MediaLibraryPermission"]),
    ],
    targets: [
        .target(
            name: "PermissionsKit",
            resources: [.process("Resources")],
            swiftSettings: [.define("PERMISSIONSKIT_SPM")]
        ),
        .target(
            name: "CameraPermission",
            dependencies: ["PermissionsKit"],
            swiftSettings: [.define("PERMISSIONSKIT_CAMERA"), .define("PERMISSIONSKIT_SPM")]
        ),
        .target(
            name: "PhotoLibraryPermission",
            dependencies: ["PermissionsKit"],
            swiftSettings: [.define("PERMISSIONSKIT_PHOTOLIBRARY"), .define("PERMISSIONSKIT_SPM")]
        ),
        .target(
            name: "NotificationPermission",
            dependencies: ["PermissionsKit"],
            swiftSettings: [.define("PERMISSIONSKIT_NOTIFICATION"), .define("PERMISSIONSKIT_SPM")]
        ),
        .target(
            name: "MicrophonePermission",
            dependencies: ["PermissionsKit"],
            swiftSettings: [.define("PERMISSIONSKIT_MICROPHONE"), .define("PERMISSIONSKIT_SPM")]
        ),
        .target(
            name: "CalendarPermission",
            dependencies: ["PermissionsKit"],
            swiftSettings: [.define("PERMISSIONSKIT_CALENDAR"), .define("PERMISSIONSKIT_SPM")]
        ),
        .target(
            name: "ContactsPermission",
            dependencies: ["PermissionsKit"],
            swiftSettings: [.define("PERMISSIONSKIT_CONTACTS"), .define("PERMISSIONSKIT_SPM")]
        ),
        .target(
            name: "RemindersPermission",
            dependencies: ["PermissionsKit"],
            swiftSettings: [.define("PERMISSIONSKIT_REMINDERS"), .define("PERMISSIONSKIT_SPM")]
        ),
        .target(
            name: "LocationPermission",
            dependencies: ["PermissionsKit"],
            swiftSettings: [.define("PERMISSIONSKIT_LOCATION"), .define("PERMISSIONSKIT_SPM")]
        ),
        .target(
            name: "MediaLibraryPermission",
            dependencies: ["PermissionsKit"],
            swiftSettings: [.define("PERMISSIONSKIT_MEDIA_LIBRARY"), .define("PERMISSIONSKIT_SPM")]
        ),
    ],
    swiftLanguageModes: [.v6]
)
