@interface HSPCGuestAccessViewController
- (HSPCGuestAccessViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)commitConfiguration;
- (id)hu_preloadContent;
- (void)viewDidLoad;
@end

@implementation HSPCGuestAccessViewController

- (HSPCGuestAccessViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v9 = [[HSPCGuestAccessTableViewController alloc] initWithCoordinator:coordinatorCopy config:configCopy];
  [(HSPCGuestAccessViewController *)self setGuestsTableVC:v9];
  v10 = [PRXScrollableContentView alloc];
  tableView = [(HSPCGuestAccessTableViewController *)v9 tableView];
  v12 = [v10 initWithCardStyle:0 scrollView:tableView];

  v21.receiver = self;
  v21.super_class = HSPCGuestAccessViewController;
  v13 = [(HSPCGuestAccessViewController *)&v21 initWithContentView:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_config, config);
    objc_storeStrong(&v14->_coordinator, coordinator);
    v15 = sub_100063A44(@"HSProximityCardGuestAccessTitle");
    [(HSPCGuestAccessViewController *)v14 setTitle:v15];

    v16 = sub_100063A44(@"HSProximityCardGuestAccessSubitle");
    [(HSPCGuestAccessViewController *)v14 setSubtitle:v16];

    v17 = sub_100063A44(@"HSProximityCardGuestAccessFooter");
    [(HSPCGuestAccessViewController *)v14 setBottomTrayTitle:v17];

    v18 = HULocalizedString();
    v19 = [(HSPCGuestAccessViewController *)v14 addProminentButtonWithTitleKey:v18 target:v14 futureSelector:"commitConfiguration"];
  }

  return v14;
}

- (id)commitConfiguration
{
  guestsTableVC = [(HSPCGuestAccessViewController *)self guestsTableVC];
  commitConfiguration = [guestsTableVC commitConfiguration];

  return commitConfiguration;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HSPCGuestAccessViewController;
  [(HSPCGuestAccessViewController *)&v8 viewDidLoad];
  guestsTableVC = [(HSPCGuestAccessViewController *)self guestsTableVC];
  [(HSPCGuestAccessViewController *)self addChildViewController:guestsTableVC];

  contentView = [(HSPCGuestAccessViewController *)self contentView];
  guestsTableVC2 = [(HSPCGuestAccessViewController *)self guestsTableVC];
  view = [guestsTableVC2 view];
  [contentView addSubview:view];

  guestsTableVC3 = [(HSPCGuestAccessViewController *)self guestsTableVC];
  [guestsTableVC3 didMoveToParentViewController:self];
}

- (id)hu_preloadContent
{
  guestsTableVC = [(HSPCGuestAccessViewController *)self guestsTableVC];
  hu_preloadContent = [guestsTableVC hu_preloadContent];

  return hu_preloadContent;
}

@end