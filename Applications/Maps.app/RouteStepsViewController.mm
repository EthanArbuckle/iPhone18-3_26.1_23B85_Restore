@interface RouteStepsViewController
- (RoutePlanningDataCoordination)dataCoordinator;
- (RouteStepsViewController)initWithCoder:(id)coder;
- (RouteStepsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (RouteStepsViewControllerDelegate)delegate;
- (UIScrollView)scrollViewForDirectionsDetailsOfCurrentRoute;
- (id)_driveOrWalkDirectionsListViewController;
- (id)_transitDirectionsListViewController;
- (id)directionsListViewControllerForDirectionsType:(int)type;
- (int)currentUITargetForAnalytics;
- (void)_clearControllerIfNeeded:(id)needed;
- (void)_customInit;
- (void)_didTapDoneButton:(id)button;
- (void)_observeHeaderFlagForController:(id)controller;
- (void)_setupChildViewControllerIfNeeded:(id)needed;
- (void)_setupConstraints;
- (void)_shareRoute:(id)route sourceView:(id)view;
- (void)_updateHairlineVisibility:(BOOL)visibility;
- (void)_updateVisibleViewsForDirectionsType:(int)type;
- (void)dealloc;
- (void)didBecomeCurrent;
- (void)directionsStepsList:(id)list didTapRowForRouteStep:(id)step;
- (void)directionsStepsListDidTapRAPButton:(id)button;
- (void)directionsStepsListDidTapShareButton:(id)button;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateOriginName:(id)name destinationName:(id)destinationName;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRouteCollection:(id)collection;
- (void)transitDirectionsStepsListDataSource:(id)source didSelectTrip:(id)trip;
- (void)transitDirectionsStepsListDataSource:(id)source didTapClusteredVehiclesCell:(id)cell;
- (void)transitDirectionsStepsListDataSource:(id)source didTapGetTicketsForSegments:(id)segments;
- (void)transitDirectionsStepsListDataSource:(id)source didTapIncidentsCell:(id)cell withAdvisory:(id)advisory;
- (void)transitDirectionsStepsListDataSource:(id)source didTapRowForItem:(id)item;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)current;
- (void)willChangeContainerStyle:(unint64_t)style;
@end

@implementation RouteStepsViewController

- (RouteStepsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (RoutePlanningDataCoordination)dataCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCoordinator);

  return WeakRetained;
}

- (int)currentUITargetForAnalytics
{
  dataCoordinator = [(RouteStepsViewController *)self dataCoordinator];
  transportType = [dataCoordinator transportType];
  if ((transportType - 1) > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_101215D8C[(transportType - 1)];
  }

  return v4;
}

- (void)_setupConstraints
{
  modalHeaderView = [(RouteStepsViewController *)self modalHeaderView];
  headerView = [(ContaineeViewController *)self headerView];
  LODWORD(v4) = 1148846080;
  v5 = [modalHeaderView _maps_constraintsEqualToEdgesOfView:headerView priority:v4];
  allConstraints = [v5 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];
}

- (void)_setupChildViewControllerIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(RouteStepsViewController *)self isViewLoaded])
  {
    parentViewController = [neededCopy parentViewController];

    if (parentViewController != self)
    {
      view = [neededCopy view];
      contentView = [(ContaineeViewController *)self contentView];
      [(RouteStepsViewController *)self addChildViewController:neededCopy];
      [view setTranslatesAutoresizingMaskIntoConstraints:0];
      [contentView bounds];
      [view setFrame:?];
      [contentView addSubview:view];
      leadingAnchor = [view leadingAnchor];
      leadingAnchor2 = [contentView leadingAnchor];
      v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v21[0] = v18;
      trailingAnchor = [view trailingAnchor];
      trailingAnchor2 = [contentView trailingAnchor];
      v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v21[1] = v15;
      topAnchor = [view topAnchor];
      topAnchor2 = [contentView topAnchor];
      v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v21[2] = v9;
      bottomAnchor = [view bottomAnchor];
      bottomAnchor2 = [contentView bottomAnchor];
      v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v21[3] = v12;
      v13 = [NSArray arrayWithObjects:v21 count:4];

      [NSLayoutConstraint activateConstraints:v13];
      [neededCopy didMoveToParentViewController:self];
    }
  }
}

