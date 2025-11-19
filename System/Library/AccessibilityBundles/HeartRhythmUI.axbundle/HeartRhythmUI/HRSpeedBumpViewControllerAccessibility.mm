@interface HRSpeedBumpViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HRSpeedBumpViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HRSpeedBumpViewController"];
  [v3 validateClass:@"HRSpeedBumpViewController" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HRSpeedBumpViewControllerAccessibility;
  [(HRSpeedBumpViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(HRSpeedBumpViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | v4];
}

@end