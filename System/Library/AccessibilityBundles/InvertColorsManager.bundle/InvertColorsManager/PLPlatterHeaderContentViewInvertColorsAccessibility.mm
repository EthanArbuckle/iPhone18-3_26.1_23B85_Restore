@interface PLPlatterHeaderContentViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_configureIconButtonsForIcons:(id)icons;
@end

@implementation PLPlatterHeaderContentViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(PLPlatterHeaderContentViewInvertColorsAccessibility *)self safeArrayForKey:@"_iconButtons", 0];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) setAccessibilityIgnoresInvertColors:_AXSInvertColorsEnabledGlobalCached() != 0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_configureIconButtonsForIcons:(id)icons
{
  v4.receiver = self;
  v4.super_class = PLPlatterHeaderContentViewInvertColorsAccessibility;
  [(PLPlatterHeaderContentViewInvertColorsAccessibility *)&v4 _configureIconButtonsForIcons:icons];
  [(PLPlatterHeaderContentViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end