- (void)_clearControllerIfNeeded:(id)needed
{
  neededCopy = needed;
  route = [neededCopy route];

  if (route)
  {
    [neededCopy setRoute:0];
    collectionView = [neededCopy collectionView];
    [collectionView reloadData];

    tableView = [neededCopy tableView];
    [tableView reloadData];
  }
}

- (void)_updateVisibleViewsForDirectionsType:(int)type
{
  if (type == 1)
  {
    v4 = &OBJC_IVAR___RouteStepsViewController__transitDirectionsListViewController;
  }

  else
  {
    v4 = &OBJC_IVAR___RouteStepsViewController__driveOrWalkDirectionsListViewController;
  }

  if (type == 1)
  {
    v5 = &OBJC_IVAR___RouteStepsViewController__driveOrWalkDirectionsListViewController;
  }

  else
  {
    v5 = &OBJC_IVAR___RouteStepsViewController__transitDirectionsListViewController;
  }

  v6 = *v4;
  view = [*(&self->super.super.super.super.super.isa + v6) view];
  [view setHidden:0];

  [(RouteStepsViewController *)self _observeHeaderFlagForController:*(&self->super.super.super.super.super.isa + v6)];
  v8 = *v5;
  view2 = [*(&self->super.super.super.super.super.isa + v8) view];
  [view2 setHidden:1];

  [(RouteStepsViewController *)self _clearControllerIfNeeded:*(&self->super.super.super.super.super.isa + v8)];
  scrollViewForDirectionsDetailsOfCurrentRoute = [(RouteStepsViewController *)self scrollViewForDirectionsDetailsOfCurrentRoute];
  [(ContaineeViewController *)self setContentScrollView:scrollViewForDirectionsDetailsOfCurrentRoute forEdge:1];
}

- (id)_transitDirectionsListViewController
{
  transitDirectionsListViewController = self->_transitDirectionsListViewController;
  if (!transitDirectionsListViewController)
  {
    v4 = objc_alloc_init(TransitDirectionsListViewController);
    v5 = self->_transitDirectionsListViewController;
    self->_transitDirectionsListViewController = v4;

    dataSource = [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController dataSource];
    [dataSource setDelegate:self];

    [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController setScrollViewDelegate:self];
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    containerStyle = [cardPresentationController containerStyle];
    v9 = (containerStyle > 7) | (0x5Cu >> containerStyle);
    dataSource2 = [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController dataSource];
    [dataSource2 setAllowStepSelection:v9 & 1];

    dataSource3 = [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController dataSource];
    [dataSource3 setOptions:8];

    transitDirectionsListViewController = self->_transitDirectionsListViewController;
  }

  return transitDirectionsListViewController;
}

- (id)_driveOrWalkDirectionsListViewController
{
  driveOrWalkDirectionsListViewController = self->_driveOrWalkDirectionsListViewController;
  if (!driveOrWalkDirectionsListViewController)
  {
    v4 = [RouteStepListViewController alloc];
    v5 = +[RouteStepListMetrics routePlanningMetrics];
    v6 = [(RouteStepListViewController *)v4 initWithOptions:247 metrics:v5];
    v7 = self->_driveOrWalkDirectionsListViewController;
    self->_driveOrWalkDirectionsListViewController = v6;

    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    containerStyle = [cardPresentationController containerStyle];
    [(RouteStepListViewController *)self->_driveOrWalkDirectionsListViewController setAllowsSelection:(containerStyle > 7) | (0x5Cu >> containerStyle) & 1];

    [(RouteStepListViewController *)self->_driveOrWalkDirectionsListViewController setDelegate:self];
    driveOrWalkDirectionsListViewController = self->_driveOrWalkDirectionsListViewController;
  }

  return driveOrWalkDirectionsListViewController;
}

