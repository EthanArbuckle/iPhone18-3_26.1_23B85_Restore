@interface TwoLineCollectionViewListCellAccessibility
- (id)accessibilityLabel;
@end

@implementation TwoLineCollectionViewListCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(TwoLineCollectionViewListCellAccessibility *)self safeValueForKey:@"_twoLinesContentView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end