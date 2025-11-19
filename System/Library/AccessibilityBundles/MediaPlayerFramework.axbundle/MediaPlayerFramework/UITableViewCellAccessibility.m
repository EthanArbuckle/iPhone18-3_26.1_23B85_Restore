@interface UITableViewCellAccessibility
@end

@implementation UITableViewCellAccessibility

uint64_t __71__UITableViewCellAccessibility__MediaPlayer__UIKit_accessibilityTraits__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _imageView:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end