- (UIScrollView)scrollViewForDirectionsDetailsOfCurrentRoute
{
  dataCoordinator = [(RouteStepsViewController *)self dataCoordinator];
  routeCollection = [dataCoordinator routeCollection];
  currentRoute = [routeCollection currentRoute];

  if (currentRoute)
  {
    v6 = -[RouteStepsViewController directionsListViewControllerForDirectionsType:](self, "directionsListViewControllerForDirectionsType:", [currentRoute transportType]);
    scrollView = [v6 scrollView];
  }

  else
  {
    scrollView = 0;
  }

  return scrollView;
}

- (id)directionsListViewControllerForDirectionsType:(int)type
{
  if (type == 1)
  {
    [(RouteStepsViewController *)self _transitDirectionsListViewController];
  }

  else
  {
    [(RouteStepsViewController *)self _driveOrWalkDirectionsListViewController];
  }
  v3 = ;

  return v3;
}

- (void)transitDirectionsStepsListDataSource:(id)source didTapGetTicketsForSegments:(id)segments
{
  v5 = self->_transitDirectionsListViewController;
  v19 = [UIAlertController _maps_alertControllerForTicketedSegments:segments];
  view = [(TransitDirectionsListViewController *)v5 view];
  popoverPresentationController = [v19 popoverPresentationController];
  [popoverPresentationController setSourceView:view];

  view2 = [(TransitDirectionsListViewController *)v5 view];
  [view2 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  popoverPresentationController2 = [v19 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v10, v12, v14, v16}];

  popoverPresentationController3 = [v19 popoverPresentationController];
  [popoverPresentationController3 setPermittedArrowDirections:12];

  [(TransitDirectionsListViewController *)v5 presentViewController:v19 animated:1 completion:0];
}

- (void)transitDirectionsStepsListDataSource:(id)source didTapIncidentsCell:(id)cell withAdvisory:(id)advisory
{
  advisoryCopy = advisory;
  delegate = [(RouteStepsViewController *)self delegate];
  [delegate routeStepsViewController:self wantsToDisplayAdvisory:advisoryCopy];
}

