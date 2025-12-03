@interface SeymourUI_WorkoutCountdownViewAccessibility
- (void)accessibilityUpdateCountdownToStep:(int64_t)step;
@end

@implementation SeymourUI_WorkoutCountdownViewAccessibility

- (void)accessibilityUpdateCountdownToStep:(int64_t)step
{
  v7.receiver = self;
  v7.super_class = SeymourUI_WorkoutCountdownViewAccessibility;
  [(SeymourUI_WorkoutCountdownViewAccessibility *)&v7 accessibilityUpdateCountdownToStep:?];
  if ((step - 1) > 2)
  {
    if (step)
    {
      return;
    }

    v6 = *MEMORY[0x29EDC7EA8];
    step = accessibilityLocalizedString(@"ready");
    v5 = v6;
  }

  else
  {
    step = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%ld", step];
    v5 = *MEMORY[0x29EDC7EA8];
  }

  UIAccessibilityPostNotification(v5, step);
}

@end