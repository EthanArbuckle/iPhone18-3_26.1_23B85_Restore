@interface ExtensionModalTableViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)initNavBar;
- (void)initNavBarContainer;
- (void)initTableView;
- (void)setupConstraints;
- (void)updateTheme;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ExtensionModalTableViewController

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = objc_opt_new();

  return v4;
}

- (void)updateTheme
{
  v6.receiver = self;
  v6.super_class = ExtensionModalTableViewController;
  [(MapsThemeViewController *)&v6 updateTheme];
  theme = [(ExtensionModalTableViewController *)self theme];
  hairlineColor = [theme hairlineColor];
  navigationBarContainerView = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  [navigationBarContainerView setHairlineColor:hairlineColor];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = ExtensionModalTableViewController;
  [(ContaineeViewController *)&v2 viewDidLayoutSubviews];
}

- (void)setupConstraints
{
  navigationBarContainerView = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  [navigationBarContainerView setTranslatesAutoresizingMaskIntoConstraints:0];

  navigationBar = [(ExtensionModalTableViewController *)self navigationBar];
  [navigationBar setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView = [(ExtensionModalTableViewController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(ExtensionModalTableViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(ExtensionModalTableViewController *)self view];
  leadingAnchor = [view2 leadingAnchor];
  navigationBarContainerView2 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  leadingAnchor2 = [navigationBarContainerView2 leadingAnchor];
  v56 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v61[0] = v56;
  view3 = [(ExtensionModalTableViewController *)self view];
  trailingAnchor = [view3 trailingAnchor];
  navigationBarContainerView3 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  trailingAnchor2 = [navigationBarContainerView3 trailingAnchor];
  v51 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v61[1] = v51;
  view4 = [(ExtensionModalTableViewController *)self view];
  topAnchor = [view4 topAnchor];
  navigationBarContainerView4 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  topAnchor2 = [navigationBarContainerView4 topAnchor];
  v46 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v61[2] = v46;
  navigationBarContainerView5 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  heightAnchor = [navigationBarContainerView5 heightAnchor];
  v43 = [heightAnchor constraintEqualToConstant:60.0];
  v61[3] = v43;
  navigationBarContainerView6 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  leadingAnchor3 = [navigationBarContainerView6 leadingAnchor];
  navigationBar2 = [(ExtensionModalTableViewController *)self navigationBar];
  leadingAnchor4 = [navigationBar2 leadingAnchor];
  v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v61[4] = v38;
  navigationBarContainerView7 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  trailingAnchor3 = [navigationBarContainerView7 trailingAnchor];
  navigationBar3 = [(ExtensionModalTableViewController *)self navigationBar];
  trailingAnchor4 = [navigationBar3 trailingAnchor];
  v33 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v61[5] = v33;
  navigationBarContainerView8 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  centerYAnchor = [navigationBarContainerView8 centerYAnchor];
  navigationBar4 = [(ExtensionModalTableViewController *)self navigationBar];
  centerYAnchor2 = [navigationBar4 centerYAnchor];
  v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v61[6] = v28;
  tableView2 = [(ExtensionModalTableViewController *)self tableView];
  leadingAnchor5 = [tableView2 leadingAnchor];
  view5 = [(ExtensionModalTableViewController *)self view];
  leadingAnchor6 = [view5 leadingAnchor];
  v23 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v61[7] = v23;
  tableView3 = [(ExtensionModalTableViewController *)self tableView];
  trailingAnchor5 = [tableView3 trailingAnchor];
  view6 = [(ExtensionModalTableViewController *)self view];
  trailingAnchor6 = [view6 trailingAnchor];
  v18 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v61[8] = v18;
  tableView4 = [(ExtensionModalTableViewController *)self tableView];
  topAnchor3 = [tableView4 topAnchor];
  navigationBarContainerView9 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  bottomAnchor = [navigationBarContainerView9 bottomAnchor];
  v10 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v61[9] = v10;
  tableView5 = [(ExtensionModalTableViewController *)self tableView];
  bottomAnchor2 = [tableView5 bottomAnchor];
  view7 = [(ExtensionModalTableViewController *)self view];
  bottomAnchor3 = [view7 bottomAnchor];
  v15 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v61[10] = v15;
  v16 = [NSArray arrayWithObjects:v61 count:11];
  [NSLayoutConstraint activateConstraints:v16];
}

- (void)initTableView
{
  v3 = [UITableView alloc];
  view = [(ExtensionModalTableViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:1 style:?];
  [(ExtensionModalTableViewController *)self setTableView:v5];

  v6 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView = [(ExtensionModalTableViewController *)self tableView];
  [tableView setTableFooterView:v6];

  tableView2 = [(ExtensionModalTableViewController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(ExtensionModalTableViewController *)self tableView];
  [tableView3 setDataSource:self];
}

- (void)initNavBar
{
  v3 = objc_opt_new();
  [(ExtensionModalTableViewController *)self setNavigationBar:v3];

  navigationBar = [(ExtensionModalTableViewController *)self navigationBar];
  v5 = objc_opt_new();
  [navigationBar setBackgroundImage:v5 forBarMetrics:0];

  v6 = objc_opt_new();
  navigationBar2 = [(ExtensionModalTableViewController *)self navigationBar];
  [navigationBar2 setShadowImage:v6];

  navigationBar3 = [(ExtensionModalTableViewController *)self navigationBar];
  [navigationBar3 setTranslucent:1];

  v10 = +[UIColor clearColor];
  navigationBar4 = [(ExtensionModalTableViewController *)self navigationBar];
  [navigationBar4 setBackgroundColor:v10];
}

- (void)initNavBarContainer
{
  v3 = objc_opt_new();
  [(ExtensionModalTableViewController *)self setNavigationBarContainerView:v3];

  v4 = +[UIColor clearColor];
  navigationBarContainerView = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  [navigationBarContainerView setBackgroundColor:v4];

  view = [(ExtensionModalTableViewController *)self view];
  navigationBarContainerView2 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  [view addSubview:navigationBarContainerView2];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = ExtensionModalTableViewController;
  [(ContaineeViewController *)&v11 viewDidLoad];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setBlurInCardView:0];

  [(ExtensionModalTableViewController *)self initNavBarContainer];
  [(ExtensionModalTableViewController *)self initNavBar];
  [(ExtensionModalTableViewController *)self initTableView];
  view = [(ExtensionModalTableViewController *)self view];
  [view setClipsToBounds:1];

  view2 = [(ExtensionModalTableViewController *)self view];
  navigationBarContainerView = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  [view2 addSubview:navigationBarContainerView];

  view3 = [(ExtensionModalTableViewController *)self view];
  tableView = [(ExtensionModalTableViewController *)self tableView];
  [view3 addSubview:tableView];

  navigationBarContainerView2 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  navigationBar = [(ExtensionModalTableViewController *)self navigationBar];
  [navigationBarContainerView2 addSubview:navigationBar];

  [(ExtensionModalTableViewController *)self setupConstraints];
}

@end