- (void)transitDirectionsStepsListDataSource:(id)source didTapClusteredVehiclesCell:(id)cell
{
  cellCopy = cell;
  clusteredVehicleItem = [cellCopy clusteredVehicleItem];
  clusteredSegment = [clusteredVehicleItem clusteredSegment];

  if (clusteredSegment)
  {
    v7 = [UIAlertController clusteredVehiclesSelectionAlertControllerForClusteredSegment:clusteredSegment completion:0];
    view = [(RouteStepsViewController *)self view];
    popoverPresentationController = [v7 popoverPresentationController];
    [popoverPresentationController setSourceView:view];

    view2 = [(RouteStepsViewController *)self view];
    [cellCopy bounds];
    [view2 convertRect:cellCopy fromView:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    popoverPresentationController2 = [v7 popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{v12, v14, v16, v18}];

    popoverPresentationController3 = [v7 popoverPresentationController];
    [popoverPresentationController3 setPermittedArrowDirections:12];

    [(RouteStepsViewController *)self presentViewController:v7 animated:1 completion:0];
    v21 = +[MKMapService sharedService];
    clusteredVehicleItem2 = [cellCopy clusteredVehicleItem];
    clusteredSegment2 = [clusteredVehicleItem2 clusteredSegment];
    v24 = sub_100B5D5D8(clusteredSegment2);
    [v21 captureUserAction:3037 onTarget:606 eventValue:v24];
  }
}

- (void)transitDirectionsStepsListDataSource:(id)source didTapRowForItem:(id)item
{
  itemCopy = item;
  listView = [source listView];
  v7 = listView;
  if (listView)
  {
    if ([listView isActiveTransitDirectionsListItem:itemCopy])
    {
      [v7 clearActiveTransitListItem];
      dataCoordinator = [(RouteStepsViewController *)self dataCoordinator];
      dataCoordinator2 = dataCoordinator;
      x = MKMapRectNull.origin.x;
      y = MKMapRectNull.origin.y;
      width = MKMapRectNull.size.width;
      height = MKMapRectNull.size.height;
      goto LABEL_6;
    }

    [v7 setActiveTransitDirectionsListItem:itemCopy];
  }

  dataCoordinator2 = [(RouteStepsViewController *)self dataCoordinator];
  [itemCopy displayedMapRect];
  dataCoordinator = dataCoordinator2;
LABEL_6:
  [dataCoordinator updateCurrentRouteDisplayedMapRect:{x, y, width, height}];
}

- (void)transitDirectionsStepsListDataSource:(id)source didSelectTrip:(id)trip
{
  tripCopy = trip;
  sourceCopy = source;
  v8 = +[MKMapService sharedService];
  currentUITargetForAnalytics = [(RouteStepsViewController *)self currentUITargetForAnalytics];
  displayedItemIndexForAnalytics = [sourceCopy displayedItemIndexForAnalytics];

  [v8 captureUserAction:9040 onTarget:currentUITargetForAnalytics eventValue:0 transitStep:displayedItemIndexForAnalytics];
  delegate = [(RouteStepsViewController *)self delegate];
  matchingRouteStep = [tripCopy matchingRouteStep];

  [delegate routeStepsViewController:self wantsToDisplayScheduleForTransitStep:matchingRouteStep];
}

- (void)directionsStepsList:(id)list didTapRowForRouteStep:(id)step
{
  v5 = sub_100AF1870(step);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  dataCoordinator = [(RouteStepsViewController *)self dataCoordinator];
  [dataCoordinator updateCurrentRouteDisplayedMapRect:{v5, v7, v9, v11}];
}

- (void)_shareRoute:(id)route sourceView:(id)view
{
  if (route)
  {
    viewCopy = view;
    routeCopy = route;
    delegate = [(RouteStepsViewController *)self delegate];
    v8 = [ShareItem shareItemWithRoute:routeCopy includeRoutingApps:1];

    [delegate routeStepsViewController:self wantsToShareItem:v8 fromView:viewCopy];
  }
}

- (void)directionsStepsListDidTapRAPButton:(id)button
{
  _maps_platformController = [(RouteStepsViewController *)self _maps_platformController];
  currentSession = [_maps_platformController currentSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = currentSession;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315906;
      v17 = "[RouteStepsViewController directionsStepsListDidTapRAPButton:]";
      v18 = 2080;
      v19 = "RouteStepsViewController.m";
      v20 = 1024;
      v21 = 248;
      v22 = 2080;
      v23 = "routePlanningSession != nil";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v16, 0x26u);
    }

    if (sub_100E03634())
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = +[NSThread callStackSymbols];
        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
      }
    }
  }

  currentTransportType = [v7 currentTransportType];
  if (currentTransportType > 5)
  {
    v9 = 608;
  }

  else
  {
    v9 = dword_1012153B0[currentTransportType];
  }

  v10 = +[MKMapService sharedService];
  [v10 captureUserAction:5013 onTarget:v9 eventValue:0];

  _maps_mapsSceneDelegate = [(RouteStepsViewController *)self _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
  [rapPresenter presentReportAProblemForRouteFromEntryPoint:v9];
}

- (void)directionsStepsListDidTapShareButton:(id)button
{
  buttonCopy = button;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = &OBJC_IVAR___RouteStepsViewController__driveOrWalkDirectionsListViewController;
  if (isKindOfClass)
  {
    v6 = &OBJC_IVAR___RouteStepsViewController__transitDirectionsListViewController;
  }

  v7 = *(&self->super.super.super.super.super.isa + *v6);
  route = [v7 route];

  if (!route)
  {
    v15 = sub_10006D178();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315906;
      v19 = "[RouteStepsViewController directionsStepsListDidTapShareButton:]";
      v20 = 2080;
      v21 = "RouteStepsViewController.m";
      v22 = 1024;
      v23 = 236;
      v24 = 2080;
      v25 = "viewController.route != nil";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v18, 0x26u);
    }

    if (sub_100E03634())
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = +[NSThread callStackSymbols];
        v18 = 138412290;
        v19 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
      }
    }
  }

  route2 = [v7 route];
  view = [v7 view];
  [(RouteStepsViewController *)self _shareRoute:route2 sourceView:view];

  v11 = +[MKMapService sharedService];
  route3 = [v7 route];
  v13 = [route3 transportType] - 1;
  if (v13 > 5)
  {
    v14 = 604;
  }

  else
  {
    v14 = dword_101215398[v13];
  }

  [v11 captureUserAction:6013 onTarget:v14 eventValue:0];
}

