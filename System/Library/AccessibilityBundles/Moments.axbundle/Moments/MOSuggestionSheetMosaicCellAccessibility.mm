@interface MOSuggestionSheetMosaicCellAccessibility
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MOSuggestionSheetMosaicCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(MOSuggestionSheetMosaicCellAccessibility *)self safeSwiftValueForKey:@"assetView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = MOSuggestionSheetMosaicCellAccessibility;
  accessibilityTraits = [(MOSuggestionSheetMosaicCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(MOSuggestionSheetMosaicCellAccessibility *)self safeSwiftValueForKey:@"assetView"];
  accessibilityTraits2 = [v4 accessibilityTraits];

  return accessibilityTraits2 | accessibilityTraits;
}

- (id)accessibilityCustomActions
{
  v2 = [(MOSuggestionSheetMosaicCellAccessibility *)self safeSwiftValueForKey:@"assetView"];
  accessibilityCustomActions = [v2 accessibilityCustomActions];

  return accessibilityCustomActions;
}

@end