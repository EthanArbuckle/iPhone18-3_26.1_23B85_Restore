@interface RAPRouteFeedbackViewController
- (BOOL)_canTableViewSelectIndexPath:(id)a3;
- (BOOL)isMapItemTrailOrTrailHead:(id)a3;
- (RAPRouteFeedbackViewController)initWithReport:(id)a3 recording:(id)a4 delegate:(id)a5;
- (double)_cellContentWidth;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_dismiss;
- (void)_reloadTableViewIfNeeded;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateTableHeightConstraint;
- (void)dataSourceDidUpdate:(id)a3;
- (void)macFooterViewLeftButtonTapped:(id)a3;
- (void)routeStepDetailViewControllerDidSubmitReport:(id)a3;
- (void)setAllowsScrolling:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)virtualGarageDidUpdate:(id)a3;
@end

@implementation RAPRouteFeedbackViewController

- (BOOL)isMapItemTrailOrTrailHead:(id)a3
{
  v3 = a3;
  v4 = [v3 _placeCategoryType] == 1 || objc_msgSend(v3, "_placeCategoryType") == 2;

  return v4;
}

- (void)virtualGarageDidUpdate:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100583E24;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)macFooterViewLeftButtonTapped:(id)a3
{
  v4 = sub_100798874();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "macFooterViewLeftButtonTapped: will dismiss", v5, 2u);
  }

  [(RAPRouteFeedbackViewController *)self _dismiss];
}

- (void)routeStepDetailViewControllerDidSubmitReport:(id)a3
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

