@interface ProductRatingCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (void)clearAllRatings;
- (void)setRatingWithProportion:(float)proportion at:(int64_t)at;
@end

@implementation ProductRatingCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ProductRatingCollectionViewCell" hasInstanceMethod:@"setRatingWithProportion:at:" withFullSignature:{"v", "f", "q", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ProductRatingCollectionViewCell" hasInstanceMethod:@"clearAllRatings" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ProductRatingCollectionViewCell" hasInstanceMethod:@"accessibilityCurrentRatingLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ProductRatingCollectionViewCell" hasInstanceMethod:@"accessibilityOutOfRatingLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ProductRatingCollectionViewCell" hasInstanceMethod:@"accessibilityRatingBreakdownStack" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ProductRatingCollectionViewCell" hasInstanceMethod:@"accessibilityRatingCountLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v26 = *MEMORY[0x29EDCA608];
  _accessibilityProductRatingCollectionViewCellElements = [(ProductRatingCollectionViewCellAccessibility *)self _accessibilityProductRatingCollectionViewCellElements];
  if (!_accessibilityProductRatingCollectionViewCellElements)
  {
    _accessibilityProductRatingCollectionViewCellElements = [MEMORY[0x29EDB8DE8] array];
    v4 = MEMORY[0x29EDB8D80];
    v5 = [(ProductRatingCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityCurrentRatingLabel"];
    v6 = [(ProductRatingCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityOutOfRatingLabel"];
    v7 = [v4 axArrayByIgnoringNilElementsWithCount:{2, v5, v6}];

    v8 = [objc_alloc(MEMORY[0x29EDC7318]) initWithAccessibilityContainer:self representedElements:v7];
    [_accessibilityProductRatingCollectionViewCellElements axSafelyAddObject:v8];
    v24 = 0;
    objc_opt_class();
    v9 = [(ProductRatingCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityRatingBreakdownStack"];
    v10 = __UIAccessibilityCastAsClass();

    [v10 arrangedSubviews];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v23 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [_accessibilityProductRatingCollectionViewCellElements axSafelyAddObject:*(*(&v20 + 1) + 8 * i)];
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v13);
    }

    v24 = 0;
    objc_opt_class();
    v16 = [(ProductRatingCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityRatingCountLabel"];
    v17 = __UIAccessibilityCastAsClass();

    if (v24 == 1)
    {
      abort();
    }

    [_accessibilityProductRatingCollectionViewCellElements axSafelyAddObject:v17];
    [(ProductRatingCollectionViewCellAccessibility *)self _setAccessibilityProductRatingCollectionViewCellElements:_accessibilityProductRatingCollectionViewCellElements];
  }

  v18 = *MEMORY[0x29EDCA608];

  return _accessibilityProductRatingCollectionViewCellElements;
}

- (void)setRatingWithProportion:(float)proportion at:(int64_t)at
{
  v5.receiver = self;
  v5.super_class = ProductRatingCollectionViewCellAccessibility;
  [(ProductRatingCollectionViewCellAccessibility *)&v5 setRatingWithProportion:at at:?];
  [(ProductRatingCollectionViewCellAccessibility *)self _setAccessibilityProductRatingCollectionViewCellElements:0];
}

- (void)clearAllRatings
{
  v3.receiver = self;
  v3.super_class = ProductRatingCollectionViewCellAccessibility;
  [(ProductRatingCollectionViewCellAccessibility *)&v3 clearAllRatings];
  [(ProductRatingCollectionViewCellAccessibility *)self _setAccessibilityProductRatingCollectionViewCellElements:0];
}

@end