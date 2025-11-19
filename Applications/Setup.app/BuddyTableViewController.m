@interface BuddyTableViewController
- (BFFPaneHeaderView)headerView;
- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4;
- (double)heightForHeaderInTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)viewForHeaderInTableView:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)loadView;
- (void)setAttributedSubTitleText:(id)a3;
- (void)setSubTitleText:(id)a3;
- (void)setTitleText:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateHeaderView;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BuddyTableViewController

- (void)loadView
{
  v2 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  containerView = self->_containerView;
  self->_containerView = v2;

  v4 = self->_containerView;
  v5 = +[BFFStyle sharedStyle];
  v6 = [v5 backgroundColor];
  [(UIView *)v4 setBackgroundColor:v6];

  [(BuddyTableViewController *)self setView:self->_containerView];
  v7 = [(BuddyTableViewController *)self tableView];
  LOBYTE(v4) = v7 == 0;

  if (v4)
  {
    v8 = [[UITableView alloc] initWithFrame:1 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    tableView = self->_tableView;
    self->_tableView = v8;
  }

  [(UITableView *)self->_tableView setDataSource:?];
  [(UITableView *)self->_tableView setDelegate:?];
  v10 = +[UIColor clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:v10];

  [(UITableView *)self->_tableView setBackgroundView:0];
  [(UITableView *)self->_tableView setSeparatorStyle:0];
  v11 = +[BFFStyle sharedStyle];
  v12 = [v11 backgroundColor];
  [(UITableView *)self->_tableView setBackgroundColor:v12];

  v13 = +[BFFStyle sharedStyle];
  [v13 edgeInsetsForTable:self->_tableView];
  v33 = v14;
  v34 = v15;
  v35 = v16;
  v36 = v17;

  v18 = sub_10014A7F8();
  [(UITableView *)self->_tableView setScrollIndicatorInsets:v18, v19, v20, v21, *&v18, *&v19, *&v20, *&v21, *&v18, *&v19, *&v20, *&v21, v33, v34, v35, v36, a2];
  [(UITableView *)self->_tableView setClipsToBounds:0];
  [(UITableView *)self->_tableView setAlwaysBounceVertical:0];
  v22 = self->_containerView;
  v23 = [(UITableView *)self->_tableView panGestureRecognizer];
  [(UIView *)v22 addGestureRecognizer:v23];

  [(UIView *)self->_containerView addSubview:self->_tableView];
  if ([(BuddyTableViewController *)self useScreenHeader])
  {
    v24 = +[BFFStyle sharedStyle];
    v25 = [v24 backgroundColor];
    v26 = [(BuddyTableViewController *)self headerView];
    [(BFFPaneHeaderView *)v26 setBackgroundColor:v25];

    v27 = self->_containerView;
    v28 = [(BuddyTableViewController *)self headerView];
    [(UIView *)v27 addSubview:v28];
  }

  if ([(BuddyTableViewController *)self useScreenFooter])
  {
    v29 = [[BFFLinkLabelFooterView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    footerView = self->_footerView;
    self->_footerView = v29;

    v31 = +[BFFStyle sharedStyle];
    v32 = [v31 backgroundColor];
    [(BFFLinkLabelFooterView *)self->_footerView setBackgroundColor:v32];

    [(UIView *)self->_containerView addSubview:self->_footerView];
  }

  [(BuddyTableViewController *)self updateHeaderView];
}

- (void)viewDidLayoutSubviews
{
  v45 = self;
  v44 = a2;
  v43.receiver = self;
  v43.super_class = BuddyTableViewController;
  [(BuddyTableViewController *)&v43 viewDidLayoutSubviews];
  v42 = 0u;
  v41 = 0u;
  [(UIView *)v45->_containerView bounds];
  *&v41 = v2;
  *&v42 = v3;
  v4 = [(BuddyTableViewController *)v45 view];
  v5 = [v4 safeAreaLayoutGuide];
  [v5 layoutFrame];
  __b[9] = v6;
  __b[8] = v7;
  __b[11] = v8;
  __b[10] = v9;
  *(&v41 + 1) = v6;

  v10 = [(BuddyTableViewController *)v45 view];
  v11 = [v10 safeAreaLayoutGuide];
  [v11 layoutFrame];
  __b[5] = v12;
  __b[4] = v13;
  __b[7] = v14;
  __b[6] = v15;
  *(&v42 + 1) = v14;

  memset(__b, 0, 0x20uLL);
  v16 = +[BFFStyle sharedStyle];
  [v16 edgeInsetsForTable:v45->_tableView];
  __b[0] = v17;
  __b[1] = v18;
  __b[2] = v19;
  __b[3] = v20;

  if (BFFIsiPad())
  {
    *&v42 = *&v42 - (*&__b[1] + *&__b[3]);
    if ([(BuddyTableViewController *)v45 useBottomEdgeInsetForTableView])
    {
      *(&v42 + 1) = *(&v42 + 1) - *&__b[2];
    }

    if (([(UITableView *)v45->_tableView _shouldReverseLayoutDirection]& 1) != 0)
    {
      [(UIView *)v45->_containerView bounds];
      MaxX = CGRectGetMaxX(v46);
      v47.size.height = *(&v42 + 1);
      *&v47.size.width = v42;
      v47.origin.y = *(&v41 + 1);
      *&v47.origin.x = v41;
      *&v41 = MaxX - CGRectGetWidth(v47) - *&__b[1];
    }

    else
    {
      *&v41 = __b[1];
    }
  }

  [(UITableView *)v45->_tableView setFrame:v41, v42];
  if (BFFIsiPad())
  {
    v22 = +[BFFStyle sharedStyle];
    [v22 screenHeaderFooterSideInsetForView:v45->_containerView];
    v24 = v23;

    if ([(BuddyTableViewController *)v45 useScreenHeader])
    {
      [(UIView *)v45->_containerView bounds];
      v37 = v25;
      v38 = v26 + v24 * -2.0;
      v27 = +[BFFStyle sharedStyle];
      [v27 screenHeaderHeightForView:v45->_containerView];
      v39 = v28;

      v29 = [(BuddyTableViewController *)v45 headerView];
      [(BFFPaneHeaderView *)v29 setFrame:v24, v37, v38, v39];

      v30 = [(BuddyTableViewController *)v45 tableView];
      [(UITableView *)v30 bounds];
      v36 = v31;
      v35 = v32;

      v33 = [(BuddyTableViewController *)v45 headerView];
      [(BFFPaneHeaderView *)v33 setBounds:v35, v36, v38, v39];
    }

    if ([(BuddyTableViewController *)v45 useScreenFooter])
    {
      [(UIView *)v45->_containerView bounds:0];
      v48.size.width = v34 + v24 * -2.0;
      v48.origin.x = v24;
      [(BFFLinkLabelFooterView *)v45->_footerView setFrame:v24, CGRectGetMaxY(v48) - *&__b[2], v48.size.width, *&__b[2]];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v15 = a3;
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v12.receiver = v14;
  v12.super_class = BuddyTableViewController;
  [(BuddyTableViewController *)&v12 viewWillTransitionToSize:location[0] withTransitionCoordinator:v15.width, v15.height];
  v4 = location[0];
  tableView = v14->_tableView;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10014AE44;
  v10 = &unk_10032D9E8;
  v11 = v14;
  [v4 animateAlongsideTransitionInView:tableView animation:&v6 completion:&stru_10032DA08];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [v8 setSeparatorStyle:1];
  [v8 _setShouldHaveFullLengthTopSeparator:0];
  [v8 _setShouldHaveFullLengthBottomSeparator:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(BuddyTableViewController *)v13 useScreenHeader];
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if (v5)
  {
    v11 = [(BuddyTableViewController *)v13 headerView];
    v10 = 1;
    v9 = [(BFFPaneHeaderView *)v11 bottomLineColor];
    v8 = 1;
    v6 = 0;
    if (v9)
    {
      v6 = a4 == 0;
    }
  }

  v14 = !v6;
  if (v8)
  {
  }

  if (v10)
  {
  }

  objc_storeStrong(location, 0);
  return v14;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)viewForHeaderInTableView:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(BuddyTableViewController *)v6 useScreenHeader])
  {
    v7 = 0;
  }

  else
  {
    v7 = [(BuddyTableViewController *)v6 headerView];
  }

  objc_storeStrong(location, 0);
  v3 = v7;

  return v3;
}

- (double)heightForHeaderInTableView:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyTableViewController *)v8 headerView];
  [location[0] bounds];
  [(BFFPaneHeaderView *)v3 heightForWidth:location[0] inView:CGRectGetWidth(v9), *&v9.origin.x, *&v9.origin.y, *&v9.size.width, *&v9.size.height];
  v5 = v4;

  objc_storeStrong(location, 0);
  return v5;
}

