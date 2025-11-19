@interface SBUIRingViewLabelButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation SBUIRingViewLabelButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(SBUIRingViewLabelButtonAccessibility *)self safeValueForKey:@"label"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end