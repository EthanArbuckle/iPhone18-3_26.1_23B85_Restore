@interface MOSuggestionCollectionViewSingleAssetCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityGridCollectionView;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MOSuggestionCollectionViewSingleAssetCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MomentsUIService.MOSuggestionCollectionViewSingleAssetCell" hasSwiftField:@"titleLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"MomentsUIService.MOSuggestionCollectionViewSingleAssetCell" hasSwiftField:@"subtitleLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"MomentsUIService.MOSuggestionCollectionViewSingleAssetCell" hasSwiftField:@"assetGridView" withSwiftType:"MOSuggestionSheetAssetGridView"];
  [v3 validateClass:@"MomentsUIService.MOSuggestionSheetAssetGridView" hasSwiftField:@"gridCollectionView" withSwiftType:"Optional<MOSuggestionSheetGridCollectionView>"];
}

- (id)accessibilityValue
{
  v2 = [(MOSuggestionCollectionViewSingleAssetCellAccessibility *)self _accessibilityGridCollectionView];
  v3 = [v2 visibleCells];
  v4 = MEMORY[0x29C2E21A0]();

  v5 = __UIAXStringForVariables();

  return v5;
}

- (id)accessibilityLabel
{
  v3 = [(MOSuggestionCollectionViewSingleAssetCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v4 = [(MOSuggestionCollectionViewSingleAssetCellAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  v5 = [(MOSuggestionCollectionViewSingleAssetCellAccessibility *)self _accessibilityGridCollectionView];
  v6 = [v5 visibleCells];
  v7 = [v6 count];

  if (v7 < 2)
  {
    v8 = [v3 accessibilityLabel];
    v9 = [v4 accessibilityLabel];
    v11 = __UIAXStringForVariables();
  }

  else
  {
    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%lu", v7];
    v9 = [v3 accessibilityLabel];
    v10 = [v4 accessibilityLabel];
    v13 = accessibilityJurassicLocalizedString(@"suggestion.elements");
    v11 = __UIAXStringForVariables();
  }

  return v11;
}

- (id)_accessibilityGridCollectionView
{
  v2 = [(MOSuggestionCollectionViewSingleAssetCellAccessibility *)self safeSwiftValueForKey:@"assetGridView"];
  v3 = [v2 safeSwiftValueForKey:@"gridCollectionView"];

  return v3;
}

@end