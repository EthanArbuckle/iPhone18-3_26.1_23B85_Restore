@interface UICollectionViewListCellAccessibility
@end

@implementation UICollectionViewListCellAccessibility

uint64_t __77__UICollectionViewListCellAccessibility__AppStore__UIKit__axIsInPageFacetsVC__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2C9570](@"Arcade.PageFacetsViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end