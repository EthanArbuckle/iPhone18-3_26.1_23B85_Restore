@interface ViewController
- (id)extensionHostViewController;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dismissalDidEnd:(id)a3;
- (void)handleButtonActions:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)teardown;
@end

@implementation ViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v5 = [(ViewController *)self _remoteViewControllerProxy];
  [v5 setAllowsAlertStacking:1];
  [v5 setAllowsBanners:1];
  [v5 setAllowsSiri:1];
  [v5 setAllowsControlCenter:1];
  [v5 setAllowsAlertItems:1];
  [v5 setShouldDisableFadeInAnimation:1];
  [v5 setSwipeDismissalStyle:1];
  [v5 setDesiredHardwareButtonEvents:16];
  [v5 setSceneDeactivationReason:&off_100008298];
  if (v6)
  {
    v6[2]();
  }
}

- (void)handleButtonActions:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
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
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = [(ViewController *)self _remoteViewControllerProxy];
  v8 = [v23 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"renderID"];
  v10 = [v9 unsignedLongLongValue];

  v11 = [v23 userInfo];
  v12 = [v11 objectForKeyedSubscript:@"contextID"];
  v13 = [v12 unsignedIntValue];

  if (v10 && v13)
  {
    v14 = [PortalView alloc];
    v15 = [(ViewController *)self view];
    [v15 bounds];
    v16 = [(PortalView *)v14 initWithFrame:?];

    [(PortalView *)v16 setAutoresizingMask:18];
    [(PortalView *)v16 setSourceLayerRenderId:v10];
    [(PortalView *)v16 setSourceContextId:v13];
    v17 = [(ViewController *)self view];
    [v17 addSubview:v16];

    v18 = +[UIColor systemBlackColor];
    v19 = [(ViewController *)self view];
    v20 = [v19 window];
    [v20 setBackgroundColor:v18];
  }

  else
  {
    v16 = [(ViewController *)self view];
    v18 = [(PortalView *)v16 window];
    v19 = [v18 _rootSheetPresentationController];
    [v19 _setShouldScaleDownBehindDescendantSheets:0];
  }

  v21 = [v23 userInfo];
  v22 = [v21 objectForKeyedSubscript:@"userActivityData"];
  [(ViewController *)self setUserActivityData:v22];

  if (v6)
  {
    v6[2](v6);
  }
}

- (void)dismissalDidEnd:(id)a3
{
  v8 = a3;
  v4 = [v8 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v8 userInfo];
    v6 = [v5 objectForKeyedSubscript:UIPresentationControllerDismissalTransitionDidEndCompletedKey];
    v7 = [v6 BOOLValue];

    if (v7)
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

    v7 = [(ViewController *)self extensionHostViewController];
    [v7 setConfiguration:0];
    v4 = [v7 valueForKey:@"connection"];
    [v4 invalidate];

    v5 = [v7 presentingViewController];
    [v5 dismissViewControllerAnimated:0 completion:0];

    v6 = [(ViewController *)self _remoteViewControllerProxy];
    [v6 invalidate];
  }
}

- (id)extensionHostViewController
{
  v2 = [(ViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 rootViewController];

  if (v4)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v5 = [v4 presentedViewController];

      v4 = v5;
    }

    while (v5);
  }

  return v4;
}

@end