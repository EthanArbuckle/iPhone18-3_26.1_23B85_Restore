@interface TwoLineCollectionViewListCellAccessibility
- (id)accessibilityLabel;
@end

@implementation TwoLineCollectionViewListCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(TwoLineCollectionViewListCellAccessibility *)self safeValueForKey:@"_twoLinesContentView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end