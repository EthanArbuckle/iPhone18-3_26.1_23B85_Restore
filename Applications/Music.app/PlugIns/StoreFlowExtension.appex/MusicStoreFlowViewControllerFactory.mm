@interface MusicStoreFlowViewControllerFactory
- (id)newPlaceholderViewController;
@end

@implementation MusicStoreFlowViewControllerFactory

- (id)newPlaceholderViewController
{
  v6.receiver = self;
  v6.super_class = MusicStoreFlowViewControllerFactory;
  newPlaceholderViewController = [(MusicStoreFlowViewControllerFactory *)&v6 newPlaceholderViewController];
  v3 = +[UIColor whiteColor];
  v4 = [SUGradient gradientWithColor:v3];
  [newPlaceholderViewController setDefaultBackgroundGradient:v4];

  [newPlaceholderViewController setShouldShowLoadingView:0];
  return newPlaceholderViewController;
}

@end