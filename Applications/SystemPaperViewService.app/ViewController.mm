@interface ViewController
- (id)extensionHostViewController;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismissalDidEnd:(id)end;
- (void)handleButtonActions:(id)actions;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)teardown;
@end

@implementation ViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  _remoteViewControllerProxy = [(ViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
  [_remoteViewControllerProxy setAllowsBanners:1];
  [_remoteViewControllerProxy setAllowsSiri:1];
  [_remoteViewControllerProxy setAllowsControlCenter:1];
  [_remoteViewControllerProxy setAllowsAlertItems:1];
  [_remoteViewControllerProxy setShouldDisableFadeInAnimation:1];
  [_remoteViewControllerProxy setSwipeDismissalStyle:1];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setSceneDeactivationReason:&off_100008298];
  if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [actionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(actionsCopy);
        }

        if (([*(*(&v10 + 1) + 8 * v8) events] & 0x10) != 0)
        {
          v9[0] = _NSConcreteStackBlock;
          v9[1] = 3221225472;
          v9[2] = sub_100001478;
          v9[3] = &unk_100008148;
          v9[4] = self;
          [(ViewController *)self dismissViewControllerAnimated:1 completion:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [actionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  _remoteViewControllerProxy = [(ViewController *)self _remoteViewControllerProxy];
  userInfo = [contextCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"renderID"];
  unsignedLongLongValue = [v9 unsignedLongLongValue];

  userInfo2 = [contextCopy userInfo];
  v12 = [userInfo2 objectForKeyedSubscript:@"contextID"];
  unsignedIntValue = [v12 unsignedIntValue];

  if (unsignedLongLongValue && unsignedIntValue)
  {
    v14 = [PortalView alloc];
    view = [(ViewController *)self view];
    [view bounds];
    view4 = [(PortalView *)v14 initWithFrame:?];

    [(PortalView *)view4 setAutoresizingMask:18];
    [(PortalView *)view4 setSourceLayerRenderId:unsignedLongLongValue];
    [(PortalView *)view4 setSourceContextId:unsignedIntValue];
    view2 = [(ViewController *)self view];
    [view2 addSubview:view4];

    window2 = +[UIColor systemBlackColor];
    view3 = [(ViewController *)self view];
    window = [view3 window];
    [window setBackgroundColor:window2];
  }

  else
  {
    view4 = [(ViewController *)self view];
    window2 = [(PortalView *)view4 window];
    view3 = [window2 _rootSheetPresentationController];
    [view3 _setShouldScaleDownBehindDescendantSheets:0];
  }

  userInfo3 = [contextCopy userInfo];
  v22 = [userInfo3 objectForKeyedSubscript:@"userActivityData"];
  [(ViewController *)self setUserActivityData:v22];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)dismissalDidEnd:(id)end
{
  endCopy = end;
  object = [endCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userInfo = [endCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:UIPresentationControllerDismissalTransitionDidEndCompletedKey];
    bOOLValue = [v6 BOOLValue];

    if (bOOLValue)
    {
      [(ViewController *)self teardown];
    }
  }

  else
  {
  }
}

- (void)teardown
{
  if (![(ViewController *)self didTeardown])
  {
    [(ViewController *)self setDidTeardown:1];
    v3 = +[NSProcessInfo processInfo];
    [v3 performExpiringActivityWithReason:@"Extending runtime for teardown" usingBlock:&stru_100008188];

    extensionHostViewController = [(ViewController *)self extensionHostViewController];
    [extensionHostViewController setConfiguration:0];
    v4 = [extensionHostViewController valueForKey:@"connection"];
    [v4 invalidate];

    presentingViewController = [extensionHostViewController presentingViewController];
    [presentingViewController dismissViewControllerAnimated:0 completion:0];

    _remoteViewControllerProxy = [(ViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy invalidate];
  }
}

- (id)extensionHostViewController
{
  view = [(ViewController *)self view];
  window = [view window];
  rootViewController = [window rootViewController];

  if (rootViewController)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      presentedViewController = [rootViewController presentedViewController];

      rootViewController = presentedViewController;
    }

    while (presentedViewController);
  }

  return rootViewController;
}

@end