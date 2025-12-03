@interface NavCategoryListViewController
- (NavCategoryListViewController)initWithDelegate:(id)delegate categories:(id)categories;
- (NavCategoryListViewController)initWithDelegate:(id)delegate usingSearchHome:(id)home;
- (NavCategoryListViewControllerDelegate)categoryListDelegate;
- (double)heightForLayout:(unint64_t)layout;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (double)topSpaceForScrollPocket;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)didBecomeCurrent;
- (void)didDismissByGesture;
- (void)didResignCurrent;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)headerViewTapped:(id)tapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willBecomeCurrent:(BOOL)current;
- (void)willBecomeCurrentByGesture;
- (void)willResignCurrent:(BOOL)current;
@end

@implementation NavCategoryListViewController

- (NavCategoryListViewControllerDelegate)categoryListDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryListDelegate);

  return WeakRetained;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  categories = [(NavCategoryListViewController *)self categories];
  v8 = [pathCopy row];

  v11 = [categories objectAtIndexedSubscript:v8];

  categories2 = [(NavCategoryListViewController *)self categories];
  [SARAnalytics captureSelectCategory:v11 fromDisplayedCategories:categories2 isAddStopTray:1];

  categoryListDelegate = [(NavCategoryListViewController *)self categoryListDelegate];
  [categoryListDelegate categoryList:self selectedSearchCategory:v11];
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  categories = [(NavCategoryListViewController *)self categories];
  v9 = [pathCopy row];

  v10 = [categories objectAtIndexedSubscript:v9];

  [viewCopy frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v29.origin.x = v12;
  v29.origin.y = v14;
  v29.size.width = v16;
  v29.size.height = v18;
  Width = CGRectGetWidth(v29);
  tableView = [(NavCategoryListViewController *)self tableView];
  [tableView layoutMargins];
  v22 = v21;
  tableView2 = [(NavCategoryListViewController *)self tableView];
  [tableView2 layoutMargins];
  v25 = Width - (v22 + v24);

  [NavCategoryCell heightForCellWithCategory:v10 width:v25];
  v27 = v26;

  return v27;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9];

  categories = [(NavCategoryListViewController *)self categories];
  v12 = [pathCopy row];

  v13 = [categories objectAtIndexedSubscript:v12];

  [v10 setCategory:v13];

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NavCategoryListViewController *)self categories:view];
  v5 = [v4 count];

  return v5;
}

- (void)headerViewTapped:(id)tapped
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  v8 = cardPresentationController2;
  if (containeeLayout == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [cardPresentationController2 wantsLayout:v7];
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  v5 = [(NavCategoryListViewController *)self categoryListDelegate:tapped];
  [v5 dismissCategoryList:self];

  v6 = +[MKMapService sharedService];
  [v6 captureUserAction:4 onTarget:59 eventValue:0];
}

- (void)didDismissByGesture
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:4 onTarget:59 eventValue:0];

  v4.receiver = self;
  v4.super_class = NavCategoryListViewController;
  [(ContaineeViewController *)&v4 didDismissByGesture];
}

- (double)heightForLayout:(unint64_t)layout
{
  searchHomeViewController = [(NavCategoryListViewController *)self searchHomeViewController];

  if (!searchHomeViewController)
  {
    if (layout == 1)
    {
      [(ContaineeViewController *)self headerHeight];
      v20 = v19;
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController bottomSafeOffset];
      v7 = v22 + v20;
    }

    else
    {
      v7 = -1.0;
      if (layout != 2)
      {
        return v7;
      }

      tableView = [(NavCategoryListViewController *)self tableView];
      v10 = [tableView numberOfRowsInSection:0];

      if (v10 < 1)
      {
        v18 = 16.0;
      }

      else
      {
        v11 = 0;
        v12 = 0.0;
        do
        {
          tableView2 = [(NavCategoryListViewController *)self tableView];
          v14 = [NSIndexPath indexPathForRow:v11 inSection:0];
          [(NavCategoryListViewController *)self tableView:tableView2 heightForRowAtIndexPath:v14];
          v12 = v15 + v12;

          ++v11;
          tableView3 = [(NavCategoryListViewController *)self tableView];
          v17 = [tableView3 numberOfRowsInSection:0];
        }

        while (v11 < v17);
        v18 = v12 + 16.0;
      }

      [(ContaineeViewController *)self headerHeight];
      v24 = v23;
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController bottomSafeOffset];
      v7 = v18 + v24 + v25;
    }

    return v7;
  }

  v6 = sub_10000FA08(self);
  if (layout != 1 || (v7 = -1.0, v6 != 5))
  {
    v27.receiver = self;
    v27.super_class = NavCategoryListViewController;
    [(ContaineeViewController *)&v27 heightForLayout:layout];
    return v8;
  }

  return v7;
}

