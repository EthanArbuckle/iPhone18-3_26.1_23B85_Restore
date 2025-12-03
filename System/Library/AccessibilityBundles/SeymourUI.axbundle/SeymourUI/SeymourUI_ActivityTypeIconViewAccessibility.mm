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
    accessibilityLabel = [(SeymourUI_ActivityTypeIconViewAccessibility *)&v6 accessibilityLabel];
  }

  else
  {
    accessibilityLabel = _accessibilityStringForHealthKitWorkoutType(v3);
  }

  return accessibilityLabel;
}

@end