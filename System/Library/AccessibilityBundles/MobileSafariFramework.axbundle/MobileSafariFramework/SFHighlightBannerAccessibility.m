@interface SFHighlightBannerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (SFHighlightBannerAccessibility)initWithHighlight:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkupButton;
@end

@implementation SFHighlightBannerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFHighlightBanner" hasInstanceMethod:@"initWithHighlight:" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SFHighlightBanner" hasInstanceMethod:@"_close" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SFHighlightBannerAccessibility;
  [(SFHighlightBannerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SFHighlightBannerAccessibility *)self _accessibilityMarkupButton];
}

- (void)_accessibilityMarkupButton
{
  v20 = *MEMORY[0x29EDCA608];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 subviews];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [v10 actionsForTarget:self forControlEvent:64];
          v12 = [v11 containsObject:@"_close"];

          if (v12)
          {
            v13 = accessibilitySafariServicesLocalizedString(@"dismiss.shared.with.you.banner");
            [v10 setAccessibilityLabel:v13];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x29EDCA608];
}

- (SFHighlightBannerAccessibility)initWithHighlight:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFHighlightBannerAccessibility;
  v3 = [(SFHighlightBannerAccessibility *)&v5 initWithHighlight:a3];
  [(SFHighlightBannerAccessibility *)v3 _accessibilityMarkupButton];

  return v3;
}

@end