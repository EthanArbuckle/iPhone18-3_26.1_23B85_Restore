@interface ProductRatingsCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation ProductRatingsCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppStore.ProductRatingsCollectionViewCell" hasSwiftField:@"productRatingView" withSwiftType:"Optional<ProductRatingsView>"];
  [validationsCopy validateClass:@"AppStore.ProductRatingsView" hasSwiftField:@"currentRatingLabel" withSwiftType:"DynamicLabel"];
  [validationsCopy validateClass:@"AppStore.ProductRatingsView" hasSwiftField:@"currentRatingStarsView" withSwiftType:"RatingView"];
  [validationsCopy validateClass:@"AppStore.ProductRatingsView" hasSwiftField:@"ratingsCountLabel" withSwiftType:"DynamicLabel"];
}

- (id)accessibilityLabel
{
  v3 = objc_opt_new();
  v4 = [(ProductRatingsCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"productRatingView"];
  v5 = [v4 safeSwiftValueForKey:@"currentRatingLabel"];
  [v3 axSafelyAddObject:v5];
  v6 = [v4 safeSwiftValueForKey:@"currentRatingStarsView"];
  [v3 axSafelyAddObject:v6];
  v7 = [v4 safeSwiftValueForKey:@"ratingsCountLabel"];
  [v3 axSafelyAddObject:v7];
  v8 = AXLabelForElements();

  return v8;
}

@end