@interface GTReplayerSceneDelegate
- (UIWindow)window;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation GTReplayerSceneDelegate

- (UIWindow)window
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];

  v4 = [v3 window];

  return v4;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v17 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 role];
    v8 = [v7 isEqualToString:UIWindowSceneSessionRoleApplication];

    if (v8)
    {
      v9 = v17;
      v10 = +[UIApplication sharedApplication];
      v11 = [v10 delegate];

      v12 = [v11 window];

      if (v12)
      {
        v13 = [v11 window];
        v14 = [v13 windowScene];

        if (v14 != v9)
        {
          v15 = [v11 window];
          [v15 setWindowScene:v9];
        }

        v16 = [v11 window];
        [v16 makeKeyAndVisible];
      }

      else
      {
        v16 = [[UIWindow alloc] initWithWindowScene:v9];
        [v11 setWindow:v16];
        [v11 _applicationDidFinishLaunching];
      }
    }
  }
}

@end