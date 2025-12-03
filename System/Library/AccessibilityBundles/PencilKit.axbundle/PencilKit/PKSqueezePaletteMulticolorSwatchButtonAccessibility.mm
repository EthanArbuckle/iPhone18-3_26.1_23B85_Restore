@interface PKSqueezePaletteMulticolorSwatchButtonAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PKSqueezePaletteMulticolorSwatchButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(PKSqueezePaletteMulticolorSwatchButtonAccessibility *)self safeValueForKey:@"swatch"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(PKSqueezePaletteMulticolorSwatchButtonAccessibility *)self safeValueForKey:@"swatch"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

@end