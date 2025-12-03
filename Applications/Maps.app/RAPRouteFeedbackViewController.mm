@interface RAPRouteFeedbackViewController
- (BOOL)_canTableViewSelectIndexPath:(id)path;
- (BOOL)isMapItemTrailOrTrailHead:(id)head;
- (RAPRouteFeedbackViewController)initWithReport:(id)report recording:(id)recording delegate:(id)delegate;
- (double)_cellContentWidth;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_dismiss;
- (void)_reloadTableViewIfNeeded;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateTableHeightConstraint;
- (void)dataSourceDidUpdate:(id)update;
- (void)macFooterViewLeftButtonTapped:(id)tapped;
- (void)routeStepDetailViewControllerDidSubmitReport:(id)report;
- (void)setAllowsScrolling:(BOOL)scrolling;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)virtualGarageDidUpdate:(id)update;
@end

@implementation RAPRouteFeedbackViewController

- (BOOL)isMapItemTrailOrTrailHead:(id)head
{
  headCopy = head;
  v4 = [headCopy _placeCategoryType] == 1 || objc_msgSend(headCopy, "_placeCategoryType") == 2;

  return v4;
}

- (void)virtualGarageDidUpdate:(id)update
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100583E24;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  updateCopy = update;
  v3 = updateCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)macFooterViewLeftButtonTapped:(id)tapped
{
  v4 = sub_100798874();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "macFooterViewLeftButtonTapped: will dismiss", v5, 2u);
  }

  [(RAPRouteFeedbackViewController *)self _dismiss];
}

- (void)routeStepDetailViewControllerDidSubmitReport:(id)report
{
  v4 = sub_100798874();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "routeStepDetailViewControllerDidSubmitReport: will dismiss RAP", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained routeFeedbackViewControllerDidDismiss:self];
}

