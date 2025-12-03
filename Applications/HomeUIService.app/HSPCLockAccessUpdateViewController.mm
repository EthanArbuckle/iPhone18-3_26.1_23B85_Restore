@interface HSPCLockAccessUpdateViewController
- (HSPCLockAccessUpdateViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)hu_preloadContent;
- (void)viewDidLoad;
@end

@implementation HSPCLockAccessUpdateViewController

- (HSPCLockAccessUpdateViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v9 = [HULockAccessUpdateViewController alloc];
  home = [configCopy home];
  v11 = [v9 initWithHome:home];
  lockAccessUpdateViewController = self->_lockAccessUpdateViewController;
  self->_lockAccessUpdateViewController = v11;

  v28.receiver = self;
  v28.super_class = HSPCLockAccessUpdateViewController;
  v13 = [(HSPCLockAccessUpdateViewController *)&v28 initWithContentView:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_config, config);
    objc_storeStrong(&v14->_coordinator, coordinator);
    v15 = sub_100063A44(@"HSLockAccessUpdate_Title");
    [(HSPCLockAccessUpdateViewController *)v14 setTitle:v15];

    v16 = sub_100063A44(@"HSLockAccessUpdate_Description");
    [(HSPCLockAccessUpdateViewController *)v14 setSubtitle:v16];

    home2 = [configCopy home];
    name = [home2 name];
    v25 = sub_100063B5C(@"HSLockAccessUpdate_Enable_Format", @"%@", v19, v20, v21, v22, v23, v24, name);
    v26 = [(HSPCLockAccessUpdateViewController *)v14 addProminentButtonWithLocalizedTitle:v25 target:v14 futureSelector:"commitConfiguration"];
  }

  return v14;
}

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = HSPCLockAccessUpdateViewController;
  [(HSPCLockAccessUpdateViewController *)&v38 viewDidLoad];
  lockAccessUpdateViewController = [(HSPCLockAccessUpdateViewController *)self lockAccessUpdateViewController];
  [(HSPCLockAccessUpdateViewController *)self addChildViewController:lockAccessUpdateViewController];

  contentView = [(HSPCLockAccessUpdateViewController *)self contentView];
  lockAccessUpdateViewController2 = [(HSPCLockAccessUpdateViewController *)self lockAccessUpdateViewController];
  contentView2 = [lockAccessUpdateViewController2 contentView];
  [contentView addSubview:contentView2];

  lockAccessUpdateViewController3 = [(HSPCLockAccessUpdateViewController *)self lockAccessUpdateViewController];
  contentView3 = [lockAccessUpdateViewController3 contentView];
  [contentView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  lockAccessUpdateViewController4 = [(HSPCLockAccessUpdateViewController *)self lockAccessUpdateViewController];
  contentView4 = [lockAccessUpdateViewController4 contentView];
  topAnchor = [contentView4 topAnchor];
  contentView5 = [(HSPCLockAccessUpdateViewController *)self contentView];
  mainContentGuide = [contentView5 mainContentGuide];
  topAnchor2 = [mainContentGuide topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v39[0] = v31;
  lockAccessUpdateViewController5 = [(HSPCLockAccessUpdateViewController *)self lockAccessUpdateViewController];
  contentView6 = [lockAccessUpdateViewController5 contentView];
  bottomAnchor = [contentView6 bottomAnchor];
  contentView7 = [(HSPCLockAccessUpdateViewController *)self contentView];
  mainContentGuide2 = [contentView7 mainContentGuide];
  bottomAnchor2 = [mainContentGuide2 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v39[1] = v24;
  lockAccessUpdateViewController6 = [(HSPCLockAccessUpdateViewController *)self lockAccessUpdateViewController];
  contentView8 = [lockAccessUpdateViewController6 contentView];
  leadingAnchor = [contentView8 leadingAnchor];
  contentView9 = [(HSPCLockAccessUpdateViewController *)self contentView];
  mainContentGuide3 = [contentView9 mainContentGuide];
  leadingAnchor2 = [mainContentGuide3 leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v39[2] = v10;
  lockAccessUpdateViewController7 = [(HSPCLockAccessUpdateViewController *)self lockAccessUpdateViewController];
  contentView10 = [lockAccessUpdateViewController7 contentView];
  trailingAnchor = [contentView10 trailingAnchor];
  contentView11 = [(HSPCLockAccessUpdateViewController *)self contentView];
  mainContentGuide4 = [contentView11 mainContentGuide];
  trailingAnchor2 = [mainContentGuide4 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v39[3] = v17;
  v18 = [NSArray arrayWithObjects:v39 count:4];
  [NSLayoutConstraint activateConstraints:v18];
}

- (id)hu_preloadContent
{
  lockAccessUpdateViewController = [(HSPCLockAccessUpdateViewController *)self lockAccessUpdateViewController];
  hu_preloadContent = [lockAccessUpdateViewController hu_preloadContent];

  return hu_preloadContent;
}

@end