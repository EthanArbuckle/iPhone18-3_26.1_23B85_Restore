@interface MOSuggestionSheetMosaicCellAccessibility
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MOSuggestionSheetMosaicCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(MOSuggestionSheetMosaicCellAccessibility *)self safeSwiftValueForKey:@"assetView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = MOSuggestionSheetMosaicCellAccessibility;
  v3 = [(MOSuggestionSheetMosaicCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(MOSuggestionSheetMosaicCellAccessibility *)self safeSwiftValueForKey:@"assetView"];
  v5 = [v4 accessibilityTraits];

  return v5 | v3;
}

- (id)accessibilityCustomActions
{
  v2 = [(MOSuggestionSheetMosaicCellAccessibility *)self safeSwiftValueForKey:@"assetView"];
  v3 = [v2 accessibilityCustomActions];

  return v3;
}

@end