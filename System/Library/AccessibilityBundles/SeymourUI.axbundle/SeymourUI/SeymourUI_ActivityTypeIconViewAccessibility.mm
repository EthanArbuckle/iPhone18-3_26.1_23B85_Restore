@interface SeymourUI_ActivityTypeIconViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SeymourUI_ActivityTypeIconViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(SeymourUI_ActivityTypeIconViewAccessibility *)self safeIntegerForKey:@"accessibilityActivityType"];
  if (v3 < 1)
  {
    v6.receiver = self;
    v6.super_class = SeymourUI_ActivityTypeIconViewAccessibility;
    v4 = [(SeymourUI_ActivityTypeIconViewAccessibility *)&v6 accessibilityLabel];
  }

  else
  {
    v4 = _accessibilityStringForHealthKitWorkoutType(v3);
  }

  return v4;
}

@end