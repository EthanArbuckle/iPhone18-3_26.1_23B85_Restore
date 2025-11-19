@interface CARSetupSceneDelegate
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation CARSetupSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v9 = a3;
  v6 = [(CARSetupSceneDelegate *)self window];

  if (!v6)
  {
    v7 = [[UIWindow alloc] initWithWindowScene:v9];
    [(CARSetupSceneDelegate *)self setWindow:v7];

    v8 = [(CARSetupSceneDelegate *)self window];
    [v8 makeKeyAndVisible];
  }
}

@end