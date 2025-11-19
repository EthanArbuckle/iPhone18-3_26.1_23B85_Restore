@interface CCUIFlashlightModuleAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CCUIFlashlightModuleAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CCUIFlashlightModuleAccessibility;
  [(CCUIFlashlightModuleAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CCUIFlashlightModuleAccessibility *)self safeValueForKey:@"contentViewController"];
  [v3 _accessibilityLoadAccessibilityInformation];
}

@end