@interface SSSDittoRemoteAlertViewController
- (SSSDittoRemoteAlertViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SSSDittoRemoteAlertViewControllerDelegate)dittoRemoteAlertDelegate;
- (SSSViewControllerManager)viewControllerManager;
- (void)_addRootViewController;
- (void)_performDismiss;
- (void)_setWallpaperBackgroundStyleEnabled:(BOOL)a3;
- (void)_updateReachabilityEnabled;
- (void)becomeParentOfDittoRootViewController:(id)a3;
- (void)cleanupRootViewController;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dittoRootViewController:(id)a3 didTransitionToState:(unint64_t)a4;
- (void)dittoRootViewController:(id)a3 wantsBackground:(BOOL)a4 duration:(double)a5;
- (void)dittoRootViewController:(id)a3 willTransitionToState:(unint64_t)a4 changeBlock:(id)a5;
- (void)dittoRootViewControllerFinishedShowingSharingUI:(id)a3 inStateTransition:(BOOL)a4;
- (void)handleButtonActions:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)setIsTransitioningStates:(BOOL)a3;
- (void)stopBeingParentOfDittoRootViewController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SSSDittoRemoteAlertViewController

- (SSSDittoRemoteAlertViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v11.receiver = self;
  v11.super_class = SSSDittoRemoteAlertViewController;
  v4 = [(SSSDittoRemoteAlertViewController *)&v11 initWithNibName:a3 bundle:a4];
  v5 = objc_alloc_init(UIVisualEffectView);
  backgroundView = v4->_backgroundView;
  v4->_backgroundView = v5;

  v7 = v4->_backgroundView;
  v8 = +[UIBlurEffect effectWithStyle:](UIBlurEffect, "effectWithStyle:", +[SSChromeHelper backgroundBlurEffectStyle]);
  [(UIVisualEffectView *)v7 setEffect:v8];

  v9 = [(UIVisualEffectView *)v4->_backgroundView layer];
  [v9 setAllowsGroupOpacity:0];

  [(UIVisualEffectView *)v4->_backgroundView setUserInteractionEnabled:0];
  [(UIVisualEffectView *)v4->_backgroundView setAlpha:0.0];
  return v4;
}

- (void)_addRootViewController
{
  [(SSSDittoRemoteAlertViewController *)self addChildViewController:self->_rootViewController];
  v3 = [(SSSDittoRemoteAlertViewController *)self view];
  v4 = [(SSSDittoRootViewController *)self->_rootViewController view];
  [v3 addSubview:v4];

  [(SSSDittoRootViewController *)self->_rootViewController didMoveToParentViewController:self];
  v6 = [(SSSDittoRootViewController *)self->_rootViewController view];
  v5 = [(SSSDittoRemoteAlertViewController *)self view];
  [v5 frame];
  [v6 setFrame:?];
}

- (void)_performDismiss
{
  v2 = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
  [v2 dismiss];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SSSDittoRemoteAlertViewController;
  [(SSSDittoRemoteAlertViewController *)&v5 viewWillLayoutSubviews];
  backgroundView = self->_backgroundView;
  v4 = [(SSSDittoRemoteAlertViewController *)self view];
  [v4 bounds];
  [(UIVisualEffectView *)backgroundView setFrame:?];
}

- (void)setIsTransitioningStates:(BOOL)a3
{
  if ([(SSSDittoRemoteAlertViewController *)self isTransitioningStates]!= a3)
  {
    self->_isTransitioningStates = a3;

    [(SSSDittoRemoteAlertViewController *)self _updateReachabilityEnabled];
  }
}

- (void)dittoRootViewController:(id)a3 willTransitionToState:(unint64_t)a4 changeBlock:(id)a5
{
  v6 = a5;
  [(SSSDittoRemoteAlertViewController *)self setIsTransitioningStates:1];
  v6[2]();
}

- (void)dittoRootViewController:(id)a3 didTransitionToState:(unint64_t)a4
{
  if (!a4)
  {
    v5 = [(SSSDittoRemoteAlertViewController *)self viewControllerManager];
    [v5 moveFromRemoteAlertViewControllerToRemoteViewController];
  }

  [(SSSDittoRemoteAlertViewController *)self setIsTransitioningStates:0];
}

- (void)dittoRootViewControllerFinishedShowingSharingUI:(id)a3 inStateTransition:(BOOL)a4
{
  if (![a3 state] && !a4)
  {
    v6 = [(SSSDittoRemoteAlertViewController *)self viewControllerManager];
    [v6 moveFromRemoteAlertViewControllerToRemoteViewController];
  }
}

