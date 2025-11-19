@interface CHRootViewController
- (CHRootViewController)initWithTabBarController:(id)a3 healthStore:(id)a4;
- (void)adjustSafeAreaInsetsWithHeight:(double)a3;
- (void)hide;
- (void)setActivitySetUp:(BOOL)a3;
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
  v3 = [(CHRootViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(UITabBarController *)self->_tabBarController view];
  [v12 setFrame:{v5, v7, v9, v11}];

  [(CHRootViewController *)self addChildViewController:self->_tabBarController];
  v13 = [(CHRootViewController *)self view];
  v14 = [(UITabBarController *)self->_tabBarController view];
  [v13 addSubview:v14];

  [(UITabBarController *)self->_tabBarController didMoveToParentViewController:self];
  v15 = objc_alloc_init(UIView);
  overlayView = self->_overlayView;
  self->_overlayView = v15;

  v17 = +[UIColor blackColor];
  [(UIView *)self->_overlayView setBackgroundColor:v17];

  [(UIView *)self->_overlayView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_overlayView setAlpha:0.0];
  v18 = [(CHRootViewController *)self view];
  [v18 addSubview:self->_overlayView];

  v34 = [(UIView *)self->_overlayView topAnchor];
  v35 = [(CHRootViewController *)self view];
  v33 = [v35 topAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v37[0] = v32;
  v30 = [(UIView *)self->_overlayView bottomAnchor];
  v31 = [(CHRootViewController *)self view];
  v29 = [v31 bottomAnchor];
  v19 = [v30 constraintEqualToAnchor:v29];
  v37[1] = v19;
  v20 = [(UIView *)self->_overlayView leadingAnchor];
  v21 = [(CHRootViewController *)self view];
  v22 = [v21 leadingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  v37[2] = v23;
  v24 = [(UIView *)self->_overlayView trailingAnchor];
  v25 = [(CHRootViewController *)self view];
  v26 = [v25 trailingAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  v37[3] = v27;
  v28 = [NSArray arrayWithObjects:v37 count:4];
  [NSLayoutConstraint activateConstraints:v28];
}

- (CHRootViewController)initWithTabBarController:(id)a3 healthStore:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CHRootViewController;
  v7 = [(CHRootViewController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_tabBarController, a3);
  }

  return v8;
}

- (void)setActivitySetUp:(BOOL)a3
{
  if (self->_activitySetUp != a3)
  {
    self->_activitySetUp = a3;
  }
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = CHRootViewController;
  [(CHRootViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(CHRootViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(UITabBarController *)self->_tabBarController view];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)adjustSafeAreaInsetsWithHeight:(double)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(UITabBarController *)self->_tabBarController viewControllers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 additionalSafeAreaInsets];
        [v8 setAdditionalSafeAreaInsets:?];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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