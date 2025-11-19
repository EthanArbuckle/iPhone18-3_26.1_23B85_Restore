@interface RatingRowViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation RatingRowViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ShelfKitCollectionViews.RatingRowView" hasInstanceMethod:@"accessibilityRatingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.RatingRowView" hasInstanceMethod:@"accessibilityBarView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(RatingRowViewAccessibility *)self safeValueForKey:@"accessibilityRatingView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(RatingRowViewAccessibility *)self safeValueForKey:@"accessibilityBarView"];
  v3 = [v2 accessibilityValue];

  return v3;
}

@end