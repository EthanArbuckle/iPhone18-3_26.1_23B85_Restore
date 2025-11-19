@interface AXInvertColors_PodcastsStoreUI
+ (void)installCategories:(id)a3;
@end

@implementation AXInvertColors_PodcastsStoreUI

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"PodcastsUIArtworkViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"NowPlayingContentViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end