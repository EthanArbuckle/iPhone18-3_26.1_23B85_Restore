@interface SeymourUI_WorkoutCountdownViewAccessibility
- (void)accessibilityUpdateCountdownToStep:(int64_t)a3;
@end

@implementation SeymourUI_WorkoutCountdownViewAccessibility

- (void)accessibilityUpdateCountdownToStep:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = SeymourUI_WorkoutCountdownViewAccessibility;
  [(SeymourUI_WorkoutCountdownViewAccessibility *)&v7 accessibilityUpdateCountdownToStep:?];
  if ((a3 - 1) > 2)
  {
    if (a3)
    {
      return;
    }

    v6 = *MEMORY[0x29EDC7EA8];
    v4 = accessibilityLocalizedString(@"ready");
    v5 = v6;
  }

  else
  {
    v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%ld", a3];
    v5 = *MEMORY[0x29EDC7EA8];
  }

  UIAccessibilityPostNotification(v5, v4);
}

@end