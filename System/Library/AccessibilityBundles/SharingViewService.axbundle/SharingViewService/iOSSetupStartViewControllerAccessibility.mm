@interface iOSSetupStartViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation iOSSetupStartViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"iOSSetupStartViewController" hasInstanceVariable:@"_dismissButton" withType:"UIButton"];
  [validationsCopy validateClass:@"iOSSetupStartViewController" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"iOSSetupStartViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = iOSSetupStartViewControllerAccessibility;
  [(iOSSetupStartViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(iOSSetupStartViewControllerAccessibility *)self safeValueForKey:@"_dismissButton"];
  v4 = accessibilityLocalizedString(@"dismiss.button");
  [v3 setAccessibilityLabel:v4];

  v5 = [(iOSSetupStartViewControllerAccessibility *)self safeValueForKey:@"_dismissButton"];
  [v5 _accessibilitySetUserTestingIsCancelButton:1];

  v6 = [(iOSSetupStartViewControllerAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v6 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

@end