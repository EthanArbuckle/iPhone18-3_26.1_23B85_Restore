@interface TVRUIButtonPanelViewInvertColorsAccessibility
- (TVRUIButtonPanelViewInvertColorsAccessibility)initWithPrimaryButtonType:(int64_t)a3 secondaryLeftButtons:(id)a4 secondaryRightButtons:(id)a5 styleProvider:(id)a6;
- (void)_accessibilityLoadInvertColors;
@end

@implementation TVRUIButtonPanelViewInvertColorsAccessibility

- (TVRUIButtonPanelViewInvertColorsAccessibility)initWithPrimaryButtonType:(int64_t)a3 secondaryLeftButtons:(id)a4 secondaryRightButtons:(id)a5 styleProvider:(id)a6
{
  v8.receiver = self;
  v8.super_class = TVRUIButtonPanelViewInvertColorsAccessibility;
  v6 = [(TVRUIButtonPanelViewInvertColorsAccessibility *)&v8 initWithPrimaryButtonType:a3 secondaryLeftButtons:a4 secondaryRightButtons:a5 styleProvider:a6];
  [(TVRUIButtonPanelViewInvertColorsAccessibility *)v6 _accessibilityLoadInvertColors];
  return v6;
}

- (void)_accessibilityLoadInvertColors
{
  v3 = [(TVRUIButtonPanelViewInvertColorsAccessibility *)self safeArrayForKey:@"leftButtons"];
  v4 = [(TVRUIButtonPanelViewInvertColorsAccessibility *)self safeArrayForKey:@"rightButtons"];
  v5 = [NSArray axArrayWithPossiblyNilArrays:2, v3, v4];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v5;
  v19 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v19)
  {
    v18 = *v28;
    do
    {
      v6 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * v6);
        v26 = 0;
        objc_opt_class();
        v8 = __UIAccessibilityCastAsClass();
        if (v26 == 1)
        {
LABEL_22:
          abort();
        }

        v20 = v8;
        v21 = v6;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = [v8 subviews];
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v31 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v22 + 1) + 8 * i);
              AXSafeClassFromString();
              if (objc_opt_isKindOfClass())
              {
                v26 = 0;
                objc_opt_class();
                v15 = [v14 safeValueForKey:@"_materialLayer"];
                v16 = __UIAccessibilityCastAsClass();

                if (v26 == 1)
                {
                  goto LABEL_22;
                }

                if (v16)
                {
                  [AXInvertColorsAppHelper toggleInvertColors:v16 moveFilterToFront:1];
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v22 objects:v31 count:16];
          }

          while (v11);
        }

        v6 = v21 + 1;
      }

      while ((v21 + 1) != v19);
      v19 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v19);
  }
}

@end