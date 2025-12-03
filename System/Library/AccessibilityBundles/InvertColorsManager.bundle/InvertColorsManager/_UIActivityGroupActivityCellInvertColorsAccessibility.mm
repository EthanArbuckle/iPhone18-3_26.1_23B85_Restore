@interface _UIActivityGroupActivityCellInvertColorsAccessibility
- (_UIActivityGroupActivityCellInvertColorsAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadInvertColors;
- (void)setHighlightedImageView:(id)view;
@end

@implementation _UIActivityGroupActivityCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v3 = [(_UIActivityGroupActivityCellInvertColorsAccessibility *)self safeValueForKey:@"imageView"];
  [v3 setAccessibilityIgnoresInvertColors:1];

  v4 = [(_UIActivityGroupActivityCellInvertColorsAccessibility *)self safeValueForKey:@"highlightedImageView"];
  [v4 setAccessibilityIgnoresInvertColors:1];
}

- (void)setHighlightedImageView:(id)view
{
  viewCopy = view;
  [viewCopy setAccessibilityIgnoresInvertColors:1];
  v5.receiver = self;
  v5.super_class = _UIActivityGroupActivityCellInvertColorsAccessibility;
  [(_UIActivityGroupActivityCellInvertColorsAccessibility *)&v5 setHighlightedImageView:viewCopy];
}

- (_UIActivityGroupActivityCellInvertColorsAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = _UIActivityGroupActivityCellInvertColorsAccessibility;
  v3 = [(_UIActivityGroupActivityCellInvertColorsAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_UIActivityGroupActivityCellInvertColorsAccessibility *)v3 _accessibilityLoadInvertColors];

  return v3;
}

@end