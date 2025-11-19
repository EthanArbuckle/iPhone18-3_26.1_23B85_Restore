@interface HSPCGuestAccessViewController
- (HSPCGuestAccessViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)commitConfiguration;
- (id)hu_preloadContent;
- (void)viewDidLoad;
@end

@implementation HSPCGuestAccessViewController

- (HSPCGuestAccessViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [[HSPCGuestAccessTableViewController alloc] initWithCoordinator:v7 config:v8];
  [(HSPCGuestAccessViewController *)self setGuestsTableVC:v9];
  v10 = [PRXScrollableContentView alloc];
  v11 = [(HSPCGuestAccessTableViewController *)v9 tableView];
  v12 = [v10 initWithCardStyle:0 scrollView:v11];

  v21.receiver = self;
  v21.super_class = HSPCGuestAccessViewController;
  v13 = [(HSPCGuestAccessViewController *)&v21 initWithContentView:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_config, a4);
    objc_storeStrong(&v14->_coordinator, a3);
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
  v2 = [(HSPCGuestAccessViewController *)self guestsTableVC];
  v3 = [v2 commitConfiguration];

  return v3;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HSPCGuestAccessViewController;
  [(HSPCGuestAccessViewController *)&v8 viewDidLoad];
  v3 = [(HSPCGuestAccessViewController *)self guestsTableVC];
  [(HSPCGuestAccessViewController *)self addChildViewController:v3];

  v4 = [(HSPCGuestAccessViewController *)self contentView];
  v5 = [(HSPCGuestAccessViewController *)self guestsTableVC];
  v6 = [v5 view];
  [v4 addSubview:v6];

  v7 = [(HSPCGuestAccessViewController *)self guestsTableVC];
  [v7 didMoveToParentViewController:self];
}

- (id)hu_preloadContent
{
  v2 = [(HSPCGuestAccessViewController *)self guestsTableVC];
  v3 = [v2 hu_preloadContent];

  return v3;
}

@end