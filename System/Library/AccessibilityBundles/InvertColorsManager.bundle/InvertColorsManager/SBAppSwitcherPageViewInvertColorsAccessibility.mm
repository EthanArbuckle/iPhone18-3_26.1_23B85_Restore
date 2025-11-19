@interface SBAppSwitcherPageViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation SBAppSwitcherPageViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v8 = [(SBAppSwitcherPageViewInvertColorsAccessibility *)self safeUIViewForKey:@"_shadowView"];
  v3 = [(SBAppSwitcherPageViewInvertColorsAccessibility *)self safeUIViewForKey:@"_dimmingView"];
  if (!UIAccessibilityIsInvertColorsEnabled())
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v4 = +[UIColor blackColor];
    goto LABEL_8;
  }

  if (v3)
  {
    [v3 setAccessibilityIgnoresInvertColors:1];
  }

  if (v8)
  {
    v4 = +[UIColor whiteColor];
LABEL_8:
    v5 = v4;
    v6 = [v4 CGColor];
    v7 = [v8 layer];
    [v7 setShadowColor:v6];
  }

LABEL_9:
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBAppSwitcherPageViewInvertColorsAccessibility;
  [(SBAppSwitcherPageViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SBAppSwitcherPageViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end