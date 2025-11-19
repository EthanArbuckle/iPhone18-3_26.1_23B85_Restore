@interface UICollectionViewListCellAccessibility
@end

@implementation UICollectionViewListCellAccessibility

uint64_t __82__UICollectionViewListCellAccessibility__Music__UIKit__axIsInViewControllerClass___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _accessibilityViewController];
  v4 = *(a1 + 32);
  LOBYTE(a1) = objc_opt_isKindOfClass();

  return a1 & 1;
}

@end