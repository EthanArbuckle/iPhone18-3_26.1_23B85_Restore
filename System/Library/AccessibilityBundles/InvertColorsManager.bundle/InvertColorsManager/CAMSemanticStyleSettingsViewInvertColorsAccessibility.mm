@interface CAMSemanticStyleSettingsViewInvertColorsAccessibility
- (CAMSemanticStyleSettingsViewInvertColorsAccessibility)init;
- (void)_accessibilityLoadInvertColors;
@end

@implementation CAMSemanticStyleSettingsViewInvertColorsAccessibility

- (CAMSemanticStyleSettingsViewInvertColorsAccessibility)init
{
  v4.receiver = self;
  v4.super_class = CAMSemanticStyleSettingsViewInvertColorsAccessibility;
  v2 = [(CAMSemanticStyleSettingsViewInvertColorsAccessibility *)&v4 init];
  [(CAMSemanticStyleSettingsViewInvertColorsAccessibility *)v2 _accessibilityLoadInvertColors];

  return v2;
}

- (void)_accessibilityLoadInvertColors
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CAMSemanticStyleSettingsViewInvertColorsAccessibility *)self safeArrayForKey:@"__semanticStyleImageViews", 0];
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

        [*(*(&v7 + 1) + 8 * v6) setAccessibilityIgnoresInvertColors:1];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end