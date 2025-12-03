@interface PHCarPlayRootContainerViewController
- (PHCarPlayRootContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)preferredFocusEnvironments;
- (void)loadView;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PHCarPlayRootContainerViewController

- (PHCarPlayRootContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = PHCarPlayRootContainerViewController;
  return [(PHCarPlayRootContainerViewController *)&v5 initWithNibName:name bundle:bundle];
}

- (void)loadView
{
  v3 = [[UIView alloc] initWithFrame:{0.0, 0.0, 200.0, 120.0}];
  [(PHCarPlayRootContainerViewController *)self setView:v3];
  view = [(PHCarPlayRootContainerViewController *)self view];
  [view setAccessibilityIdentifier:@"PHCarPlayView"];

  v5 = objc_alloc_init(PHCarPlayMainMenuContainerViewController);
  [(PHCarPlayRootContainerViewController *)self setMainMenuContainerViewController:v5];

  v6 = [UINavigationController alloc];
  mainMenuContainerViewController = [(PHCarPlayRootContainerViewController *)self mainMenuContainerViewController];
  v8 = [v6 initWithRootViewController:mainMenuContainerViewController];

  [v8 setDelegate:self];
  view2 = [v8 view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"PHONE" value:&stru_10028F310 table:@"PHCarPlay"];
  mainMenuContainerViewController2 = [(PHCarPlayRootContainerViewController *)self mainMenuContainerViewController];
  navigationItem = [mainMenuContainerViewController2 navigationItem];
  [navigationItem setTitle:v11];

  mainMenuContainerViewController3 = [(PHCarPlayRootContainerViewController *)self mainMenuContainerViewController];
  view3 = [mainMenuContainerViewController3 view];
  [view3 setAutoresizingMask:18];

  [(PHCarPlayRootContainerViewController *)self addChildViewController:v8];
  view4 = [(PHCarPlayRootContainerViewController *)self view];
  view5 = [v8 view];
  [view4 addSubview:view5];

  [(PHCarPlayRootContainerViewController *)self setWrapperNavigationController:v8];
  view6 = [(PHCarPlayRootContainerViewController *)self view];
  v28 = @"view";
  view7 = [v8 view];
  v29 = view7;
  v20 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v21 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[view]|" options:0 metrics:0 views:v20];
  [view6 addConstraints:v21];

  view8 = [(PHCarPlayRootContainerViewController *)self view];
  v26 = @"view";
  view9 = [v8 view];
  v27 = view9;
  v24 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v25 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v24];
  [view8 addConstraints:v25];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PHCarPlayRootContainerViewController;
  [(PHCarPlayRootContainerViewController *)&v5 viewWillAppear:appear];
  wrapperNavigationController = [(PHCarPlayRootContainerViewController *)self wrapperNavigationController];
  [wrapperNavigationController setNavigationBarHidden:1 animated:0];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  controllerCopy = controller;
  viewControllers = [controllerCopy viewControllers];
  v10 = [viewControllers objectAtIndex:0];

  v11 = PHDefaultLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10 == viewControllerCopy)
  {
    if (v12)
    {
      *buf = 0;
      v13 = "-> Hiding the navigation bar.";
      v14 = buf;
      goto LABEL_6;
    }
  }

  else if (v12)
  {
    v15 = 0;
    v13 = "-> Showing the navigation bar.";
    v14 = &v15;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
  }

  [controllerCopy setNavigationBarHidden:v10 == viewControllerCopy animated:animatedCopy];
}

- (id)preferredFocusEnvironments
{
  childViewControllers = [(PHCarPlayRootContainerViewController *)self childViewControllers];
  firstObject = [childViewControllers firstObject];

  if (firstObject)
  {
    childViewControllers2 = [(PHCarPlayRootContainerViewController *)self childViewControllers];
    firstObject2 = [childViewControllers2 firstObject];
    v10 = firstObject2;
    preferredFocusEnvironments = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PHCarPlayRootContainerViewController;
    preferredFocusEnvironments = [(PHCarPlayRootContainerViewController *)&v9 preferredFocusEnvironments];
  }

  return preferredFocusEnvironments;
}

@end