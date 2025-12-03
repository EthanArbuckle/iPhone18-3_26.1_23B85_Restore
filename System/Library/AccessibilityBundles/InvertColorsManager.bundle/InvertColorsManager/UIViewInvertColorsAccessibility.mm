@interface UIViewInvertColorsAccessibility
- (BOOL)_ancestorHasInvertFilterApplied;
- (BOOL)accessibilityIgnoresInvertColors;
- (void)setBackgroundColor:(id)color;
@end

@implementation UIViewInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  if ([(UIViewInvertColorsAccessibility *)self accessibilityIgnoreInvertIfDarkBackgroundColor])
  {
    backgroundColor = [(UIViewInvertColorsAccessibility *)self backgroundColor];
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
  superview = [(UIViewInvertColorsAccessibility *)self superview];
  if (superview)
  {
    v3 = superview;
    while (1)
    {
      if ([v3 accessibilityInvertColorsIsolatedTree])
      {
        LOBYTE(superview2) = 0;
        goto LABEL_10;
      }

      if ([v3 accessibilityIgnoresInvertColors])
      {
        break;
      }

      superview2 = [v3 superview];

      v3 = superview2;
      if (!superview2)
      {
        goto LABEL_10;
      }
    }

    LOBYTE(superview2) = 1;
LABEL_10:
  }

  else
  {
    LOBYTE(superview2) = 0;
  }

  return superview2;
}

- (void)setBackgroundColor:(id)color
{
  v4.receiver = self;
  v4.super_class = UIViewInvertColorsAccessibility;
  [(UIViewInvertColorsAccessibility *)&v4 setBackgroundColor:color];
  [AXInvertColorsAppHelper toggleInvertColors:self];
}

@end