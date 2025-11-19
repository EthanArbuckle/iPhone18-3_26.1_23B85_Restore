@interface HUQuickControlSummaryNavigationBarTitleViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation HUQuickControlSummaryNavigationBarTitleViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(HUQuickControlSummaryNavigationBarTitleViewAccessibility *)self safeUIViewForKey:@"summaryView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(HUQuickControlSummaryNavigationBarTitleViewAccessibility *)self safeUIViewForKey:@"summaryView"];
  v3 = [v2 accessibilityValue];

  return v3;
}

@end