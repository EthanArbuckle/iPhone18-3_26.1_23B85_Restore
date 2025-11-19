@interface CFXPlayButtonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)playButtonTapped:(id)a3;
@end

@implementation CFXPlayButtonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CFXPlayButtonView" hasInstanceMethod:@"playButtonTapped:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CFXPlayButtonView" hasInstanceMethod:@"playButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(CFXPlayButtonViewAccessibility *)self safeValueForKey:@"playButton"];
  v3 = [v2 safeBoolForKey:@"selected"];

  if (v3)
  {
    v4 = @"pause.button";
  }

  else
  {
    v4 = @"play.button";
  }

  v5 = accessibilityLocalizedString(v4);

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CFXPlayButtonViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CFXPlayButtonViewAccessibility *)&v3 accessibilityTraits];
}

- (void)playButtonTapped:(id)a3
{
  v6.receiver = self;
  v6.super_class = CFXPlayButtonViewAccessibility;
  [(CFXPlayButtonViewAccessibility *)&v6 playButtonTapped:a3];
  v4 = *MEMORY[0x29EDC7ED8];
  v5 = [(CFXPlayButtonViewAccessibility *)self accessibilityContainer];
  UIAccessibilityPostNotification(v4, v5);
}

@end