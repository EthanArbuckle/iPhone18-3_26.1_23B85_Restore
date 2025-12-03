@interface HearingTestMainViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HearingTestMainViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = HearingTestMainViewControllerAccessibility;
  [(HearingTestMainViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  navigationItem = [v2 navigationItem];
  rightBarButtonItems = [navigationItem rightBarButtonItems];

  if ([rightBarButtonItems count] == 3)
  {
    v5 = [rightBarButtonItems objectAtIndexedSubscript:2];
    v6 = accessibilityLocalizedString(@"HEARING_TEST_DEBUG_BUTTON");
    [v5 setAccessibilityLabel:v6];
  }
}

@end