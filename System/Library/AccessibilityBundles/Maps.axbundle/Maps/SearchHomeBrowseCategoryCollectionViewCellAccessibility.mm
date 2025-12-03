@interface SearchHomeBrowseCategoryCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation SearchHomeBrowseCategoryCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(SearchHomeBrowseCategoryCollectionViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end