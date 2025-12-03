@interface MUBrowseCategoryCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation MUBrowseCategoryCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(MUBrowseCategoryCollectionViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end