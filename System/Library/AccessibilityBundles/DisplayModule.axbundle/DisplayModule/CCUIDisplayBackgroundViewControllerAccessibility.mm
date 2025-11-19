@interface CCUIDisplayBackgroundViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CCUIDisplayBackgroundViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CCUIDisplayBackgroundViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CCUIDisplayBackgroundViewController" hasInstanceMethod:@"nightShiftButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CCUIDisplayBackgroundViewController" hasInstanceMethod:@"trueToneButton" withFullSignature:{"@", 0}];
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