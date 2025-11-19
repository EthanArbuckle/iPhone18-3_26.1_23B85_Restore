@interface RouteStepsViewController
- (RoutePlanningDataCoordination)dataCoordinator;
- (RouteStepsViewController)initWithCoder:(id)a3;
- (RouteStepsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (RouteStepsViewControllerDelegate)delegate;
- (UIScrollView)scrollViewForDirectionsDetailsOfCurrentRoute;
- (id)_driveOrWalkDirectionsListViewController;
- (id)_transitDirectionsListViewController;
- (id)directionsListViewControllerForDirectionsType:(int)a3;
- (int)currentUITargetForAnalytics;
- (void)_clearControllerIfNeeded:(id)a3;
- (void)_customInit;
- (void)_didTapDoneButton:(id)a3;
- (void)_observeHeaderFlagForController:(id)a3;
- (void)_setupChildViewControllerIfNeeded:(id)a3;
- (void)_setupConstraints;
- (void)_shareRoute:(id)a3 sourceView:(id)a4;
- (void)_updateHairlineVisibility:(BOOL)a3;
- (void)_updateVisibleViewsForDirectionsType:(int)a3;
- (void)dealloc;
- (void)didBecomeCurrent;
- (void)directionsStepsList:(id)a3 didTapRowForRouteStep:(id)a4;
- (void)directionsStepsListDidTapRAPButton:(id)a3;
- (void)directionsStepsListDidTapShareButton:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateOriginName:(id)a4 destinationName:(id)a5;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateRouteCollection:(id)a4;
- (void)transitDirectionsStepsListDataSource:(id)a3 didSelectTrip:(id)a4;
- (void)transitDirectionsStepsListDataSource:(id)a3 didTapClusteredVehiclesCell:(id)a4;
- (void)transitDirectionsStepsListDataSource:(id)a3 didTapGetTicketsForSegments:(id)a4;
- (void)transitDirectionsStepsListDataSource:(id)a3 didTapIncidentsCell:(id)a4 withAdvisory:(id)a5;
- (void)transitDirectionsStepsListDataSource:(id)a3 didTapRowForItem:(id)a4;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)a3;
- (void)willChangeContainerStyle:(unint64_t)a3;
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
  v2 = [(RouteStepsViewController *)self dataCoordinator];
  v3 = [v2 transportType];
  if ((v3 - 1) > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_101215D8C[(v3 - 1)];
  }

  return v4;
}

- (void)_setupConstraints
{
  v7 = [(RouteStepsViewController *)self modalHeaderView];
  v3 = [(ContaineeViewController *)self headerView];
  LODWORD(v4) = 1148846080;
  v5 = [v7 _maps_constraintsEqualToEdgesOfView:v3 priority:v4];
  v6 = [v5 allConstraints];
  [NSLayoutConstraint activateConstraints:v6];
}

- (void)_setupChildViewControllerIfNeeded:(id)a3
{
  v4 = a3;
  if ([(RouteStepsViewController *)self isViewLoaded])
  {
    v5 = [v4 parentViewController];

    if (v5 != self)
    {
      v6 = [v4 view];
      v7 = [(ContaineeViewController *)self contentView];
      [(RouteStepsViewController *)self addChildViewController:v4];
      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v7 bounds];
      [v6 setFrame:?];
      [v7 addSubview:v6];
      v20 = [v6 leadingAnchor];
      v19 = [v7 leadingAnchor];
      v18 = [v20 constraintEqualToAnchor:v19];
      v21[0] = v18;
      v17 = [v6 trailingAnchor];
      v16 = [v7 trailingAnchor];
      v15 = [v17 constraintEqualToAnchor:v16];
      v21[1] = v15;
      v14 = [v6 topAnchor];
      v8 = [v7 topAnchor];
      v9 = [v14 constraintEqualToAnchor:v8];
      v21[2] = v9;
      v10 = [v6 bottomAnchor];
      v11 = [v7 bottomAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      v21[3] = v12;
      v13 = [NSArray arrayWithObjects:v21 count:4];

      [NSLayoutConstraint activateConstraints:v13];
      [v4 didMoveToParentViewController:self];
    }
  }
}

