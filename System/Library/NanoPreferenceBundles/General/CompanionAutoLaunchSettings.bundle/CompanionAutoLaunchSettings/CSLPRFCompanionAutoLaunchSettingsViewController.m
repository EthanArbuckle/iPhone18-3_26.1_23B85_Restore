@interface CSLPRFCompanionAutoLaunchSettingsViewController
- (id)createConfiguration;
- (void)viewDidLoad;
@end

@implementation CSLPRFCompanionAutoLaunchSettingsViewController

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = CSLPRFCompanionAutoLaunchSettingsViewController;
  [(CSLPRFCompanionAutoLaunchSettingsViewController *)&v11 viewDidLoad];
  v3 = [(CSLPRFCompanionAutoLaunchSettingsViewController *)self createConfiguration];
  v4 = [[_TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController alloc] initWithConfiguration:v3];
  [(CSLPRFCompanionAutoLaunchSettingsViewController *)self addChildViewController:v4];
  v5 = [(CompanionAutoLaunchSettingsViewController *)v4 view];
  v6 = [(CSLPRFCompanionAutoLaunchSettingsViewController *)self view];
  [v6 bounds];
  [v5 setFrame:?];

  [v5 setAutoresizingMask:18];
  v7 = [(CSLPRFCompanionAutoLaunchSettingsViewController *)self view];
  [v7 addSubview:v5];

  [(CompanionAutoLaunchSettingsViewController *)v4 didMoveToParentViewController:self];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"AUTO_LAUNCH_TITLE" value:&stru_36F60 table:@"CompanionAutoLaunchSettings"];
  v10 = [(CSLPRFCompanionAutoLaunchSettingsViewController *)self navigationItem];
  [v10 setTitle:v9];
}

- (id)createConfiguration
{
  v2 = +[PDRRegistry sharedInstance];
  v3 = [v2 getDevicesExcluding:22];
  v4 = [v3 firstObject];

  v5 = objc_alloc_init(_TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration);
  if (v4)
  {
    -[CompanionAutoLaunchSettingsConfiguration setIsTinker:](v5, "setIsTinker:", [v4 isAltAccount]);
    -[CompanionAutoLaunchSettingsConfiguration setSupportsDepth:](v5, "setSupportsDepth:", [v4 supportsCapability:3847477697]);
    [(CompanionAutoLaunchSettingsConfiguration *)v5 setDepthAutoLaunchVersion:+[CSLPRFDepthAutoLaunchAppSetting preferredVersion]];
  }

  return v5;
}

@end