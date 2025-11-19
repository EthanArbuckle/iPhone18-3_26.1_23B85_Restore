@interface HUCardViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIgnoreSettingsDetailScrollLockIn;
- (BOOL)disablePullToUnlockSettings;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_nudgeScrollViewToPoint:(CGPoint)a3;
@end

@implementation HUCardViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUCardViewController" hasInstanceMethod:@"disablePullToUnlockSettings" withFullSignature:{"B", 0}];
  [v3 validateClass:@"HUCardViewController" hasInstanceMethod:@"forceUnlockSettings" withFullSignature:{"v", 0}];
  [v3 validateClass:@"HUCardViewController" hasInstanceMethod:@"_nudgeScrollViewToPoint:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
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

- (void)_nudgeScrollViewToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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