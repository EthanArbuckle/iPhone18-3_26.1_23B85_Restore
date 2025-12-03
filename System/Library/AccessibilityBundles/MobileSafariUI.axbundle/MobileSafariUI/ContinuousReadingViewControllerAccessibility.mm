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
  _outerScrollView = [(ContinuousReadingViewControllerAccessibility *)&v4 _outerScrollView];
  [_outerScrollView setFocusGroupIdentifier:0];

  return _outerScrollView;
}

@end