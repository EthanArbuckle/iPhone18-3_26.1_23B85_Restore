@interface SUUIPlayButtonControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_showPlayIndicator:(BOOL)a3;
- (void)beginIndeterminateAnimation;
- (void)endIndeterminateAnimation;
@end

@implementation SUUIPlayButtonControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIPlayButtonControl" hasInstanceMethod:@"_showPlayIndicator:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"SUUIPlayButtonControl" hasInstanceMethod:@"beginIndeterminateAnimation" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SUUIPlayButtonControl" hasInstanceMethod:@"endIndeterminateAnimation" withFullSignature:{"v", 0}];
}

- (void)_showPlayIndicator:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = SUUIPlayButtonControlAccessibility;
  [(SUUIPlayButtonControlAccessibility *)&v7 _showPlayIndicator:?];
  if (v3)
  {
    v5 = @"play.button";
  }

  else
  {
    v5 = @"pause.button";
  }

  v6 = accessibilityLocalizedString(v5);
  [(SUUIPlayButtonControlAccessibility *)self setAccessibilityLabel:v6];
}

- (id)accessibilityValue
{
  [(SUUIPlayButtonControlAccessibility *)self safeFloatForKey:@"_progress"];
  if (v2 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v3 = MEMORY[0x29EDBA0F8];
    v4 = accessibilityLocalizedString(@"playback.progress");
    v5 = AXFormatFloatWithPercentage();
    v6 = [v3 stringWithFormat:v4, v5];
  }

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SUUIPlayButtonControlAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SUUIPlayButtonControlAccessibility *)&v3 accessibilityTraits];
}

- (void)beginIndeterminateAnimation
{
  v4.receiver = self;
  v4.super_class = SUUIPlayButtonControlAccessibility;
  [(SUUIPlayButtonControlAccessibility *)&v4 beginIndeterminateAnimation];
  v2 = *MEMORY[0x29EDC7EA8];
  v3 = accessibilityLocalizedString(@"indeterminate.playback");
  UIAccessibilityPostNotification(v2, v3);
}

- (void)endIndeterminateAnimation
{
  v2.receiver = self;
  v2.super_class = SUUIPlayButtonControlAccessibility;
  [(SUUIPlayButtonControlAccessibility *)&v2 endIndeterminateAnimation];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end