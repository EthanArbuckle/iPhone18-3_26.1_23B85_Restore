@interface SBUIRingViewLabelButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation SBUIRingViewLabelButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(SBUIRingViewLabelButtonAccessibility *)self safeValueForKey:@"label"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end