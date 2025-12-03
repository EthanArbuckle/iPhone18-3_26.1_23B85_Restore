@interface PosterBoardTestingUtilities
+ (id)posterRackViewController;
+ (id)posterSwitcherWindowScene;
@end

@implementation PosterBoardTestingUtilities

+ (id)posterSwitcherWindowScene
{
  v2 = NSClassFromString(@"PBFPosterSwitcherSceneDelegate");
  v3 = +[UIApplication sharedApplication];
  connectedScenes = [v3 connectedScenes];
  allObjects = [connectedScenes allObjects];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000034B4;
  v8[3] = &unk_100010598;
  v8[4] = v2;
  v6 = [allObjects bs_firstObjectPassingTest:v8];

  return v6;
}

+ (id)posterRackViewController
{
  posterSwitcherWindowScene = [self posterSwitcherWindowScene];
  delegate = [posterSwitcherWindowScene delegate];
  posterRackViewController = [delegate posterRackViewController];

  return posterRackViewController;
}

@end