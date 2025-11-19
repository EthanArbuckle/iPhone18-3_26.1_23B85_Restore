@interface PUBrowsingBackgroundTileViewControllerInvertColorsAccessibility
- (id)backgroundColorOverride;
@end

@implementation PUBrowsingBackgroundTileViewControllerInvertColorsAccessibility

- (id)backgroundColorOverride
{
  v12.receiver = self;
  v12.super_class = PUBrowsingBackgroundTileViewControllerInvertColorsAccessibility;
  v2 = [(PUBrowsingBackgroundTileViewControllerInvertColorsAccessibility *)&v12 backgroundColorOverride];
  if (!UIAccessibilityIsInvertColorsEnabled())
  {
    goto LABEL_5;
  }

  if (v2)
  {
    AXColorGetLuma();
    if (v3 >= 0.5)
    {
      goto LABEL_5;
    }
  }

  v4 = __UIAccessibilitySafeClass();
  v5 = [v4 view];
  v6 = [v5 window];
  v7 = [v6 traitCollection];
  v8 = [v7 userInterfaceStyle];

  if (v8 == &dword_0 + 2)
  {
LABEL_5:
    v9 = v2;
  }

  else
  {
    v9 = +[UIColor whiteColor];
  }

  v10 = v9;

  return v10;
}

@end