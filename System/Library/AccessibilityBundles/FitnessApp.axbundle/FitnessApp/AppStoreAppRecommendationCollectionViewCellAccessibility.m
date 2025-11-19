@interface AppStoreAppRecommendationCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AppStoreAppRecommendationCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FitnessApp.AppStoreAppRecommendationCollectionViewCell" hasSwiftField:@"titleLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"FitnessApp.AppStoreAppRecommendationCollectionViewCell" hasSwiftField:@"subtitleLabel" withSwiftType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(AppStoreAppRecommendationCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v6 = [(AppStoreAppRecommendationCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AppStoreAppRecommendationCollectionViewCellAccessibility;
  return UIAccessibilityTraitButton | [(AppStoreAppRecommendationCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end