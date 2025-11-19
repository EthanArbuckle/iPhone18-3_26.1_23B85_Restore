@interface MusicStoreFlowViewControllerFactory
- (id)newPlaceholderViewController;
@end

@implementation MusicStoreFlowViewControllerFactory

- (id)newPlaceholderViewController
{
  v6.receiver = self;
  v6.super_class = MusicStoreFlowViewControllerFactory;
  v2 = [(MusicStoreFlowViewControllerFactory *)&v6 newPlaceholderViewController];
  v3 = +[UIColor whiteColor];
  v4 = [SUGradient gradientWithColor:v3];
  [v2 setDefaultBackgroundGradient:v4];

  [v2 setShouldShowLoadingView:0];
  return v2;
}

@end