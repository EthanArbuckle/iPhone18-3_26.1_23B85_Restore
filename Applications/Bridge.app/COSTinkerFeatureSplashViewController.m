@interface COSTinkerFeatureSplashViewController
+ (BOOL)controllerNeedsToRun;
- (COSTinkerFeatureSplashViewController)init;
- (id)detailString;
- (id)okayButtonTitle;
- (id)titleString;
- (void)okayButtonPressed:(id)a3;
- (void)viewDidLoad;
@end

@implementation COSTinkerFeatureSplashViewController

+ (BOOL)controllerNeedsToRun
{
  v2 = [UIApp setupController];
  v3 = [v2 resumePairingController];
  v4 = [v3 isResumingPairing];

  return v4 ^ 1;
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
  v6 = [v5 layer];
  [v6 setMinificationFilter:kCAFilterTrilinear];

  [v5 setContentMode:1];
  v7 = [(COSTinkerFeatureSplashViewController *)self contentView];
  [v7 addSubview:v5];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v5 topAnchor];
  v9 = [(COSTinkerFeatureSplashViewController *)self contentView];
  v10 = [v9 topAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [v5 bottomAnchor];
  v13 = [(COSTinkerFeatureSplashViewController *)self contentView];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [v5 leftAnchor];
  v17 = [(COSTinkerFeatureSplashViewController *)self contentView];
  v18 = [v17 leftAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  v20 = [v5 rightAnchor];
  v21 = [(COSTinkerFeatureSplashViewController *)self contentView];
  v22 = [v21 rightAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
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

- (void)okayButtonPressed:(id)a3
{
  v4 = [(COSTinkerFeatureSplashViewController *)self delegate];
  [v4 buddyControllerDone:self];
}

@end