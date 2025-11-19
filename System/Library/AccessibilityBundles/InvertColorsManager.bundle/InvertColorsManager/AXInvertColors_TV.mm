@interface AXInvertColors_TV
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_TV

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosFeatureLoadingView"];
  [v3 validateClass:@"VideosPlaybackViewController" isKindOfClass:@"UIViewController"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"VideosFeatureLoadingViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"VideosPlaybackViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end