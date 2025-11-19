@interface PBADeviceUnlockViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)deviceUnlocked:(id)a3;
@end

@implementation PBADeviceUnlockViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PBADeviceUnlockViewController" hasInstanceMethod:@"deviceUnlocked:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"PBADeviceUnlockViewController" hasInstanceMethod:@"_homeButtonPressed:" withFullSignature:{"v", "@", 0}];
}

- (void)deviceUnlocked:(id)a3
{
  v5.receiver = self;
  v5.super_class = PBADeviceUnlockViewControllerAccessibility;
  [(PBADeviceUnlockViewControllerAccessibility *)&v5 deviceUnlocked:a3];
  v3 = *MEMORY[0x29EDC7EA8];
  v4 = accessibilityLocalizedString(@"upgrade.announcement");
  UIAccessibilityPostNotification(v3, v4);
}

@end