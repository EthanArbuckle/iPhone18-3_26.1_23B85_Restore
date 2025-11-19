@interface SharedTripListContaineeViewController
- (GEOSharedNavState)selectedTrip;
- (SharedTripListContaineeViewController)init;
- (SharedTripsActionCoordination)delegate;
- (double)heightForLayout:(unint64_t)a3;
- (void)applyAlphaToContent:(double)a3;
- (void)dealloc;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)headerViewTapped:(id)a3;
- (void)setSelectedTrip:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation SharedTripListContaineeViewController

- (SharedTripsActionCoordination)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 cellForRowAtIndexPath:v6];
  [v7 setSelected:0];

  v11 = [(SharedTripsTableDataSource *)self->_sharedTripsDataSource sharedTripAtIndexPath:v6];

  [(SharedTripListContaineeViewController *)self setSelectedTrip:v11];
  if ([v11 hasTransportType])
  {
    v8 = [v11 transportType];
    if (v8 >= 7)
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = off_101626E80[v8];
    }
  }

  else
  {
    v9 = @"UNKNOWN_TRANSPORT_TYPE";
  }

  [GEOAPPortal captureUserAction:9003 target:267 value:v9];

  v10 = [(SharedTripListContaineeViewController *)self delegate];
  [v10 didSelectSharedTrip:v11];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = [(SharedTripsTableDataSource *)self->_sharedTripsDataSource sharedTripAtIndexPath:a5, a4];
  if ([v7 hasTransportType])
  {
    v5 = [v7 transportType];
    if (v5 >= 7)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", v5];
    }

    else
    {
      v6 = off_101626E80[v5];
    }
  }

  else
  {
    v6 = @"UNKNOWN_TRANSPORT_TYPE";
  }

  [GEOAPPortal captureUserAction:9002 target:267 value:v6];
}

- (double)heightForLayout:(unint64_t)a3
{
  v5 = [(ContaineeViewController *)self cardPresentationController];
  [v5 bottomSafeOffset];
  v7 = v6;

  if (a3 == 1)
  {
LABEL_7:
    [(ContaineeViewController *)self headerHeight];
    return v11 + v7;
  }

  if (a3 == 2)
  {
    v8 = [(SharedTripsTableDataSource *)self->_sharedTripsDataSource numberOfSharedTrips];
    if (v8 <= 3)
    {
      v9 = v8;
    }

    else
    {
      v9 = 3.5;
    }

    +[TwoLinesTableViewCell estimatedCellHeight];
    v7 = v7 + v10 * v9;
    goto LABEL_7;
  }

  v13 = [(ContaineeViewController *)self cardPresentationController];
  [v13 availableHeight];
  v15 = v14;

  return v15;
}

- (void)applyAlphaToContent:(double)a3
{
  v5.receiver = self;
  v5.super_class = SharedTripListContaineeViewController;
  [(ContaineeViewController *)&v5 applyAlphaToContent:?];
  [(ContainerHeaderView *)self->_headerView setHairLineAlpha:a3];
}

- (void)setSelectedTrip:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_selectedTrip);

  if (WeakRetained != v4)
  {
    v6 = sub_1006EB6C4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 groupIdentifier];
      v9 = 134349314;
      v10 = self;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Selecting trip: %@", &v9, 0x16u);
    }

    subscriptionToken = self->_subscriptionToken;
    self->_subscriptionToken = 0;

    objc_storeWeak(&self->_selectedTrip, v4);
    [(SharedTripsTableDataSource *)self->_sharedTripsDataSource setSelectedTrip:v4];
  }
}

- (GEOSharedNavState)selectedTrip
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedTrip);

  if (!WeakRetained)
  {
    v4 = [(SharedTripsTableDataSource *)self->_sharedTripsDataSource selectedTrip];
    objc_storeWeak(&self->_selectedTrip, v4);
  }

  v5 = objc_loadWeakRetained(&self->_selectedTrip);

  return v5;
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  v5 = [MSPSharedTripService sharedInstance:a3];
  v6 = [v5 receivedTrips];
  v10 = sub_100021DB0(v6, &stru_101626E40);

  v7 = [(SharedTripListContaineeViewController *)self currentUITargetForAnalytics];
  v8 = [v10 componentsJoinedByString:{@", "}];
  [GEOAPPortal captureUserAction:4 target:v7 value:v8];

  v9 = [(SharedTripListContaineeViewController *)self delegate];
  [v9 closeSharedTrips];
}

