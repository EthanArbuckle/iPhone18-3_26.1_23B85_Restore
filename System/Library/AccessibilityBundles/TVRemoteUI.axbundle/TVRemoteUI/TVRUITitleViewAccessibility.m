@interface TVRUITitleViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation TVRUITitleViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TVRUITitleViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(TVRUITitleViewAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v3 = [(TVRUITitleViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TVRUITitleViewAccessibility;
    v6 = [(TVRUITitleViewAccessibility *)&v9 accessibilityLabel];
  }

  v7 = v6;

  return v7;
}

@end