- (BOOL)_canTableViewSelectIndexPath:(id)path
{
  v4 = [(RAPRouteFeedbackDataSource *)self->_dataSource _stepItemForIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  if ([v6 waypointType])
  {
    waypoint = [v7 waypoint];
    mapItemIfLoaded = [waypoint mapItemIfLoaded];

    if (mapItemIfLoaded && [(RAPRouteFeedbackViewController *)self isMapItemTrailOrTrailHead:mapItemIfLoaded])
    {
      v10 = 0;
LABEL_20:

      goto LABEL_21;
    }

LABEL_10:
    v11 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    mapItemIfLoaded = v12;

    if (mapItemIfLoaded)
    {
      step = [mapItemIfLoaded step];
      if ([step isArrivalStep])
      {
        endWaypointMapItem = [(RAPRouteFeedbackDataSource *)self->_dataSource endWaypointMapItem];
        v15 = [(RAPRouteFeedbackViewController *)self isMapItemTrailOrTrailHead:endWaypointMapItem];

        v10 = v15 ^ 1;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_20;
  }

  v10 = 0;
LABEL_21:

  return v10;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(RAPRouteFeedbackViewController *)self _canTableViewSelectIndexPath:pathCopy])
  {
    v6 = pathCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  stepDetailViewController = self->_stepDetailViewController;
  self->_stepDetailViewController = 0;

  v8 = [(RAPRouteFeedbackDataSource *)self->_dataSource _stepItemForIndexPath:pathCopy];

  v9 = [(RAPRouteFeedbackDataSource *)self->_dataSource _userPathForStepItem:v8];
  v10 = [(RAPRouteFeedbackDataSource *)self->_dataSource _routeForStepItem:v8];
  _maps_routeIndex = [v10 _maps_routeIndex];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v8;
    v13 = [RAPRouteStepDetailViewController alloc];
    report = self->_report;
    step = [v12 step];

    if (_maps_routeIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
    }

    else
    {
      v16 = _maps_routeIndex;
    }

    v17 = [(RAPRouteStepDetailViewController *)v13 initWithReport:report step:step userPath:v9 routeIndex:v16 delegate:self];
    v18 = self->_stepDetailViewController;
    self->_stepDetailViewController = v17;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v8;
      waypointType = [v19 waypointType];
      if ((waypointType - 1) >= 2)
      {
        if (!waypointType)
        {
          v28 = sub_100798874();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "tableView:didSelectRowAtIndexPath: tapped an origin waypoint, this is not supported", buf, 2u);
          }
        }
      }

      else
      {
        arrivalStep = [v19 arrivalStep];

        if (arrivalStep)
        {
          v22 = [RAPRouteStepDetailViewController alloc];
          v23 = self->_report;
          arrivalStep2 = [v19 arrivalStep];
          if (_maps_routeIndex == 0x7FFFFFFFFFFFFFFFLL)
          {
            v25 = 0;
          }

          else
          {
            v25 = _maps_routeIndex;
          }

          v26 = [(RAPRouteStepDetailViewController *)v22 initWithReport:v23 step:arrivalStep2 userPath:v9 routeIndex:v25 delegate:self];
          v27 = self->_stepDetailViewController;
          self->_stepDetailViewController = v26;
        }
      }
    }
  }

  if (self->_stepDetailViewController)
  {
    v29 = sub_100798874();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "tableView:didSelectRowAtIndexPath: will present a RAPRouteStepDetailViewController", v31, 2u);
    }

    navigationController = [(RAPRouteFeedbackViewController *)self navigationController];
    [navigationController pushViewController:self->_stepDetailViewController animated:1];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section > 1)
  {
    v13 = section;
    v14 = sub_100798874();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      dataSource = self->_dataSource;
      v20 = 134218242;
      v21 = v13;
      v22 = 2112;
      v23 = dataSource;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "cellForRowAtIndexPath: called with invalid section: %lu, dataSource: %@", &v20, 0x16u);
    }

    v16 = objc_opt_new();
  }

  else
  {
    v9 = [(RAPRouteFeedbackDataSource *)self->_dataSource _stepItemForIndexPath:pathCopy];
    v10 = NSStringFromClass([v9 cellClass]);
    v11 = [viewCopy dequeueReusableCellWithIdentifier:v10];

    if (v11)
    {
      [v11 setItem:v9];
      [v11 setAccessoryType:{-[RAPRouteFeedbackViewController _canTableViewSelectIndexPath:](self, "_canTableViewSelectIndexPath:", pathCopy)}];
      v12 = v11;
    }

    else
    {
      v17 = sub_100798874();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = self->_dataSource;
        v20 = 138412546;
        v21 = v9;
        v22 = 2112;
        v23 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "cellForRowAtIndexPath: called with invalid item: %@, dataSource: %@", &v20, 0x16u);
      }

      v12 = objc_opt_new();
    }

    v16 = v12;
  }

  return v16;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v5 = [(RAPRouteFeedbackDataSource *)self->_dataSource _stepItemForIndexPath:path];
  computedWidth = self->_computedWidth;
  if (computedWidth)
  {
    [(NSNumber *)computedWidth cgFloatValue];
    v8 = v7;
  }

  else
  {
    view = [(RAPRouteFeedbackViewController *)self view];
    [view frame];
    v8 = v10;
  }

  [objc_msgSend(v5 "cellClass")];
  v12 = v11;

  return v12;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    v9 = @"[RAP] Nav step list - Route Steps";
    goto LABEL_5;
  }

  if (!section)
  {
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    v9 = @"[RAP] Nav step list - Arrival";
LABEL_5:
    v10 = [v7 localizedStringForKey:v9 value:@"localized string not found" table:0];

    goto LABEL_9;
  }

  v11 = sub_100798874();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    dataSource = self->_dataSource;
    v14 = 134218242;
    sectionCopy = section;
    v16 = 2112;
    v17 = dataSource;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "titleForHeaderInSection: called with invalid section: %lu, dataSource: %@", &v14, 0x16u);
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    if (section == 1)
    {
      allItems = [(RAPRouteFeedbackDataSource *)self->_dataSource allItems];
      v8 = [allItems count];
    }

    else
    {
      v9 = sub_100798874();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        dataSource = self->_dataSource;
        v12 = 134218242;
        sectionCopy = section;
        v14 = 2112;
        v15 = dataSource;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "numberOfRowsInSection: called with invalid section: %lu, dataSource: %@", &v12, 0x16u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_dismiss
{
  v3 = sub_100798874();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "will dismiss RAPRouteFeedbackViewController", v6, 2u);
  }

  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:10109 onTarget:68 eventValue:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained routeFeedbackViewControllerDidDismiss:self];
}

- (void)dataSourceDidUpdate:(id)update
{
  updateCopy = update;
  [(UITableView *)self->_tableView reloadData];
  [(RAPRouteFeedbackViewController *)self _updateTableHeightConstraint];
  v5 = sub_100798874();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = updateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "datasourceDidUpdate: %@", &v6, 0xCu);
  }
}

