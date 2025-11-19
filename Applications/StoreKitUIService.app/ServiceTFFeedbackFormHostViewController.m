@interface ServiceTFFeedbackFormHostViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismissViewService;
- (void)_presentFormViewControllerForSession:(id)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
@end

@implementation ServiceTFFeedbackFormHostViewController

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
  v22 = a3;
  v6 = a4;
  v7 = [(ServiceTFFeedbackFormHostViewController *)self _remoteViewControllerProxy];
  [v7 setDesiredHardwareButtonEvents:16];
  [v7 setAllowsMenuButtonDismissal:1];
  [v7 setWallpaperTunnelActive:0];
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

  v12 = [v22 userInfo];
  v13 = [TFFeedbackHandleConfiguration configurationFromUserInfo:v12];

  v14 = [v13 incidentId];
  LODWORD(v12) = v14 != 0;

  v15 = [TFFeedbackSession alloc];
  v16 = [v13 bundleIdentifier];
  v17 = [v15 initForContext:2 * v12 betaApplicationIdentifier:v16];
  [(ServiceTFFeedbackFormHostViewController *)self setHostedFeedbackSession:v17];

  v18 = [(ServiceTFFeedbackFormHostViewController *)self hostedFeedbackSession];
  [v18 setDelegate:self];

  v19 = [(ServiceTFFeedbackFormHostViewController *)self hostedFeedbackSession];
  [v19 initiateFeedbackSnapshot];

  v20 = [(ServiceTFFeedbackFormHostViewController *)self hostedFeedbackSession];
  v21 = [v13 incidentId];
  [v20 associateIncidentId:v21];

  if (v6)
  {
    v6[2](v6);
  }
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
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
          [(ServiceTFFeedbackFormHostViewController *)self _dismissViewService];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_presentFormViewControllerForSession:(id)a3
{
  v4 = a3;
  v5 = [(ServiceTFFeedbackFormHostViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 _rootSheetPresentationController];
  [v7 _setShouldScaleDownBehindDescendantSheets:0];

  v14 = [v4 createFeedbackViewControllerForCurrentState];

  v8 = [UIBarButtonItem alloc];
  v9 = [SKUIClientContext localizedStringForKey:@"CANCEL" inBundles:0];
  v10 = [v8 initWithTitle:v9 style:0 target:self action:"cancelButtonPressed:"];

  v11 = [v14 navigationItem];
  [v11 setLeftBarButtonItem:v10];

  v12 = [[UINavigationController alloc] initWithRootViewController:v14];
  [v12 setModalPresentationStyle:1];
  v13 = [v12 presentationController];
  [v13 setDelegate:self];

  [(ServiceTFFeedbackFormHostViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_dismissViewService
{
  v3 = [(ServiceTFFeedbackFormHostViewController *)self _remoteViewControllerProxy];
  v4 = [(ServiceTFFeedbackFormHostViewController *)self presentedViewController];

  if (v4)
  {
    v5 = [(ServiceTFFeedbackFormHostViewController *)self presentedViewController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000DADC;
    v6[3] = &unk_100051148;
    v7 = v3;
    [v5 dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {
    [v3 dismiss];
  }
}

@end