@interface UICollectionViewListCellAccessibility
@end

@implementation UICollectionViewListCellAccessibility

uint64_t __79__UICollectionViewListCellAccessibility__ContactsUI__UIKit_accessibilityTraits__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 accessibilityIdentifier];
    v4 = [v3 isEqualToString:@"plus.circle.fill"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end