- (void)_updateTableHeightConstraint
{
  [(UITableView *)self->_tableView layoutIfNeeded];
  [(NSLayoutConstraint *)self->_tableHeightConstraint constant];
  v4 = v3;
  [(UITableView *)self->_tableView contentSize];
  if (v4 != v5)
  {
    [(UITableView *)self->_tableView contentSize];
    [(NSLayoutConstraint *)self->_tableHeightConstraint setConstant:v6];
    view = [(RAPRouteFeedbackViewController *)self view];
    [view setNeedsLayout];

    view2 = [(RAPRouteFeedbackViewController *)self view];
    [view2 layoutIfNeeded];
  }
}

- (double)_cellContentWidth
{
  tableView = [(RAPRouteFeedbackViewController *)self tableView];
  v4 = [NSIndexPath indexPathForRow:0 inSection:0];
  v5 = [tableView cellForRowAtIndexPath:v4];

  if (v5)
  {
    contentView = [v5 contentView];
    [contentView bounds];
  }

  else
  {
    contentView = [(RAPRouteFeedbackViewController *)self view];
    [contentView frame];
  }

  v8 = v7;

  return v8;
}

- (void)setAllowsScrolling:(BOOL)scrolling
{
  if (self->_allowsScrolling != scrolling)
  {
    self->_allowsScrolling = scrolling;
    [(UIScrollView *)self->_scrollView setScrollEnabled:?];
  }
}

