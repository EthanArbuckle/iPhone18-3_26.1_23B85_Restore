@interface ETPaletteCircleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)_accessibilityBounds;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation ETPaletteCircleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ETPaletteCircleView"];
  [validationsCopy validateClass:@"ETPaletteCircleView" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"ETPaletteCircleView" isKindOfClass:@"UIView"];
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
  backgroundColor = [(ETPaletteCircleViewAccessibility *)self backgroundColor];
  v3 = [backgroundColor safeValueForKey:@"_accessibilityColorDescription"];

  return v3;
}

- (id)accessibilityHint
{
  v8.receiver = self;
  v8.super_class = ETPaletteCircleViewAccessibility;
  accessibilityHint = [(ETPaletteCircleViewAccessibility *)&v8 accessibilityHint];
  if (accessibilityHint)
  {
    v7.receiver = self;
    v7.super_class = ETPaletteCircleViewAccessibility;
    accessibilityHint2 = [(ETPaletteCircleViewAccessibility *)&v7 accessibilityHint];
  }

  else
  {
    accessibilityHint2 = accessibilityLocalizedString(@"pallete.circle.hint");
  }

  v5 = accessibilityHint2;

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