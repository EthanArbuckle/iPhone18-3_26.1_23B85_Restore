@interface ChartOrCategoryBrickCollectionViewCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation ChartOrCategoryBrickCollectionViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ChartOrCategoryBrickCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ChartOrCategoryBrickCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v2 = [(ChartOrCategoryBrickCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"titleText"];
  v3 = __UIAXStringForVariables();

  return v3;
}

@end