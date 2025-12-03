@interface PBADeviceUnlockViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)deviceUnlocked:(id)unlocked;
@end

@implementation PBADeviceUnlockViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PBADeviceUnlockViewController" hasInstanceMethod:@"deviceUnlocked:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"PBADeviceUnlockViewController" hasInstanceMethod:@"_homeButtonPressed:" withFullSignature:{"v", "@", 0}];
}

- (void)deviceUnlocked:(id)unlocked
{
  v5.receiver = self;
  v5.super_class = PBADeviceUnlockViewControllerAccessibility;
  [(PBADeviceUnlockViewControllerAccessibility *)&v5 deviceUnlocked:unlocked];
  v3 = *MEMORY[0x29EDC7EA8];
  v4 = accessibilityLocalizedString(@"upgrade.announcement");
  UIAccessibilityPostNotification(v3, v4);
}

@end