- (void)_didTapDoneButton:(id)button
{
  buttonCopy = button;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:4 onTarget:-[RouteStepsViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  dataCoordinator = [(RouteStepsViewController *)self dataCoordinator];
  [dataCoordinator updateCurrentRouteDisplayedMapRect:{MKMapRectNull.origin.x, MKMapRectNull.origin.y, MKMapRectNull.size.width, MKMapRectNull.size.height}];

  containeeDelegate = [(ContaineeViewController *)self containeeDelegate];
  [containeeDelegate containeeViewControllerGoToPreviousState:self withSender:buttonCopy];
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRouteCollection:(id)collection
{
  currentRoute = [collection currentRoute];
  v8 = currentRoute;
  if (currentRoute)
  {
    v6 = -[RouteStepsViewController directionsListViewControllerForDirectionsType:](self, "directionsListViewControllerForDirectionsType:", [currentRoute transportType]);
    [v6 setRoute:v8];
    tableView = [v6 tableView];
    [tableView reloadData];

    [(RouteStepsViewController *)self _setupChildViewControllerIfNeeded:v6];
    -[RouteStepsViewController _updateVisibleViewsForDirectionsType:](self, "_updateVisibleViewsForDirectionsType:", [v8 transportType]);
    -[RouteStepsViewController _updateHairlineVisibility:](self, "_updateHairlineVisibility:", [v6 showsHairline]);
  }

  else
  {
    [(RouteStepsViewController *)self _clearControllerIfNeeded:self->_driveOrWalkDirectionsListViewController];
    [(RouteStepsViewController *)self _clearControllerIfNeeded:self->_transitDirectionsListViewController];
  }
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateOriginName:(id)name destinationName:(id)destinationName
{
  v8 = [NSBundle mainBundle:coordinator];
  v6 = [v8 localizedStringForKey:@"[Route Steps] Details" value:@"localized string not found" table:0];
  modalHeaderView = [(RouteStepsViewController *)self modalHeaderView];
  [modalHeaderView setTitle:v6];
}

- (void)_updateHairlineVisibility:(BOOL)visibility
{
  if (visibility)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  modalHeaderView = [(RouteStepsViewController *)self modalHeaderView];
  [modalHeaderView setHairLineAlpha:v3];
}

- (void)_observeHeaderFlagForController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_observingHeaderOfController);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_observingHeaderOfController);
    [v5 removeObserver:self forKeyPath:@"showsHairline" context:&unk_10195E3A8];

    v6 = objc_storeWeak(&self->_observingHeaderOfController, obj);
    [obj addObserver:self forKeyPath:@"showsHairline" options:1 context:&unk_10195E3A8];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &unk_10195E3A8)
  {
    v7 = [change objectForKeyedSubscript:{NSKeyValueChangeNewKey, object}];
    bOOLValue = [v7 BOOLValue];

    [(RouteStepsViewController *)self _updateHairlineVisibility:bOOLValue];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = RouteStepsViewController;
    [(RouteStepsViewController *)&v9 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)didBecomeCurrent
{
  v5.receiver = self;
  v5.super_class = RouteStepsViewController;
  [(ContaineeViewController *)&v5 didBecomeCurrent];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];
  [(RouteStepListViewController *)self->_driveOrWalkDirectionsListViewController setAllowsSelection:(containerStyle > 7) | (0x5Cu >> containerStyle) & 1];
}

