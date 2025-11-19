@interface QLListCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)setThumbnail:(id)a3;
@end

@implementation QLListCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(QLListCellInvertColorsAccessibility *)self safeUIViewForKey:@"_thumbnailView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)setThumbnail:(id)a3
{
  v4.receiver = self;
  v4.super_class = QLListCellInvertColorsAccessibility;
  [(QLListCellInvertColorsAccessibility *)&v4 setThumbnail:a3];
  [(QLListCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end