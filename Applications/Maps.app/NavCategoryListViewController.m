@interface NavCategoryListViewController
- (NavCategoryListViewController)initWithDelegate:(id)a3 categories:(id)a4;
- (NavCategoryListViewController)initWithDelegate:(id)a3 usingSearchHome:(id)a4;
- (NavCategoryListViewControllerDelegate)categoryListDelegate;
- (double)heightForLayout:(unint64_t)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (double)topSpaceForScrollPocket;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)didBecomeCurrent;
- (void)didDismissByGesture;
- (void)didResignCurrent;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)headerViewTapped:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willBecomeCurrent:(BOOL)a3;
- (void)willBecomeCurrentByGesture;
- (void)willResignCurrent:(BOOL)a3;
@end

@implementation NavCategoryListViewController

- (NavCategoryListViewControllerDelegate)categoryListDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryListDelegate);

  return WeakRetained;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = [(NavCategoryListViewController *)self categories];
  v8 = [v6 row];

  v11 = [v7 objectAtIndexedSubscript:v8];

  v9 = [(NavCategoryListViewController *)self categories];
  [SARAnalytics captureSelectCategory:v11 fromDisplayedCategories:v9 isAddStopTray:1];

  v10 = [(NavCategoryListViewController *)self categoryListDelegate];
  [v10 categoryList:self selectedSearchCategory:v11];
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NavCategoryListViewController *)self categories];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];

  [v7 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v29.origin.x = v12;
  v29.origin.y = v14;
  v29.size.width = v16;
  v29.size.height = v18;
  Width = CGRectGetWidth(v29);
  v20 = [(NavCategoryListViewController *)self tableView];
  [v20 layoutMargins];
  v22 = v21;
  v23 = [(NavCategoryListViewController *)self tableView];
  [v23 layoutMargins];
  v25 = Width - (v22 + v24);

  [NavCategoryCell heightForCellWithCategory:v10 width:v25];
  v27 = v26;

  return v27;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableCellWithIdentifier:v9];

  v11 = [(NavCategoryListViewController *)self categories];
  v12 = [v6 row];

  v13 = [v11 objectAtIndexedSubscript:v12];

  [v10 setCategory:v13];

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NavCategoryListViewController *)self categories:a3];
  v5 = [v4 count];

  return v5;
}

- (void)headerViewTapped:(id)a3
{
  v4 = [(ContaineeViewController *)self cardPresentationController];
  v5 = [v4 containeeLayout];

  v6 = [(ContaineeViewController *)self cardPresentationController];
  v8 = v6;
  if (v5 == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 wantsLayout:v7];
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  v5 = [(NavCategoryListViewController *)self categoryListDelegate:a3];
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

- (double)heightForLayout:(unint64_t)a3
{
  v5 = [(NavCategoryListViewController *)self searchHomeViewController];

  if (!v5)
  {
    if (a3 == 1)
    {
      [(ContaineeViewController *)self headerHeight];
      v20 = v19;
      v21 = [(ContaineeViewController *)self cardPresentationController];
      [v21 bottomSafeOffset];
      v7 = v22 + v20;
    }

    else
    {
      v7 = -1.0;
      if (a3 != 2)
      {
        return v7;
      }

      v9 = [(NavCategoryListViewController *)self tableView];
      v10 = [v9 numberOfRowsInSection:0];

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
          v13 = [(NavCategoryListViewController *)self tableView];
          v14 = [NSIndexPath indexPathForRow:v11 inSection:0];
          [(NavCategoryListViewController *)self tableView:v13 heightForRowAtIndexPath:v14];
          v12 = v15 + v12;

          ++v11;
          v16 = [(NavCategoryListViewController *)self tableView];
          v17 = [v16 numberOfRowsInSection:0];
        }

        while (v11 < v17);
        v18 = v12 + 16.0;
      }

      [(ContaineeViewController *)self headerHeight];
      v24 = v23;
      v21 = [(ContaineeViewController *)self cardPresentationController];
      [v21 bottomSafeOffset];
      v7 = v18 + v24 + v25;
    }

    return v7;
  }

  v6 = sub_10000FA08(self);
  if (a3 != 1 || (v7 = -1.0, v6 != 5))
  {
    v27.receiver = self;
    v27.super_class = NavCategoryListViewController;
    [(ContaineeViewController *)&v27 heightForLayout:a3];
    return v8;
  }

  return v7;
}

- (void)didResignCurrent
{
  v3 = [(NavCategoryListViewController *)self searchHomeViewController];

  if (v3)
  {
    v4 = [(NavCategoryListViewController *)self searchHomeViewController];
    [v4 cleanSearch];

    v5 = [(NavCategoryListViewController *)self searchHomeViewController];
    [v5 didResignCurrent];

    v6 = [(NavCategoryListViewController *)self searchHomeViewController];
    [v6 endEditing];
  }

  v7.receiver = self;
  v7.super_class = NavCategoryListViewController;
  [(ContaineeViewController *)&v7 didResignCurrent];
}

