@interface MOSuggestionSheetAssetViewAccessibility
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MOSuggestionSheetAssetViewAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(MOSuggestionSheetAssetViewAccessibility *)self safeValueForKey:@"subviews"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = MEMORY[0x29C2E21A0](v4);

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v20 = *MEMORY[0x29EDCA608];
  v18.receiver = self;
  v18.super_class = MOSuggestionSheetAssetViewAccessibility;
  accessibilityTraits = [(MOSuggestionSheetAssetViewAccessibility *)&v18 accessibilityTraits];
  v17 = 0;
  objc_opt_class();
  v4 = [(MOSuggestionSheetAssetViewAccessibility *)self safeValueForKey:@"subviews"];
  v5 = __UIAccessibilityCastAsClass();

  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        accessibilityTraits |= [*(*(&v13 + 1) + 8 * i) accessibilityTraits];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x29EDCA608];
  return accessibilityTraits;
}

- (id)accessibilityCustomActions
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = 0;
  objc_opt_class();
  v3 = [(MOSuggestionSheetAssetViewAccessibility *)self safeValueForKey:@"subviews"];
  v4 = __UIAccessibilityCastAsClass();

  v19.receiver = self;
  v19.super_class = MOSuggestionSheetAssetViewAccessibility;
  accessibilityCustomActions = [(MOSuggestionSheetAssetViewAccessibility *)&v19 accessibilityCustomActions];
  array = [accessibilityCustomActions mutableCopy];

  if (!array)
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        accessibilityCustomActions2 = [*(*(&v15 + 1) + 8 * i) accessibilityCustomActions];
        [array addObjectsFromArray:accessibilityCustomActions2];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x29EDCA608];

  return array;
}

@end