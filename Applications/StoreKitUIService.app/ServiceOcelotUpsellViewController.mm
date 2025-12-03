@interface ServiceOcelotUpsellViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismissViewService;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)didFinishWithError:(id)error;
- (void)handleButtonActions:(id)actions;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
@end

@implementation ServiceOcelotUpsellViewController

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  _remoteViewControllerProxy = [(ServiceOcelotUpsellViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setAllowsMenuButtonDismissal:1];
  [_remoteViewControllerProxy setWallpaperTunnelActive:1];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
  [_remoteViewControllerProxy setDismissalAnimationStyle:2];
  [_remoteViewControllerProxy setReachabilityDisabled:1];
  [_remoteViewControllerProxy setSwipeDismissalStyle:1];
  v8 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v8 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = +[UIApplication sharedApplication];
    statusBarOrientation = [v10 statusBarOrientation];

    [_remoteViewControllerProxy setLaunchingInterfaceOrientation:statusBarOrientation];
  }

  v12 = [SKArcadeSubscribeViewController alloc];
  userInfo = [contextCopy userInfo];
  v14 = [userInfo objectForKeyedSubscript:@"itemID"];
  userInfo2 = [contextCopy userInfo];

  v16 = [userInfo2 objectForKeyedSubscript:@"bundleID"];
  v17 = [v12 initWithItemID:v14 bundleID:v16];
  [(ServiceOcelotUpsellViewController *)self setChildViewController:v17];

  childViewController = [(ServiceOcelotUpsellViewController *)self childViewController];
  [childViewController setDelegate:self];

  childViewController2 = [(ServiceOcelotUpsellViewController *)self childViewController];
  [(ServiceOcelotUpsellViewController *)self addChildViewController:childViewController2];

  childViewController3 = [(ServiceOcelotUpsellViewController *)self childViewController];
  view = [childViewController3 view];

  view2 = [(ServiceOcelotUpsellViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  [view setAutoresizingMask:18];
  view3 = [(ServiceOcelotUpsellViewController *)self view];
  [view3 addSubview:view];

  childViewController4 = [(ServiceOcelotUpsellViewController *)self childViewController];
  [childViewController4 didMoveToParentViewController:self];

  if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(actionsCopy);
        }

        if (([*(*(&v9 + 1) + 8 * v8) events] & 0x10) != 0)
        {
          [(ServiceOcelotUpsellViewController *)self _dismissViewService];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)_dismissViewService
{
  _remoteViewControllerProxy = [(ServiceOcelotUpsellViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismiss];
  childViewController = [(ServiceOcelotUpsellViewController *)self childViewController];

  if (childViewController)
  {
    childViewController2 = [(ServiceOcelotUpsellViewController *)self childViewController];
    [childViewController2 finishExtension];
  }
}

- (void)didFinishWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v5 = +[SSLogConfig sharedConfig];
    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      *v13 = 138543618;
      *&v13[4] = objc_opt_class();
      *&v13[12] = 2114;
      *&v13[14] = errorCopy;
      v9 = *&v13[4];
      LODWORD(v12) = 22;
      v11 = v13;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_11:

        goto LABEL_12;
      }

      oSLogObject = [NSString stringWithCString:v10 encoding:4, v13, v12, *v13, *&v13[16]];
      free(v10);
      v11 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
  [(ServiceOcelotUpsellViewController *)self _dismissViewService];
}

@end