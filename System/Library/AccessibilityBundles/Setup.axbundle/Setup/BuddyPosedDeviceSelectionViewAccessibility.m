@interface BuddyPosedDeviceSelectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation BuddyPosedDeviceSelectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BuddyPosedDeviceSelectionView" hasInstanceMethod:@"leftContainer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyPosedDeviceSelectionView" hasInstanceMethod:@"centerContainer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyPosedDeviceSelectionView" hasInstanceMethod:@"rightContainer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyPosedDeviceSelectionView" hasInstanceMethod:@"leftPosedView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyPosedDeviceSelectionView" hasInstanceMethod:@"centerPosedView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyPosedDeviceSelectionView" hasInstanceMethod:@"rightPosedView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v18.receiver = self;
  v18.super_class = BuddyPosedDeviceSelectionViewAccessibility;
  [(BuddyPosedDeviceSelectionViewAccessibility *)&v18 _accessibilityLoadAccessibilityInformation];
  v3 = [(BuddyPosedDeviceSelectionViewAccessibility *)self safeUIViewForKey:@"leftContainer"];
  v4 = [(BuddyPosedDeviceSelectionViewAccessibility *)self safeUIViewForKey:@"centerContainer"];
  v5 = [(BuddyPosedDeviceSelectionViewAccessibility *)self safeUIViewForKey:@"rightContainer"];
  v6 = [(BuddyPosedDeviceSelectionViewAccessibility *)self safeUIViewForKey:@"leftPosedView"];
  v7 = [(BuddyPosedDeviceSelectionViewAccessibility *)self safeUIViewForKey:@"centerPosedView"];
  v8 = [(BuddyPosedDeviceSelectionViewAccessibility *)self safeUIViewForKey:@"rightPosedView"];
  [v3 _accessibilitySetUserDefinedMediaAnalysisOptions:&unk_2A22D8530];
  [v4 _accessibilitySetUserDefinedMediaAnalysisOptions:&unk_2A22D8530];
  [v5 _accessibilitySetUserDefinedMediaAnalysisOptions:&unk_2A22D8530];
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __88__BuddyPosedDeviceSelectionViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v16[3] = &unk_29F2F5B88;
  v17 = v6;
  v9 = v6;
  [v3 setAccessibilityActivationPointBlock:v16];
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __88__BuddyPosedDeviceSelectionViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v14[3] = &unk_29F2F5B88;
  v15 = v7;
  v10 = v7;
  [v4 setAccessibilityActivationPointBlock:v14];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __88__BuddyPosedDeviceSelectionViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v12[3] = &unk_29F2F5B88;
  v13 = v8;
  v11 = v8;
  [v5 setAccessibilityActivationPointBlock:v12];
}

@end