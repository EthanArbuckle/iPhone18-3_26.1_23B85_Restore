@interface VUIMenuSectionHeaderCollectionViewCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation VUIMenuSectionHeaderCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(VUIMenuSectionHeaderCollectionViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = VUIMenuSectionHeaderCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F80] | [(VUIMenuSectionHeaderCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end