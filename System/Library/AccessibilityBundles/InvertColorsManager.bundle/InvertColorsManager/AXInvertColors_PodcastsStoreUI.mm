@interface AXInvertColors_PodcastsStoreUI
+ (void)installCategories:(id)categories;
@end

@implementation AXInvertColors_PodcastsStoreUI

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"PodcastsUIArtworkViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"NowPlayingContentViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end