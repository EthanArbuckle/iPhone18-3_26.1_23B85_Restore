@interface AKColorPaletteButtonAccessibility
- (id)accessibilityValue;
@end

@implementation AKColorPaletteButtonAccessibility

- (id)accessibilityValue
{
  v2 = [(AKColorPaletteButtonAccessibility *)self safeValueForKey:@"color"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end