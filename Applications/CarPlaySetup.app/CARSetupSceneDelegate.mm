@interface CARSetupSceneDelegate
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation CARSetupSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  window = [(CARSetupSceneDelegate *)self window];

  if (!window)
  {
    v7 = [[UIWindow alloc] initWithWindowScene:sceneCopy];
    [(CARSetupSceneDelegate *)self setWindow:v7];

    window2 = [(CARSetupSceneDelegate *)self window];
    [window2 makeKeyAndVisible];
  }
}

@end