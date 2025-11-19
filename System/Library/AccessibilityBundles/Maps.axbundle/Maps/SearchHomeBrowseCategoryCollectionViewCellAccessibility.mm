@interface SearchHomeBrowseCategoryCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation SearchHomeBrowseCategoryCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(SearchHomeBrowseCategoryCollectionViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end