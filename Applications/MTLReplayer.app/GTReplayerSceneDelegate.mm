@interface GTReplayerSceneDelegate
- (UIWindow)window;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation GTReplayerSceneDelegate

- (UIWindow)window
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];

  window = [delegate window];

  return window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    role = [sessionCopy role];
    v8 = [role isEqualToString:UIWindowSceneSessionRoleApplication];

    if (v8)
    {
      v9 = sceneCopy;
      v10 = +[UIApplication sharedApplication];
      delegate = [v10 delegate];

      window = [delegate window];

      if (window)
      {
        window2 = [delegate window];
        windowScene = [window2 windowScene];

        if (windowScene != v9)
        {
          window3 = [delegate window];
          [window3 setWindowScene:v9];
        }

        window4 = [delegate window];
        [window4 makeKeyAndVisible];
      }

      else
      {
        window4 = [[UIWindow alloc] initWithWindowScene:v9];
        [delegate setWindow:window4];
        [delegate _applicationDidFinishLaunching];
      }
    }
  }
}

@end