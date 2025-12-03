@interface AMUIPosterPhotosAppearanceTransitionCoordinator
- (void)setPosterViewController:(id)controller progress:(double)progress;
@end

@implementation AMUIPosterPhotosAppearanceTransitionCoordinator

- (void)setPosterViewController:(id)controller progress:(double)progress
{
  _posterViewController = [controller _posterViewController];
  [_posterViewController setOpacity:2 forLayers:progress];
}

@end