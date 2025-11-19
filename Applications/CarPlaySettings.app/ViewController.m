@interface ViewController
- (void)_launchOnCarPlay;
- (void)viewDidLoad;
@end

@implementation ViewController

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = ViewController;
  [(ViewController *)&v29 viewDidLoad];
  v3 = [UIButton buttonWithType:1];
  [(ViewController *)self setLaunchOnCarPlayButton:v3];

  v4 = [(ViewController *)self launchOnCarPlayButton];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(ViewController *)self launchOnCarPlayButton];
  [v5 setTitle:@"launch on CarPlay" forState:0];

  v6 = [(ViewController *)self launchOnCarPlayButton];
  v7 = +[UIColor lightGrayColor];
  [v6 setBackgroundColor:v7];

  v8 = [(ViewController *)self launchOnCarPlayButton];
  [v8 addTarget:self action:"_launchOnCarPlay" forControlEvents:64];

  v9 = [(ViewController *)self view];
  v10 = [(ViewController *)self launchOnCarPlayButton];
  [v9 addSubview:v10];

  v28 = [(ViewController *)self launchOnCarPlayButton];
  v26 = [v28 centerXAnchor];
  v27 = [(ViewController *)self view];
  v25 = [v27 centerXAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v30[0] = v24;
  v23 = [(ViewController *)self launchOnCarPlayButton];
  v21 = [v23 topAnchor];
  v22 = [(ViewController *)self view];
  v11 = [v22 safeAreaLayoutGuide];
  v12 = [v11 topAnchor];
  v13 = [v21 constraintEqualToAnchor:v12 constant:10.0];
  v30[1] = v13;
  v14 = [(ViewController *)self launchOnCarPlayButton];
  v15 = [v14 heightAnchor];
  v16 = [v15 constraintEqualToConstant:100.0];
  v30[2] = v16;
  v17 = [(ViewController *)self launchOnCarPlayButton];
  v18 = [v17 widthAnchor];
  v19 = [v18 constraintEqualToConstant:200.0];
  v30[3] = v19;
  v20 = [NSArray arrayWithObjects:v30 count:4];
  [NSLayoutConstraint activateConstraints:v20];
}

- (void)_launchOnCarPlay
{
  v4 = +[FBSOpenApplicationService dashboardService];
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];

  [v4 openApplication:v3 withOptions:0 completion:&stru_1000DADB0];
}

@end