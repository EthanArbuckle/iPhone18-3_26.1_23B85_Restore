@interface SBMinusCloseBoxViewInvertColorsAccessibility
- (id)_axViewAncestorIsKindOf:(Class)a3;
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation SBMinusCloseBoxViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  objc_opt_class();
  v4 = [(SBMinusCloseBoxViewInvertColorsAccessibility *)self safeValueForKey:@"_materialView"];
  v5 = __UIAccessibilityCastAsClass();

  if (UIAccessibilityIsInvertColorsEnabled() && v5 && [(SBMinusCloseBoxViewInvertColorsAccessibility *)self safeBoolForKey:@"wantsGlass"])
  {
    v6 = [(SBMinusCloseBoxViewInvertColorsAccessibility *)self _axViewAncestorIsKindOf:AXSafeClassFromString()];
    if (v6)
    {
      v7 = [AXInvertColorsAppHelper insertBackgroundView:v3 alpha:0.5];
      [v5 bounds];
      [v5 backgroundInsets];
      UIRectIntegralWithScale();
      v8 = CGRectGetHeight(v10) * 0.5;
      v9 = [AXInvertColorsAppHelper backgroundView:v3];
      [v9 _setContinuousCornerRadius:v8];
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBMinusCloseBoxViewInvertColorsAccessibility;
  [(SBMinusCloseBoxViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SBMinusCloseBoxViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (id)_axViewAncestorIsKindOf:(Class)a3
{
  if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = self;
    if (v4)
    {
      do
      {
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v5 = [(SBMinusCloseBoxViewInvertColorsAccessibility *)v4 superview];

        v4 = v5;
      }

      while (v5);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end