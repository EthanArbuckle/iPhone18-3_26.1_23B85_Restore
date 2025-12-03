@interface ServiceTFBetaLaunchHostViewController
- (TFHostedBetaAppLaunchScreenView)launchViewController;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismissViewService;
- (void)_presentLaunchViewControllerForIdentifier:(id)identifier;
- (void)_setupViewController:(id)controller forPresentationInTraitEnvironment:(id)environment;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ServiceTFBetaLaunchHostViewController

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

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = ServiceTFBetaLaunchHostViewController;
  [(ServiceTFBetaLaunchHostViewController *)&v6 traitCollectionDidChange:change];
  launchViewController = [(ServiceTFBetaLaunchHostViewController *)self launchViewController];
  traitCollection = [(ServiceTFBetaLaunchHostViewController *)self traitCollection];
  [launchViewController launchScreenHost:self traitCollectionDidChange:traitCollection];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  _remoteViewControllerProxy = [(ServiceTFBetaLaunchHostViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setAllowsMenuButtonDismissal:1];
  [_remoteViewControllerProxy setWallpaperTunnelActive:0];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
  [_remoteViewControllerProxy setDismissalAnimationStyle:2];
  [_remoteViewControllerProxy setReachabilityDisabled:1];
  v8 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v8 userInterfaceIdiom];

  [_remoteViewControllerProxy setSwipeDismissalStyle:(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1];
  v10 = +[UIDevice currentDevice];
  userInterfaceIdiom2 = [v10 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v12 = +[UIApplication sharedApplication];
    statusBarOrientation = [v12 statusBarOrientation];

    [_remoteViewControllerProxy setLaunchingInterfaceOrientation:statusBarOrientation];
  }

  userInfo = [contextCopy userInfo];
  v15 = [TFBetaLaunchHandleConfiguration configurationFromUserInfo:userInfo];
  [(ServiceTFBetaLaunchHostViewController *)self setActiveConfiguration:v15];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
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
          [(ServiceTFBetaLaunchHostViewController *)self _dismissViewService];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_presentLaunchViewControllerForIdentifier:(id)identifier
{
  activeConfiguration = [(ServiceTFBetaLaunchHostViewController *)self activeConfiguration];
  bundleIdentifier = [activeConfiguration bundleIdentifier];
  activeConfiguration2 = [(ServiceTFBetaLaunchHostViewController *)self activeConfiguration];
  launchInfo = [activeConfiguration2 launchInfo];
  v11 = [TFBetaAppLaunchScreenProvider createBetaAppLaunchViewControllerForIdentifier:bundleIdentifier hostedIn:self withSidepackLaunchInfo:launchInfo];

  [(ServiceTFBetaLaunchHostViewController *)self setLaunchViewController:v11];
  v8 = [UINavigationController alloc];
  launchViewController = [(ServiceTFBetaLaunchHostViewController *)self launchViewController];
  v10 = [v8 initWithRootViewController:launchViewController];

  [v10 setDelegate:self];
  [(ServiceTFBetaLaunchHostViewController *)self _setupViewController:v10 forPresentationInTraitEnvironment:self];
  [(ServiceTFBetaLaunchHostViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)_setupViewController:(id)controller forPresentationInTraitEnvironment:(id)environment
{
  controllerCopy = controller;
  traitCollection = [environment traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1)
  {
    [controllerCopy setModalPresentationStyle:0];
    [controllerCopy setModalTransitionStyle:2];
  }

  else
  {
    [controllerCopy setModalPresentationStyle:2];
  }
}

- (void)_dismissViewService
{
  _remoteViewControllerProxy = [(ServiceTFBetaLaunchHostViewController *)self _remoteViewControllerProxy];
  presentedViewController = [(ServiceTFBetaLaunchHostViewController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(ServiceTFBetaLaunchHostViewController *)self presentedViewController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100007B7C;
    v6[3] = &unk_100051148;
    v7 = _remoteViewControllerProxy;
    [presentedViewController2 dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {
    [_remoteViewControllerProxy dismiss];
  }
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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