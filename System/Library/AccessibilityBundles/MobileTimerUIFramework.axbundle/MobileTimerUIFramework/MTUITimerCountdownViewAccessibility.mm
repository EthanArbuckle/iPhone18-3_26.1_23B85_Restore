@interface MTUITimerCountdownViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MTUITimerCountdownViewAccessibility

- (id)accessibilityLabel
{
  v7.receiver = self;
  v7.super_class = MTUITimerCountdownViewAccessibility;
  v2 = [(MTUITimerCountdownViewAccessibility *)&v7 accessibilityLabel];
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"timer.countdown.text");
  v5 = [v3 stringWithFormat:v4, v2];

  return v5;
}

@end