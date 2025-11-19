@interface ServiceTFBetaLaunchHostViewController
- (TFHostedBetaAppLaunchScreenView)launchViewController;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismissViewService;
- (void)_presentLaunchViewControllerForIdentifier:(id)a3;
- (void)_setupViewController:(id)a3 forPresentationInTraitEnvironment:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ServiceTFBetaLaunchHostViewController

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

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = ServiceTFBetaLaunchHostViewController;
  [(ServiceTFBetaLaunchHostViewController *)&v6 traitCollectionDidChange:a3];
  v4 = [(ServiceTFBetaLaunchHostViewController *)self launchViewController];
  v5 = [(ServiceTFBetaLaunchHostViewController *)self traitCollection];
  [v4 launchScreenHost:self traitCollectionDidChange:v5];
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(ServiceTFBetaLaunchHostViewController *)self _remoteViewControllerProxy];
  [v7 setDesiredHardwareButtonEvents:16];
  [v7 setAllowsMenuButtonDismissal:1];
  [v7 setWallpaperTunnelActive:0];
  [v7 setAllowsAlertStacking:1];
  [v7 setDismissalAnimationStyle:2];
  [v7 setReachabilityDisabled:1];
  v8 = +[UIDevice currentDevice];
  v9 = [v8 userInterfaceIdiom];

  [v7 setSwipeDismissalStyle:(v9 & 0xFFFFFFFFFFFFFFFBLL) != 1];
  v10 = +[UIDevice currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if ((v11 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v12 = +[UIApplication sharedApplication];
    v13 = [v12 statusBarOrientation];

    [v7 setLaunchingInterfaceOrientation:v13];
  }

  v14 = [v16 userInfo];
  v15 = [TFBetaLaunchHandleConfiguration configurationFromUserInfo:v14];
  [(ServiceTFBetaLaunchHostViewController *)self setActiveConfiguration:v15];

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
          [(ServiceTFBetaLaunchHostViewController *)self _dismissViewService];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_presentLaunchViewControllerForIdentifier:(id)a3
{
  v4 = [(ServiceTFBetaLaunchHostViewController *)self activeConfiguration];
  v5 = [v4 bundleIdentifier];
  v6 = [(ServiceTFBetaLaunchHostViewController *)self activeConfiguration];
  v7 = [v6 launchInfo];
  v11 = [TFBetaAppLaunchScreenProvider createBetaAppLaunchViewControllerForIdentifier:v5 hostedIn:self withSidepackLaunchInfo:v7];

  [(ServiceTFBetaLaunchHostViewController *)self setLaunchViewController:v11];
  v8 = [UINavigationController alloc];
  v9 = [(ServiceTFBetaLaunchHostViewController *)self launchViewController];
  v10 = [v8 initWithRootViewController:v9];

  [v10 setDelegate:self];
  [(ServiceTFBetaLaunchHostViewController *)self _setupViewController:v10 forPresentationInTraitEnvironment:self];
  [(ServiceTFBetaLaunchHostViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)_setupViewController:(id)a3 forPresentationInTraitEnvironment:(id)a4
{
  v7 = a3;
  v5 = [a4 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 == 1)
  {
    [v7 setModalPresentationStyle:0];
    [v7 setModalTransitionStyle:2];
  }

  else
  {
    [v7 setModalPresentationStyle:2];
  }
}

- (void)_dismissViewService
{
  v3 = [(ServiceTFBetaLaunchHostViewController *)self _remoteViewControllerProxy];
  v4 = [(ServiceTFBetaLaunchHostViewController *)self presentedViewController];

  if (v4)
  {
    v5 = [(ServiceTFBetaLaunchHostViewController *)self presentedViewController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100007B7C;
    v6[3] = &unk_100051148;
    v7 = v3;
    [v5 dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {
    [v3 dismiss];
  }
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (TFHostedBetaAppLaunchScreenView)launchViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_launchViewController);

  return WeakRetained;
}

@end