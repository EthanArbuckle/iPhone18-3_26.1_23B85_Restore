@interface WFAutomationListViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation WFAutomationListViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = WFAutomationListViewControllerAccessibility;
  [(WFAutomationListViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 navigationItem];
  v4 = [v3 rightBarButtonItem];
  v5 = accessibilityLocalizedString(@"create.automation");
  [v4 setAccessibilityLabel:v5];
}

@end