- (void)_setupConstraints
{
  traitCollection = [(RAPRouteFeedbackViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 5)
  {
    v4 = 5.0;
  }

  else
  {
    v4 = 8.0;
  }

  topAnchor = [(UIScrollView *)self->_scrollView topAnchor];
  view = [(RAPRouteFeedbackViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v87 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v94[0] = v87;
  leadingAnchor = [(UIScrollView *)self->_scrollView leadingAnchor];
  view2 = [(RAPRouteFeedbackViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v83 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v94[1] = v83;
  trailingAnchor = [(UIScrollView *)self->_scrollView trailingAnchor];
  view3 = [(RAPRouteFeedbackViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v79 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v94[2] = v79;
  contentLayoutGuide = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  widthAnchor = [contentLayoutGuide widthAnchor];
  view4 = [(RAPRouteFeedbackViewController *)self view];
  widthAnchor2 = [view4 widthAnchor];
  v74 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v94[3] = v74;
  topAnchor3 = [(UIView *)self->_containerView topAnchor];
  topAnchor4 = [(UIScrollView *)self->_scrollView topAnchor];
  v71 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v94[4] = v71;
  leadingAnchor3 = [(UIView *)self->_containerView leadingAnchor];
  leadingAnchor4 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v68 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v94[5] = v68;
  trailingAnchor3 = [(UIView *)self->_containerView trailingAnchor];
  trailingAnchor4 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v65 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v94[6] = v65;
  bottomAnchor = [(UIView *)self->_containerView bottomAnchor];
  bottomAnchor2 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v62 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v94[7] = v62;
  topAnchor5 = [(UILayoutGuide *)self->_containerLayoutGuide topAnchor];
  topAnchor6 = [(UIView *)self->_containerView topAnchor];
  v59 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v94[8] = v59;
  leadingAnchor5 = [(UILayoutGuide *)self->_containerLayoutGuide leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_containerView leadingAnchor];
  v56 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v94[9] = v56;
  trailingAnchor5 = [(UILayoutGuide *)self->_containerLayoutGuide trailingAnchor];
  trailingAnchor6 = [(UIView *)self->_containerView trailingAnchor];
  v53 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v94[10] = v53;
  bottomAnchor3 = [(UILayoutGuide *)self->_containerLayoutGuide bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_containerView bottomAnchor];
  v50 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v94[11] = v50;
  topAnchor7 = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor8 = [(UILayoutGuide *)self->_containerLayoutGuide topAnchor];
  v47 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:v4];
  v94[12] = v47;
  leadingAnchor7 = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor8 = [(UILayoutGuide *)self->_containerLayoutGuide leadingAnchor];
  v44 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:16.0];
  v94[13] = v44;
  trailingAnchor7 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor8 = [(UILayoutGuide *)self->_containerLayoutGuide trailingAnchor];
  v41 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-16.0];
  v94[14] = v41;
  topAnchor9 = [(UIView *)self->_tableViewContainer topAnchor];
  bottomAnchor5 = [(UILabel *)self->_titleLabel bottomAnchor];
  v38 = [topAnchor9 constraintEqualToAnchor:bottomAnchor5];
  v94[15] = v38;
  leadingAnchor9 = [(UIView *)self->_tableViewContainer leadingAnchor];
  leadingAnchor10 = [(UILayoutGuide *)self->_containerLayoutGuide leadingAnchor];
  v35 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v94[16] = v35;
  trailingAnchor9 = [(UIView *)self->_tableViewContainer trailingAnchor];
  trailingAnchor10 = [(UILayoutGuide *)self->_containerLayoutGuide trailingAnchor];
  v32 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  tableHeightConstraint = self->_tableHeightConstraint;
  v94[17] = v32;
  v94[18] = tableHeightConstraint;
  bottomAnchor6 = [(UIView *)self->_tableViewContainer bottomAnchor];
  bottomAnchor7 = [(UILayoutGuide *)self->_containerLayoutGuide bottomAnchor];
  v29 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v94[19] = v29;
  leadingAnchor11 = [(UITableView *)self->_tableView leadingAnchor];
  leadingAnchor12 = [(UIView *)self->_tableViewContainer leadingAnchor];
  v26 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  v94[20] = v26;
  trailingAnchor11 = [(UITableView *)self->_tableView trailingAnchor];
  trailingAnchor12 = [(UIView *)self->_tableViewContainer trailingAnchor];
  v7 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  v94[21] = v7;
  topAnchor10 = [(UITableView *)self->_tableView topAnchor];
  topAnchor11 = [(UIView *)self->_tableViewContainer topAnchor];
  v10 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
  v94[22] = v10;
  bottomAnchor8 = [(UITableView *)self->_tableView bottomAnchor];
  bottomAnchor9 = [(UIView *)self->_tableViewContainer bottomAnchor];
  v13 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
  v94[23] = v13;
  v14 = [NSArray arrayWithObjects:v94 count:24];
  [NSLayoutConstraint activateConstraints:v14];

  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = selfCopy;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  bottomAnchor10 = [(UIScrollView *)self->_scrollView bottomAnchor];
  view5 = [(RAPRouteFeedbackViewController *)selfCopy view];
  v20 = view5;
  if (v17)
  {
    safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
    bottomAnchor11 = [safeAreaLayoutGuide2 bottomAnchor];
    v23 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
    v93 = v23;
    v24 = [NSArray arrayWithObjects:&v93 count:1];
    [NSLayoutConstraint activateConstraints:v24];
  }

  else
  {
    safeAreaLayoutGuide2 = [view5 bottomAnchor];
    bottomAnchor11 = [bottomAnchor10 constraintEqualToAnchor:safeAreaLayoutGuide2];
    v92 = bottomAnchor11;
    v23 = [NSArray arrayWithObjects:&v92 count:1];
    [NSLayoutConstraint activateConstraints:v23];
    v24 = 0;
  }
}

- (void)_setupViews
{
  v3 = objc_alloc_init(UIScrollView);
  scrollView = self->_scrollView;
  self->_scrollView = v3;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
  [(UIScrollView *)self->_scrollView setClipsToBounds:1];
  layer = [(UIScrollView *)self->_scrollView layer];
  [layer setAllowsGroupOpacity:0];

  [(UIScrollView *)self->_scrollView setScrollEnabled:[(RAPRouteFeedbackViewController *)self allowsScrolling]];
  view = [(RAPRouteFeedbackViewController *)self view];
  [view addSubview:self->_scrollView];

  v7 = objc_alloc_init(UIView);
  containerView = self->_containerView;
  self->_containerView = v7;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView addSubview:self->_containerView];
  v9 = objc_alloc_init(UILayoutGuide);
  containerLayoutGuide = self->_containerLayoutGuide;
  self->_containerLayoutGuide = v9;

  [(UIView *)self->_containerView addLayoutGuide:self->_containerLayoutGuide];
  v11 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v11;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v13];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  traitCollection = [(RAPRouteFeedbackViewController *)self traitCollection];
  v15 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle3 weight:traitCollection compatibleWithTraitCollection:UIFontWeightBold];
  [(UILabel *)self->_titleLabel setFont:v15];

  endWaypointMapItem = [(RAPRouteFeedbackDataSource *)self->_dataSource endWaypointMapItem];
  name = [endWaypointMapItem name];
  v18 = name;
  if (name)
  {
    v36 = name;
  }

  else
  {
    v19 = +[NSBundle mainBundle];
    v36 = [v19 localizedStringForKey:@"Destination [RAP]" value:@"localized string not found" table:0];
  }

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"[RAP] route feedback title" value:@"localized string not found" table:0];

  v22 = [NSString stringWithFormat:v21, v36];
  [(UILabel *)self->_titleLabel setText:v22];
  [(UIView *)self->_containerView addSubview:self->_titleLabel];
  v23 = objc_alloc_init(UIView);
  tableViewContainer = self->_tableViewContainer;
  self->_tableViewContainer = v23;

  [(UIView *)self->_tableViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_containerView addSubview:self->_tableViewContainer];
  v25 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView = self->_tableView;
  self->_tableView = v25;

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setScrollEnabled:0];
  [(UITableView *)self->_tableView setSeparatorStyle:0];
  v27 = [RAPRouteFeedbackDataSource _cellClassForItemType:0];
  v28 = self->_tableView;
  v29 = NSStringFromClass(v27);
  [(UITableView *)v28 registerClass:v27 forCellReuseIdentifier:v29];

  v30 = [RAPRouteFeedbackDataSource _cellClassForItemType:1];
  v31 = self->_tableView;
  v32 = NSStringFromClass(v30);
  [(UITableView *)v31 registerClass:v30 forCellReuseIdentifier:v32];

  [(UIView *)self->_tableViewContainer addSubview:self->_tableView];
  heightAnchor = [(UIView *)self->_tableViewContainer heightAnchor];
  v34 = [heightAnchor constraintEqualToConstant:0.0];
  tableHeightConstraint = self->_tableHeightConstraint;
  self->_tableHeightConstraint = v34;
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = RAPRouteFeedbackViewController;
  changeCopy = change;
  [(RAPRouteFeedbackViewController *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(RAPRouteFeedbackViewController *)self traitCollection:v9.receiver];
  [(RAPRouteFeedbackDataSource *)self->_dataSource setTraitCollection:v5];

  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  traitCollection = [(RAPRouteFeedbackViewController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(RAPRouteFeedbackViewController *)self _updateTableHeightConstraint];
  }
}

