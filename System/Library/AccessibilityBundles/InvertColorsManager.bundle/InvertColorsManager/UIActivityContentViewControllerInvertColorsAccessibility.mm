@interface UIActivityContentViewControllerInvertColorsAccessibility
- (void)viewWillLayoutSubviews;
@end

@implementation UIActivityContentViewControllerInvertColorsAccessibility

- (void)viewWillLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = UIActivityContentViewControllerInvertColorsAccessibility;
  [(UIActivityContentViewControllerInvertColorsAccessibility *)&v12 viewWillLayoutSubviews];
  view = [(UIActivityContentViewControllerInvertColorsAccessibility *)self view];
  window = [view window];
  v5 = [AXInvertColorsAppHelper hasInvertFilter:window];

  if (v5)
  {
    traitCollection = [view traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == &dword_0 + 1)
    {
      [view setAccessibilityInvertColorsIsolatedTree:1];
      v8 = _AXSInvertColorsEnabled();
      layer = [view layer];
      if (v8)
      {
        [AXInvertColorsAppHelper applyInvertFilterToLayer:layer];
LABEL_7:

        goto LABEL_8;
      }
    }

    else
    {
      [view setAccessibilityInvertColorsIsolatedTree:0];
      window2 = [view window];
      [window2 _accessibilitySetInvertColorsSupportsDarkWindowInvert:0];

      window3 = [view window];
      [AXInvertColorsManager toggleDarkModeWindowInvert:window3];

      layer = [view layer];
    }

    [AXInvertColorsAppHelper unapplyInvertFilterToLayer:layer];
    goto LABEL_7;
  }

LABEL_8:
}

@end