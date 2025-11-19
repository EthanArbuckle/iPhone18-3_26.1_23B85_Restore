@interface MUBrowseCategoryCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation MUBrowseCategoryCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(MUBrowseCategoryCollectionViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end