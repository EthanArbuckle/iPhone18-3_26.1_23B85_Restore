@interface PHCarPlayRootContainerViewController
- (PHCarPlayRootContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)preferredFocusEnvironments;
- (void)loadView;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PHCarPlayRootContainerViewController

- (PHCarPlayRootContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = PHCarPlayRootContainerViewController;
  return [(PHCarPlayRootContainerViewController *)&v5 initWithNibName:a3 bundle:a4];
}

- (void)loadView
{
  v3 = [[UIView alloc] initWithFrame:{0.0, 0.0, 200.0, 120.0}];
  [(PHCarPlayRootContainerViewController *)self setView:v3];
  v4 = [(PHCarPlayRootContainerViewController *)self view];
  [v4 setAccessibilityIdentifier:@"PHCarPlayView"];

  v5 = objc_alloc_init(PHCarPlayMainMenuContainerViewController);
  [(PHCarPlayRootContainerViewController *)self setMainMenuContainerViewController:v5];

  v6 = [UINavigationController alloc];
  v7 = [(PHCarPlayRootContainerViewController *)self mainMenuContainerViewController];
  v8 = [v6 initWithRootViewController:v7];

  [v8 setDelegate:self];
  v9 = [v8 view];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"PHONE" value:&stru_10028F310 table:@"PHCarPlay"];
  v12 = [(PHCarPlayRootContainerViewController *)self mainMenuContainerViewController];
  v13 = [v12 navigationItem];
  [v13 setTitle:v11];

  v14 = [(PHCarPlayRootContainerViewController *)self mainMenuContainerViewController];
  v15 = [v14 view];
  [v15 setAutoresizingMask:18];

  [(PHCarPlayRootContainerViewController *)self addChildViewController:v8];
  v16 = [(PHCarPlayRootContainerViewController *)self view];
  v17 = [v8 view];
  [v16 addSubview:v17];

  [(PHCarPlayRootContainerViewController *)self setWrapperNavigationController:v8];
  v18 = [(PHCarPlayRootContainerViewController *)self view];
  v28 = @"view";
  v19 = [v8 view];
  v29 = v19;
  v20 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v21 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[view]|" options:0 metrics:0 views:v20];
  [v18 addConstraints:v21];

  v22 = [(PHCarPlayRootContainerViewController *)self view];
  v26 = @"view";
  v23 = [v8 view];
  v27 = v23;
  v24 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v25 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v24];
  [v22 addConstraints:v25];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PHCarPlayRootContainerViewController;
  [(PHCarPlayRootContainerViewController *)&v5 viewWillAppear:a3];
  v4 = [(PHCarPlayRootContainerViewController *)self wrapperNavigationController];
  [v4 setNavigationBarHidden:1 animated:0];
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = [v8 viewControllers];
  v10 = [v9 objectAtIndex:0];

  v11 = PHDefaultLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10 == v7)
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

  [v8 setNavigationBarHidden:v10 == v7 animated:v5];
}

- (id)preferredFocusEnvironments
{
  v3 = [(PHCarPlayRootContainerViewController *)self childViewControllers];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [(PHCarPlayRootContainerViewController *)self childViewControllers];
    v6 = [v5 firstObject];
    v10 = v6;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PHCarPlayRootContainerViewController;
    v7 = [(PHCarPlayRootContainerViewController *)&v9 preferredFocusEnvironments];
  }

  return v7;
}

@end