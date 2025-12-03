@interface COSTinkerFeatureSplashViewController
+ (BOOL)controllerNeedsToRun;
- (COSTinkerFeatureSplashViewController)init;
- (id)detailString;
- (id)okayButtonTitle;
- (id)titleString;
- (void)okayButtonPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation COSTinkerFeatureSplashViewController

+ (BOOL)controllerNeedsToRun
{
  setupController = [UIApp setupController];
  resumePairingController = [setupController resumePairingController];
  isResumingPairing = [resumePairingController isResumingPairing];

  return isResumingPairing ^ 1;
}

- (COSTinkerFeatureSplashViewController)init
{
  v5.receiver = self;
  v5.super_class = COSTinkerFeatureSplashViewController;
  v2 = [(COSTinkerFeatureSplashViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSTinkerFeatureSplashViewController *)v2 setStyle:32];
  }

  return v3;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = COSTinkerFeatureSplashViewController;
  [(COSTinkerFeatureSplashViewController *)&v24 viewDidLoad];
  v3 = BPSDeviceRemoteAssetString();
  v4 = [UIImage imageNamed:v3];

  if (!v4)
  {
    v4 = [UIImage imageNamed:PBAssetsFamilySetupSplashFallbackAssetName];
  }

  v5 = [[UIImageView alloc] initWithImage:v4];
  layer = [v5 layer];
  [layer setMinificationFilter:kCAFilterTrilinear];

  [v5 setContentMode:1];
  contentView = [(COSTinkerFeatureSplashViewController *)self contentView];
  [contentView addSubview:v5];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [v5 topAnchor];
  contentView2 = [(COSTinkerFeatureSplashViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v11 setActive:1];

  bottomAnchor = [v5 bottomAnchor];
  contentView3 = [(COSTinkerFeatureSplashViewController *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v15 setActive:1];

  leftAnchor = [v5 leftAnchor];
  contentView4 = [(COSTinkerFeatureSplashViewController *)self contentView];
  leftAnchor2 = [contentView4 leftAnchor];
  v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v19 setActive:1];

  rightAnchor = [v5 rightAnchor];
  contentView5 = [(COSTinkerFeatureSplashViewController *)self contentView];
  rightAnchor2 = [contentView5 rightAnchor];
  v23 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v23 setActive:1];
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"TINKER_FEATURE_SPLASH_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"TINKER_FEATURE_SPLASH_DETAIL" value:&stru_10026E598 table:@"Localizable-tinker"];

  return v3;
}

- (id)okayButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"CONTINUE_SETUP" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)okayButtonPressed:(id)pressed
{
  delegate = [(COSTinkerFeatureSplashViewController *)self delegate];
  [delegate buddyControllerDone:self];
}

@end