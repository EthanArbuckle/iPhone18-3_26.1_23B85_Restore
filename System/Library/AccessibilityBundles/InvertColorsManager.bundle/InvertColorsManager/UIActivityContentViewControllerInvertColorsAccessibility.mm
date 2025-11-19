@interface UIActivityContentViewControllerInvertColorsAccessibility
- (void)viewWillLayoutSubviews;
@end

@implementation UIActivityContentViewControllerInvertColorsAccessibility

- (void)viewWillLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = UIActivityContentViewControllerInvertColorsAccessibility;
  [(UIActivityContentViewControllerInvertColorsAccessibility *)&v12 viewWillLayoutSubviews];
  v3 = [(UIActivityContentViewControllerInvertColorsAccessibility *)self view];
  v4 = [v3 window];
  v5 = [AXInvertColorsAppHelper hasInvertFilter:v4];

  if (v5)
  {
    v6 = [v3 traitCollection];
    v7 = [v6 userInterfaceStyle];

    if (v7 == &dword_0 + 1)
    {
      [v3 setAccessibilityInvertColorsIsolatedTree:1];
      v8 = _AXSInvertColorsEnabled();
      v9 = [v3 layer];
      if (v8)
      {
        [AXInvertColorsAppHelper applyInvertFilterToLayer:v9];
LABEL_7:

        goto LABEL_8;
      }
    }

    else
    {
      [v3 setAccessibilityInvertColorsIsolatedTree:0];
      v10 = [v3 window];
      [v10 _accessibilitySetInvertColorsSupportsDarkWindowInvert:0];

      v11 = [v3 window];
      [AXInvertColorsManager toggleDarkModeWindowInvert:v11];

      v9 = [v3 layer];
    }

    [AXInvertColorsAppHelper unapplyInvertFilterToLayer:v9];
    goto LABEL_7;
  }

LABEL_8:
}

@end