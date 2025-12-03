@interface SSSDittoRemoteViewController
- (SSSDittoRemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SSSViewControllerManager)viewControllerManager;
- (void)_addRootViewController;
- (void)_performDismiss;
- (void)_statusBarHeightChanged;
- (void)becomeParentOfDittoRootViewController:(id)controller;
- (void)cleanupRootViewController;
- (void)dealloc;
- (void)dittoRootViewController:(id)controller willShowShowSharingUIWithBlock:(id)block;
- (void)dittoRootViewController:(id)controller willShowTestFlightUIWithBlock:(id)block;
- (void)dittoRootViewController:(id)controller willTransitionToState:(unint64_t)state changeBlock:(id)block;
- (void)informHostThatScreenshotsHaveDismissed;
- (void)loadView;
- (void)stopBeingParentOfDittoRootViewController:(id)controller;
- (void)tearDownScreenshotExperience;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SSSDittoRemoteViewController

- (void)_addRootViewController
{
  [(SSSDittoRemoteViewController *)self addChildViewController:self->_rootViewController];
  view = [(SSSDittoRemoteViewController *)self view];
  view2 = [(SSSDittoRootViewController *)self->_rootViewController view];
  [view addSubview:view2];

  [(SSSDittoRootViewController *)self->_rootViewController didMoveToParentViewController:self];
  view3 = [(SSSDittoRootViewController *)self->_rootViewController view];
  view4 = [(SSSDittoRemoteViewController *)self view];
  [view4 frame];
  [view3 setFrame:?];

  rootViewController = self->_rootViewController;

  [(SSSDittoRootViewController *)rootViewController setDelegate:self];
}

- (void)_performDismiss
{
  viewControllerManager = [(SSSDittoRemoteViewController *)self viewControllerManager];
  [viewControllerManager screenshotsDismissed];
}

- (void)dittoRootViewController:(id)controller willTransitionToState:(unint64_t)state changeBlock:(id)block
{
  controllerCopy = controller;
  blockCopy = block;
  v9 = blockCopy;
  if (state == 1)
  {
    viewControllerManager = [(SSSDittoRemoteViewController *)self viewControllerManager];
    [viewControllerManager moveFromRemoteViewControllerToRemoteAlertViewControllerExecutingChangeBlockWhenReady:v9];
  }

  else if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy);
  }
}

- (void)dittoRootViewController:(id)controller willShowShowSharingUIWithBlock:(id)block
{
  blockCopy = block;
  viewControllerManager = [(SSSDittoRemoteViewController *)self viewControllerManager];
  [viewControllerManager moveFromRemoteViewControllerToRemoteAlertViewControllerExecutingChangeBlockWhenReady:blockCopy];
}

- (void)dittoRootViewController:(id)controller willShowTestFlightUIWithBlock:(id)block
{
  blockCopy = block;
  viewControllerManager = [(SSSDittoRemoteViewController *)self viewControllerManager];
  [viewControllerManager moveFromRemoteViewControllerToRemoteAlertViewControllerExecutingChangeBlockWhenReady:blockCopy];
}

- (void)becomeParentOfDittoRootViewController:(id)controller
{
  objc_storeStrong(&self->_rootViewController, controller);

  [(SSSDittoRemoteViewController *)self _addRootViewController];
}

- (void)stopBeingParentOfDittoRootViewController:(id)controller
{
  controllerCopy = controller;
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
}

- (SSSDittoRemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = SSSDittoRemoteViewController;
  v4 = [(SSSDittoRemoteViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:v4 selector:"_statusBarHeightChanged" name:UIApplicationStatusBarHeightChangedNotification object:0];

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SSSDittoRemoteViewController;
  [(SSSDittoRemoteViewController *)&v4 dealloc];
}

- (void)_statusBarHeightChanged
{
  view = [(SSSDittoRemoteViewController *)self view];
  window = [view window];
  screen = [window screen];
  [screen bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  view2 = [(SSSDittoRemoteViewController *)self view];
  view3 = [(SSSDittoRemoteViewController *)self view];
  window2 = [view3 window];
  screen2 = [window2 screen];
  coordinateSpace = [screen2 coordinateSpace];
  [view2 convertRect:coordinateSpace fromCoordinateSpace:{v7, v9, v11, v13}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  view4 = [(SSSDittoRootViewController *)self->_rootViewController view];
  [view4 setFrame:{v20, v22, v24, v26}];
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(SSSDittoRemoteViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SSSDittoRemoteViewController;
  [(SSSDittoRemoteViewController *)&v5 viewDidLoad];
  view = [(SSSDittoRemoteViewController *)self view];
  v4 = +[UIColor greenColor];
  SSApplyDebuggingCustomizationsToViewIfAppropriate();
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SSSDittoRemoteViewController;
  [(SSSDittoRemoteViewController *)&v5 viewWillAppear:appear];
  loadedView = [(SSSDittoRemoteViewController *)self loadedView];
  [loadedView setAcceptsTouches:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SSSDittoRemoteViewController;
  [(SSSDittoRemoteViewController *)&v5 viewDidAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"SSSDittoRemoteViewControllerIsReadyForViewControllerManagerNotificationName" object:self];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = SSSDittoRemoteViewController;
  coordinatorCopy = coordinator;
  [(SSSDittoRemoteViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000547CC;
  v8[3] = &unk_1000BB2B8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)informHostThatScreenshotsHaveDismissed
{
  v3 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Service informing host that the screenshot experience dismissed", v6, 2u);
  }

  _remoteViewControllerProxy = [(SSSDittoRemoteViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy screenshotExperienceHasDismissed];

  _remoteViewControllerProxy2 = [(SSSDittoRemoteViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy2 dismiss];
}

- (void)tearDownScreenshotExperience
{
  v3 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Service received request to tear down screenshot experience", v5, 2u);
  }

  viewControllerManager = [(SSSDittoRemoteViewController *)self viewControllerManager];
  [viewControllerManager dismissScreenshots];
}

- (SSSViewControllerManager)viewControllerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerManager);

  return WeakRetained;
}

@end