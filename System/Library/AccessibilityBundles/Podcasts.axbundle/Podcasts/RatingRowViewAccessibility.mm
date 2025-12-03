@interface RatingRowViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation RatingRowViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ShelfKitCollectionViews.RatingRowView" hasInstanceMethod:@"accessibilityRatingView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.RatingRowView" hasInstanceMethod:@"accessibilityBarView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(RatingRowViewAccessibility *)self safeValueForKey:@"accessibilityRatingView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(RatingRowViewAccessibility *)self safeValueForKey:@"accessibilityBarView"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

@end