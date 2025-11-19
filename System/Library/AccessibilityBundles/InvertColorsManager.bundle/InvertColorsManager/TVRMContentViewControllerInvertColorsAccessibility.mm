@interface TVRMContentViewControllerInvertColorsAccessibility
- (TVRMContentViewControllerInvertColorsAccessibility)init;
- (void)_accessibilityLoadInvertColors;
@end

@implementation TVRMContentViewControllerInvertColorsAccessibility

- (TVRMContentViewControllerInvertColorsAccessibility)init
{
  v4.receiver = self;
  v4.super_class = TVRMContentViewControllerInvertColorsAccessibility;
  v2 = [(TVRMContentViewControllerInvertColorsAccessibility *)&v4 init];
  [(TVRMContentViewControllerInvertColorsAccessibility *)v2 _accessibilityLoadInvertColors];

  return v2;
}

- (void)_accessibilityLoadInvertColors
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(TVRMContentViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"buttonView"];
  v3 = [v2 subviews];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        AXSafeClassFromString();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v9 = [v8 safeValueForKey:@"_materialLayer"];
          v10 = __UIAccessibilityCastAsClass();

          if (v10)
          {
            [AXInvertColorsAppHelper toggleInvertColors:v10 moveFilterToFront:1];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

@end