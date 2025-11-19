@interface SBApplicationSceneBackgroundViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_setupBackground;
- (void)layoutSubviews;
@end

@implementation SBApplicationSceneBackgroundViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  if (_AXSInvertColorsEnabled())
  {
    v3 = +[UIColor whiteColor];
    [(SBApplicationSceneBackgroundViewInvertColorsAccessibility *)self setBackgroundColor:v3];
  }
}

- (void)_setupBackground
{
  v3.receiver = self;
  v3.super_class = SBApplicationSceneBackgroundViewInvertColorsAccessibility;
  [(SBApplicationSceneBackgroundViewInvertColorsAccessibility *)&v3 _setupBackground];
  [(SBApplicationSceneBackgroundViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBApplicationSceneBackgroundViewInvertColorsAccessibility;
  [(SBApplicationSceneBackgroundViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SBApplicationSceneBackgroundViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end