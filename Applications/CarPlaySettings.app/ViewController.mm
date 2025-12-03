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

  launchOnCarPlayButton = [(ViewController *)self launchOnCarPlayButton];
  [launchOnCarPlayButton setTranslatesAutoresizingMaskIntoConstraints:0];

  launchOnCarPlayButton2 = [(ViewController *)self launchOnCarPlayButton];
  [launchOnCarPlayButton2 setTitle:@"launch on CarPlay" forState:0];

  launchOnCarPlayButton3 = [(ViewController *)self launchOnCarPlayButton];
  v7 = +[UIColor lightGrayColor];
  [launchOnCarPlayButton3 setBackgroundColor:v7];

  launchOnCarPlayButton4 = [(ViewController *)self launchOnCarPlayButton];
  [launchOnCarPlayButton4 addTarget:self action:"_launchOnCarPlay" forControlEvents:64];

  view = [(ViewController *)self view];
  launchOnCarPlayButton5 = [(ViewController *)self launchOnCarPlayButton];
  [view addSubview:launchOnCarPlayButton5];

  launchOnCarPlayButton6 = [(ViewController *)self launchOnCarPlayButton];
  centerXAnchor = [launchOnCarPlayButton6 centerXAnchor];
  view2 = [(ViewController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v24 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v30[0] = v24;
  launchOnCarPlayButton7 = [(ViewController *)self launchOnCarPlayButton];
  topAnchor = [launchOnCarPlayButton7 topAnchor];
  view3 = [(ViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v30[1] = v13;
  launchOnCarPlayButton8 = [(ViewController *)self launchOnCarPlayButton];
  heightAnchor = [launchOnCarPlayButton8 heightAnchor];
  v16 = [heightAnchor constraintEqualToConstant:100.0];
  v30[2] = v16;
  launchOnCarPlayButton9 = [(ViewController *)self launchOnCarPlayButton];
  widthAnchor = [launchOnCarPlayButton9 widthAnchor];
  v19 = [widthAnchor constraintEqualToConstant:200.0];
  v30[3] = v19;
  v20 = [NSArray arrayWithObjects:v30 count:4];
  [NSLayoutConstraint activateConstraints:v20];
}

- (void)_launchOnCarPlay
{
  v4 = +[FBSOpenApplicationService dashboardService];
  v2 = +[NSBundle mainBundle];
  bundleIdentifier = [v2 bundleIdentifier];

  [v4 openApplication:bundleIdentifier withOptions:0 completion:&stru_1000DADB0];
}

@end