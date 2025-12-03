@interface WorkoutAppRecommendationCollectionViewCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation WorkoutAppRecommendationCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(WorkoutAppRecommendationCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = WorkoutAppRecommendationCollectionViewCellAccessibility;
  return UIAccessibilityTraitButton | [(WorkoutAppRecommendationCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end