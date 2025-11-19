@interface AlertTemplateViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation AlertTemplateViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosUI.AlertTemplateView" hasSwiftField:@"collectionView" withSwiftType:"VUILegacyCollectionView"];
  [v3 validateClass:@"VideosUI.AlertTemplateView" hasSwiftField:@"aboveCollectionComponents" withSwiftType:{"Array<(UIView, ViewLayout)>"}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v19 = *MEMORY[0x29EDCA608];
  v17.receiver = self;
  v17.super_class = AlertTemplateViewAccessibility;
  [(AlertTemplateViewAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  v3 = [(AlertTemplateViewAccessibility *)self safeSwiftArrayForKey:@"aboveCollectionComponents"];
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __76__AlertTemplateViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v16[3] = &unk_29F31C3C8;
  v16[4] = self;
  v4 = [v3 axMapObjectsUsingBlock:v16];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    v9 = *MEMORY[0x29EDC7F80];
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v10) setAccessibilityTraits:{v9 | objc_msgSend(*(*(&v12 + 1) + 8 * v10), "accessibilityTraits", v12)}];
        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x29EDCA608];
}

id __76__AlertTemplateViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [*(a1 + 32) safeSwiftValueForKey:@"obj"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AlertTemplateViewAccessibility;
  [(AlertTemplateViewAccessibility *)&v3 layoutSubviews];
  [(AlertTemplateViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end