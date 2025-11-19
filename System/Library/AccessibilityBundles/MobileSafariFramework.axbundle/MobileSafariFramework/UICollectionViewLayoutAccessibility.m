@interface UICollectionViewLayoutAccessibility
@end

@implementation UICollectionViewLayoutAccessibility

uint64_t __101__UICollectionViewLayoutAccessibility__MobileSafari__UIKit__accessibilitySortCollectionViewLogically__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityIdentifier];
  v3 = [v2 isEqualToString:@"PageFormatMenu"];

  return v3;
}

@end