@interface SessionTimerViewAccessibility
- (void)updateDuration:(double)a3;
@end

@implementation SessionTimerViewAccessibility

- (void)updateDuration:(double)a3
{
  v10.receiver = self;
  v10.super_class = SessionTimerViewAccessibility;
  [(SessionTimerViewAccessibility *)&v10 updateDuration:?];
  v5 = (a3 % 60);
  v6 = MEMORY[0x29EDBA0F8];
  if (a3 < 60)
  {
    v7 = accessibilityLocalizedString(@"countdown.short.format");
    [v6 stringWithFormat:v7, v5, v9];
  }

  else
  {
    v7 = accessibilityLocalizedString(@"countdown.long.format");
    [v6 stringWithFormat:v7, a3 / 0x3CuLL, v5];
  }
  v8 = ;

  [(SessionTimerViewAccessibility *)self setAccessibilityLabel:v8];
}

@end