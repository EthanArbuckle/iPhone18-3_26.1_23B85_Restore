@interface SUIKSearchResultCollectionViewSectionHeaderInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_commonInit;
@end

@implementation SUIKSearchResultCollectionViewSectionHeaderInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(SUIKSearchResultCollectionViewSectionHeaderInvertColorsAccessibility *)self safeValueForKey:@"categoryImageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)_commonInit
{
  v3.receiver = self;
  v3.super_class = SUIKSearchResultCollectionViewSectionHeaderInvertColorsAccessibility;
  [(SUIKSearchResultCollectionViewSectionHeaderInvertColorsAccessibility *)&v3 _commonInit];
  [(SUIKSearchResultCollectionViewSectionHeaderInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end