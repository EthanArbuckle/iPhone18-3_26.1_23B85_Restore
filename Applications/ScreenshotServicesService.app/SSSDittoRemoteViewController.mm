@interface SSSDittoRemoteViewController
- (SSSDittoRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SSSViewControllerManager)viewControllerManager;
- (void)_addRootViewController;
- (void)_performDismiss;
- (void)_statusBarHeightChanged;
- (void)becomeParentOfDittoRootViewController:(id)a3;
- (void)cleanupRootViewController;
- (void)dealloc;
- (void)dittoRootViewController:(id)a3 willShowShowSharingUIWithBlock:(id)a4;
- (void)dittoRootViewController:(id)a3 willShowTestFlightUIWithBlock:(id)a4;
- (void)dittoRootViewController:(id)a3 willTransitionToState:(unint64_t)a4 changeBlock:(id)a5;
- (void)informHostThatScreenshotsHaveDismissed;
- (void)loadView;
- (void)stopBeingParentOfDittoRootViewController:(id)a3;
- (void)tearDownScreenshotExperience;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SSSDittoRemoteViewController

- (void)_addRootViewController
{
  [(SSSDittoRemoteViewController *)self addChildViewController:self->_rootViewController];
  v3 = [(SSSDittoRemoteViewController *)self view];
  v4 = [(SSSDittoRootViewController *)self->_rootViewController view];
  [v3 addSubview:v4];

  [(SSSDittoRootViewController *)self->_rootViewController didMoveToParentViewController:self];
  v5 = [(SSSDittoRootViewController *)self->_rootViewController view];
  v6 = [(SSSDittoRemoteViewController *)self view];
  [v6 frame];
  [v5 setFrame:?];

  rootViewController = self->_rootViewController;

  [(SSSDittoRootViewController *)rootViewController setDelegate:self];
}

- (void)_performDismiss
{
  v2 = [(SSSDittoRemoteViewController *)self viewControllerManager];
  [v2 screenshotsDismissed];
}

- (void)dittoRootViewController:(id)a3 willTransitionToState:(unint64_t)a4 changeBlock:(id)a5
{
  v11 = a3;
  v8 = a5;
  v9 = v8;
  if (a4 == 1)
  {
    v10 = [(SSSDittoRemoteViewController *)self viewControllerManager];
    [v10 moveFromRemoteViewControllerToRemoteAlertViewControllerExecutingChangeBlockWhenReady:v9];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8);
  }
}

- (void)dittoRootViewController:(id)a3 willShowShowSharingUIWithBlock:(id)a4
{
  v5 = a4;
  v6 = [(SSSDittoRemoteViewController *)self viewControllerManager];
  [v6 moveFromRemoteViewControllerToRemoteAlertViewControllerExecutingChangeBlockWhenReady:v5];
}

- (void)dittoRootViewController:(id)a3 willShowTestFlightUIWithBlock:(id)a4
{
  v5 = a4;
  v6 = [(SSSDittoRemoteViewController *)self viewControllerManager];
  [v6 moveFromRemoteViewControllerToRemoteAlertViewControllerExecutingChangeBlockWhenReady:v5];
}

- (void)becomeParentOfDittoRootViewController:(id)a3
{
  objc_storeStrong(&self->_rootViewController, a3);

  [(SSSDittoRemoteViewController *)self _addRootViewController];
}

- (void)stopBeingParentOfDittoRootViewController:(id)a3
{
  v4 = a3;
  [v4 willMoveToParentViewController:0];
  v3 = [v4 view];
  [v3 removeFromSuperview];

  [v4 removeFromParentViewController];
}

- (void)cleanupRootViewController
{
  [(SSSDittoRootViewController *)self->_rootViewController setDelegate:0];
  rootViewController = self->_rootViewController;
  self->_rootViewController = 0;
}

- (SSSDittoRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = SSSDittoRemoteViewController;
  v4 = [(SSSDittoRemoteViewController *)&v7 initWithNibName:a3 bundle:a4];
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
  v3 = [(SSSDittoRemoteViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 screen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(SSSDittoRemoteViewController *)self view];
  v15 = [(SSSDittoRemoteViewController *)self view];
  v16 = [v15 window];
  v17 = [v16 screen];
  v18 = [v17 coordinateSpace];
  [v14 convertRect:v18 fromCoordinateSpace:{v7, v9, v11, v13}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = [(SSSDittoRootViewController *)self->_rootViewController view];
  [v27 setFrame:{v20, v22, v24, v26}];
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
  v3 = [(SSSDittoRemoteViewController *)self view];
  v4 = +[UIColor greenColor];
  SSApplyDebuggingCustomizationsToViewIfAppropriate();
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SSSDittoRemoteViewController;
  [(SSSDittoRemoteViewController *)&v5 viewWillAppear:a3];
  v4 = [(SSSDittoRemoteViewController *)self loadedView];
  [v4 setAcceptsTouches:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SSSDittoRemoteViewController;
  [(SSSDittoRemoteViewController *)&v5 viewDidAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"SSSDittoRemoteViewControllerIsReadyForViewControllerManagerNotificationName" object:self];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = SSSDittoRemoteViewController;
  v7 = a4;
  [(SSSDittoRemoteViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000547CC;
  v8[3] = &unk_1000BB2B8;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)informHostThatScreenshotsHaveDismissed
{
  v3 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Service informing host that the screenshot experience dismissed", v6, 2u);
  }

  v4 = [(SSSDittoRemoteViewController *)self _remoteViewControllerProxy];
  [v4 screenshotExperienceHasDismissed];

  v5 = [(SSSDittoRemoteViewController *)self _remoteViewControllerProxy];
  [v5 dismiss];
}

- (void)tearDownScreenshotExperience
{
  v3 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Service received request to tear down screenshot experience", v5, 2u);
  }

  v4 = [(SSSDittoRemoteViewController *)self viewControllerManager];
  [v4 dismissScreenshots];
}

- (SSSViewControllerManager)viewControllerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerManager);

  return WeakRetained;
}

@end