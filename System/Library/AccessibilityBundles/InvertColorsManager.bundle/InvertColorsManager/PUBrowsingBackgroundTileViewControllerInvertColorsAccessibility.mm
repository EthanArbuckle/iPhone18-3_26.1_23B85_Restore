@interface PUBrowsingBackgroundTileViewControllerInvertColorsAccessibility
- (id)backgroundColorOverride;
@end

@implementation PUBrowsingBackgroundTileViewControllerInvertColorsAccessibility

- (id)backgroundColorOverride
{
  v12.receiver = self;
  v12.super_class = PUBrowsingBackgroundTileViewControllerInvertColorsAccessibility;
  backgroundColorOverride = [(PUBrowsingBackgroundTileViewControllerInvertColorsAccessibility *)&v12 backgroundColorOverride];
  if (!UIAccessibilityIsInvertColorsEnabled())
  {
    goto LABEL_5;
  }

  if (backgroundColorOverride)
  {
    AXColorGetLuma();
    if (v3 >= 0.5)
    {
      goto LABEL_5;
    }
  }

  v4 = __UIAccessibilitySafeClass();
  view = [v4 view];
  window = [view window];
  traitCollection = [window traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == &dword_0 + 2)
  {
LABEL_5:
    v9 = backgroundColorOverride;
  }

  else
  {
    v9 = +[UIColor whiteColor];
  }

  v10 = v9;

  return v10;
}

@end