@interface CCUIDisplayBackgroundViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CCUIDisplayBackgroundViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CCUIDisplayBackgroundViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CCUIDisplayBackgroundViewController" hasInstanceMethod:@"nightShiftButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CCUIDisplayBackgroundViewController" hasInstanceMethod:@"trueToneButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CCUIDisplayBackgroundViewControllerAccessibility;
  [(CCUIDisplayBackgroundViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(CCUIDisplayBackgroundViewControllerAccessibility *)self safeValueForKey:@"nightShiftButton"];
  [v3 _accessibilityLoadAccessibilityInformation];

  v4 = [(CCUIDisplayBackgroundViewControllerAccessibility *)self safeValueForKey:@"trueToneButton"];
  [v4 _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CCUIDisplayBackgroundViewControllerAccessibility;
  [(CCUIDisplayBackgroundViewControllerAccessibility *)&v3 viewDidLoad];
  [(CCUIDisplayBackgroundViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end