@interface ProductReviewCollectionViewCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation ProductReviewCollectionViewCellAccessibility

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