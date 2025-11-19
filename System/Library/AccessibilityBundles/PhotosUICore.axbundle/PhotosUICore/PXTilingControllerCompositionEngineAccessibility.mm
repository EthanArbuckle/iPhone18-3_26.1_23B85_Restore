@interface PXTilingControllerCompositionEngineAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PXTilingControllerCompositionEngineAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v16 = *MEMORY[0x29EDCA608];
  v14.receiver = self;
  v14.super_class = PXTilingControllerCompositionEngineAccessibility;
  [(PXTilingControllerCompositionEngineAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  objc_opt_class();
  v3 = [(PXTilingControllerCompositionEngineAccessibility *)self safeValueForKey:@"_tilingControllers"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * i) _accessibilityLoadAccessibilityInformation];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x29EDCA608];
}

@end