@interface SearchUIImageViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation SearchUIImageViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(SearchUIImageViewInvertColorsAccessibility *)self safeValueForKey:@"imageView"];
  [v2 setAccessibilityIgnoresInvertColors:_AXSInvertColorsEnabledGlobalCached() != 0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SearchUIImageViewInvertColorsAccessibility;
  [(SearchUIImageViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SearchUIImageViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end