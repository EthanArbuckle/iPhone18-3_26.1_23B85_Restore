@interface MOSuggestionCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityGridCollectionView;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MOSuggestionCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MomentsUIService.MOSuggestionCollectionViewCell" hasSwiftField:@"titleLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"MomentsUIService.MOSuggestionCollectionViewCell" hasSwiftField:@"subtitleLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"MomentsUIService.MOSuggestionCollectionViewCell" hasSwiftField:@"journalButton" withSwiftType:"MOSuggestionSheetJournalButton"];
  [validationsCopy validateClass:@"MomentsUIService.MOSuggestionCollectionViewCell" hasSwiftField:@"assetGridView" withSwiftType:"MOSuggestionSheetAssetGridView"];
  [validationsCopy validateClass:@"MomentsUIService.MOSuggestionSheetAssetGridView" hasSwiftField:@"gridCollectionView" withSwiftType:"Optional<MOSuggestionSheetGridCollectionView>"];
}

- (id)accessibilityValue
{
  _accessibilityGridCollectionView = [(MOSuggestionCollectionViewCellAccessibility *)self _accessibilityGridCollectionView];
  visibleCells = [_accessibilityGridCollectionView visibleCells];
  v4 = MEMORY[0x29C2E21A0]();

  v5 = __UIAXStringForVariables();

  return v5;
}

- (id)accessibilityLabel
{
  v3 = [(MOSuggestionCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v4 = [(MOSuggestionCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  _accessibilityGridCollectionView = [(MOSuggestionCollectionViewCellAccessibility *)self _accessibilityGridCollectionView];
  visibleCells = [_accessibilityGridCollectionView visibleCells];
  v7 = [visibleCells count];

  if (v7 < 2)
  {
    accessibilityLabel = [v3 accessibilityLabel];
    accessibilityLabel2 = [v4 accessibilityLabel];
    v11 = __UIAXStringForVariables();
  }

  else
  {
    accessibilityLabel = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%lu", v7];
    accessibilityLabel2 = [v3 accessibilityLabel];
    accessibilityLabel3 = [v4 accessibilityLabel];
    v13 = accessibilityJurassicLocalizedString(@"suggestion.elements");
    v11 = __UIAXStringForVariables();
  }

  return v11;
}

- (id)accessibilityCustomActions
{
  v32 = *MEMORY[0x29EDCA608];
  v3 = [(MOSuggestionCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"assetGridView"];
  v4 = [v3 safeSwiftValueForKey:@"gridCollectionView"];
  v30.receiver = self;
  v30.super_class = MOSuggestionCollectionViewCellAccessibility;
  accessibilityCustomActions = [(MOSuggestionCollectionViewCellAccessibility *)&v30 accessibilityCustomActions];
  array = [accessibilityCustomActions mutableCopy];

  if (!array)
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  visibleCells = [v4 visibleCells];
  v8 = [visibleCells countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(visibleCells);
        }

        accessibilityCustomActions2 = [*(*(&v26 + 1) + 8 * i) accessibilityCustomActions];
        [array addObjectsFromArray:accessibilityCustomActions2];
      }

      v9 = [visibleCells countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v25 = 0;
  objc_opt_class();
  v13 = [(MOSuggestionCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"journalButton"];
  v14 = __UIAccessibilityCastAsClass();

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x29EDC78E0]);
    v16 = accessibilityJurassicLocalizedString(@"suggestion.write.about.this");
    v20 = MEMORY[0x29EDCA5F8];
    v21 = 3221225472;
    v22 = __73__MOSuggestionCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke;
    v23 = &unk_29F2DBBE0;
    v24 = v14;
    v17 = [v15 initWithName:v16 actionHandler:&v20];

    [array addObject:{v17, v20, v21, v22, v23}];
  }

  v18 = *MEMORY[0x29EDCA608];

  return array;
}

- (id)_accessibilityGridCollectionView
{
  v2 = [(MOSuggestionCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"assetGridView"];
  v3 = [v2 safeSwiftValueForKey:@"gridCollectionView"];

  return v3;
}

@end