- (void)_clearControllerIfNeeded:(id)a3
{
  v6 = a3;
  v3 = [v6 route];

  if (v3)
  {
    [v6 setRoute:0];
    v4 = [v6 collectionView];
    [v4 reloadData];

    v5 = [v6 tableView];
    [v5 reloadData];
  }
}

- (void)_updateVisibleViewsForDirectionsType:(int)a3
{
  if (a3 == 1)
  {
    v4 = &OBJC_IVAR___RouteStepsViewController__transitDirectionsListViewController;
  }

  else
  {
    v4 = &OBJC_IVAR___RouteStepsViewController__driveOrWalkDirectionsListViewController;
  }

  if (a3 == 1)
  {
    v5 = &OBJC_IVAR___RouteStepsViewController__driveOrWalkDirectionsListViewController;
  }

  else
  {
    v5 = &OBJC_IVAR___RouteStepsViewController__transitDirectionsListViewController;
  }

  v6 = *v4;
  v7 = [*(&self->super.super.super.super.super.isa + v6) view];
  [v7 setHidden:0];

  [(RouteStepsViewController *)self _observeHeaderFlagForController:*(&self->super.super.super.super.super.isa + v6)];
  v8 = *v5;
  v9 = [*(&self->super.super.super.super.super.isa + v8) view];
  [v9 setHidden:1];

  [(RouteStepsViewController *)self _clearControllerIfNeeded:*(&self->super.super.super.super.super.isa + v8)];
  v10 = [(RouteStepsViewController *)self scrollViewForDirectionsDetailsOfCurrentRoute];
  [(ContaineeViewController *)self setContentScrollView:v10 forEdge:1];
}

- (id)_transitDirectionsListViewController
{
  transitDirectionsListViewController = self->_transitDirectionsListViewController;
  if (!transitDirectionsListViewController)
  {
    v4 = objc_alloc_init(TransitDirectionsListViewController);
    v5 = self->_transitDirectionsListViewController;
    self->_transitDirectionsListViewController = v4;

    v6 = [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController dataSource];
    [v6 setDelegate:self];

    [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController setScrollViewDelegate:self];
    v7 = [(ContaineeViewController *)self cardPresentationController];
    v8 = [v7 containerStyle];
    v9 = (v8 > 7) | (0x5Cu >> v8);
    v10 = [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController dataSource];
    [v10 setAllowStepSelection:v9 & 1];

    v11 = [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController dataSource];
    [v11 setOptions:8];

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

    v8 = [(ContaineeViewController *)self cardPresentationController];
    v9 = [v8 containerStyle];
    [(RouteStepListViewController *)self->_driveOrWalkDirectionsListViewController setAllowsSelection:(v9 > 7) | (0x5Cu >> v9) & 1];

    [(RouteStepListViewController *)self->_driveOrWalkDirectionsListViewController setDelegate:self];
    driveOrWalkDirectionsListViewController = self->_driveOrWalkDirectionsListViewController;
  }

  return driveOrWalkDirectionsListViewController;
}

