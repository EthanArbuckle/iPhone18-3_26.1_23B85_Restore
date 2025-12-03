@interface HUQuickControlSummaryNavigationBarTitleViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation HUQuickControlSummaryNavigationBarTitleViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(HUQuickControlSummaryNavigationBarTitleViewAccessibility *)self safeUIViewForKey:@"summaryView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(HUQuickControlSummaryNavigationBarTitleViewAccessibility *)self safeUIViewForKey:@"summaryView"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

@end