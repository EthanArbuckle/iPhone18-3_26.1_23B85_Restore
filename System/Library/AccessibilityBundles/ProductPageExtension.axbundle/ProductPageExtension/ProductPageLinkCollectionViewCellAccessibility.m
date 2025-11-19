@interface ProductPageLinkCollectionViewCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation ProductPageLinkCollectionViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ProductPageLinkCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ProductPageLinkCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end