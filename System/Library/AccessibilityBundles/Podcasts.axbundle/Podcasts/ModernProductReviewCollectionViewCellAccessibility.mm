@interface ModernProductReviewCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
@end

@implementation ModernProductReviewCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ModernProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ModernProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityRatingView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ModernProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityDateLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ModernProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityUsernameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ModernProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityTextLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ModernProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityReviewMoreButton" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ModernProductReviewCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ModernProductReviewCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

- (id)automationElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v7.receiver = self;
  v7.super_class = ModernProductReviewCollectionViewCellAccessibility;
  automationElements = [(ModernProductReviewCollectionViewCellAccessibility *)&v7 automationElements];
  [array axSafelyAddObjectsFromArray:automationElements];

  v5 = [(ModernProductReviewCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityReviewMoreButton"];
  if ([v5 _accessibilityViewIsVisible])
  {
    [array axSafelyAddObject:v5];
  }

  return array;
}

@end