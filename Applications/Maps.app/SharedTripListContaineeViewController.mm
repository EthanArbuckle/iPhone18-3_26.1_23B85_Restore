@interface SharedTripListContaineeViewController
- (GEOSharedNavState)selectedTrip;
- (SharedTripListContaineeViewController)init;
- (SharedTripsActionCoordination)delegate;
- (double)heightForLayout:(unint64_t)layout;
- (void)applyAlphaToContent:(double)content;
- (void)dealloc;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)headerViewTapped:(id)tapped;
- (void)setSelectedTrip:(id)trip;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation SharedTripListContaineeViewController

- (SharedTripsActionCoordination)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view cellForRowAtIndexPath:pathCopy];
  [v7 setSelected:0];

  v11 = [(SharedTripsTableDataSource *)self->_sharedTripsDataSource sharedTripAtIndexPath:pathCopy];

  [(SharedTripListContaineeViewController *)self setSelectedTrip:v11];
  if ([v11 hasTransportType])
  {
    transportType = [v11 transportType];
    if (transportType >= 7)
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", transportType];
    }

    else
    {
      v9 = off_101626E80[transportType];
    }
  }

  else
  {
    v9 = @"UNKNOWN_TRANSPORT_TYPE";
  }

  [GEOAPPortal captureUserAction:9003 target:267 value:v9];

  delegate = [(SharedTripListContaineeViewController *)self delegate];
  [delegate didSelectSharedTrip:v11];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cell = [(SharedTripsTableDataSource *)self->_sharedTripsDataSource sharedTripAtIndexPath:path, cell];
  if ([cell hasTransportType])
  {
    transportType = [cell transportType];
    if (transportType >= 7)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", transportType];
    }

    else
    {
      v6 = off_101626E80[transportType];
    }
  }

  else
  {
    v6 = @"UNKNOWN_TRANSPORT_TYPE";
  }

  [GEOAPPortal captureUserAction:9002 target:267 value:v6];
}

- (double)heightForLayout:(unint64_t)layout
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController bottomSafeOffset];
  v7 = v6;

  if (layout == 1)
  {
LABEL_7:
    [(ContaineeViewController *)self headerHeight];
    return v11 + v7;
  }

  if (layout == 2)
  {
    numberOfSharedTrips = [(SharedTripsTableDataSource *)self->_sharedTripsDataSource numberOfSharedTrips];
    if (numberOfSharedTrips <= 3)
    {
      v9 = numberOfSharedTrips;
    }

    else
    {
      v9 = 3.5;
    }

    +[TwoLinesTableViewCell estimatedCellHeight];
    v7 = v7 + v10 * v9;
    goto LABEL_7;
  }

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController2 availableHeight];
  v15 = v14;

  return v15;
}

- (void)applyAlphaToContent:(double)content
{
  v5.receiver = self;
  v5.super_class = SharedTripListContaineeViewController;
  [(ContaineeViewController *)&v5 applyAlphaToContent:?];
  [(ContainerHeaderView *)self->_headerView setHairLineAlpha:content];
}

- (void)setSelectedTrip:(id)trip
{
  tripCopy = trip;
  WeakRetained = objc_loadWeakRetained(&self->_selectedTrip);

  if (WeakRetained != tripCopy)
  {
    v6 = sub_1006EB6C4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      groupIdentifier = [tripCopy groupIdentifier];
      v9 = 134349314;
      selfCopy = self;
      v11 = 2112;
      v12 = groupIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Selecting trip: %@", &v9, 0x16u);
    }

    subscriptionToken = self->_subscriptionToken;
    self->_subscriptionToken = 0;

    objc_storeWeak(&self->_selectedTrip, tripCopy);
    [(SharedTripsTableDataSource *)self->_sharedTripsDataSource setSelectedTrip:tripCopy];
  }
}

- (GEOSharedNavState)selectedTrip
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedTrip);

  if (!WeakRetained)
  {
    selectedTrip = [(SharedTripsTableDataSource *)self->_sharedTripsDataSource selectedTrip];
    objc_storeWeak(&self->_selectedTrip, selectedTrip);
  }

  v5 = objc_loadWeakRetained(&self->_selectedTrip);

  return v5;
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  v5 = [MSPSharedTripService sharedInstance:tapped];
  receivedTrips = [v5 receivedTrips];
  v10 = sub_100021DB0(receivedTrips, &stru_101626E40);

  currentUITargetForAnalytics = [(SharedTripListContaineeViewController *)self currentUITargetForAnalytics];
  v8 = [v10 componentsJoinedByString:{@", "}];
  [GEOAPPortal captureUserAction:4 target:currentUITargetForAnalytics value:v8];

  delegate = [(SharedTripListContaineeViewController *)self delegate];
  [delegate closeSharedTrips];
}

- (void)headerViewTapped:(id)tapped
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  if ((containeeLayout - 2) >= 2)
  {
    if (containeeLayout != 1)
    {
      return;
    }

    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 wantsExpandLayout];
  }

  else
  {
    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 wantsMinimizeLayout];
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

  view = [(SharedTripListContaineeViewController *)self view];
  [view addSubview:self->_headerView];

  v8 = [UITableView alloc];
  view2 = [(SharedTripListContaineeViewController *)self view];
  [view2 bounds];
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

  view3 = [(SharedTripListContaineeViewController *)self view];
  [view3 addSubview:self->_tableView];

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
  topAnchor = [(ContainerHeaderView *)self->_headerView topAnchor];
  view4 = [(SharedTripListContaineeViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v21 addObject:v25];

  leadingAnchor = [(ContainerHeaderView *)self->_headerView leadingAnchor];
  view5 = [(SharedTripListContaineeViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v21 addObject:v29];

  view6 = [(SharedTripListContaineeViewController *)self view];
  trailingAnchor = [view6 trailingAnchor];
  trailingAnchor2 = [(ContainerHeaderView *)self->_headerView trailingAnchor];
  v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v21 addObject:v33];

  topAnchor3 = [(UITableView *)self->_tableView topAnchor];
  bottomAnchor = [(ContainerHeaderView *)self->_headerView bottomAnchor];
  v36 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  [v21 addObject:v36];

  leadingAnchor3 = [(UITableView *)self->_tableView leadingAnchor];
  view7 = [(SharedTripListContaineeViewController *)self view];
  leadingAnchor4 = [view7 leadingAnchor];
  v40 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v21 addObject:v40];

  trailingAnchor3 = [(UITableView *)self->_tableView trailingAnchor];
  view8 = [(SharedTripListContaineeViewController *)self view];
  trailingAnchor4 = [view8 trailingAnchor];
  v44 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v21 addObject:v44];

  bottomAnchor2 = [(UITableView *)self->_tableView bottomAnchor];
  view9 = [(SharedTripListContaineeViewController *)self view];
  bottomAnchor3 = [view9 bottomAnchor];
  v48 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
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
    selfCopy = self;
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