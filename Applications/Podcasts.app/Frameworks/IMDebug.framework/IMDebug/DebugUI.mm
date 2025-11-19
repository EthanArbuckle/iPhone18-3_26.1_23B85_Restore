@interface DebugUI
+ (BOOL)isDebugUrl:(id)a3;
+ (id)createScreenShotOfPresentedViewController:(id)a3;
+ (id)debugViewController;
+ (void)initializeDebugUI:(id)a3;
+ (void)showDebugUI;
@end

@implementation DebugUI

+ (BOOL)isDebugUrl:(id)a3
{
  v3 = [a3 host];
  v4 = [v3 isEqualToString:@"debug"];

  return v4;
}

+ (void)initializeDebugUI:(id)a3
{
  v4 = a3;
  v5 = [[UITapGestureRecognizer alloc] initWithTarget:a1 action:"showDebugUI"];
  [v5 _setRequiresSystemGesturesToFail:0];
  [v5 setNumberOfTouchesRequired:2];
  [v5 setNumberOfTapsRequired:2];
  [v4 addGestureRecognizer:v5];
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
      v9 = [v8 userInterfaceIdiom];
      [showDebugUI_navController setModalPresentationStyle:2 * (v9 == &dword_0 + 1)];

      v3 = showDebugUI_navController;
    }

    v10 = [v3 presentingViewController];

    v2 = v19;
    if (!v10)
    {
      v11 = [v19 delegate];
      v12 = [v11 window];
      v13 = [v12 rootViewController];

      v14 = [v13 presentedViewController];

      if (v14)
      {
        do
        {
          v15 = [v13 presentedViewController];

          v16 = [v15 presentedViewController];

          v13 = v15;
        }

        while (v16);
      }

      else
      {
        v15 = v13;
      }

      v17 = [DebugUI createScreenShotOfPresentedViewController:v15];
      v18 = +[DebugUI debugViewController];
      [v18 setScreenShotImage:v17];

      [v15 presentViewController:showDebugUI_navController animated:1 completion:0];
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

+ (id)createScreenShotOfPresentedViewController:(id)a3
{
  v3 = [a3 view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v8 = +[UIScreen mainScreen];
  [v8 scale];
  v10 = v9;
  v14.width = v5;
  v14.height = v7;
  UIGraphicsBeginImageContextWithOptions(v14, 0, v10);

  [v3 bounds];
  [v3 drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v11;
}

@end