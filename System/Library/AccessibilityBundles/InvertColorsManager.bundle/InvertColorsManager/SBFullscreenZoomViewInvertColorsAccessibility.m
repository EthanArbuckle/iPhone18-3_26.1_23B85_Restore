@interface SBFullscreenZoomViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation SBFullscreenZoomViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v3 = _AXSInvertColorsEnabled();
  if (v3)
  {
    v4 = +[UIColor whiteColor];
    [(SBFullscreenZoomViewInvertColorsAccessibility *)self setBackgroundColor:v4];
  }

  v5 = [(SBFullscreenZoomViewInvertColorsAccessibility *)self safeUIViewForKey:@"_contentView"];
  [v5 setHidden:v3 != 0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBFullscreenZoomViewInvertColorsAccessibility;
  [(SBFullscreenZoomViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SBFullscreenZoomViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end