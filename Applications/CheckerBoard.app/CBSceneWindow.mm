@interface CBSceneWindow
- (id)_topViewController;
- (void)dismissViewControllerAnimated:(BOOL)animated;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)viewControllerDidDismiss;
@end

@implementation CBSceneWindow

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  _topViewController = [(CBSceneWindow *)self _topViewController];
  [_topViewController presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)dismissViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _topViewController = [(CBSceneWindow *)self _topViewController];
  rootViewController = [(CBSceneWindow *)self rootViewController];

  if (_topViewController != rootViewController)
  {
    windowManager = [(CBWindow *)self windowManager];
    [windowManager windowWillDismiss:self];

    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100005CCC;
    v8[3] = &unk_10007D668;
    objc_copyWeak(&v9, &location);
    [_topViewController dismissViewControllerAnimated:animatedCopy completion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)viewControllerDidDismiss
{
  windowManager = [(CBWindow *)self windowManager];
  [windowManager windowWillDismiss:self];

  windowManager2 = [(CBWindow *)self windowManager];
  [windowManager2 windowDidDismiss:self];
}

- (id)_topViewController
{
  rootViewController = [(CBSceneWindow *)self rootViewController];
  presentedViewController = [rootViewController presentedViewController];

  if (presentedViewController)
  {
    do
    {
      v4 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CBSceneManager: presentingVC.presentingViewController", v8, 2u);
      }

      presentedViewController2 = [rootViewController presentedViewController];

      v5PresentedViewController = [presentedViewController2 presentedViewController];

      rootViewController = presentedViewController2;
    }

    while (v5PresentedViewController);
  }

  else
  {
    presentedViewController2 = rootViewController;
  }

  return presentedViewController2;
}

@end