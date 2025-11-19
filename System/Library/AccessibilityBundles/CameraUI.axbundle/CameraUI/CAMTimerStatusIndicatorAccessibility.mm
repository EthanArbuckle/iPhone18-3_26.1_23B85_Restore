@interface CAMTimerStatusIndicatorAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CAMTimerStatusIndicatorAccessibility

- (id)accessibilityValue
{
  v2 = [(CAMTimerStatusIndicatorAccessibility *)self safeIntegerForKey:@"timerDuration"];

  return accessibilityStringForTimeDuration(v2, v3);
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMTimerStatusIndicatorAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMTimerStatusIndicatorAccessibility *)&v3 accessibilityTraits];
}

@end