@interface SHSheetSceneViewControllerInvertColorsAccessibility
- (void)viewWillLayoutSubviews;
@end

@implementation SHSheetSceneViewControllerInvertColorsAccessibility

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = SHSheetSceneViewControllerInvertColorsAccessibility;
  [(SHSheetSceneViewControllerInvertColorsAccessibility *)&v10 viewWillLayoutSubviews];
  view = [(SHSheetSceneViewControllerInvertColorsAccessibility *)self view];
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
      layer = [view layer];
    }

    [AXInvertColorsAppHelper unapplyInvertFilterToLayer:layer];
    goto LABEL_7;
  }

LABEL_8:
}

@end