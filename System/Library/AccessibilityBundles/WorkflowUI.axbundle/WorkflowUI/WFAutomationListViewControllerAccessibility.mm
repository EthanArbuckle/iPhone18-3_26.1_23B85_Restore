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
  navigationItem = [v2 navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  v5 = accessibilityLocalizedString(@"create.automation");
  [rightBarButtonItem setAccessibilityLabel:v5];
}

@end