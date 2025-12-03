@interface SSSDittoRemoteAlertViewController
- (SSSDittoRemoteAlertViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SSSDittoRemoteAlertViewControllerDelegate)dittoRemoteAlertDelegate;
- (SSSViewControllerManager)viewControllerManager;
- (void)_addRootViewController;
- (void)_performDismiss;
- (void)_setWallpaperBackgroundStyleEnabled:(BOOL)enabled;
- (void)_updateReachabilityEnabled;
- (void)becomeParentOfDittoRootViewController:(id)controller;
- (void)cleanupRootViewController;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dittoRootViewController:(id)controller didTransitionToState:(unint64_t)state;
- (void)dittoRootViewController:(id)controller wantsBackground:(BOOL)background duration:(double)duration;
- (void)dittoRootViewController:(id)controller willTransitionToState:(unint64_t)state changeBlock:(id)block;
- (void)dittoRootViewControllerFinishedShowingSharingUI:(id)i inStateTransition:(BOOL)transition;
- (void)handleButtonActions:(id)actions;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)setIsTransitioningStates:(BOOL)states;
- (void)stopBeingParentOfDittoRootViewController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation SSSDittoRemoteAlertViewController

- (SSSDittoRemoteAlertViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v11.receiver = self;
  v11.super_class = SSSDittoRemoteAlertViewController;
  v4 = [(SSSDittoRemoteAlertViewController *)&v11 initWithNibName:name bundle:bundle];
  v5 = objc_alloc_init(UIVisualEffectView);
  backgroundView = v4->_backgroundView;
  v4->_backgroundView = v5;

  v7 = v4->_backgroundView;
  v8 = +[UIBlurEffect effectWithStyle:](UIBlurEffect, "effectWithStyle:", +[SSChromeHelper backgroundBlurEffectStyle]);
  [(UIVisualEffectView *)v7 setEffect:v8];

  layer = [(UIVisualEffectView *)v4->_backgroundView layer];
  [layer setAllowsGroupOpacity:0];

  [(UIVisualEffectView *)v4->_backgroundView setUserInteractionEnabled:0];
  [(UIVisualEffectView *)v4->_backgroundView setAlpha:0.0];
  return v4;
}

- (void)_addRootViewController
{
  [(SSSDittoRemoteAlertViewController *)self addChildViewController:self->_rootViewController];
  view = [(SSSDittoRemoteAlertViewController *)self view];
  view2 = [(SSSDittoRootViewController *)self->_rootViewController view];
  [view addSubview:view2];

  [(SSSDittoRootViewController *)self->_rootViewController didMoveToParentViewController:self];
  view3 = [(SSSDittoRootViewController *)self->_rootViewController view];
  view4 = [(SSSDittoRemoteAlertViewController *)self view];
  [view4 frame];
  [view3 setFrame:?];
}

- (void)_performDismiss
{
  _remoteViewControllerProxy = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismiss];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SSSDittoRemoteAlertViewController;
  [(SSSDittoRemoteAlertViewController *)&v5 viewWillLayoutSubviews];
  backgroundView = self->_backgroundView;
  view = [(SSSDittoRemoteAlertViewController *)self view];
  [view bounds];
  [(UIVisualEffectView *)backgroundView setFrame:?];
}

- (void)setIsTransitioningStates:(BOOL)states
{
  if ([(SSSDittoRemoteAlertViewController *)self isTransitioningStates]!= states)
  {
    self->_isTransitioningStates = states;

    [(SSSDittoRemoteAlertViewController *)self _updateReachabilityEnabled];
  }
}

- (void)dittoRootViewController:(id)controller willTransitionToState:(unint64_t)state changeBlock:(id)block
{
  blockCopy = block;
  [(SSSDittoRemoteAlertViewController *)self setIsTransitioningStates:1];
  blockCopy[2]();
}

- (void)dittoRootViewController:(id)controller didTransitionToState:(unint64_t)state
{
  if (!state)
  {
    viewControllerManager = [(SSSDittoRemoteAlertViewController *)self viewControllerManager];
    [viewControllerManager moveFromRemoteAlertViewControllerToRemoteViewController];
  }

  [(SSSDittoRemoteAlertViewController *)self setIsTransitioningStates:0];
}

- (void)dittoRootViewControllerFinishedShowingSharingUI:(id)i inStateTransition:(BOOL)transition
{
  if (![i state] && !transition)
  {
    viewControllerManager = [(SSSDittoRemoteAlertViewController *)self viewControllerManager];
    [viewControllerManager moveFromRemoteAlertViewControllerToRemoteViewController];
  }
}

- (void)dittoRootViewController:(id)controller wantsBackground:(BOOL)background duration:(double)duration
{
  backgroundCopy = background;
  controllerCopy = controller;
  v9 = 1.0;
  if (!backgroundCopy)
  {
    [(SSSDittoRemoteAlertViewController *)self _setWallpaperBackgroundStyleEnabled:0, 1.0];
    v9 = 0.0;
  }

  if (duration <= 0.00000011920929)
  {
    [(UIVisualEffectView *)self->_backgroundView setAlpha:v9];
    if (backgroundCopy)
    {
      [(SSSDittoRemoteAlertViewController *)self _setWallpaperBackgroundStyleEnabled:1];
    }
  }

  else
  {
    v10 = duration * 0.4;
    if (!backgroundCopy)
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
    v12 = backgroundCopy;
    v11[4] = self;
    [UIView animateWithDuration:0 delay:v13 options:v11 animations:duration * 0.6 completion:v10];
  }
}

- (void)_setWallpaperBackgroundStyleEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (_SSScreenshotsRedesign2025Enabled())
  {
    v5 = os_log_create("com.apple.screenshotservices", "DittoRemoteAlert");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = enabledCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "set wallpaper background style: %ld", &v7, 0xCu);
    }

    _remoteViewControllerProxy = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy setWallpaperStyle:enabledCopy withDuration:0.0];
  }
}

- (void)becomeParentOfDittoRootViewController:(id)controller
{
  objc_storeStrong(&self->_rootViewController, controller);
  controllerCopy = controller;
  [(SSSDittoRootViewController *)self->_rootViewController setDelegate:self];
  [(SSSDittoRemoteAlertViewController *)self _addRootViewController];
  view = [(SSSDittoRemoteAlertViewController *)self view];
  [view insertSubview:self->_backgroundView atIndex:0];

  [(SSSDittoRemoteAlertViewController *)self _updateReachabilityEnabled];
}

- (void)stopBeingParentOfDittoRootViewController:(id)controller
{
  backgroundView = self->_backgroundView;
  controllerCopy = controller;
  [(UIVisualEffectView *)backgroundView removeFromSuperview];
  [controllerCopy willMoveToParentViewController:0];
  view = [controllerCopy view];
  [view removeFromSuperview];

  [controllerCopy removeFromParentViewController];
}

- (void)cleanupRootViewController
{
  [(SSSDittoRootViewController *)self->_rootViewController setDelegate:0];
  rootViewController = self->_rootViewController;
  self->_rootViewController = 0;

  [(SSSDittoRemoteAlertViewController *)self _performDismiss];
}

- (void)handleButtonActions:(id)actions
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

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SSSDittoRemoteAlertViewController;
  [(SSSDittoRemoteAlertViewController *)&v4 viewDidAppear:appear];
  [(SSSDittoRootViewController *)self->_rootViewController performInteractiveGesturePresentationCompleteAnimations];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SSSDittoRemoteAlertViewController;
  [(SSSDittoRemoteAlertViewController *)&v5 viewWillAppear:appear];
  WeakRetained = objc_loadWeakRetained(&self->_dittoRemoteAlertDelegate);
  [WeakRetained dittoRemoteAlertViewControllerViewWillAppear:self];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SSSDittoRemoteAlertViewController;
  [(SSSDittoRemoteAlertViewController *)&v5 viewDidLoad];
  view = [(SSSDittoRemoteAlertViewController *)self view];
  v4 = +[UIColor orangeColor];
  SSApplyDebuggingCustomizationsToViewIfAppropriate();
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  v6.receiver = self;
  v6.super_class = SSSDittoRemoteAlertViewController;
  completionCopy = completion;
  [(SSSDittoRemoteAlertViewController *)&v6 prepareForActivationWithContext:context completion:completionCopy];
  completionCopy[2](completionCopy);
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  _remoteViewControllerProxy = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];

  _remoteViewControllerProxy2 = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy2 setOrientationChangedEventsEnabled:0];

  _remoteViewControllerProxy3 = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
  v8 = +[UIApplication sharedApplication];
  [_remoteViewControllerProxy3 setLaunchingInterfaceOrientation:{objc_msgSend(v8, "activeInterfaceOrientation")}];

  _remoteViewControllerProxy4 = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy4 setAllowsAlertItems:1];

  _remoteViewControllerProxy5 = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy5 setAllowsAlertStacking:1];

  _remoteViewControllerProxy6 = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy6 setReachabilityDisabled:1];

  if (_SSScreenshotsRedesign2025Enabled())
  {
    _remoteViewControllerProxy7 = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy7 setWallpaperTunnelActive:1];
  }

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 postNotificationName:@"SSSDittoRemoteAlertViewControllerIsReadyForViewControllerManagerNotificationName" object:self];

  completionCopy[2]();
}

- (void)_updateReachabilityEnabled
{
  isTransitioningStates = [(SSSDittoRemoteAlertViewController *)self isTransitioningStates];
  shouldInhibitReachability = [(SSSDittoRootViewController *)self->_rootViewController shouldInhibitReachability];
  v5 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109632;
    v7[1] = ((isTransitioningStates | shouldInhibitReachability) & 1) == 0;
    v8 = 1024;
    v9 = isTransitioningStates;
    v10 = 1024;
    v11 = shouldInhibitReachability & 1;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating reachability enabled: %d. Based on is transitioning: %d, isInhibited: %d", v7, 0x14u);
  }

  _remoteViewControllerProxy = [(SSSDittoRemoteAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setReachabilityDisabled:(isTransitioningStates | shouldInhibitReachability) & 1];
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