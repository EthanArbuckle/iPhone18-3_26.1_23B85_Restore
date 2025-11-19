@interface WHASetupStartViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axLabelDismissButton;
@end

@implementation WHASetupStartViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WHASetupStartViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"RepairStartViewController" hasInstanceVariable:@"_dismissButton" withType:"UIButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = WHASetupStartViewControllerAccessibility;
  [(WHASetupStartViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(WHASetupStartViewControllerAccessibility *)self _axLabelDismissButton];
}

- (void)_axLabelDismissButton
{
  v3 = [(WHASetupStartViewControllerAccessibility *)self safeValueForKey:@"_dismissButton"];
  v4 = accessibilityLocalizedString(@"dismiss.button");
  [v3 setAccessibilityLabel:v4];

  v5 = [(WHASetupStartViewControllerAccessibility *)self safeValueForKey:@"_dismissButton"];
  [v5 _accessibilitySetUserTestingIsCancelButton:1];
}

@end