- (void)willResignCurrent:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = NavCategoryListViewController;
  [(ContaineeViewController *)&v7 willResignCurrent:?];
  v5 = [(NavCategoryListViewController *)self searchHomeViewController];

  if (v5)
  {
    v6 = [(NavCategoryListViewController *)self searchHomeViewController];
    [v6 willResignCurrent:v3];
  }
}

- (void)didBecomeCurrent
{
  v5.receiver = self;
  v5.super_class = NavCategoryListViewController;
  [(ContaineeViewController *)&v5 didBecomeCurrent];
  v3 = [(NavCategoryListViewController *)self searchHomeViewController];

  if (v3)
  {
    v4 = [(NavCategoryListViewController *)self searchHomeViewController];
    [v4 didBecomeCurrent];
  }
}

- (void)willBecomeCurrentByGesture
{
  v5.receiver = self;
  v5.super_class = NavCategoryListViewController;
  [(ContaineeViewController *)&v5 willBecomeCurrentByGesture];
  v3 = [(NavCategoryListViewController *)self searchHomeViewController];

  if (v3)
  {
    v4 = [(NavCategoryListViewController *)self searchHomeViewController];
    [v4 willBecomeCurrentByGesture];
  }
}

- (void)willBecomeCurrent:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = NavCategoryListViewController;
  [(ContaineeViewController *)&v9 willBecomeCurrent:?];
  v5 = [(NavCategoryListViewController *)self searchHomeViewController];

  if (v5)
  {
    v6 = [(NavCategoryListViewController *)self searchHomeViewController];
    [v6 cleanSearch];

    v7 = [(NavCategoryListViewController *)self searchHomeViewController];
    [v7 willBecomeCurrent:v3];

    v8 = [(NavCategoryListViewController *)self searchHomeViewController];
    [v8 searchBarBecomeFirstResponder];
  }
}

