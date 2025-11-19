@interface CBSceneWindow
- (id)_topViewController;
- (void)dismissViewControllerAnimated:(BOOL)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)viewControllerDidDismiss;
@end

@implementation CBSceneWindow

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(CBSceneWindow *)self _topViewController];
  [v10 presentViewController:v9 animated:v5 completion:v8];
}

- (void)dismissViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CBSceneWindow *)self _topViewController];
  v6 = [(CBSceneWindow *)self rootViewController];

  if (v5 != v6)
  {
    v7 = [(CBWindow *)self windowManager];
    [v7 windowWillDismiss:self];

    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100005CCC;
    v8[3] = &unk_10007D668;
    objc_copyWeak(&v9, &location);
    [v5 dismissViewControllerAnimated:v3 completion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)viewControllerDidDismiss
{
  v3 = [(CBWindow *)self windowManager];
  [v3 windowWillDismiss:self];

  v4 = [(CBWindow *)self windowManager];
  [v4 windowDidDismiss:self];
}

- (id)_topViewController
{
  v2 = [(CBSceneWindow *)self rootViewController];
  v3 = [v2 presentedViewController];

  if (v3)
  {
    do
    {
      v4 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CBSceneManager: presentingVC.presentingViewController", v8, 2u);
      }

      v5 = [v2 presentedViewController];

      v6 = [v5 presentedViewController];

      v2 = v5;
    }

    while (v6);
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

@end