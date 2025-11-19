@interface ModernProductReviewCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
@end

@implementation ModernProductReviewCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ShelfKitCollectionViews.ModernProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.ModernProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityRatingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.ModernProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityDateLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.ModernProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityUsernameLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.ModernProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityTextLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.ModernProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityReviewMoreButton" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ModernProductReviewCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ModernProductReviewCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

- (id)automationElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v7.receiver = self;
  v7.super_class = ModernProductReviewCollectionViewCellAccessibility;
  v4 = [(ModernProductReviewCollectionViewCellAccessibility *)&v7 automationElements];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(ModernProductReviewCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityReviewMoreButton"];
  if ([v5 _accessibilityViewIsVisible])
  {
    [v3 axSafelyAddObject:v5];
  }

  return v3;
}

@end