@interface AKColorPaletteButtonAccessibility
- (id)accessibilityValue;
@end

@implementation AKColorPaletteButtonAccessibility

- (id)accessibilityValue
{
  v2 = [(AKColorPaletteButtonAccessibility *)self safeValueForKey:@"color"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end