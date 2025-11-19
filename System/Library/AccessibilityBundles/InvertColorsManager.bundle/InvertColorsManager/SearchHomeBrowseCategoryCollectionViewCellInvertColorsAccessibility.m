@interface SearchHomeBrowseCategoryCollectionViewCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation SearchHomeBrowseCategoryCollectionViewCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(SearchHomeBrowseCategoryCollectionViewCellInvertColorsAccessibility *)self safeUIViewForKey:@"_browseImageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SearchHomeBrowseCategoryCollectionViewCellInvertColorsAccessibility;
  [(SearchHomeBrowseCategoryCollectionViewCellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SearchHomeBrowseCategoryCollectionViewCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end