@interface HKActivityRingViewAccessibility
- (id)accessibilityValue;
@end

@implementation HKActivityRingViewAccessibility

- (id)accessibilityValue
{
  v2 = [(HKActivityRingViewAccessibility *)self safeValueForKey:@"activitySummary"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end