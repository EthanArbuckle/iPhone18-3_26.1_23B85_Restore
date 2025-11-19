@interface AMUIPosterPhotosAppearanceTransitionCoordinator
- (void)setPosterViewController:(id)a3 progress:(double)a4;
@end

@implementation AMUIPosterPhotosAppearanceTransitionCoordinator

- (void)setPosterViewController:(id)a3 progress:(double)a4
{
  v5 = [a3 _posterViewController];
  [v5 setOpacity:2 forLayers:a4];
}

@end