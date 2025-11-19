@interface UICollectionViewAccessibility
@end

@implementation UICollectionViewAccessibility

double __83__UICollectionViewAccessibility__Memories__UIKit__accessibilityScrollWidthDistance__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x29EDB9FE0] indexPathForRow:0 inSection:0];
  [v2 _sizeForItemAtIndexPath:v3];
  v4 = *(*(a1 + 48) + 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;

  v7 = [*(a1 + 40) numberOfItemsInSection:0];
  result = (*(a1 + 64) - *(*(*(a1 + 48) + 8) + 32) * v7) / (v7 - 1);
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

@end