- (void)_reloadTableViewIfNeeded
{
  [(RAPRouteFeedbackViewController *)self _cellContentWidth];
  v4 = v3;
  computedWidth = self->_computedWidth;
  if (!computedWidth || ([(NSNumber *)computedWidth cgFloatValue], vabdd_f64(v6, v4) > 2.22044605e-16))
  {
    v7 = [NSNumber numberWithDouble:v4];
    v8 = self->_computedWidth;
    self->_computedWidth = v7;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100585CD0;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = RAPRouteFeedbackViewController;
  [(RAPRouteFeedbackViewController *)&v3 viewDidLayoutSubviews];
  [(RAPRouteFeedbackViewController *)self _updateTableHeightConstraint];
  [(RAPRouteFeedbackViewController *)self _reloadTableViewIfNeeded];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = RAPRouteFeedbackViewController;
  [(RAPRouteFeedbackViewController *)&v9 viewDidAppear:appear];
  navigationController = [(RAPRouteFeedbackViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  firstObject = [viewControllers firstObject];

  if (firstObject == self)
  {
    v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelPressed:"];
    navigationItem = [(RAPRouteFeedbackViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v7];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = RAPRouteFeedbackViewController;
  [(RAPRouteFeedbackViewController *)&v6 viewDidLoad];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[RAP Web UI] Report an Issue" value:@"localized string not found" table:0];

  navigationItem = [(RAPRouteFeedbackViewController *)self navigationItem];
  [navigationItem setTitle:v4];

  [(RAPRouteFeedbackViewController *)self _setupViews];
  [(RAPRouteFeedbackViewController *)self _setupConstraints];
}

- (RAPRouteFeedbackViewController)initWithReport:(id)report recording:(id)recording delegate:(id)delegate
{
  reportCopy = report;
  recordingCopy = recording;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = RAPRouteFeedbackViewController;
  v12 = [(RAPRouteFeedbackViewController *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_report, report);
    objc_storeStrong(&v13->_recording, recording);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14 = [RAPRouteFeedbackDataSource alloc];
    recording = v13->_recording;
    traitCollection = [(RAPRouteFeedbackViewController *)v13 traitCollection];
    v17 = [(RAPRouteFeedbackDataSource *)v14 initWithRecording:recording traitCollection:traitCollection delegate:v13];
    dataSource = v13->_dataSource;
    v13->_dataSource = v17;

    objc_initWeak(&location, v13);
    v19 = +[VGVirtualGarageService sharedService];
    [v19 registerObserver:v13];

    v20 = +[VGVirtualGarageService sharedService];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100586138;
    v22[3] = &unk_101655840;
    objc_copyWeak(&v23, &location);
    [v20 virtualGarageGetGarageWithReply:v22];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v13;
}

@end