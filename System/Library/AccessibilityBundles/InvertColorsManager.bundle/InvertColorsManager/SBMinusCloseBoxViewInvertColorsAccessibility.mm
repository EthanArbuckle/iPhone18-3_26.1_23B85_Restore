@interface SBMinusCloseBoxViewInvertColorsAccessibility
- (id)_axViewAncestorIsKindOf:(Class)of;
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

- (id)_axViewAncestorIsKindOf:(Class)of
{
  if (of && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    selfCopy = self;
    if (selfCopy)
    {
      do
      {
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        superview = [(SBMinusCloseBoxViewInvertColorsAccessibility *)selfCopy superview];

        selfCopy = superview;
      }

      while (superview);
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end