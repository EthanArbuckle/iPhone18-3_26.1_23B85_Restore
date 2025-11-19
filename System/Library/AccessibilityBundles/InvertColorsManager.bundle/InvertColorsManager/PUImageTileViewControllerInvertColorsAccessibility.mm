@interface PUImageTileViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_updateIfNeeded;
- (void)assetDidChange;
@end

@implementation PUImageTileViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(PUImageTileViewControllerInvertColorsAccessibility *)self safeValueForKey:@"view"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [v2 subviews];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            AXSafeClassFromString();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }
          }

          v9 = v8;

          v2 = v9;
          goto LABEL_13;
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)_updateIfNeeded
{
  v3.receiver = self;
  v3.super_class = PUImageTileViewControllerInvertColorsAccessibility;
  [(PUImageTileViewControllerInvertColorsAccessibility *)&v3 _updateIfNeeded];
  [(PUImageTileViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)assetDidChange
{
  v3.receiver = self;
  v3.super_class = PUImageTileViewControllerInvertColorsAccessibility;
  [(PUImageTileViewControllerInvertColorsAccessibility *)&v3 assetDidChange];
  [(PUImageTileViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end