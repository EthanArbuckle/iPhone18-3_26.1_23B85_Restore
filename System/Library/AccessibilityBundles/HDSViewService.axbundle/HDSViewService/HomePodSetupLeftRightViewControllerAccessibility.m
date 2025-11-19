@interface HomePodSetupLeftRightViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkupStereoButtons;
- (void)viewDidLoad;
@end

@implementation HomePodSetupLeftRightViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HDSViewService.HomePodSetupLeftRightViewController" hasSwiftFieldOfAnyClass:@"leftButton"];
  [v3 validateClass:@"HDSViewService.HomePodSetupLeftRightViewController" hasSwiftFieldOfAnyClass:@"rightButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = HomePodSetupLeftRightViewControllerAccessibility;
  [(HomePodSetupLeftRightViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(HomePodSetupLeftRightViewControllerAccessibility *)self _accessibilityMarkupStereoButtons];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HomePodSetupLeftRightViewControllerAccessibility;
  [(HomePodSetupLeftRightViewControllerAccessibility *)&v3 viewDidLoad];
  [(HomePodSetupLeftRightViewControllerAccessibility *)self _accessibilityMarkupStereoButtons];
}

- (void)_accessibilityMarkupStereoButtons
{
  v3 = [(HomePodSetupLeftRightViewControllerAccessibility *)self safeSwiftValueForKey:@"leftButton"];
  v4 = accessibilityLocalizedString(@"left.stereo.button");
  [v3 setAccessibilityLabel:v4];

  v6 = [(HomePodSetupLeftRightViewControllerAccessibility *)self safeSwiftValueForKey:@"rightButton"];
  v5 = accessibilityLocalizedString(@"right.stereo.button");
  [v6 setAccessibilityLabel:v5];
}

@end