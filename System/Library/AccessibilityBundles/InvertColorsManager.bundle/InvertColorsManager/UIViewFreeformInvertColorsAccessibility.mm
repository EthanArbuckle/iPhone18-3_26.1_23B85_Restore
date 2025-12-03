@interface UIViewFreeformInvertColorsAccessibility
- (BOOL)accessibilityAppliesInvertColorsInDarkUI;
@end

@implementation UIViewFreeformInvertColorsAccessibility

- (BOOL)accessibilityAppliesInvertColorsInDarkUI
{
  selfCopy = self;
  subviews = [(UIViewFreeformInvertColorsAccessibility *)selfCopy subviews];
  firstObject = [subviews firstObject];
  backgroundColor = [firstObject backgroundColor];
  AXColorGetLuma();
  v7 = v6;

  if (v7 <= 0.8)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = selfCopy;
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

        superview = [(UIViewFreeformInvertColorsAccessibility *)v8 superview];

        v8 = superview;
        if (!superview)
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