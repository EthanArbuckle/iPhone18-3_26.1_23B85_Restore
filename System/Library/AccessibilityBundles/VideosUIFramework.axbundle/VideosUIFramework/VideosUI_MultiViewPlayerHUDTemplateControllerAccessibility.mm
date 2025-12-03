@interface VideosUI_MultiViewPlayerHUDTemplateControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateVisibleCellsWithPlaybackIdentifiers:(id)identifiers;
@end

@implementation VideosUI_MultiViewPlayerHUDTemplateControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v18 = *MEMORY[0x29EDCA608];
  v16.receiver = self;
  v16.super_class = VideosUI_MultiViewPlayerHUDTemplateControllerAccessibility;
  [(VideosUI_MultiViewPlayerHUDTemplateControllerAccessibility *)&v16 _accessibilityLoadAccessibilityInformation];
  v15 = 0;
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  view = [v2 view];

  v4 = [view _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_15];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v8 = *MEMORY[0x29EDC7FA0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * i) setAccessibilityTraits:v8];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)updateVisibleCellsWithPlaybackIdentifiers:(id)identifiers
{
  v4.receiver = self;
  v4.super_class = VideosUI_MultiViewPlayerHUDTemplateControllerAccessibility;
  [(VideosUI_MultiViewPlayerHUDTemplateControllerAccessibility *)&v4 updateVisibleCellsWithPlaybackIdentifiers:identifiers];
  [(VideosUI_MultiViewPlayerHUDTemplateControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end