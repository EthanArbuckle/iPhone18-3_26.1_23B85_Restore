@interface HUCardViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIgnoreSettingsDetailScrollLockIn;
- (BOOL)disablePullToUnlockSettings;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_nudgeScrollViewToPoint:(CGPoint)point;
@end

@implementation HUCardViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUCardViewController" hasInstanceMethod:@"disablePullToUnlockSettings" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"HUCardViewController" hasInstanceMethod:@"forceUnlockSettings" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"HUCardViewController" hasInstanceMethod:@"_nudgeScrollViewToPoint:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
}

- (BOOL)_accessibilityIgnoreSettingsDetailScrollLockIn
{
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    return 1;
  }

  return MEMORY[0x2A1C6A990]();
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = HUCardViewControllerAccessibility;
  [(HUCardViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  if ([(HUCardViewControllerAccessibility *)self _accessibilityIgnoreSettingsDetailScrollLockIn])
  {
    v3 = [(HUCardViewControllerAccessibility *)self safeValueForKey:@"forceUnlockSettings"];
  }
}

- (void)_nudgeScrollViewToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(HUCardViewControllerAccessibility *)self _accessibilityIgnoreSettingsDetailScrollLockIn])
  {
    v6.receiver = self;
    v6.super_class = HUCardViewControllerAccessibility;
    [(HUCardViewControllerAccessibility *)&v6 _nudgeScrollViewToPoint:x, y];
  }
}

- (BOOL)disablePullToUnlockSettings
{
  if ([(HUCardViewControllerAccessibility *)self _accessibilityIgnoreSettingsDetailScrollLockIn])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = HUCardViewControllerAccessibility;
  return [(HUCardViewControllerAccessibility *)&v4 disablePullToUnlockSettings];
}

@end