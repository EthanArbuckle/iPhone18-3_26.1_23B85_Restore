@interface DebugUI
+ (BOOL)isDebugUrl:(id)url;
+ (id)createScreenShotOfPresentedViewController:(id)controller;
+ (id)debugViewController;
+ (void)initializeDebugUI:(id)i;
+ (void)showDebugUI;
@end

@implementation DebugUI

+ (BOOL)isDebugUrl:(id)url
{
  host = [url host];
  v4 = [host isEqualToString:@"debug"];

  return v4;
}

+ (void)initializeDebugUI:(id)i
{
  iCopy = i;
  v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"showDebugUI"];
  [v5 _setRequiresSystemGesturesToFail:0];
  [v5 setNumberOfTouchesRequired:2];
  [v5 setNumberOfTapsRequired:2];
  [iCopy addGestureRecognizer:v5];
}

+ (void)showDebugUI
{
  v2 = +[DebugUtil sharedApplicationIfPossible];
  if (v2)
  {
    v19 = v2;
    NSLog(@"Showing Debug UI");
    v3 = showDebugUI_navController;
    if (!showDebugUI_navController)
    {
      v4 = [UINavigationController alloc];
      v5 = +[DebugUI debugViewController];
      v6 = [v4 initWithRootViewController:v5];
      v7 = showDebugUI_navController;
      showDebugUI_navController = v6;

      v8 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v8 userInterfaceIdiom];
      [showDebugUI_navController setModalPresentationStyle:2 * (userInterfaceIdiom == &dword_0 + 1)];

      v3 = showDebugUI_navController;
    }

    presentingViewController = [v3 presentingViewController];

    v2 = v19;
    if (!presentingViewController)
    {
      delegate = [v19 delegate];
      window = [delegate window];
      rootViewController = [window rootViewController];

      presentedViewController = [rootViewController presentedViewController];

      if (presentedViewController)
      {
        do
        {
          presentedViewController2 = [rootViewController presentedViewController];

          v15PresentedViewController = [presentedViewController2 presentedViewController];

          rootViewController = presentedViewController2;
        }

        while (v15PresentedViewController);
      }

      else
      {
        presentedViewController2 = rootViewController;
      }

      v17 = [DebugUI createScreenShotOfPresentedViewController:presentedViewController2];
      v18 = +[DebugUI debugViewController];
      [v18 setScreenShotImage:v17];

      [presentedViewController2 presentViewController:showDebugUI_navController animated:1 completion:0];
      v2 = v19;
    }
  }
}

+ (id)debugViewController
{
  v2 = debugViewController_debugViewController;
  if (!debugViewController_debugViewController)
  {
    v3 = objc_alloc_init(IMDebugViewController);
    v4 = debugViewController_debugViewController;
    debugViewController_debugViewController = v3;

    v2 = debugViewController_debugViewController;
  }

  return v2;
}

+ (id)createScreenShotOfPresentedViewController:(id)controller
{
  view = [controller view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v8 = +[UIScreen mainScreen];
  [v8 scale];
  v10 = v9;
  v14.width = v5;
  v14.height = v7;
  UIGraphicsBeginImageContextWithOptions(v14, 0, v10);

  [view bounds];
  [view drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v11;
}

@end