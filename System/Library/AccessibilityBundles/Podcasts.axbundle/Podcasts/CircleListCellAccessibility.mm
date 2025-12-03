@interface CircleListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CircleListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ShelfKitCollectionViews.CircleListCell" hasSwiftField:@"ordinalLabel" withSwiftType:"DynamicTypeLabel"];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.CircleListCell" hasSwiftField:@"titleLabel" withSwiftType:"DynamicTypeLabel"];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.CircleListCell" hasSwiftField:@"subtitleLabel" withSwiftType:"DynamicTypeLabel"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CircleListCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CircleListCellAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v3 = [(CircleListCellAccessibility *)self safeSwiftValueForKey:@"ordinalLabel"];
  v4 = [(CircleListCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v7 = [(CircleListCellAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  v5 = __UIAXStringForVariables();

  return v5;
}

@end