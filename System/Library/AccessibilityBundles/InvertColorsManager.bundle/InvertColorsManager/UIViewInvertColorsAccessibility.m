@interface UIViewInvertColorsAccessibility
- (BOOL)_ancestorHasInvertFilterApplied;
- (BOOL)accessibilityIgnoresInvertColors;
- (void)setBackgroundColor:(id)a3;
@end

@implementation UIViewInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  if ([(UIViewInvertColorsAccessibility *)self accessibilityIgnoreInvertIfDarkBackgroundColor])
  {
    v3 = [(UIViewInvertColorsAccessibility *)self backgroundColor];
    AXColorGetLuma();
    v5 = v4 < 0.5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIViewInvertColorsAccessibility;
    return [(UIViewInvertColorsAccessibility *)&v7 accessibilityIgnoresInvertColors];
  }

  return v5;
}

- (BOOL)_ancestorHasInvertFilterApplied
{
  v2 = [(UIViewInvertColorsAccessibility *)self superview];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      if ([v3 accessibilityInvertColorsIsolatedTree])
      {
        LOBYTE(v4) = 0;
        goto LABEL_10;
      }

      if ([v3 accessibilityIgnoresInvertColors])
      {
        break;
      }

      v4 = [v3 superview];

      v3 = v4;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    LOBYTE(v4) = 1;
LABEL_10:
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)setBackgroundColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIViewInvertColorsAccessibility;
  [(UIViewInvertColorsAccessibility *)&v4 setBackgroundColor:a3];
  [AXInvertColorsAppHelper toggleInvertColors:self];
}

@end