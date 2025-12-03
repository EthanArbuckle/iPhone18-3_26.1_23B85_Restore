@interface HRSpeedBumpViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HRSpeedBumpViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HRSpeedBumpViewController"];
  [validationsCopy validateClass:@"HRSpeedBumpViewController" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HRSpeedBumpViewControllerAccessibility;
  [(HRSpeedBumpViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(HRSpeedBumpViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityTraits = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
}

@end