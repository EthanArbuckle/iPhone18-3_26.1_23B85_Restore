@interface MOSuggestionCollectionViewSingleAssetCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityGridCollectionView;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MOSuggestionCollectionViewSingleAssetCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MomentsUIService.MOSuggestionCollectionViewSingleAssetCell" hasSwiftField:@"titleLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"MomentsUIService.MOSuggestionCollectionViewSingleAssetCell" hasSwiftField:@"subtitleLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"MomentsUIService.MOSuggestionCollectionViewSingleAssetCell" hasSwiftField:@"assetGridView" withSwiftType:"MOSuggestionSheetAssetGridView"];
  [validationsCopy validateClass:@"MomentsUIService.MOSuggestionSheetAssetGridView" hasSwiftField:@"gridCollectionView" withSwiftType:"Optional<MOSuggestionSheetGridCollectionView>"];
}

- (id)accessibilityValue
{
  _accessibilityGridCollectionView = [(MOSuggestionCollectionViewSingleAssetCellAccessibility *)self _accessibilityGridCollectionView];
  visibleCells = [_accessibilityGridCollectionView visibleCells];
  v4 = MEMORY[0x29C2E21A0]();

  v5 = __UIAXStringForVariables();

  return v5;
}

- (id)accessibilityLabel
{
  v3 = [(MOSuggestionCollectionViewSingleAssetCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v4 = [(MOSuggestionCollectionViewSingleAssetCellAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  _accessibilityGridCollectionView = [(MOSuggestionCollectionViewSingleAssetCellAccessibility *)self _accessibilityGridCollectionView];
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

- (id)_accessibilityGridCollectionView
{
  v2 = [(MOSuggestionCollectionViewSingleAssetCellAccessibility *)self safeSwiftValueForKey:@"assetGridView"];
  v3 = [v2 safeSwiftValueForKey:@"gridCollectionView"];

  return v3;
}

@end