- (UIScrollView)scrollViewForDirectionsDetailsOfCurrentRoute
{
  v3 = [(RouteStepsViewController *)self dataCoordinator];
  v4 = [v3 routeCollection];
  v5 = [v4 currentRoute];

  if (v5)
  {
    v6 = -[RouteStepsViewController directionsListViewControllerForDirectionsType:](self, "directionsListViewControllerForDirectionsType:", [v5 transportType]);
    v7 = [v6 scrollView];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)directionsListViewControllerForDirectionsType:(int)a3
{
  if (a3 == 1)
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

- (void)transitDirectionsStepsListDataSource:(id)a3 didTapGetTicketsForSegments:(id)a4
{
  v5 = self->_transitDirectionsListViewController;
  v19 = [UIAlertController _maps_alertControllerForTicketedSegments:a4];
  v6 = [(TransitDirectionsListViewController *)v5 view];
  v7 = [v19 popoverPresentationController];
  [v7 setSourceView:v6];

  v8 = [(TransitDirectionsListViewController *)v5 view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v19 popoverPresentationController];
  [v17 setSourceRect:{v10, v12, v14, v16}];

  v18 = [v19 popoverPresentationController];
  [v18 setPermittedArrowDirections:12];

  [(TransitDirectionsListViewController *)v5 presentViewController:v19 animated:1 completion:0];
}

- (void)transitDirectionsStepsListDataSource:(id)a3 didTapIncidentsCell:(id)a4 withAdvisory:(id)a5
{
  v6 = a5;
  v7 = [(RouteStepsViewController *)self delegate];
  [v7 routeStepsViewController:self wantsToDisplayAdvisory:v6];
}

- (void)transitDirectionsStepsListDataSource:(id)a3 didTapClusteredVehiclesCell:(id)a4
{
  v25 = a4;
  v5 = [v25 clusteredVehicleItem];
  v6 = [v5 clusteredSegment];

  if (v6)
  {
    v7 = [UIAlertController clusteredVehiclesSelectionAlertControllerForClusteredSegment:v6 completion:0];
    v8 = [(RouteStepsViewController *)self view];
    v9 = [v7 popoverPresentationController];
    [v9 setSourceView:v8];

    v10 = [(RouteStepsViewController *)self view];
    [v25 bounds];
    [v10 convertRect:v25 fromView:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v7 popoverPresentationController];
    [v19 setSourceRect:{v12, v14, v16, v18}];

    v20 = [v7 popoverPresentationController];
    [v20 setPermittedArrowDirections:12];

    [(RouteStepsViewController *)self presentViewController:v7 animated:1 completion:0];
    v21 = +[MKMapService sharedService];
    v22 = [v25 clusteredVehicleItem];
    v23 = [v22 clusteredSegment];
    v24 = sub_100B5D5D8(v23);
    [v21 captureUserAction:3037 onTarget:606 eventValue:v24];
  }
}

- (void)transitDirectionsStepsListDataSource:(id)a3 didTapRowForItem:(id)a4
{
  v14 = a4;
  v6 = [a3 listView];
  v7 = v6;
  if (v6)
  {
    if ([v6 isActiveTransitDirectionsListItem:v14])
    {
      [v7 clearActiveTransitListItem];
      v8 = [(RouteStepsViewController *)self dataCoordinator];
      v9 = v8;
      x = MKMapRectNull.origin.x;
      y = MKMapRectNull.origin.y;
      width = MKMapRectNull.size.width;
      height = MKMapRectNull.size.height;
      goto LABEL_6;
    }

    [v7 setActiveTransitDirectionsListItem:v14];
  }

  v9 = [(RouteStepsViewController *)self dataCoordinator];
  [v14 displayedMapRect];
  v8 = v9;
LABEL_6:
  [v8 updateCurrentRouteDisplayedMapRect:{x, y, width, height}];
}

- (void)transitDirectionsStepsListDataSource:(id)a3 didSelectTrip:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[MKMapService sharedService];
  v9 = [(RouteStepsViewController *)self currentUITargetForAnalytics];
  v10 = [v7 displayedItemIndexForAnalytics];

  [v8 captureUserAction:9040 onTarget:v9 eventValue:0 transitStep:v10];
  v12 = [(RouteStepsViewController *)self delegate];
  v11 = [v6 matchingRouteStep];

  [v12 routeStepsViewController:self wantsToDisplayScheduleForTransitStep:v11];
}

- (void)directionsStepsList:(id)a3 didTapRowForRouteStep:(id)a4
{
  v5 = sub_100AF1870(a4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(RouteStepsViewController *)self dataCoordinator];
  [v12 updateCurrentRouteDisplayedMapRect:{v5, v7, v9, v11}];
}

- (void)_shareRoute:(id)a3 sourceView:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v9 = [(RouteStepsViewController *)self delegate];
    v8 = [ShareItem shareItemWithRoute:v7 includeRoutingApps:1];

    [v9 routeStepsViewController:self wantsToShareItem:v8 fromView:v6];
  }
}

