@interface UICollectionViewAccessibility
@end

@implementation UICollectionViewAccessibility

uint64_t __88__UICollectionViewAccessibility__Music__UIKit_accessibilityShouldSpeakItemReorderEvents__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2E2910](@"Music.NowPlayingViewController");
  if (objc_opt_isKindOfClass() & 1) != 0 || (MEMORY[0x29C2E2910](@"Music.LibraryMainViewController"), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    MEMORY[0x29C2E2910](@"Music.PlaylistEditingViewController");
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t __102__UICollectionViewAccessibility__Music__UIKit__accessibilitySupplementaryViewSectionHeaderIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToString:*MEMORY[0x29EDC8048]])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isEqualToString:@"ShelfSupplementaryViewKindGlobalHeader"] ^ 1;
  }

  return v3;
}

@end