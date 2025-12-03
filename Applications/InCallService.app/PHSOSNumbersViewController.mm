@interface PHSOSNumbersViewController
- (PHSOSNumbersViewController)initWithSOSHandles:(id)handles;
- (PHSOSNumbersViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)didReceiveMemoryWarning;
- (void)setUpConstraints;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSOSHandles:(id)handles;
- (void)viewDidLoad;
@end

@implementation PHSOSNumbersViewController

- (PHSOSNumbersViewController)initWithSOSHandles:(id)handles
{
  handlesCopy = handles;
  v9.receiver = self;
  v9.super_class = PHSOSNumbersViewController;
  v6 = [(PHSOSNumbersViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sosHandles, handles);
  }

  return v7;
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = PHSOSNumbersViewController;
  [(PHSOSNumbersViewController *)&v31 viewDidLoad];
  v3 = [[UITableView alloc] initWithFrame:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(PHSOSNumbersViewController *)self setTableView:v3];

  v4 = +[UIColor clearColor];
  tableView = [(PHSOSNumbersViewController *)self tableView];
  [tableView setBackgroundColor:v4];

  tableView2 = [(PHSOSNumbersViewController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(PHSOSNumbersViewController *)self tableView];
  [tableView3 setDataSource:self];

  v8 = objc_opt_new();
  tableView4 = [(PHSOSNumbersViewController *)self tableView];
  [tableView4 setTableFooterView:v8];

  tableView5 = [(PHSOSNumbersViewController *)self tableView];
  [tableView5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = +[UIColor darkGrayColor];
  tableView6 = [(PHSOSNumbersViewController *)self tableView];
  [tableView6 setSeparatorColor:v11];

  tableView7 = [(PHSOSNumbersViewController *)self tableView];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [tableView7 registerClass:v14 forCellReuseIdentifier:v16];

  view = [(PHSOSNumbersViewController *)self view];
  tableView8 = [(PHSOSNumbersViewController *)self tableView];
  [view addSubview:tableView8];

  v19 = objc_alloc_init(UILabel);
  [(PHSOSNumbersViewController *)self setTitleLabel:v19];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"EMERGENCY_SOS" value:&stru_100361FD0 table:@"InCallService"];
  titleLabel = [(PHSOSNumbersViewController *)self titleLabel];
  [titleLabel setText:v21];

  titleLabel2 = [(PHSOSNumbersViewController *)self titleLabel];
  [titleLabel2 setTextAlignment:1];

  titleLabel3 = [(PHSOSNumbersViewController *)self titleLabel];
  [titleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = [UIFont _lightSystemFontOfSize:36.0];
  titleLabel4 = [(PHSOSNumbersViewController *)self titleLabel];
  [titleLabel4 setFont:v25];

  v27 = +[UIColor whiteColor];
  titleLabel5 = [(PHSOSNumbersViewController *)self titleLabel];
  [titleLabel5 setTextColor:v27];

  titleLabel6 = [(PHSOSNumbersViewController *)self titleLabel];
  [titleLabel6 setNumberOfLines:0];

  view2 = [(PHSOSNumbersViewController *)self view];
  [view2 addSubview:self->_titleLabel];

  [(PHSOSNumbersViewController *)self setUpConstraints];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = PHSOSNumbersViewController;
  [(PHSOSNumbersViewController *)&v2 didReceiveMemoryWarning];
}

- (void)setUpConstraints
{
  titleLabel = [(PHSOSNumbersViewController *)self titleLabel];
  leadingAnchor = [titleLabel leadingAnchor];
  view = [(PHSOSNumbersViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  titleLabel2 = [(PHSOSNumbersViewController *)self titleLabel];
  trailingAnchor = [titleLabel2 trailingAnchor];
  view2 = [(PHSOSNumbersViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v42 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  titleLabel3 = [(PHSOSNumbersViewController *)self titleLabel];
  topAnchor = [titleLabel3 topAnchor];
  view3 = [(PHSOSNumbersViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];

  titleLabel4 = [(PHSOSNumbersViewController *)self titleLabel];
  centerXAnchor = [titleLabel4 centerXAnchor];
  view4 = [(PHSOSNumbersViewController *)self view];
  centerXAnchor2 = [view4 centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  tableView = [(PHSOSNumbersViewController *)self tableView];
  leadingAnchor3 = [tableView leadingAnchor];
  view5 = [(PHSOSNumbersViewController *)self view];
  leadingAnchor4 = [view5 leadingAnchor];
  v25 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  tableView2 = [(PHSOSNumbersViewController *)self tableView];
  trailingAnchor3 = [tableView2 trailingAnchor];
  view6 = [(PHSOSNumbersViewController *)self view];
  trailingAnchor4 = [view6 trailingAnchor];
  v30 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

  tableView3 = [(PHSOSNumbersViewController *)self tableView];
  topAnchor3 = [tableView3 topAnchor];
  titleLabel5 = [(PHSOSNumbersViewController *)self titleLabel];
  lastBaselineAnchor = [titleLabel5 lastBaselineAnchor];
  v35 = [topAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:57.0];

  tableView4 = [(PHSOSNumbersViewController *)self tableView];
  bottomAnchor = [tableView4 bottomAnchor];
  view7 = [(PHSOSNumbersViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  v44[0] = v43;
  v44[1] = v42;
  v44[2] = v15;
  v44[3] = v20;
  v44[4] = v25;
  v44[5] = v30;
  v44[6] = v35;
  v44[7] = v40;
  v41 = [NSArray arrayWithObjects:v44 count:8];
  [NSLayoutConstraint activateConstraints:v41];
}

- (void)updateSOSHandles:(id)handles
{
  objc_storeStrong(&self->_sosHandles, handles);
  tableView = [(PHSOSNumbersViewController *)self tableView];
  [tableView reloadData];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(PHSOSNumbersViewController *)self sosHandles:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  sosHandles = [(PHSOSNumbersViewController *)self sosHandles];
  v12 = [pathCopy row];

  v13 = [sosHandles objectAtIndexedSubscript:v12];

  v14 = [[PHSOSNumberViewModel alloc] initWithSOSHandle:v13];
  [v10 populate:v14];

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(PHSOSNumbersViewController *)self delegate];
  [delegate sosNumbersViewController:self didSelectRowAtIndexPath:pathCopy];
}

- (PHSOSNumbersViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end