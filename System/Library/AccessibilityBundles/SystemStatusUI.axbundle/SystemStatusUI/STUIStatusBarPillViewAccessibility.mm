@interface STUIStatusBarPillViewAccessibility
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (id)accessibilityElements;
- (id)accessibilityHint;
- (unint64_t)accessibilityTraits;
@end

@implementation STUIStatusBarPillViewAccessibility

- (BOOL)isAccessibilityElement
{
  accessibilityLabel = [(STUIStatusBarPillViewAccessibility *)self accessibilityLabel];
  v3 = [accessibilityLabel length] != 0;

  return v3;
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  accessibilityLabel = [(STUIStatusBarPillViewAccessibility *)self accessibilityLabel];
  v3 = [accessibilityLabel length] != 0;

  return v3;
}

- (id)accessibilityElements
{
  if ([(STUIStatusBarPillViewAccessibility *)self isAccessibilityElement])
  {
    v2 = 0;
  }

  else
  {
    v2 = MEMORY[0x29EDB8E90];
  }

  return v2;
}

- (id)accessibilityHint
{
  v3 = accessibilityLocalizedString(@"status.backgroundactivity.hint");
  v6 = AXStatusBarItemHint(self);
  v4 = __UIAXStringForVariables();

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarPillViewAccessibility;
  v3 = *MEMORY[0x29EDC7580] | [(STUIStatusBarPillViewAccessibility *)&v7 accessibilityTraits]| *MEMORY[0x29EDC7F70];
  v4 = AXStatusBarPillTimeView(self);

  v5 = *MEMORY[0x29EDC7FF0];
  if (!v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

- (BOOL)canBecomeFocused
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarPillViewAccessibility;
  if ([(STUIStatusBarPillViewAccessibility *)&v6 canBecomeFocused])
  {
    return 1;
  }

  accessibilityLabel = [(STUIStatusBarPillViewAccessibility *)self accessibilityLabel];
  v3 = [accessibilityLabel length] != 0;

  return v3;
}

@end