- (void)didResignCurrent
{
  searchHomeViewController = [(NavCategoryListViewController *)self searchHomeViewController];

  if (searchHomeViewController)
  {
    searchHomeViewController2 = [(NavCategoryListViewController *)self searchHomeViewController];
    [searchHomeViewController2 cleanSearch];

    searchHomeViewController3 = [(NavCategoryListViewController *)self searchHomeViewController];
    [searchHomeViewController3 didResignCurrent];

    searchHomeViewController4 = [(NavCategoryListViewController *)self searchHomeViewController];
    [searchHomeViewController4 endEditing];
  }

  v7.receiver = self;
  v7.super_class = NavCategoryListViewController;
  [(ContaineeViewController *)&v7 didResignCurrent];
}

- (void)willResignCurrent:(BOOL)current
{
  currentCopy = current;
  v7.receiver = self;
  v7.super_class = NavCategoryListViewController;
  [(ContaineeViewController *)&v7 willResignCurrent:?];
  searchHomeViewController = [(NavCategoryListViewController *)self searchHomeViewController];

  if (searchHomeViewController)
  {
    searchHomeViewController2 = [(NavCategoryListViewController *)self searchHomeViewController];
    [searchHomeViewController2 willResignCurrent:currentCopy];
  }
}

- (void)didBecomeCurrent
{
  v5.receiver = self;
  v5.super_class = NavCategoryListViewController;
  [(ContaineeViewController *)&v5 didBecomeCurrent];
  searchHomeViewController = [(NavCategoryListViewController *)self searchHomeViewController];

  if (searchHomeViewController)
  {
    searchHomeViewController2 = [(NavCategoryListViewController *)self searchHomeViewController];
    [searchHomeViewController2 didBecomeCurrent];
  }
}

- (void)willBecomeCurrentByGesture
{
  v5.receiver = self;
  v5.super_class = NavCategoryListViewController;
  [(ContaineeViewController *)&v5 willBecomeCurrentByGesture];
  searchHomeViewController = [(NavCategoryListViewController *)self searchHomeViewController];

  if (searchHomeViewController)
  {
    searchHomeViewController2 = [(NavCategoryListViewController *)self searchHomeViewController];
    [searchHomeViewController2 willBecomeCurrentByGesture];
  }
}

- (void)willBecomeCurrent:(BOOL)current
{
  currentCopy = current;
  v9.receiver = self;
  v9.super_class = NavCategoryListViewController;
  [(ContaineeViewController *)&v9 willBecomeCurrent:?];
  searchHomeViewController = [(NavCategoryListViewController *)self searchHomeViewController];

  if (searchHomeViewController)
  {
    searchHomeViewController2 = [(NavCategoryListViewController *)self searchHomeViewController];
    [searchHomeViewController2 cleanSearch];

    searchHomeViewController3 = [(NavCategoryListViewController *)self searchHomeViewController];
    [searchHomeViewController3 willBecomeCurrent:currentCopy];

    searchHomeViewController4 = [(NavCategoryListViewController *)self searchHomeViewController];
    [searchHomeViewController4 searchBarBecomeFirstResponder];
  }
}

