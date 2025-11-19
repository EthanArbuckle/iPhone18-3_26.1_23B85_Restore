@interface SeymourUI_PhoneSessionPortraitSummaryViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SeymourUI_PhoneSessionPortraitSummaryViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SeymourUI_PhoneSessionPortraitSummaryViewControllerAccessibility;
  [(SeymourUI_PhoneSessionPortraitSummaryViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SeymourUI_PhoneSessionPortraitSummaryViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v3 setAccessibilityViewIsModal:1];
}

@end