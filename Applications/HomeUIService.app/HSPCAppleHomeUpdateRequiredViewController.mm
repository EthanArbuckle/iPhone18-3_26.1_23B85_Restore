@interface HSPCAppleHomeUpdateRequiredViewController
- (HSPCAppleHomeUpdateRequiredViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)commitConfiguration;
- (void)_optionalButtonTapped;
@end

@implementation HSPCAppleHomeUpdateRequiredViewController

- (HSPCAppleHomeUpdateRequiredViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v9 = [UIImageView alloc];
  v10 = [UIImage systemImageNamed:@"homekit"];
  v11 = [v9 initWithImage:v10];

  [v11 setContentMode:2];
  v12 = +[UIColor hu_keyColor];
  [v11 setTintColor:v12];

  v22.receiver = self;
  v22.super_class = HSPCAppleHomeUpdateRequiredViewController;
  v13 = [(HSPCFixedSizeCenterContentViewController *)&v22 initWithCenterContentView:v11 size:75.0, 75.0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_config, config);
    objc_storeStrong(&v14->_coordinator, coordinator);
    v15 = sub_100063A44(@"HSProximityCardAppleHomeUpdateRequiredTitle");
    [(HSPCAppleHomeUpdateRequiredViewController *)v14 setTitle:v15];

    v16 = sub_100063A44(@"HSProximityCardAppleHomeUpdateRequiredSubtle");
    [(HSPCAppleHomeUpdateRequiredViewController *)v14 setSubtitle:v16];

    v17 = [(HSPCAppleHomeUpdateRequiredViewController *)v14 addProminentButtonWithTitleKey:@"HSProximityCardAppleHomeUpdateRequiredUpdateNow" target:v14 futureSelector:"commitConfiguration"];
    v18 = [(HSPCAppleHomeUpdateRequiredViewController *)v14 addOptionalButtonWithTitleKey:@"HSProximityCardAppleHomeUpdateRequiredLearnMore" target:v14 futureSelector:"_optionalButtonTapped"];
    v19 = +[UIColor hu_keyColor];
    view = [(HSPCAppleHomeUpdateRequiredViewController *)v14 view];
    [view setTintColor:v19];
  }

  return v14;
}

- (id)commitConfiguration
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[HSPCAppleHomeUpdateRequiredViewController-commitConfiguration] user tapped 'Update Now'", v9, 2u);
  }

  v3 = [[NSURL alloc] initWithString:@"com.apple.Home-private://homeHubUpdate"];
  v4 = +[HFOpenURLRouter sharedInstance];
  v5 = [v4 openURL:v3];
  v6 = [v5 flatMap:&stru_1000C81F8];
  v7 = [v6 recover:&stru_1000C8218];

  return v7;
}

- (void)_optionalButtonTapped
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[HSPCAppleHomeUpdateRequiredViewController-_optionalButtonTapped] user tapped learn more", v6, 2u);
  }

  v3 = +[HFOpenURLRouter sharedInstance];
  v4 = +[NSURL hu_homeUpdateLearnMoreURL];
  v5 = [v3 openURL:v4];
}

@end