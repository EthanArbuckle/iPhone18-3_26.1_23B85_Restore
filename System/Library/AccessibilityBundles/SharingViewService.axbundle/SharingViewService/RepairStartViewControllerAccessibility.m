@interface RepairStartViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axLabelDismissButton;
@end

@implementation RepairStartViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"RepairStartViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"RepairStartViewController" hasInstanceVariable:@"_dismissButton" withType:"UIButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = RepairStartViewControllerAccessibility;
  [(RepairStartViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(RepairStartViewControllerAccessibility *)self _axLabelDismissButton];
}

- (void)_axLabelDismissButton
{
  v3 = [(RepairStartViewControllerAccessibility *)self safeValueForKey:@"_dismissButton"];
  v4 = accessibilityLocalizedString(@"dismiss.button");
  [v3 setAccessibilityLabel:v4];

  v5 = [(RepairStartViewControllerAccessibility *)self safeValueForKey:@"_dismissButton"];
  [v5 _accessibilitySetUserTestingIsCancelButton:1];
}

@end