- (BOOL)_canTableViewSelectIndexPath:(id)a3
{
  v4 = [(RAPRouteFeedbackDataSource *)self->_dataSource _stepItemForIndexPath:a3];
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
    v8 = [v7 waypoint];
    v9 = [v8 mapItemIfLoaded];

    if (v9 && [(RAPRouteFeedbackViewController *)self isMapItemTrailOrTrailHead:v9])
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

    v9 = v12;

    if (v9)
    {
      v13 = [v9 step];
      if ([v13 isArrivalStep])
      {
        v14 = [(RAPRouteFeedbackDataSource *)self->_dataSource endWaypointMapItem];
        v15 = [(RAPRouteFeedbackViewController *)self isMapItemTrailOrTrailHead:v14];

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

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(RAPRouteFeedbackViewController *)self _canTableViewSelectIndexPath:v5])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  stepDetailViewController = self->_stepDetailViewController;
  self->_stepDetailViewController = 0;

  v8 = [(RAPRouteFeedbackDataSource *)self->_dataSource _stepItemForIndexPath:v6];

  v9 = [(RAPRouteFeedbackDataSource *)self->_dataSource _userPathForStepItem:v8];
  v10 = [(RAPRouteFeedbackDataSource *)self->_dataSource _routeForStepItem:v8];
  v11 = [v10 _maps_routeIndex];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v8;
    v13 = [RAPRouteStepDetailViewController alloc];
    report = self->_report;
    v15 = [v12 step];

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
    }

    else
    {
      v16 = v11;
    }

    v17 = [(RAPRouteStepDetailViewController *)v13 initWithReport:report step:v15 userPath:v9 routeIndex:v16 delegate:self];
    v18 = self->_stepDetailViewController;
    self->_stepDetailViewController = v17;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v8;
      v20 = [v19 waypointType];
      if ((v20 - 1) >= 2)
      {
        if (!v20)
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
        v21 = [v19 arrivalStep];

        if (v21)
        {
          v22 = [RAPRouteStepDetailViewController alloc];
          v23 = self->_report;
          v24 = [v19 arrivalStep];
          if (v11 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v25 = 0;
          }

          else
          {
            v25 = v11;
          }

          v26 = [(RAPRouteStepDetailViewController *)v22 initWithReport:v23 step:v24 userPath:v9 routeIndex:v25 delegate:self];
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

    v30 = [(RAPRouteFeedbackViewController *)self navigationController];
    [v30 pushViewController:self->_stepDetailViewController animated:1];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 > 1)
  {
    v13 = v8;
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
    v9 = [(RAPRouteFeedbackDataSource *)self->_dataSource _stepItemForIndexPath:v7];
    v10 = NSStringFromClass([v9 cellClass]);
    v11 = [v6 dequeueReusableCellWithIdentifier:v10];

    if (v11)
    {
      [v11 setItem:v9];
      [v11 setAccessoryType:{-[RAPRouteFeedbackViewController _canTableViewSelectIndexPath:](self, "_canTableViewSelectIndexPath:", v7)}];
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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = [(RAPRouteFeedbackDataSource *)self->_dataSource _stepItemForIndexPath:a4];
  computedWidth = self->_computedWidth;
  if (computedWidth)
  {
    [(NSNumber *)computedWidth cgFloatValue];
    v8 = v7;
  }

  else
  {
    v9 = [(RAPRouteFeedbackViewController *)self view];
    [v9 frame];
    v8 = v10;
  }

  [objc_msgSend(v5 "cellClass")];
  v12 = v11;

  return v12;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    v9 = @"[RAP] Nav step list - Route Steps";
    goto LABEL_5;
  }

  if (!a4)
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
    v15 = a4;
    v16 = 2112;
    v17 = dataSource;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "titleForHeaderInSection: called with invalid section: %lu, dataSource: %@", &v14, 0x16u);
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (a4 == 1)
    {
      v7 = [(RAPRouteFeedbackDataSource *)self->_dataSource allItems];
      v8 = [v7 count];
    }

    else
    {
      v9 = sub_100798874();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        dataSource = self->_dataSource;
        v12 = 134218242;
        v13 = a4;
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

- (void)dataSourceDidUpdate:(id)a3
{
  v4 = a3;
  [(UITableView *)self->_tableView reloadData];
  [(RAPRouteFeedbackViewController *)self _updateTableHeightConstraint];
  v5 = sub_100798874();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
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
    v7 = [(RAPRouteFeedbackViewController *)self view];
    [v7 setNeedsLayout];

    v8 = [(RAPRouteFeedbackViewController *)self view];
    [v8 layoutIfNeeded];
  }
}

- (double)_cellContentWidth
{
  v3 = [(RAPRouteFeedbackViewController *)self tableView];
  v4 = [NSIndexPath indexPathForRow:0 inSection:0];
  v5 = [v3 cellForRowAtIndexPath:v4];

  if (v5)
  {
    v6 = [v5 contentView];
    [v6 bounds];
  }

  else
  {
    v6 = [(RAPRouteFeedbackViewController *)self view];
    [v6 frame];
  }

  v8 = v7;

  return v8;
}

- (void)setAllowsScrolling:(BOOL)a3
{
  if (self->_allowsScrolling != a3)
  {
    self->_allowsScrolling = a3;
    [(UIScrollView *)self->_scrollView setScrollEnabled:?];
  }
}

- (void)_setupConstraints
{
  v3 = [(RAPRouteFeedbackViewController *)self traitCollection];
  if ([v3 userInterfaceIdiom] == 5)
  {
    v4 = 5.0;
  }

  else
  {
    v4 = 8.0;
  }

  v90 = [(UIScrollView *)self->_scrollView topAnchor];
  v91 = [(RAPRouteFeedbackViewController *)self view];
  v89 = [v91 safeAreaLayoutGuide];
  v88 = [v89 topAnchor];
  v87 = [v90 constraintEqualToAnchor:v88];
  v94[0] = v87;
  v85 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v86 = [(RAPRouteFeedbackViewController *)self view];
  v84 = [v86 leadingAnchor];
  v83 = [v85 constraintEqualToAnchor:v84];
  v94[1] = v83;
  v81 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v82 = [(RAPRouteFeedbackViewController *)self view];
  v80 = [v82 trailingAnchor];
  v79 = [v81 constraintEqualToAnchor:v80];
  v94[2] = v79;
  v78 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v76 = [v78 widthAnchor];
  v77 = [(RAPRouteFeedbackViewController *)self view];
  v75 = [v77 widthAnchor];
  v74 = [v76 constraintEqualToAnchor:v75];
  v94[3] = v74;
  v73 = [(UIView *)self->_containerView topAnchor];
  v72 = [(UIScrollView *)self->_scrollView topAnchor];
  v71 = [v73 constraintEqualToAnchor:v72];
  v94[4] = v71;
  v70 = [(UIView *)self->_containerView leadingAnchor];
  v69 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v94[5] = v68;
  v67 = [(UIView *)self->_containerView trailingAnchor];
  v66 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v65 = [v67 constraintEqualToAnchor:v66];
  v94[6] = v65;
  v64 = [(UIView *)self->_containerView bottomAnchor];
  v63 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v94[7] = v62;
  v61 = [(UILayoutGuide *)self->_containerLayoutGuide topAnchor];
  v60 = [(UIView *)self->_containerView topAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v94[8] = v59;
  v58 = [(UILayoutGuide *)self->_containerLayoutGuide leadingAnchor];
  v57 = [(UIView *)self->_containerView leadingAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v94[9] = v56;
  v55 = [(UILayoutGuide *)self->_containerLayoutGuide trailingAnchor];
  v54 = [(UIView *)self->_containerView trailingAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v94[10] = v53;
  v52 = [(UILayoutGuide *)self->_containerLayoutGuide bottomAnchor];
  v51 = [(UIView *)self->_containerView bottomAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v94[11] = v50;
  v49 = [(UILabel *)self->_titleLabel topAnchor];
  v48 = [(UILayoutGuide *)self->_containerLayoutGuide topAnchor];
  v47 = [v49 constraintEqualToAnchor:v48 constant:v4];
  v94[12] = v47;
  v46 = [(UILabel *)self->_titleLabel leadingAnchor];
  v45 = [(UILayoutGuide *)self->_containerLayoutGuide leadingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45 constant:16.0];
  v94[13] = v44;
  v43 = [(UILabel *)self->_titleLabel trailingAnchor];
  v42 = [(UILayoutGuide *)self->_containerLayoutGuide trailingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42 constant:-16.0];
  v94[14] = v41;
  v40 = [(UIView *)self->_tableViewContainer topAnchor];
  v39 = [(UILabel *)self->_titleLabel bottomAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v94[15] = v38;
  v37 = [(UIView *)self->_tableViewContainer leadingAnchor];
  v36 = [(UILayoutGuide *)self->_containerLayoutGuide leadingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v94[16] = v35;
  v34 = [(UIView *)self->_tableViewContainer trailingAnchor];
  v33 = [(UILayoutGuide *)self->_containerLayoutGuide trailingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  tableHeightConstraint = self->_tableHeightConstraint;
  v94[17] = v32;
  v94[18] = tableHeightConstraint;
  v31 = [(UIView *)self->_tableViewContainer bottomAnchor];
  v30 = [(UILayoutGuide *)self->_containerLayoutGuide bottomAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v94[19] = v29;
  v28 = [(UITableView *)self->_tableView leadingAnchor];
  v27 = [(UIView *)self->_tableViewContainer leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v94[20] = v26;
  v25 = [(UITableView *)self->_tableView trailingAnchor];
  v6 = [(UIView *)self->_tableViewContainer trailingAnchor];
  v7 = [v25 constraintEqualToAnchor:v6];
  v94[21] = v7;
  v8 = [(UITableView *)self->_tableView topAnchor];
  v9 = [(UIView *)self->_tableViewContainer topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v94[22] = v10;
  v11 = [(UITableView *)self->_tableView bottomAnchor];
  v12 = [(UIView *)self->_tableViewContainer bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v94[23] = v13;
  v14 = [NSArray arrayWithObjects:v94 count:24];
  [NSLayoutConstraint activateConstraints:v14];

  v15 = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v19 = [(RAPRouteFeedbackViewController *)v15 view];
  v20 = v19;
  if (v17)
  {
    v21 = [v19 safeAreaLayoutGuide];
    v22 = [v21 bottomAnchor];
    v23 = [v18 constraintEqualToAnchor:v22];
    v93 = v23;
    v24 = [NSArray arrayWithObjects:&v93 count:1];
    [NSLayoutConstraint activateConstraints:v24];
  }

  else
  {
    v21 = [v19 bottomAnchor];
    v22 = [v18 constraintEqualToAnchor:v21];
    v92 = v22;
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
  v5 = [(UIScrollView *)self->_scrollView layer];
  [v5 setAllowsGroupOpacity:0];

  [(UIScrollView *)self->_scrollView setScrollEnabled:[(RAPRouteFeedbackViewController *)self allowsScrolling]];
  v6 = [(RAPRouteFeedbackViewController *)self view];
  [v6 addSubview:self->_scrollView];

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
  v14 = [(RAPRouteFeedbackViewController *)self traitCollection];
  v15 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle3 weight:v14 compatibleWithTraitCollection:UIFontWeightBold];
  [(UILabel *)self->_titleLabel setFont:v15];

  v16 = [(RAPRouteFeedbackDataSource *)self->_dataSource endWaypointMapItem];
  v17 = [v16 name];
  v18 = v17;
  if (v17)
  {
    v36 = v17;
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
  v33 = [(UIView *)self->_tableViewContainer heightAnchor];
  v34 = [v33 constraintEqualToConstant:0.0];
  tableHeightConstraint = self->_tableHeightConstraint;
  self->_tableHeightConstraint = v34;
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = RAPRouteFeedbackViewController;
  v4 = a3;
  [(RAPRouteFeedbackViewController *)&v9 traitCollectionDidChange:v4];
  v5 = [(RAPRouteFeedbackViewController *)self traitCollection:v9.receiver];
  [(RAPRouteFeedbackDataSource *)self->_dataSource setTraitCollection:v5];

  v6 = [v4 preferredContentSizeCategory];

  v7 = [(RAPRouteFeedbackViewController *)self traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  if (v6 != v8)
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

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = RAPRouteFeedbackViewController;
  [(RAPRouteFeedbackViewController *)&v9 viewDidAppear:a3];
  v4 = [(RAPRouteFeedbackViewController *)self navigationController];
  v5 = [v4 viewControllers];
  v6 = [v5 firstObject];

  if (v6 == self)
  {
    v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelPressed:"];
    v8 = [(RAPRouteFeedbackViewController *)self navigationItem];
    [v8 setLeftBarButtonItem:v7];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = RAPRouteFeedbackViewController;
  [(RAPRouteFeedbackViewController *)&v6 viewDidLoad];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[RAP Web UI] Report an Issue" value:@"localized string not found" table:0];

  v5 = [(RAPRouteFeedbackViewController *)self navigationItem];
  [v5 setTitle:v4];

  [(RAPRouteFeedbackViewController *)self _setupViews];
  [(RAPRouteFeedbackViewController *)self _setupConstraints];
}

- (RAPRouteFeedbackViewController)initWithReport:(id)a3 recording:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25.receiver = self;
  v25.super_class = RAPRouteFeedbackViewController;
  v12 = [(RAPRouteFeedbackViewController *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_report, a3);
    objc_storeStrong(&v13->_recording, a4);
    objc_storeWeak(&v13->_delegate, v11);
    v14 = [RAPRouteFeedbackDataSource alloc];
    recording = v13->_recording;
    v16 = [(RAPRouteFeedbackViewController *)v13 traitCollection];
    v17 = [(RAPRouteFeedbackDataSource *)v14 initWithRecording:recording traitCollection:v16 delegate:v13];
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