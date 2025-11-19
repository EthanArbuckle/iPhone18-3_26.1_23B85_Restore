@interface _UIActivityGroupActivityCellInvertColorsAccessibility
- (_UIActivityGroupActivityCellInvertColorsAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadInvertColors;
- (void)setHighlightedImageView:(id)a3;
@end

@implementation _UIActivityGroupActivityCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v3 = [(_UIActivityGroupActivityCellInvertColorsAccessibility *)self safeValueForKey:@"imageView"];
  [v3 setAccessibilityIgnoresInvertColors:1];

  v4 = [(_UIActivityGroupActivityCellInvertColorsAccessibility *)self safeValueForKey:@"highlightedImageView"];
  [v4 setAccessibilityIgnoresInvertColors:1];
}

- (void)setHighlightedImageView:(id)a3
{
  v4 = a3;
  [v4 setAccessibilityIgnoresInvertColors:1];
  v5.receiver = self;
  v5.super_class = _UIActivityGroupActivityCellInvertColorsAccessibility;
  [(_UIActivityGroupActivityCellInvertColorsAccessibility *)&v5 setHighlightedImageView:v4];
}

- (_UIActivityGroupActivityCellInvertColorsAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _UIActivityGroupActivityCellInvertColorsAccessibility;
  v3 = [(_UIActivityGroupActivityCellInvertColorsAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UIActivityGroupActivityCellInvertColorsAccessibility *)v3 _accessibilityLoadInvertColors];

  return v3;
}

@end