- (double)topSpaceForScrollPocket
{
  v3 = [(NavCategoryListViewController *)self searchHomeViewController];

  if (v3)
  {
    v4 = [(NavCategoryListViewController *)self searchHomeViewController];
    [v4 headerHeight];
    v6 = v5;

    return v6;
  }

  else
  {

    [(ContaineeViewController *)self headerHeight];
  }

  return result;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NavCategoryListViewController;
  [(ContaineeViewController *)&v5 viewWillDisappear:a3];
  v4 = [(NavCategoryListViewController *)self searchHomeViewController];

  if (!v4)
  {
    [(NavSARAPIController *)self->_apiController cancelFetchingSARCategories];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = NavCategoryListViewController;
  [(ContaineeViewController *)&v7 viewWillAppear:a3];
  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 setHideGrabber:1];

  v5 = [(NavCategoryListViewController *)self searchHomeViewController];

  if (!v5)
  {
    v6 = [(NavCategoryListViewController *)self tableView];
    [v6 reloadData];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = NavCategoryListViewController;
  v4 = a3;
  [(MapsThemeViewController *)&v10 traitCollectionDidChange:v4];
  v5 = [(NavCategoryListViewController *)self traitCollection:v10.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    v8 = [(NavCategoryListViewController *)self tableView];
    [v8 reloadData];

    v9 = [(ContaineeViewController *)self cardPresentationController];
    [v9 updateHeightForCurrentLayoutAnimated:1];
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

  v5 = [(ContaineeViewController *)self contentView];
  [v5 setAccessibilityIdentifier:@"NavCategoryListViewContent"];

  v6 = [(ContaineeViewController *)self cardPresentationController];
  [v6 setEdgeAttachedRegularHeightDimmingBehavior:2];

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
  v88 = [v8 leadingAnchor];
  v85 = [v7 leadingAnchor];
  v82 = [v88 constraintEqualToAnchor:v85 constant:16.0];
  v95[0] = v82;
  v79 = [v8 trailingAnchor];
  v76 = [v7 trailingAnchor];
  v12 = [v79 constraintEqualToAnchor:v76];
  v95[1] = v12;
  v13 = [v8 topAnchor];
  v14 = [v7 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:16.0];
  v95[2] = v15;
  v87 = v8;
  v16 = [v8 bottomAnchor];
  v17 = [v7 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-16.0];
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
  v22 = [(ContaineeViewController *)self headerView];
  [v22 addSubview:v20];

  v80 = [v20 topAnchor];
  v83 = [(ContaineeViewController *)self headerView];
  v77 = [v83 topAnchor];
  v74 = [v80 constraintEqualToAnchor:v77];
  v94[0] = v74;
  v70 = [v20 leadingAnchor];
  v72 = [(ContaineeViewController *)self headerView];
  v68 = [v72 leadingAnchor];
  v66 = [v70 constraintEqualToAnchor:v68];
  v94[1] = v66;
  v23 = [v20 trailingAnchor];
  v24 = [(ContaineeViewController *)self headerView];
  v25 = [v24 trailingAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  v94[2] = v26;
  v86 = v20;
  v27 = [v20 bottomAnchor];
  v28 = [(ContaineeViewController *)self headerView];
  v29 = [v28 bottomAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
  v94[3] = v30;
  v31 = [NSArray arrayWithObjects:v94 count:4];
  [v90 addObjectsFromArray:v31];

  v32 = [(NavCategoryListViewController *)self searchHomeViewController];

  if (v32)
  {
    v33 = [(NavCategoryListViewController *)self searchHomeViewController];
    [(NavCategoryListViewController *)self addChildViewController:v33];

    v34 = [(NavCategoryListViewController *)self searchHomeViewController];
    v35 = [v34 view];

    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = [(ContaineeViewController *)self contentView];
    [v36 addSubview:v35];

    v37 = [(NavCategoryListViewController *)self searchHomeViewController];
    [v37 didMoveToParentViewController:self];

    v38 = [v35 leadingAnchor];
    v39 = [(ContaineeViewController *)self contentView];
    v84 = [v39 leadingAnchor];
    v81 = [v38 constraintEqualToAnchor:?];
    v93[0] = v81;
    v40 = [v35 trailingAnchor];
    v75 = [(ContaineeViewController *)self contentView];
    [v75 trailingAnchor];
    v73 = v78 = v40;
    v71 = [v40 constraintEqualToAnchor:?];
    v93[1] = v71;
    v41 = [v35 topAnchor];
    v67 = [(ContaineeViewController *)self contentView];
    [v67 topAnchor];
    v65 = v69 = v41;
    v42 = [v41 constraintEqualToAnchor:?];
    v93[2] = v42;
    v43 = [v35 bottomAnchor];
    v44 = [(ContaineeViewController *)self contentView];
    v45 = [v44 bottomAnchor];
    v46 = [v43 constraintEqualToAnchor:v45];
    v93[3] = v46;
    v47 = [NSArray arrayWithObjects:v93 count:4];
    v48 = v90;
    [v90 addObjectsFromArray:v47];
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
    v56 = [(ContaineeViewController *)self contentView];
    [v56 addSubview:self->_tableView];

    v64 = [(NavCategoryListViewController *)self tableView];
    v63 = [v64 leadingAnchor];
    v62 = [(ContaineeViewController *)self contentView];
    v84 = [v62 leadingAnchor];
    v81 = [v63 constraintEqualToAnchor:?];
    v92[0] = v81;
    v78 = [(NavCategoryListViewController *)self tableView];
    v57 = [v78 trailingAnchor];
    v73 = [(ContaineeViewController *)self contentView];
    [v73 trailingAnchor];
    v71 = v75 = v57;
    v69 = [v57 constraintEqualToAnchor:?];
    v92[1] = v69;
    v67 = [(NavCategoryListViewController *)self tableView];
    v58 = [v67 topAnchor];
    v42 = [(ContaineeViewController *)self contentView];
    v43 = [v42 topAnchor];
    v65 = v58;
    v44 = [v58 constraintEqualToAnchor:v43];
    v92[2] = v44;
    v45 = [(NavCategoryListViewController *)self tableView];
    v46 = [v45 bottomAnchor];
    v47 = [(ContaineeViewController *)self contentView];
    v59 = [v47 bottomAnchor];
    v60 = [v46 constraintEqualToAnchor:v59];
    v92[3] = v60;
    v61 = [NSArray arrayWithObjects:v92 count:4];
    v48 = v90;
    [v90 addObjectsFromArray:v61];

    v39 = v62;
    v35 = v64;

    v38 = v63;
  }

  [NSLayoutConstraint activateConstraints:v48];
}

- (NavCategoryListViewController)initWithDelegate:(id)a3 usingSearchHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = NavCategoryListViewController;
  v8 = [(NavCategoryListViewController *)&v17 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v10 = [(ContaineeViewController *)v8 cardPresentationController];
    [v10 setBlurInCardView:0];

    v11 = [UIColor colorNamed:@"NavigationMaterialColor"];
    v12 = [(ContaineeViewController *)v9 cardPresentationController];
    [v12 setCardColor:v11];

    v13 = [(ContaineeViewController *)v9 cardPresentationController];
    [v13 setTakesAvailableHeight:1];

    v14 = [(ContaineeViewController *)v9 cardPresentationController];
    [v14 setPresentedModally:1];

    v15 = [(ContaineeViewController *)v9 cardPresentationController];
    [v15 setMaximumLayoutForEdgeInsetUpdate:0];

    objc_storeWeak(&v9->_categoryListDelegate, v6);
    [(NavCategoryListViewController *)v9 setSearchHomeViewController:v7];
  }

  return v9;
}

- (NavCategoryListViewController)initWithDelegate:(id)a3 categories:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = NavCategoryListViewController;
  v8 = [(NavCategoryListViewController *)&v15 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v10 = [(ContaineeViewController *)v8 cardPresentationController];
    [v10 setBlurInCardView:0];

    v11 = [UIColor colorNamed:@"NavigationMaterialColor"];
    v12 = [(ContaineeViewController *)v9 cardPresentationController];
    [v12 setCardColor:v11];

    v13 = [(ContaineeViewController *)v9 cardPresentationController];
    [v13 setMaximumLayoutForEdgeInsetUpdate:0];

    [(NavCategoryListViewController *)v9 setCategories:v7];
    objc_storeWeak(&v9->_categoryListDelegate, v6);
  }

  return v9;
}

@end