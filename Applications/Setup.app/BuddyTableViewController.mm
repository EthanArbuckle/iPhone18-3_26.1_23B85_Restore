@interface BuddyTableViewController
- (BFFPaneHeaderView)headerView;
- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section;
- (double)heightForHeaderInTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)viewForHeaderInTableView:(id)view;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)loadView;
- (void)setAttributedSubTitleText:(id)text;
- (void)setSubTitleText:(id)text;
- (void)setTitleText:(id)text;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateHeaderView;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BuddyTableViewController

- (void)loadView
{
  v2 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  containerView = self->_containerView;
  self->_containerView = v2;

  v4 = self->_containerView;
  v5 = +[BFFStyle sharedStyle];
  backgroundColor = [v5 backgroundColor];
  [(UIView *)v4 setBackgroundColor:backgroundColor];

  [(BuddyTableViewController *)self setView:self->_containerView];
  tableView = [(BuddyTableViewController *)self tableView];
  LOBYTE(v4) = tableView == 0;

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
  backgroundColor2 = [v11 backgroundColor];
  [(UITableView *)self->_tableView setBackgroundColor:backgroundColor2];

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
  panGestureRecognizer = [(UITableView *)self->_tableView panGestureRecognizer];
  [(UIView *)v22 addGestureRecognizer:panGestureRecognizer];

  [(UIView *)self->_containerView addSubview:self->_tableView];
  if ([(BuddyTableViewController *)self useScreenHeader])
  {
    v24 = +[BFFStyle sharedStyle];
    backgroundColor3 = [v24 backgroundColor];
    headerView = [(BuddyTableViewController *)self headerView];
    [(BFFPaneHeaderView *)headerView setBackgroundColor:backgroundColor3];

    v27 = self->_containerView;
    headerView2 = [(BuddyTableViewController *)self headerView];
    [(UIView *)v27 addSubview:headerView2];
  }

  if ([(BuddyTableViewController *)self useScreenFooter])
  {
    v29 = [[BFFLinkLabelFooterView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    footerView = self->_footerView;
    self->_footerView = v29;

    v31 = +[BFFStyle sharedStyle];
    backgroundColor4 = [v31 backgroundColor];
    [(BFFLinkLabelFooterView *)self->_footerView setBackgroundColor:backgroundColor4];

    [(UIView *)self->_containerView addSubview:self->_footerView];
  }

  [(BuddyTableViewController *)self updateHeaderView];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v44 = a2;
  v43.receiver = self;
  v43.super_class = BuddyTableViewController;
  [(BuddyTableViewController *)&v43 viewDidLayoutSubviews];
  v42 = 0u;
  v41 = 0u;
  [(UIView *)selfCopy->_containerView bounds];
  *&v41 = v2;
  *&v42 = v3;
  view = [(BuddyTableViewController *)selfCopy view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  __b[9] = v6;
  __b[8] = v7;
  __b[11] = v8;
  __b[10] = v9;
  *(&v41 + 1) = v6;

  view2 = [(BuddyTableViewController *)selfCopy view];
  safeAreaLayoutGuide2 = [view2 safeAreaLayoutGuide];
  [safeAreaLayoutGuide2 layoutFrame];
  __b[5] = v12;
  __b[4] = v13;
  __b[7] = v14;
  __b[6] = v15;
  *(&v42 + 1) = v14;

  memset(__b, 0, 0x20uLL);
  v16 = +[BFFStyle sharedStyle];
  [v16 edgeInsetsForTable:selfCopy->_tableView];
  __b[0] = v17;
  __b[1] = v18;
  __b[2] = v19;
  __b[3] = v20;

  if (BFFIsiPad())
  {
    *&v42 = *&v42 - (*&__b[1] + *&__b[3]);
    if ([(BuddyTableViewController *)selfCopy useBottomEdgeInsetForTableView])
    {
      *(&v42 + 1) = *(&v42 + 1) - *&__b[2];
    }

    if (([(UITableView *)selfCopy->_tableView _shouldReverseLayoutDirection]& 1) != 0)
    {
      [(UIView *)selfCopy->_containerView bounds];
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

  [(UITableView *)selfCopy->_tableView setFrame:v41, v42];
  if (BFFIsiPad())
  {
    v22 = +[BFFStyle sharedStyle];
    [v22 screenHeaderFooterSideInsetForView:selfCopy->_containerView];
    v24 = v23;

    if ([(BuddyTableViewController *)selfCopy useScreenHeader])
    {
      [(UIView *)selfCopy->_containerView bounds];
      v37 = v25;
      v38 = v26 + v24 * -2.0;
      v27 = +[BFFStyle sharedStyle];
      [v27 screenHeaderHeightForView:selfCopy->_containerView];
      v39 = v28;

      headerView = [(BuddyTableViewController *)selfCopy headerView];
      [(BFFPaneHeaderView *)headerView setFrame:v24, v37, v38, v39];

      tableView = [(BuddyTableViewController *)selfCopy tableView];
      [(UITableView *)tableView bounds];
      v36 = v31;
      v35 = v32;

      headerView2 = [(BuddyTableViewController *)selfCopy headerView];
      [(BFFPaneHeaderView *)headerView2 setBounds:v35, v36, v38, v39];
    }

    if ([(BuddyTableViewController *)selfCopy useScreenFooter])
    {
      [(UIView *)selfCopy->_containerView bounds:0];
      v48.size.width = v34 + v24 * -2.0;
      v48.origin.x = v24;
      [(BFFLinkLabelFooterView *)selfCopy->_footerView setFrame:v24, CGRectGetMaxY(v48) - *&__b[2], v48.size.width, *&__b[2]];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coordinator);
  v12.receiver = selfCopy;
  v12.super_class = BuddyTableViewController;
  [(BuddyTableViewController *)&v12 viewWillTransitionToSize:location[0] withTransitionCoordinator:sizeCopy.width, sizeCopy.height];
  v4 = location[0];
  tableView = selfCopy->_tableView;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10014AE44;
  v10 = &unk_10032D9E8;
  v11 = selfCopy;
  [v4 animateAlongsideTransitionInView:tableView animation:&v6 completion:&stru_10032DA08];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v8 = 0;
  objc_storeStrong(&v8, cell);
  v7 = 0;
  objc_storeStrong(&v7, path);
  [v8 setSeparatorStyle:1];
  [v8 _setShouldHaveFullLengthTopSeparator:0];
  [v8 _setShouldHaveFullLengthBottomSeparator:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  useScreenHeader = [(BuddyTableViewController *)selfCopy useScreenHeader];
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if (useScreenHeader)
  {
    headerView = [(BuddyTableViewController *)selfCopy headerView];
    v10 = 1;
    bottomLineColor = [(BFFPaneHeaderView *)headerView bottomLineColor];
    v8 = 1;
    v6 = 0;
    if (bottomLineColor)
    {
      v6 = section == 0;
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  objc_storeStrong(&v6, path);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)viewForHeaderInTableView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if ([(BuddyTableViewController *)selfCopy useScreenHeader])
  {
    headerView = 0;
  }

  else
  {
    headerView = [(BuddyTableViewController *)selfCopy headerView];
  }

  objc_storeStrong(location, 0);
  v3 = headerView;

  return v3;
}

- (double)heightForHeaderInTableView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  headerView = [(BuddyTableViewController *)selfCopy headerView];
  [location[0] bounds];
  [(BFFPaneHeaderView *)headerView heightForWidth:location[0] inView:CGRectGetWidth(v9), *&v9.origin.x, *&v9.origin.y, *&v9.size.width, *&v9.size.height];
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
  selfCopy = self;
  v11[1] = a2;
  v11[0] = [(BuddyTableViewController *)self titleText];
  subTitleText = [(BuddyTableViewController *)selfCopy subTitleText];
  location = [(BuddyTableViewController *)selfCopy attributedSubTitleText];
  if ([v11[0] length] || objc_msgSend(subTitleText, "length") || objc_msgSend(location, "length"))
  {
    headerView = [(BuddyTableViewController *)selfCopy headerView];
    [(BFFPaneHeaderView *)headerView setTitleText:v11[0]];

    if ([location length])
    {
      headerView2 = [(BuddyTableViewController *)selfCopy headerView];
      detailTextLabel = [(BFFPaneHeaderView *)headerView2 detailTextLabel];
      [detailTextLabel setAttributedText:location];
    }

    else
    {
      headerView2 = [(BuddyTableViewController *)selfCopy headerView];
      detailTextLabel = [(BFFPaneHeaderView *)headerView2 detailTextLabel];
      [detailTextLabel setText:subTitleText];
    }

    if ([(BuddyTableViewController *)selfCopy useScreenHeader])
    {
      headerView3 = [(BuddyTableViewController *)selfCopy headerView];
      [(BFFPaneHeaderView *)headerView3 setNeedsLayout];
    }

    else
    {
      tableView = [(BuddyTableViewController *)selfCopy tableView];
      superview = [(UITableView *)tableView superview];

      if (superview)
      {
        tableView2 = [(BuddyTableViewController *)selfCopy tableView];
        [(UITableView *)tableView2 reloadData];
      }
    }
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&subTitleText, 0);
  objc_storeStrong(v11, 0);
}

- (void)setTitleText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  if (location[0] != selfCopy->_titleText)
  {
    objc_storeStrong(&selfCopy->_titleText, location[0]);
    if (([(BuddyTableViewController *)selfCopy isViewLoaded]& 1) != 0)
    {
      [(BuddyTableViewController *)selfCopy updateHeaderView];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)setSubTitleText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  if (location[0] != selfCopy->_subTitleText)
  {
    objc_storeStrong(&selfCopy->_subTitleText, location[0]);
    if (([(BuddyTableViewController *)selfCopy isViewLoaded]& 1) != 0)
    {
      [(BuddyTableViewController *)selfCopy updateHeaderView];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)setAttributedSubTitleText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  if (location[0] != selfCopy->_attributedSubTitleText)
  {
    objc_storeStrong(&selfCopy->_attributedSubTitleText, location[0]);
    if (([(BuddyTableViewController *)selfCopy isViewLoaded]& 1) != 0)
    {
      [(BuddyTableViewController *)selfCopy updateHeaderView];
    }
  }

  objc_storeStrong(location, 0);
}

@end