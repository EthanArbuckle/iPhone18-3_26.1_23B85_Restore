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
  createConfiguration = [(CSLPRFCompanionAutoLaunchSettingsViewController *)self createConfiguration];
  v4 = [[_TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController alloc] initWithConfiguration:createConfiguration];
  [(CSLPRFCompanionAutoLaunchSettingsViewController *)self addChildViewController:v4];
  view = [(CompanionAutoLaunchSettingsViewController *)v4 view];
  view2 = [(CSLPRFCompanionAutoLaunchSettingsViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  [view setAutoresizingMask:18];
  view3 = [(CSLPRFCompanionAutoLaunchSettingsViewController *)self view];
  [view3 addSubview:view];

  [(CompanionAutoLaunchSettingsViewController *)v4 didMoveToParentViewController:self];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"AUTO_LAUNCH_TITLE" value:&stru_36F60 table:@"CompanionAutoLaunchSettings"];
  navigationItem = [(CSLPRFCompanionAutoLaunchSettingsViewController *)self navigationItem];
  [navigationItem setTitle:v9];
}

- (id)createConfiguration
{
  v2 = +[PDRRegistry sharedInstance];
  v3 = [v2 getDevicesExcluding:22];
  firstObject = [v3 firstObject];

  v5 = objc_alloc_init(_TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration);
  if (firstObject)
  {
    -[CompanionAutoLaunchSettingsConfiguration setIsTinker:](v5, "setIsTinker:", [firstObject isAltAccount]);
    -[CompanionAutoLaunchSettingsConfiguration setSupportsDepth:](v5, "setSupportsDepth:", [firstObject supportsCapability:3847477697]);
    [(CompanionAutoLaunchSettingsConfiguration *)v5 setDepthAutoLaunchVersion:+[CSLPRFDepthAutoLaunchAppSetting preferredVersion]];
  }

  return v5;
}

@end