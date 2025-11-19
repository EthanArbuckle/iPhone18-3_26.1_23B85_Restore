@interface ContinuousReadingViewControllerAccessibility
- (id)_outerScrollView;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation ContinuousReadingViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = ContinuousReadingViewControllerAccessibility;
  [(ContinuousReadingViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(ContinuousReadingViewControllerAccessibility *)self safeValueForKey:@"_outerScrollView"];
}

- (id)_outerScrollView
{
  v4.receiver = self;
  v4.super_class = ContinuousReadingViewControllerAccessibility;
  v2 = [(ContinuousReadingViewControllerAccessibility *)&v4 _outerScrollView];
  [v2 setFocusGroupIdentifier:0];

  return v2;
}

@end