- (void)willBecomeCurrent:(BOOL)current
{
  v5.receiver = self;
  v5.super_class = RouteStepsViewController;
  [(ContaineeViewController *)&v5 willBecomeCurrent:current];
  transitDirectionsListViewController = self->_transitDirectionsListViewController;
  if (transitDirectionsListViewController)
  {
    [(TransitDirectionsListViewController *)transitDirectionsListViewController _willBecomeCurrent];
  }
}

- (void)willChangeContainerStyle:(unint64_t)style
{
  v11.receiver = self;
  v11.super_class = RouteStepsViewController;
  [(ContaineeViewController *)&v11 willChangeContainerStyle:?];
  v5 = (style > 7) | (0x5Cu >> style);
  transitDirectionsListViewController = self->_transitDirectionsListViewController;
  if (transitDirectionsListViewController)
  {
    dataSource = [(TransitDirectionsListViewController *)transitDirectionsListViewController dataSource];
    [dataSource setAllowStepSelection:v5 & 1];

    if ((v5 & 1) == 0)
    {
      dataSource2 = [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController dataSource];
      listView = [dataSource2 listView];
      [listView clearActiveTransitListItem];

      dataCoordinator = [(RouteStepsViewController *)self dataCoordinator];
      [dataCoordinator updateCurrentRouteDisplayedMapRect:{MKMapRectNull.origin.x, MKMapRectNull.origin.y, MKMapRectNull.size.width, MKMapRectNull.size.height}];
    }
  }

  [(RouteStepListViewController *)self->_driveOrWalkDirectionsListViewController setAllowsSelection:v5 & 1];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = RouteStepsViewController;
  [(ContaineeViewController *)&v15 viewDidLoad];
  view = [(RouteStepsViewController *)self view];
  [view setAccessibilityIdentifier:@"RouteStepsView"];

  v4 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(RouteStepsViewController *)self setModalHeaderView:v4];

  modalHeaderView = [(RouteStepsViewController *)self modalHeaderView];
  [modalHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];

  modalHeaderView2 = [(RouteStepsViewController *)self modalHeaderView];
  [modalHeaderView2 setDelegate:self];

  modalHeaderView3 = [(RouteStepsViewController *)self modalHeaderView];
  [modalHeaderView3 setHeaderSize:2];

  modalHeaderView4 = [(RouteStepsViewController *)self modalHeaderView];
  [modalHeaderView4 setHairLineAlpha:0.0];

  v9 = +[UIColor clearColor];
  modalHeaderView5 = [(RouteStepsViewController *)self modalHeaderView];
  [modalHeaderView5 setBackgroundColor:v9];

  headerView = [(ContaineeViewController *)self headerView];
  modalHeaderView6 = [(RouteStepsViewController *)self modalHeaderView];
  [headerView addSubview:modalHeaderView6];

  dataCoordinator = [(RouteStepsViewController *)self dataCoordinator];
  [dataCoordinator addObserver:self];

  dataCoordinator2 = [(RouteStepsViewController *)self dataCoordinator];
  [dataCoordinator2 setupDataForObserver:self];

  [(RouteStepsViewController *)self _setupConstraints];
}

- (void)_customInit
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setPresentedModally:1];

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController2 setTakesAvailableHeight:1];
}

- (RouteStepsViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = RouteStepsViewController;
  v3 = [(RouteStepsViewController *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(RouteStepsViewController *)v3 _customInit];
    v5 = v4;
  }

  return v4;
}

- (RouteStepsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = RouteStepsViewController;
  v4 = [(RouteStepsViewController *)&v8 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(RouteStepsViewController *)v4 _customInit];
    v6 = v5;
  }

  return v5;
}

- (void)dealloc
{
  [(RouteStepsViewController *)self _observeHeaderFlagForController:0];
  v3.receiver = self;
  v3.super_class = RouteStepsViewController;
  [(RouteStepsViewController *)&v3 dealloc];
}

@end