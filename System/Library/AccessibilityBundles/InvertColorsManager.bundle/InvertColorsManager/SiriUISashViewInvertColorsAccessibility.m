@interface SiriUISashViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation SiriUISashViewInvertColorsAccessibility

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SiriUISashViewInvertColorsAccessibility;
  [(SiriUISashViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SiriUISashViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(SiriUISashViewInvertColorsAccessibility *)self safeUIViewForKey:@"_imageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end