- (void)headerViewTapped:(id)a3
{
  v4 = [(ContaineeViewController *)self cardPresentationController];
  v5 = [v4 containeeLayout];

  if ((v5 - 2) >= 2)
  {
    if (v5 != 1)
    {
      return;
    }

    v6 = [(ContaineeViewController *)self cardPresentationController];
    [v6 wantsExpandLayout];
  }

  else
  {
    v6 = [(ContaineeViewController *)self cardPresentationController];
    [v6 wantsMinimizeLayout];
  }
}

- (void)viewDidLoad
{
  v54.receiver = self;
  v54.super_class = SharedTripListContaineeViewController;
  [(ContaineeViewController *)&v54 viewDidLoad];
  v3 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  headerView = self->_headerView;
  self->_headerView = v3;

  [(ContainerHeaderView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_headerView setDelegate:self];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Shared Trips [Tray value:Header]" table:{@"localized string not found", 0}];
  [(ContainerHeaderView *)self->_headerView setTitle:v6];

  v7 = [(SharedTripListContaineeViewController *)self view];
  [v7 addSubview:self->_headerView];

  v8 = [UITableView alloc];
  v9 = [(SharedTripListContaineeViewController *)self view];
  [v9 bounds];
  v10 = [v8 initWithFrame:0 style:?];
  tableView = self->_tableView;
  self->_tableView = v10;

  v12 = +[UIColor clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:v12];

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  +[TwoLinesTableViewCell estimatedCellHeight];
  [(UITableView *)self->_tableView setEstimatedRowHeight:?];
  +[TwoLinesTableViewCell cellHeight];
  [(UITableView *)self->_tableView setRowHeight:?];
  [(UITableView *)self->_tableView setDelegate:self];
  v13 = self->_tableView;
  v14 = objc_opt_class();
  v15 = +[TwoLinesTableViewCell identifier];
  [(UITableView *)v13 registerClass:v14 forCellReuseIdentifier:v15];

  v16 = [(SharedTripListContaineeViewController *)self view];
  [v16 addSubview:self->_tableView];

  objc_initWeak(&location, self);
  v17 = [SharedTripsTableDataSource alloc];
  v18 = self->_tableView;
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_1006EBF54;
  v51[3] = &unk_101656CB8;
  objc_copyWeak(&v52, &location);
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1006EC0D0;
  v49[3] = &unk_101626E20;
  objc_copyWeak(&v50, &location);
  v19 = [(SharedTripsTableDataSource *)v17 initWithTableView:v18 cellProvider:v51 tableViewReloadEvent:v49];
  sharedTripsDataSource = self->_sharedTripsDataSource;
  self->_sharedTripsDataSource = v19;

  v21 = +[NSMutableArray array];
  v22 = [(ContainerHeaderView *)self->_headerView topAnchor];
  v23 = [(SharedTripListContaineeViewController *)self view];
  v24 = [v23 topAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  [v21 addObject:v25];

  v26 = [(ContainerHeaderView *)self->_headerView leadingAnchor];
  v27 = [(SharedTripListContaineeViewController *)self view];
  v28 = [v27 leadingAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  [v21 addObject:v29];

  v30 = [(SharedTripListContaineeViewController *)self view];
  v31 = [v30 trailingAnchor];
  v32 = [(ContainerHeaderView *)self->_headerView trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  [v21 addObject:v33];

  v34 = [(UITableView *)self->_tableView topAnchor];
  v35 = [(ContainerHeaderView *)self->_headerView bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  [v21 addObject:v36];

  v37 = [(UITableView *)self->_tableView leadingAnchor];
  v38 = [(SharedTripListContaineeViewController *)self view];
  v39 = [v38 leadingAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];
  [v21 addObject:v40];

  v41 = [(UITableView *)self->_tableView trailingAnchor];
  v42 = [(SharedTripListContaineeViewController *)self view];
  v43 = [v42 trailingAnchor];
  v44 = [v41 constraintEqualToAnchor:v43];
  [v21 addObject:v44];

  v45 = [(UITableView *)self->_tableView bottomAnchor];
  v46 = [(SharedTripListContaineeViewController *)self view];
  v47 = [v46 bottomAnchor];
  v48 = [v45 constraintEqualToAnchor:v47];
  [v21 addObject:v48];

  [NSLayoutConstraint activateConstraints:v21];
  objc_destroyWeak(&v50);
  objc_destroyWeak(&v52);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v3 = sub_1006EB6C4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = SharedTripListContaineeViewController;
  [(SharedTripListContaineeViewController *)&v4 dealloc];
}

- (SharedTripListContaineeViewController)init
{
  v5.receiver = self;
  v5.super_class = SharedTripListContaineeViewController;
  v2 = [(SharedTripListContaineeViewController *)&v5 init];
  if (v2)
  {
    v3 = sub_1006EB6C4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }
  }

  return v2;
}

@end