- (double)topSpaceForScrollPocket
{
  searchHomeViewController = [(NavCategoryListViewController *)self searchHomeViewController];

  if (searchHomeViewController)
  {
    searchHomeViewController2 = [(NavCategoryListViewController *)self searchHomeViewController];
    [searchHomeViewController2 headerHeight];
    v6 = v5;

    return v6;
  }

  else
  {

    [(ContaineeViewController *)self headerHeight];
  }

  return result;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = NavCategoryListViewController;
  [(ContaineeViewController *)&v5 viewWillDisappear:disappear];
  searchHomeViewController = [(NavCategoryListViewController *)self searchHomeViewController];

  if (!searchHomeViewController)
  {
    [(NavSARAPIController *)self->_apiController cancelFetchingSARCategories];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = NavCategoryListViewController;
  [(ContaineeViewController *)&v7 viewWillAppear:appear];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setHideGrabber:1];

  searchHomeViewController = [(NavCategoryListViewController *)self searchHomeViewController];

  if (!searchHomeViewController)
  {
    tableView = [(NavCategoryListViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = NavCategoryListViewController;
  changeCopy = change;
  [(MapsThemeViewController *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [(NavCategoryListViewController *)self traitCollection:v10.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    tableView = [(NavCategoryListViewController *)self tableView];
    [tableView reloadData];

    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController updateHeightForCurrentLayoutAnimated:1];
  }
}

- (void)viewDidLoad
{
  v91.receiver = self;
  v91.super_class = NavCategoryListViewController;
  [(ContaineeViewController *)&v91 viewDidLoad];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(NavCategoryListViewController *)self setAccessibilityIdentifier:v4];

  contentView = [(ContaineeViewController *)self contentView];
  [contentView setAccessibilityIdentifier:@"NavCategoryListViewContent"];

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setEdgeAttachedRegularHeightDimmingBehavior:2];

  v90 = objc_alloc_init(NSMutableArray);
  v7 = objc_opt_new();
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setAccessibilityIdentifier:@"TitleView"];
  v8 = objc_opt_new();
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setNumberOfLines:2];
  v9 = [UIFont _maps_boldSystemFontWithSize:27.0];
  [v8 setFont:v9];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"[NavSAR] Add Stop" value:@"localized string not found" table:0];
  [v8 setText:v11];

  [v8 setAccessibilityIdentifier:@"HeaderLabel"];
  [v7 addSubview:v8];
  leadingAnchor = [v8 leadingAnchor];
  leadingAnchor2 = [v7 leadingAnchor];
  v82 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v95[0] = v82;
  trailingAnchor = [v8 trailingAnchor];
  trailingAnchor2 = [v7 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v95[1] = v12;
  topAnchor = [v8 topAnchor];
  topAnchor2 = [v7 topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v95[2] = v15;
  v87 = v8;
  bottomAnchor = [v8 bottomAnchor];
  bottomAnchor2 = [v7 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
  v95[3] = v18;
  v19 = [NSArray arrayWithObjects:v95 count:4];
  [v90 addObjectsFromArray:v19];

  v20 = objc_opt_new();
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v21) = 1148846080;
  [v20 setContentCompressionResistancePriority:1 forAxis:v21];
  v89 = v7;
  [v20 setTitleView:v7];
  [v20 setDelegate:self];
  [v20 setHairLineAlpha:0.0];
  [v20 setAccessibilityIdentifier:@"NavCategoryListHeader"];
  headerView = [(ContaineeViewController *)self headerView];
  [headerView addSubview:v20];

  topAnchor3 = [v20 topAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  topAnchor4 = [headerView2 topAnchor];
  v74 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v94[0] = v74;
  leadingAnchor3 = [v20 leadingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  leadingAnchor4 = [headerView3 leadingAnchor];
  v66 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v94[1] = v66;
  trailingAnchor3 = [v20 trailingAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  trailingAnchor4 = [headerView4 trailingAnchor];
  v26 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v94[2] = v26;
  v86 = v20;
  bottomAnchor3 = [v20 bottomAnchor];
  headerView5 = [(ContaineeViewController *)self headerView];
  bottomAnchor4 = [headerView5 bottomAnchor];
  v30 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v94[3] = v30;
  v31 = [NSArray arrayWithObjects:v94 count:4];
  [v90 addObjectsFromArray:v31];

  searchHomeViewController = [(NavCategoryListViewController *)self searchHomeViewController];

  if (searchHomeViewController)
  {
    searchHomeViewController2 = [(NavCategoryListViewController *)self searchHomeViewController];
    [(NavCategoryListViewController *)self addChildViewController:searchHomeViewController2];

    searchHomeViewController3 = [(NavCategoryListViewController *)self searchHomeViewController];
    view = [searchHomeViewController3 view];

    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(ContaineeViewController *)self contentView];
    [contentView2 addSubview:view];

    searchHomeViewController4 = [(NavCategoryListViewController *)self searchHomeViewController];
    [searchHomeViewController4 didMoveToParentViewController:self];

    leadingAnchor5 = [view leadingAnchor];
    contentView3 = [(ContaineeViewController *)self contentView];
    leadingAnchor6 = [contentView3 leadingAnchor];
    v81 = [leadingAnchor5 constraintEqualToAnchor:?];
    v93[0] = v81;
    trailingAnchor5 = [view trailingAnchor];
    contentView4 = [(ContaineeViewController *)self contentView];
    [contentView4 trailingAnchor];
    contentView9 = tableView2 = trailingAnchor5;
    v71 = [trailingAnchor5 constraintEqualToAnchor:?];
    v93[1] = v71;
    topAnchor5 = [view topAnchor];
    contentView5 = [(ContaineeViewController *)self contentView];
    [contentView5 topAnchor];
    v65 = v69 = topAnchor5;
    contentView10 = [topAnchor5 constraintEqualToAnchor:?];
    v93[2] = contentView10;
    bottomAnchor5 = [view bottomAnchor];
    contentView6 = [(ContaineeViewController *)self contentView];
    bottomAnchor6 = [contentView6 bottomAnchor];
    v45BottomAnchor = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v93[3] = v45BottomAnchor;
    contentView11 = [NSArray arrayWithObjects:v93 count:4];
    v48 = v90;
    [v90 addObjectsFromArray:contentView11];
  }

  else
  {
    v49 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    tableView = self->_tableView;
    self->_tableView = v49;

    [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView setDataSource:self];
    [(UITableView *)self->_tableView setSeparatorInset:0.0, 76.0, 0.0, 16.0];
    [(UITableView *)self->_tableView _setTopPadding:0.0];
    [(UITableView *)self->_tableView _setBottomPadding:0.0];
    [(UITableView *)self->_tableView setSectionHeaderHeight:0.0];
    [(UITableView *)self->_tableView setSectionFooterHeight:16.0];
    [(UITableView *)self->_tableView setAlwaysBounceVertical:0];
    v51 = +[UIColor clearColor];
    [(UITableView *)self->_tableView setBackgroundColor:v51];

    [(UITableView *)self->_tableView setLayoutMargins:0.0, 16.0, 0.0, 16.0];
    v52 = self->_tableView;
    v53 = objc_opt_class();
    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    [(UITableView *)v52 registerClass:v53 forCellReuseIdentifier:v55];

    [(UITableView *)self->_tableView setAccessibilityIdentifier:@"NavCategoryListTableView"];
    contentView7 = [(ContaineeViewController *)self contentView];
    [contentView7 addSubview:self->_tableView];

    tableView = [(NavCategoryListViewController *)self tableView];
    leadingAnchor7 = [tableView leadingAnchor];
    contentView8 = [(ContaineeViewController *)self contentView];
    leadingAnchor6 = [contentView8 leadingAnchor];
    v81 = [leadingAnchor7 constraintEqualToAnchor:?];
    v92[0] = v81;
    tableView2 = [(NavCategoryListViewController *)self tableView];
    trailingAnchor6 = [tableView2 trailingAnchor];
    contentView9 = [(ContaineeViewController *)self contentView];
    [contentView9 trailingAnchor];
    v71 = contentView4 = trailingAnchor6;
    v69 = [trailingAnchor6 constraintEqualToAnchor:?];
    v92[1] = v69;
    contentView5 = [(NavCategoryListViewController *)self tableView];
    topAnchor6 = [contentView5 topAnchor];
    contentView10 = [(ContaineeViewController *)self contentView];
    bottomAnchor5 = [contentView10 topAnchor];
    v65 = topAnchor6;
    contentView6 = [topAnchor6 constraintEqualToAnchor:bottomAnchor5];
    v92[2] = contentView6;
    bottomAnchor6 = [(NavCategoryListViewController *)self tableView];
    v45BottomAnchor = [bottomAnchor6 bottomAnchor];
    contentView11 = [(ContaineeViewController *)self contentView];
    bottomAnchor7 = [contentView11 bottomAnchor];
    v60 = [v45BottomAnchor constraintEqualToAnchor:bottomAnchor7];
    v92[3] = v60;
    v61 = [NSArray arrayWithObjects:v92 count:4];
    v48 = v90;
    [v90 addObjectsFromArray:v61];

    contentView3 = contentView8;
    view = tableView;

    leadingAnchor5 = leadingAnchor7;
  }

  [NSLayoutConstraint activateConstraints:v48];
}

- (NavCategoryListViewController)initWithDelegate:(id)delegate usingSearchHome:(id)home
{
  delegateCopy = delegate;
  homeCopy = home;
  v17.receiver = self;
  v17.super_class = NavCategoryListViewController;
  v8 = [(NavCategoryListViewController *)&v17 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    cardPresentationController = [(ContaineeViewController *)v8 cardPresentationController];
    [cardPresentationController setBlurInCardView:0];

    v11 = [UIColor colorNamed:@"NavigationMaterialColor"];
    cardPresentationController2 = [(ContaineeViewController *)v9 cardPresentationController];
    [cardPresentationController2 setCardColor:v11];

    cardPresentationController3 = [(ContaineeViewController *)v9 cardPresentationController];
    [cardPresentationController3 setTakesAvailableHeight:1];

    cardPresentationController4 = [(ContaineeViewController *)v9 cardPresentationController];
    [cardPresentationController4 setPresentedModally:1];

    cardPresentationController5 = [(ContaineeViewController *)v9 cardPresentationController];
    [cardPresentationController5 setMaximumLayoutForEdgeInsetUpdate:0];

    objc_storeWeak(&v9->_categoryListDelegate, delegateCopy);
    [(NavCategoryListViewController *)v9 setSearchHomeViewController:homeCopy];
  }

  return v9;
}

- (NavCategoryListViewController)initWithDelegate:(id)delegate categories:(id)categories
{
  delegateCopy = delegate;
  categoriesCopy = categories;
  v15.receiver = self;
  v15.super_class = NavCategoryListViewController;
  v8 = [(NavCategoryListViewController *)&v15 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    cardPresentationController = [(ContaineeViewController *)v8 cardPresentationController];
    [cardPresentationController setBlurInCardView:0];

    v11 = [UIColor colorNamed:@"NavigationMaterialColor"];
    cardPresentationController2 = [(ContaineeViewController *)v9 cardPresentationController];
    [cardPresentationController2 setCardColor:v11];

    cardPresentationController3 = [(ContaineeViewController *)v9 cardPresentationController];
    [cardPresentationController3 setMaximumLayoutForEdgeInsetUpdate:0];

    [(NavCategoryListViewController *)v9 setCategories:categoriesCopy];
    objc_storeWeak(&v9->_categoryListDelegate, delegateCopy);
  }

  return v9;
}

@end