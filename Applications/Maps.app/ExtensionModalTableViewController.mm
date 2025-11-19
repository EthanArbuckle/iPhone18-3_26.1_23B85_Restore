@interface ExtensionModalTableViewController
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)initNavBar;
- (void)initNavBarContainer;
- (void)initTableView;
- (void)setupConstraints;
- (void)updateTheme;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ExtensionModalTableViewController

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = objc_opt_new();

  return v4;
}

- (void)updateTheme
{
  v6.receiver = self;
  v6.super_class = ExtensionModalTableViewController;
  [(MapsThemeViewController *)&v6 updateTheme];
  v3 = [(ExtensionModalTableViewController *)self theme];
  v4 = [v3 hairlineColor];
  v5 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  [v5 setHairlineColor:v4];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = ExtensionModalTableViewController;
  [(ContaineeViewController *)&v2 viewDidLayoutSubviews];
}

- (void)setupConstraints
{
  v3 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(ExtensionModalTableViewController *)self navigationBar];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(ExtensionModalTableViewController *)self tableView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(ExtensionModalTableViewController *)self view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v60 = [(ExtensionModalTableViewController *)self view];
  v58 = [v60 leadingAnchor];
  v59 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  v57 = [v59 leadingAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v61[0] = v56;
  v55 = [(ExtensionModalTableViewController *)self view];
  v53 = [v55 trailingAnchor];
  v54 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  v52 = [v54 trailingAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v61[1] = v51;
  v50 = [(ExtensionModalTableViewController *)self view];
  v48 = [v50 topAnchor];
  v49 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  v47 = [v49 topAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v61[2] = v46;
  v45 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  v44 = [v45 heightAnchor];
  v43 = [v44 constraintEqualToConstant:60.0];
  v61[3] = v43;
  v42 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  v40 = [v42 leadingAnchor];
  v41 = [(ExtensionModalTableViewController *)self navigationBar];
  v39 = [v41 leadingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v61[4] = v38;
  v37 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  v35 = [v37 trailingAnchor];
  v36 = [(ExtensionModalTableViewController *)self navigationBar];
  v34 = [v36 trailingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v61[5] = v33;
  v32 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  v30 = [v32 centerYAnchor];
  v31 = [(ExtensionModalTableViewController *)self navigationBar];
  v29 = [v31 centerYAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v61[6] = v28;
  v27 = [(ExtensionModalTableViewController *)self tableView];
  v25 = [v27 leadingAnchor];
  v26 = [(ExtensionModalTableViewController *)self view];
  v24 = [v26 leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v61[7] = v23;
  v22 = [(ExtensionModalTableViewController *)self tableView];
  v20 = [v22 trailingAnchor];
  v21 = [(ExtensionModalTableViewController *)self view];
  v19 = [v21 trailingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v61[8] = v18;
  v17 = [(ExtensionModalTableViewController *)self tableView];
  v7 = [v17 topAnchor];
  v8 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v61[9] = v10;
  v11 = [(ExtensionModalTableViewController *)self tableView];
  v12 = [v11 bottomAnchor];
  v13 = [(ExtensionModalTableViewController *)self view];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v61[10] = v15;
  v16 = [NSArray arrayWithObjects:v61 count:11];
  [NSLayoutConstraint activateConstraints:v16];
}

- (void)initTableView
{
  v3 = [UITableView alloc];
  v4 = [(ExtensionModalTableViewController *)self view];
  [v4 bounds];
  v5 = [v3 initWithFrame:1 style:?];
  [(ExtensionModalTableViewController *)self setTableView:v5];

  v6 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v7 = [(ExtensionModalTableViewController *)self tableView];
  [v7 setTableFooterView:v6];

  v8 = [(ExtensionModalTableViewController *)self tableView];
  [v8 setDelegate:self];

  v9 = [(ExtensionModalTableViewController *)self tableView];
  [v9 setDataSource:self];
}

- (void)initNavBar
{
  v3 = objc_opt_new();
  [(ExtensionModalTableViewController *)self setNavigationBar:v3];

  v4 = [(ExtensionModalTableViewController *)self navigationBar];
  v5 = objc_opt_new();
  [v4 setBackgroundImage:v5 forBarMetrics:0];

  v6 = objc_opt_new();
  v7 = [(ExtensionModalTableViewController *)self navigationBar];
  [v7 setShadowImage:v6];

  v8 = [(ExtensionModalTableViewController *)self navigationBar];
  [v8 setTranslucent:1];

  v10 = +[UIColor clearColor];
  v9 = [(ExtensionModalTableViewController *)self navigationBar];
  [v9 setBackgroundColor:v10];
}

- (void)initNavBarContainer
{
  v3 = objc_opt_new();
  [(ExtensionModalTableViewController *)self setNavigationBarContainerView:v3];

  v4 = +[UIColor clearColor];
  v5 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  [v5 setBackgroundColor:v4];

  v7 = [(ExtensionModalTableViewController *)self view];
  v6 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  [v7 addSubview:v6];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = ExtensionModalTableViewController;
  [(ContaineeViewController *)&v11 viewDidLoad];
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 setBlurInCardView:0];

  [(ExtensionModalTableViewController *)self initNavBarContainer];
  [(ExtensionModalTableViewController *)self initNavBar];
  [(ExtensionModalTableViewController *)self initTableView];
  v4 = [(ExtensionModalTableViewController *)self view];
  [v4 setClipsToBounds:1];

  v5 = [(ExtensionModalTableViewController *)self view];
  v6 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  [v5 addSubview:v6];

  v7 = [(ExtensionModalTableViewController *)self view];
  v8 = [(ExtensionModalTableViewController *)self tableView];
  [v7 addSubview:v8];

  v9 = [(ExtensionModalTableViewController *)self navigationBarContainerView];
  v10 = [(ExtensionModalTableViewController *)self navigationBar];
  [v9 addSubview:v10];

  [(ExtensionModalTableViewController *)self setupConstraints];
}

@end