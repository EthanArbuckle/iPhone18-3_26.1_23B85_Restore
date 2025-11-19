@interface UIViewFreeformInvertColorsAccessibility
- (BOOL)accessibilityAppliesInvertColorsInDarkUI;
@end

@implementation UIViewFreeformInvertColorsAccessibility

- (BOOL)accessibilityAppliesInvertColorsInDarkUI
{
  v2 = self;
  v3 = [(UIViewFreeformInvertColorsAccessibility *)v2 subviews];
  v4 = [v3 firstObject];
  v5 = [v4 backgroundColor];
  AXColorGetLuma();
  v7 = v6;

  if (v7 <= 0.8)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = v2;
    if (v8)
    {
      while (1)
      {
        v9 = [UIViewController viewControllerForView:v8];
        AXSafeClassFromString();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          break;
        }

        v11 = [(UIViewFreeformInvertColorsAccessibility *)v8 superview];

        v8 = v11;
        if (!v11)
        {
          goto LABEL_8;
        }
      }

      LOBYTE(v8) = 1;
    }
  }

LABEL_8:

  return v8;
}

@end