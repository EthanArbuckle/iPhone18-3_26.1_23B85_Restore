@interface SKUIPlayButtonControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_showPlayIndicator:(BOOL)indicator;
- (void)beginIndeterminateAnimation;
- (void)endIndeterminateAnimation;
@end

@implementation SKUIPlayButtonControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIPlayButtonControl" hasInstanceMethod:@"_showPlayIndicator:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SKUIPlayButtonControl" hasInstanceMethod:@"beginIndeterminateAnimation" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SKUIPlayButtonControl" hasInstanceMethod:@"endIndeterminateAnimation" withFullSignature:{"v", 0}];
}

- (void)_showPlayIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  v7.receiver = self;
  v7.super_class = SKUIPlayButtonControlAccessibility;
  [(SKUIPlayButtonControlAccessibility *)&v7 _showPlayIndicator:?];
  if (indicatorCopy)
  {
    v5 = @"play.button";
  }

  else
  {
    v5 = @"pause.button";
  }

  v6 = accessibilitySKUILocalizedString(v5);
  [(SKUIPlayButtonControlAccessibility *)self setAccessibilityLabel:v6];
}

- (id)accessibilityValue
{
  [(SKUIPlayButtonControlAccessibility *)self safeFloatForKey:@"_progress"];
  if (v2 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v3 = MEMORY[0x29EDBA0F8];
    v4 = accessibilitySKUILocalizedString(@"playback.progress");
    v5 = AXFormatFloatWithPercentage();
    v6 = [v3 stringWithFormat:v4, v5];
  }

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SKUIPlayButtonControlAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SKUIPlayButtonControlAccessibility *)&v3 accessibilityTraits];
}

- (void)beginIndeterminateAnimation
{
  v4.receiver = self;
  v4.super_class = SKUIPlayButtonControlAccessibility;
  [(SKUIPlayButtonControlAccessibility *)&v4 beginIndeterminateAnimation];
  v2 = *MEMORY[0x29EDC7EA8];
  v3 = accessibilitySKUILocalizedString(@"indeterminate.playback");
  UIAccessibilityPostNotification(v2, v3);
}

- (void)endIndeterminateAnimation
{
  v2.receiver = self;
  v2.super_class = SKUIPlayButtonControlAccessibility;
  [(SKUIPlayButtonControlAccessibility *)&v2 endIndeterminateAnimation];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end