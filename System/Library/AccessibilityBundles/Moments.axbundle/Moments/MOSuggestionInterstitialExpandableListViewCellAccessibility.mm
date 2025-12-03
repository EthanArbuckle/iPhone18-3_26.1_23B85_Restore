@interface MOSuggestionInterstitialExpandableListViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MOSuggestionInterstitialExpandableListViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MomentsUIService.MOSuggestionInterstitialExpandableListViewCell" hasSwiftField:@"titleLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"MomentsUIService.MOSuggestionInterstitialExpandableListViewCell" hasSwiftField:@"subtitleLabel" withSwiftType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(MOSuggestionInterstitialExpandableListViewCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v4 = [(MOSuggestionInterstitialExpandableListViewCellAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  accessibilityLabel2 = [v4 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end