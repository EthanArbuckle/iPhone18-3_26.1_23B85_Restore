@interface SUUIBannerViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation SUUIBannerViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(SUUIBannerViewInvertColorsAccessibility *)self safeUIViewForKey:@"_iconImageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SUUIBannerViewInvertColorsAccessibility;
  [(SUUIBannerViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SUUIBannerViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end