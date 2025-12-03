@interface SeymourUI_SessionPromptAlertViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLayoutSubviews;
@end

@implementation SeymourUI_SessionPromptAlertViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SeymourUI.SessionPromptAlertViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SeymourUI.SessionPromptAlertViewController" hasSwiftField:@"titleLabel" withSwiftType:"UILabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SeymourUI_SessionPromptAlertViewControllerAccessibility;
  [(SeymourUI_SessionPromptAlertViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SeymourUI_SessionPromptAlertViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v3 setAccessibilityViewIsModal:1];
  v4 = [(SeymourUI_SessionPromptAlertViewControllerAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SeymourUI_SessionPromptAlertViewControllerAccessibility;
  [(SeymourUI_SessionPromptAlertViewControllerAccessibility *)&v3 viewDidLayoutSubviews];
  [(SeymourUI_SessionPromptAlertViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end