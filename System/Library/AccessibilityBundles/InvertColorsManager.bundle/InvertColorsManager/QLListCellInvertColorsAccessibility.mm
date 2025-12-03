@interface QLListCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)setThumbnail:(id)thumbnail;
@end

@implementation QLListCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(QLListCellInvertColorsAccessibility *)self safeUIViewForKey:@"_thumbnailView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)setThumbnail:(id)thumbnail
{
  v4.receiver = self;
  v4.super_class = QLListCellInvertColorsAccessibility;
  [(QLListCellInvertColorsAccessibility *)&v4 setThumbnail:thumbnail];
  [(QLListCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end