- (BFFPaneHeaderView)headerView
{
  if (!self->_headerView)
  {
    v2 = [[BFFPaneHeaderView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, a2}];
    headerView = self->_headerView;
    self->_headerView = v2;
  }

  v4 = self->_headerView;

  return v4;
}

- (void)updateHeaderView
{
  v12 = self;
  v11[1] = a2;
  v11[0] = [(BuddyTableViewController *)self titleText];
  v10 = [(BuddyTableViewController *)v12 subTitleText];
  location = [(BuddyTableViewController *)v12 attributedSubTitleText];
  if ([v11[0] length] || objc_msgSend(v10, "length") || objc_msgSend(location, "length"))
  {
    v2 = [(BuddyTableViewController *)v12 headerView];
    [(BFFPaneHeaderView *)v2 setTitleText:v11[0]];

    if ([location length])
    {
      v3 = [(BuddyTableViewController *)v12 headerView];
      v4 = [(BFFPaneHeaderView *)v3 detailTextLabel];
      [v4 setAttributedText:location];
    }

    else
    {
      v3 = [(BuddyTableViewController *)v12 headerView];
      v4 = [(BFFPaneHeaderView *)v3 detailTextLabel];
      [v4 setText:v10];
    }

    if ([(BuddyTableViewController *)v12 useScreenHeader])
    {
      v5 = [(BuddyTableViewController *)v12 headerView];
      [(BFFPaneHeaderView *)v5 setNeedsLayout];
    }

    else
    {
      v6 = [(BuddyTableViewController *)v12 tableView];
      v7 = [(UITableView *)v6 superview];

      if (v7)
      {
        v8 = [(BuddyTableViewController *)v12 tableView];
        [(UITableView *)v8 reloadData];
      }
    }
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v11, 0);
}

- (void)setTitleText:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0] != v4->_titleText)
  {
    objc_storeStrong(&v4->_titleText, location[0]);
    if (([(BuddyTableViewController *)v4 isViewLoaded]& 1) != 0)
    {
      [(BuddyTableViewController *)v4 updateHeaderView];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)setSubTitleText:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0] != v4->_subTitleText)
  {
    objc_storeStrong(&v4->_subTitleText, location[0]);
    if (([(BuddyTableViewController *)v4 isViewLoaded]& 1) != 0)
    {
      [(BuddyTableViewController *)v4 updateHeaderView];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)setAttributedSubTitleText:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0] != v4->_attributedSubTitleText)
  {
    objc_storeStrong(&v4->_attributedSubTitleText, location[0]);
    if (([(BuddyTableViewController *)v4 isViewLoaded]& 1) != 0)
    {
      [(BuddyTableViewController *)v4 updateHeaderView];
    }
  }

  objc_storeStrong(location, 0);
}

@end