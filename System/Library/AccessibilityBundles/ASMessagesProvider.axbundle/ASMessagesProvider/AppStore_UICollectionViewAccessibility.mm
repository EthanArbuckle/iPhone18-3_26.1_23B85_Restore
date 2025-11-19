@interface AppStore_UICollectionViewAccessibility
- (double)_accessibilityVisibleItemDenominator;
@end

@implementation AppStore_UICollectionViewAccessibility

- (double)_accessibilityVisibleItemDenominator
{
  v3 = [(AppStore_UICollectionViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"AXArticlePageViewCollectionView"];

  result = 6.0;
  if ((v4 & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = AppStore_UICollectionViewAccessibility;
    [(AppStore_UICollectionViewAccessibility *)&v6 _accessibilityVisibleItemDenominator];
  }

  return result;
}

@end