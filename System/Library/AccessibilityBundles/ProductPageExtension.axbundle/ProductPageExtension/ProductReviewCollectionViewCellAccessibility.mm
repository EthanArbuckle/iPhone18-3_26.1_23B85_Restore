@interface ProductReviewCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation ProductReviewCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ProductPageExtension.ProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.ProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityDateLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.ProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityRatingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.ProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityAuthorLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.ProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityBodyLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.ProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityResponseTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.ProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityResponseDateLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.ProductReviewCollectionViewCell" hasInstanceMethod:@"accessibilityResponseBodyLabel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ProductReviewCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ProductReviewCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v3 = [(ProductReviewCollectionViewCellAccessibility *)self safeUIViewForKey:@"accessibilityResponseTitleLabel"];
  v4 = [v3 _accessibilityViewIsVisible];
  if (v4)
  {
    v5 = [(ProductReviewCollectionViewCellAccessibility *)self safeUIViewForKey:@"accessibilityResponseTitleLabel"];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ProductReviewCollectionViewCellAccessibility *)self safeUIViewForKey:@"accessibilityResponseDateLabel"];
  v7 = [v6 _accessibilityViewIsVisible];
  if (v7)
  {
    v8 = [(ProductReviewCollectionViewCellAccessibility *)self safeUIViewForKey:@"accessibilityResponseDateLabel"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(ProductReviewCollectionViewCellAccessibility *)self safeUIViewForKey:@"accessibilityResponseBodyLabel"];
  if ([v9 _accessibilityViewIsVisible])
  {
    v15 = [(ProductReviewCollectionViewCellAccessibility *)self safeUIViewForKey:@"accessibilityResponseBodyLabel"];
    v14 = v8;
    v10 = __UIAXStringForVariables();
  }

  else
  {
    v15 = 0;
    v14 = v8;
    v10 = __UIAXStringForVariables();
  }

  if (v7)
  {
  }

  if (v4)
  {
  }

  v11 = [(ProductReviewCollectionViewCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityTitleLabel, accessibilityDateLabel, accessibilityRatingView, accessibilityAuthorLabel, accessibilityBodyLabel", v14, v15, @"__AXStringForVariablesSentinel"];
  v12 = __UIAXStringForVariables();

  return v12;
}

@end