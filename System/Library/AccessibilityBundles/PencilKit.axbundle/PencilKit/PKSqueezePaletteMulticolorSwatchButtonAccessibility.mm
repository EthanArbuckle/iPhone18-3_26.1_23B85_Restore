@interface PKSqueezePaletteMulticolorSwatchButtonAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PKSqueezePaletteMulticolorSwatchButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(PKSqueezePaletteMulticolorSwatchButtonAccessibility *)self safeValueForKey:@"swatch"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(PKSqueezePaletteMulticolorSwatchButtonAccessibility *)self safeValueForKey:@"swatch"];
  v3 = [v2 accessibilityValue];

  return v3;
}

@end