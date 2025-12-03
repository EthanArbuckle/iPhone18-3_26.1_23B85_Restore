@interface RibbonBarItemCollectionViewCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation RibbonBarItemCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(RibbonBarItemCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = RibbonBarItemCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(RibbonBarItemCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end