- (void)directionsStepsListDidTapRAPButton:(id)a3
{
  v4 = [(RouteStepsViewController *)self _maps_platformController];
  v5 = [v4 currentSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
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

  v8 = [v7 currentTransportType];
  if (v8 > 5)
  {
    v9 = 608;
  }

  else
  {
    v9 = dword_1012153B0[v8];
  }

  v10 = +[MKMapService sharedService];
  [v10 captureUserAction:5013 onTarget:v9 eventValue:0];

  v11 = [(RouteStepsViewController *)self _maps_mapsSceneDelegate];
  v12 = [v11 rapPresenter];
  [v12 presentReportAProblemForRouteFromEntryPoint:v9];
}

- (void)directionsStepsListDidTapShareButton:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = &OBJC_IVAR___RouteStepsViewController__driveOrWalkDirectionsListViewController;
  if (isKindOfClass)
  {
    v6 = &OBJC_IVAR___RouteStepsViewController__transitDirectionsListViewController;
  }

  v7 = *(&self->super.super.super.super.super.isa + *v6);
  v8 = [v7 route];

  if (!v8)
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

  v9 = [v7 route];
  v10 = [v7 view];
  [(RouteStepsViewController *)self _shareRoute:v9 sourceView:v10];

  v11 = +[MKMapService sharedService];
  v12 = [v7 route];
  v13 = [v12 transportType] - 1;
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

- (void)_didTapDoneButton:(id)a3
{
  v4 = a3;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:4 onTarget:-[RouteStepsViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  v6 = [(RouteStepsViewController *)self dataCoordinator];
  [v6 updateCurrentRouteDisplayedMapRect:{MKMapRectNull.origin.x, MKMapRectNull.origin.y, MKMapRectNull.size.width, MKMapRectNull.size.height}];

  v7 = [(ContaineeViewController *)self containeeDelegate];
  [v7 containeeViewControllerGoToPreviousState:self withSender:v4];
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateRouteCollection:(id)a4
{
  v5 = [a4 currentRoute];
  v8 = v5;
  if (v5)
  {
    v6 = -[RouteStepsViewController directionsListViewControllerForDirectionsType:](self, "directionsListViewControllerForDirectionsType:", [v5 transportType]);
    [v6 setRoute:v8];
    v7 = [v6 tableView];
    [v7 reloadData];

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

- (void)routePlanningDataCoordinator:(id)a3 didUpdateOriginName:(id)a4 destinationName:(id)a5
{
  v8 = [NSBundle mainBundle:a3];
  v6 = [v8 localizedStringForKey:@"[Route Steps] Details" value:@"localized string not found" table:0];
  v7 = [(RouteStepsViewController *)self modalHeaderView];
  [v7 setTitle:v6];
}

- (void)_updateHairlineVisibility:(BOOL)a3
{
  if (a3)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [(RouteStepsViewController *)self modalHeaderView];
  [v4 setHairLineAlpha:v3];
}

- (void)_observeHeaderFlagForController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_observingHeaderOfController);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_observingHeaderOfController);
    [v5 removeObserver:self forKeyPath:@"showsHairline" context:&unk_10195E3A8];

    v6 = objc_storeWeak(&self->_observingHeaderOfController, obj);
    [obj addObserver:self forKeyPath:@"showsHairline" options:1 context:&unk_10195E3A8];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &unk_10195E3A8)
  {
    v7 = [a5 objectForKeyedSubscript:{NSKeyValueChangeNewKey, a4}];
    v8 = [v7 BOOLValue];

    [(RouteStepsViewController *)self _updateHairlineVisibility:v8];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = RouteStepsViewController;
    [(RouteStepsViewController *)&v9 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)didBecomeCurrent
{
  v5.receiver = self;
  v5.super_class = RouteStepsViewController;
  [(ContaineeViewController *)&v5 didBecomeCurrent];
  v3 = [(ContaineeViewController *)self cardPresentationController];
  v4 = [v3 containerStyle];
  [(RouteStepListViewController *)self->_driveOrWalkDirectionsListViewController setAllowsSelection:(v4 > 7) | (0x5Cu >> v4) & 1];
}

- (void)willBecomeCurrent:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RouteStepsViewController;
  [(ContaineeViewController *)&v5 willBecomeCurrent:a3];
  transitDirectionsListViewController = self->_transitDirectionsListViewController;
  if (transitDirectionsListViewController)
  {
    [(TransitDirectionsListViewController *)transitDirectionsListViewController _willBecomeCurrent];
  }
}

- (void)willChangeContainerStyle:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = RouteStepsViewController;
  [(ContaineeViewController *)&v11 willChangeContainerStyle:?];
  v5 = (a3 > 7) | (0x5Cu >> a3);
  transitDirectionsListViewController = self->_transitDirectionsListViewController;
  if (transitDirectionsListViewController)
  {
    v7 = [(TransitDirectionsListViewController *)transitDirectionsListViewController dataSource];
    [v7 setAllowStepSelection:v5 & 1];

    if ((v5 & 1) == 0)
    {
      v8 = [(TransitDirectionsListViewController *)self->_transitDirectionsListViewController dataSource];
      v9 = [v8 listView];
      [v9 clearActiveTransitListItem];

      v10 = [(RouteStepsViewController *)self dataCoordinator];
      [v10 updateCurrentRouteDisplayedMapRect:{MKMapRectNull.origin.x, MKMapRectNull.origin.y, MKMapRectNull.size.width, MKMapRectNull.size.height}];
    }
  }

  [(RouteStepListViewController *)self->_driveOrWalkDirectionsListViewController setAllowsSelection:v5 & 1];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = RouteStepsViewController;
  [(ContaineeViewController *)&v15 viewDidLoad];
  v3 = [(RouteStepsViewController *)self view];
  [v3 setAccessibilityIdentifier:@"RouteStepsView"];

  v4 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(RouteStepsViewController *)self setModalHeaderView:v4];

  v5 = [(RouteStepsViewController *)self modalHeaderView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(RouteStepsViewController *)self modalHeaderView];
  [v6 setDelegate:self];

  v7 = [(RouteStepsViewController *)self modalHeaderView];
  [v7 setHeaderSize:2];

  v8 = [(RouteStepsViewController *)self modalHeaderView];
  [v8 setHairLineAlpha:0.0];

  v9 = +[UIColor clearColor];
  v10 = [(RouteStepsViewController *)self modalHeaderView];
  [v10 setBackgroundColor:v9];

  v11 = [(ContaineeViewController *)self headerView];
  v12 = [(RouteStepsViewController *)self modalHeaderView];
  [v11 addSubview:v12];

  v13 = [(RouteStepsViewController *)self dataCoordinator];
  [v13 addObserver:self];

  v14 = [(RouteStepsViewController *)self dataCoordinator];
  [v14 setupDataForObserver:self];

  [(RouteStepsViewController *)self _setupConstraints];
}

- (void)_customInit
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 setPresentedModally:1];

  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 setTakesAvailableHeight:1];
}

- (RouteStepsViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = RouteStepsViewController;
  v3 = [(RouteStepsViewController *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(RouteStepsViewController *)v3 _customInit];
    v5 = v4;
  }

  return v4;
}

- (RouteStepsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = RouteStepsViewController;
  v4 = [(RouteStepsViewController *)&v8 initWithNibName:a3 bundle:a4];
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