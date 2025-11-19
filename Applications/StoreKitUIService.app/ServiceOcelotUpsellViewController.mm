@interface ServiceOcelotUpsellViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismissViewService;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)didFinishWithError:(id)a3;
- (void)handleButtonActions:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
@end

@implementation ServiceOcelotUpsellViewController

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v25 = a4;
  v6 = a3;
  v7 = [(ServiceOcelotUpsellViewController *)self _remoteViewControllerProxy];
  [v7 setDesiredHardwareButtonEvents:16];
  [v7 setAllowsMenuButtonDismissal:1];
  [v7 setWallpaperTunnelActive:1];
  [v7 setAllowsAlertStacking:1];
  [v7 setDismissalAnimationStyle:2];
  [v7 setReachabilityDisabled:1];
  [v7 setSwipeDismissalStyle:1];
  v8 = +[UIDevice currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = +[UIApplication sharedApplication];
    v11 = [v10 statusBarOrientation];

    [v7 setLaunchingInterfaceOrientation:v11];
  }

  v12 = [SKArcadeSubscribeViewController alloc];
  v13 = [v6 userInfo];
  v14 = [v13 objectForKeyedSubscript:@"itemID"];
  v15 = [v6 userInfo];

  v16 = [v15 objectForKeyedSubscript:@"bundleID"];
  v17 = [v12 initWithItemID:v14 bundleID:v16];
  [(ServiceOcelotUpsellViewController *)self setChildViewController:v17];

  v18 = [(ServiceOcelotUpsellViewController *)self childViewController];
  [v18 setDelegate:self];

  v19 = [(ServiceOcelotUpsellViewController *)self childViewController];
  [(ServiceOcelotUpsellViewController *)self addChildViewController:v19];

  v20 = [(ServiceOcelotUpsellViewController *)self childViewController];
  v21 = [v20 view];

  v22 = [(ServiceOcelotUpsellViewController *)self view];
  [v22 bounds];
  [v21 setFrame:?];

  [v21 setAutoresizingMask:18];
  v23 = [(ServiceOcelotUpsellViewController *)self view];
  [v23 addSubview:v21];

  v24 = [(ServiceOcelotUpsellViewController *)self childViewController];
  [v24 didMoveToParentViewController:self];

  if (v25)
  {
    v25[2]();
  }
}

- (void)handleButtonActions:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (([*(*(&v9 + 1) + 8 * v8) events] & 0x10) != 0)
        {
          [(ServiceOcelotUpsellViewController *)self _dismissViewService];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)_dismissViewService
{
  v5 = [(ServiceOcelotUpsellViewController *)self _remoteViewControllerProxy];
  [v5 dismiss];
  v3 = [(ServiceOcelotUpsellViewController *)self childViewController];

  if (v3)
  {
    v4 = [(ServiceOcelotUpsellViewController *)self childViewController];
    [v4 finishExtension];
  }
}

- (void)didFinishWithError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[SSLogConfig sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      *v13 = 138543618;
      *&v13[4] = objc_opt_class();
      *&v13[12] = 2114;
      *&v13[14] = v4;
      v9 = *&v13[4];
      LODWORD(v12) = 22;
      v11 = v13;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_11:

        goto LABEL_12;
      }

      v8 = [NSString stringWithCString:v10 encoding:4, v13, v12, *v13, *&v13[16]];
      free(v10);
      v11 = v8;
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
  [(ServiceOcelotUpsellViewController *)self _dismissViewService];
}

@end