- (void)dittoRootViewController:(id)a3 wantsBackground:(BOOL)a4 duration:(double)a5
{
  v6 = a4;
  v8 = a3;
  v9 = 1.0;
  if (!v6)
  {
    [(SSSDittoRemoteAlertViewController *)self _setWallpaperBackgroundStyleEnabled:0, 1.0];
    v9 = 0.0;
  }

  if (a5 <= 0.00000011920929)
  {
    [(UIVisualEffectView *)self->_backgroundView setAlpha:v9];
    if (v6)
    {
      [(SSSDittoRemoteAlertViewController *)self _setWallpaperBackgroundStyleEnabled:1];
    }
  }

  else
  {
    v10 = a5 * 0.4;
    if (!v6)
    {
      v10 = 0.0;
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000EBF0;
    v13[3] = &unk_1000BA1B8;
    v13[4] = self;
    *&v13[5] = v9;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000EC0C;
    v11[3] = &unk_1000BA1E0;
    v12 = v6;
    v11[4] = self;
    [UIView animateWithDuration:0 delay:v13 options:v11 animations:a5 * 0.6 completion:v10];
  }
}

- (void)_setWallpaperBackgroundStyleEnabled:(BOOL)a3
{
  v3 = a3;
  if (_SSScreenshotsRedesign2025Enabled())
  {
    v5 = os_log_create("com.apple.screenshotservices", "DittoRemoteAlert");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "set wallpaper background style: %ld", &v7, 0xCu);
    }

    v6 = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
    [v6 setWallpaperStyle:v3 withDuration:0.0];
  }
}

- (void)becomeParentOfDittoRootViewController:(id)a3
{
  objc_storeStrong(&self->_rootViewController, a3);
  v5 = a3;
  [(SSSDittoRootViewController *)self->_rootViewController setDelegate:self];
  [(SSSDittoRemoteAlertViewController *)self _addRootViewController];
  v6 = [(SSSDittoRemoteAlertViewController *)self view];
  [v6 insertSubview:self->_backgroundView atIndex:0];

  [(SSSDittoRemoteAlertViewController *)self _updateReachabilityEnabled];
}

- (void)stopBeingParentOfDittoRootViewController:(id)a3
{
  backgroundView = self->_backgroundView;
  v5 = a3;
  [(UIVisualEffectView *)backgroundView removeFromSuperview];
  [v5 willMoveToParentViewController:0];
  v4 = [v5 view];
  [v4 removeFromSuperview];

  [v5 removeFromParentViewController];
}

- (void)cleanupRootViewController
{
  [(SSSDittoRootViewController *)self->_rootViewController setDelegate:0];
  rootViewController = self->_rootViewController;
  self->_rootViewController = 0;

  [(SSSDittoRemoteAlertViewController *)self _performDismiss];
}

- (void)handleButtonActions:(id)a3
{
  v4 = _SSShouldHomeButtonDismiss();
  rootViewController = self->_rootViewController;
  if (v4)
  {

    [(SSSDittoRootViewController *)rootViewController performProgrammaticDismiss];
  }

  else
  {

    [(SSSDittoRootViewController *)rootViewController pipify];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SSSDittoRemoteAlertViewController;
  [(SSSDittoRemoteAlertViewController *)&v4 viewDidAppear:a3];
  [(SSSDittoRootViewController *)self->_rootViewController performInteractiveGesturePresentationCompleteAnimations];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SSSDittoRemoteAlertViewController;
  [(SSSDittoRemoteAlertViewController *)&v5 viewWillAppear:a3];
  WeakRetained = objc_loadWeakRetained(&self->_dittoRemoteAlertDelegate);
  [WeakRetained dittoRemoteAlertViewControllerViewWillAppear:self];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SSSDittoRemoteAlertViewController;
  [(SSSDittoRemoteAlertViewController *)&v5 viewDidLoad];
  v3 = [(SSSDittoRemoteAlertViewController *)self view];
  v4 = +[UIColor orangeColor];
  SSApplyDebuggingCustomizationsToViewIfAppropriate();
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6.receiver = self;
  v6.super_class = SSSDittoRemoteAlertViewController;
  v5 = a4;
  [(SSSDittoRemoteAlertViewController *)&v6 prepareForActivationWithContext:a3 completion:v5];
  v5[2](v5);
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v14 = a4;
  v5 = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
  [v5 setDesiredHardwareButtonEvents:16];

  v6 = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
  [v6 setOrientationChangedEventsEnabled:0];

  v7 = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
  v8 = +[UIApplication sharedApplication];
  [v7 setLaunchingInterfaceOrientation:{objc_msgSend(v8, "activeInterfaceOrientation")}];

  v9 = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
  [v9 setAllowsAlertItems:1];

  v10 = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
  [v10 setAllowsAlertStacking:1];

  v11 = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
  [v11 setReachabilityDisabled:1];

  if (_SSScreenshotsRedesign2025Enabled())
  {
    v12 = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
    [v12 setWallpaperTunnelActive:1];
  }

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 postNotificationName:@"SSSDittoRemoteAlertViewControllerIsReadyForViewControllerManagerNotificationName" object:self];

  v14[2]();
}

- (void)_updateReachabilityEnabled
{
  v3 = [(SSSDittoRemoteAlertViewController *)self isTransitioningStates];
  v4 = [(SSSDittoRootViewController *)self->_rootViewController shouldInhibitReachability];
  v5 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109632;
    v7[1] = ((v3 | v4) & 1) == 0;
    v8 = 1024;
    v9 = v3;
    v10 = 1024;
    v11 = v4 & 1;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating reachability enabled: %d. Based on is transitioning: %d, isInhibited: %d", v7, 0x14u);
  }

  v6 = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
  [v6 setReachabilityDisabled:(v3 | v4) & 1];
}

- (SSSViewControllerManager)viewControllerManager
{
  WeakRetained = objc_loadWeakRetained(&self->viewControllerManager);

  return WeakRetained;
}

- (SSSDittoRemoteAlertViewControllerDelegate)dittoRemoteAlertDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dittoRemoteAlertDelegate);

  return WeakRetained;
}

@end