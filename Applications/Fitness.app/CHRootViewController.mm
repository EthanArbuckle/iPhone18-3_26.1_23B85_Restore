@interface CHRootViewController
- (CHRootViewController)initWithTabBarController:(id)controller healthStore:(id)store;
- (void)adjustSafeAreaInsetsWithHeight:(double)height;
- (void)hide;
- (void)setActivitySetUp:(BOOL)up;
- (void)unhide;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CHRootViewController

- (void)viewDidLoad
{
  v36.receiver = self;
  v36.super_class = CHRootViewController;
  [(CHRootViewController *)&v36 viewDidLoad];
  view = [(CHRootViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [(UITabBarController *)self->_tabBarController view];
  [view2 setFrame:{v5, v7, v9, v11}];

  [(CHRootViewController *)self addChildViewController:self->_tabBarController];
  view3 = [(CHRootViewController *)self view];
  view4 = [(UITabBarController *)self->_tabBarController view];
  [view3 addSubview:view4];

  [(UITabBarController *)self->_tabBarController didMoveToParentViewController:self];
  v15 = objc_alloc_init(UIView);
  overlayView = self->_overlayView;
  self->_overlayView = v15;

  v17 = +[UIColor blackColor];
  [(UIView *)self->_overlayView setBackgroundColor:v17];

  [(UIView *)self->_overlayView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_overlayView setAlpha:0.0];
  view5 = [(CHRootViewController *)self view];
  [view5 addSubview:self->_overlayView];

  topAnchor = [(UIView *)self->_overlayView topAnchor];
  view6 = [(CHRootViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v37[0] = v32;
  bottomAnchor = [(UIView *)self->_overlayView bottomAnchor];
  view7 = [(CHRootViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v37[1] = v19;
  leadingAnchor = [(UIView *)self->_overlayView leadingAnchor];
  view8 = [(CHRootViewController *)self view];
  leadingAnchor2 = [view8 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v37[2] = v23;
  trailingAnchor = [(UIView *)self->_overlayView trailingAnchor];
  view9 = [(CHRootViewController *)self view];
  trailingAnchor2 = [view9 trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v37[3] = v27;
  v28 = [NSArray arrayWithObjects:v37 count:4];
  [NSLayoutConstraint activateConstraints:v28];
}

- (CHRootViewController)initWithTabBarController:(id)controller healthStore:(id)store
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = CHRootViewController;
  v7 = [(CHRootViewController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_tabBarController, controller);
  }

  return v8;
}

- (void)setActivitySetUp:(BOOL)up
{
  if (self->_activitySetUp != up)
  {
    self->_activitySetUp = up;
  }
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = CHRootViewController;
  [(CHRootViewController *)&v13 viewWillLayoutSubviews];
  view = [(CHRootViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [(UITabBarController *)self->_tabBarController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)adjustSafeAreaInsetsWithHeight:(double)height
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  viewControllers = [(UITabBarController *)self->_tabBarController viewControllers];
  v4 = [viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(viewControllers);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 additionalSafeAreaInsets];
        [v8 setAdditionalSafeAreaInsets:?];
      }

      v5 = [viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)hide
{
  _HKInitializeLogging();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[RootViewController] hiding root view controller", v4, 2u);
  }

  [(UIView *)self->_overlayView setAlpha:1.0];
  self->_hidingStatusBar = 1;
  [(CHRootViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)unhide
{
  _HKInitializeLogging();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[RootViewController] showing root view controller", v4, 2u);
  }

  [(UIView *)self->_overlayView setAlpha:0.0];
  self->_hidingStatusBar = 0;
  [(CHRootViewController *)self setNeedsStatusBarAppearanceUpdate];
}

@end