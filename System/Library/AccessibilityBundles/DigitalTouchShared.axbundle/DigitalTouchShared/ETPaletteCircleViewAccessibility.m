@interface ETPaletteCircleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)_accessibilityBounds;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation ETPaletteCircleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ETPaletteCircleView"];
  [v3 validateClass:@"ETPaletteCircleView" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [v3 validateClass:@"ETPaletteCircleView" isKindOfClass:@"UIView"];
}

- (unint64_t)accessibilityTraits
{
  v2 = [(ETPaletteCircleViewAccessibility *)self safeBoolForKey:@"isSelected"];
  v3 = *MEMORY[0x29EDC7FC0];
  if (!v2)
  {
    v3 = 0;
  }

  return *MEMORY[0x29EDC7F70] | v3;
}

- (id)accessibilityLabel
{
  v2 = [(ETPaletteCircleViewAccessibility *)self backgroundColor];
  v3 = [v2 safeValueForKey:@"_accessibilityColorDescription"];

  return v3;
}

- (id)accessibilityHint
{
  v8.receiver = self;
  v8.super_class = ETPaletteCircleViewAccessibility;
  v3 = [(ETPaletteCircleViewAccessibility *)&v8 accessibilityHint];
  if (v3)
  {
    v7.receiver = self;
    v7.super_class = ETPaletteCircleViewAccessibility;
    v4 = [(ETPaletteCircleViewAccessibility *)&v7 accessibilityHint];
  }

  else
  {
    v4 = accessibilityLocalizedString(@"pallete.circle.hint");
  }

  v5 = v4;

  return v5;
}

- (CGRect)_accessibilityBounds
{
  v2.receiver = self;
  v2.super_class = ETPaletteCircleViewAccessibility;
  [(ETPaletteCircleViewAccessibility *)&v2 _accessibilityBounds];
  return CGRectInset(v3, -3.0, -3.0);
}

@end