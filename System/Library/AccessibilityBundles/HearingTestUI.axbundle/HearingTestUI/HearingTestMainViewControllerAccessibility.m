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
  v3 = [v2 navigationItem];
  v4 = [v3 rightBarButtonItems];

  if ([v4 count] == 3)
  {
    v5 = [v4 objectAtIndexedSubscript:2];
    v6 = accessibilityLocalizedString(@"HEARING_TEST_DEBUG_BUTTON");
    [v5 setAccessibilityLabel:v6];
  }
}

@end