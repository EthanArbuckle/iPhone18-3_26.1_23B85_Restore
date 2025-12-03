@interface HKActivityRingViewAccessibility
- (id)accessibilityValue;
@end

@implementation HKActivityRingViewAccessibility

- (id)accessibilityValue
{
  v2 = [(HKActivityRingViewAccessibility *)self safeValueForKey:@"activitySummary"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end