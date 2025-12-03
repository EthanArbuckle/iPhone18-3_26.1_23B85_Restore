@interface MacRoutePlanningOverviewViewController
- (BOOL)isRouteSearchSuggestionsTableViewHidden;
- (MacRoutePlanningOverviewViewController)initWithDataCoordinator:(id)coordinator;
- (double)_routePlanningAdvisoryFooterViewHeight;
- (double)heightForLayout:(unint64_t)layout;
- (id)_initialConstraints;
- (id)keyCommands;
- (void)_clearAlternateRouteManeuverArrows;
- (void)_forceChangeOrigin;
- (void)_prepareRouteSearchControllers;
- (void)_presentElevationGraphForRoute:(id)route fromView:(id)view;
- (void)_refreshDesiredTransportType;
- (void)_refreshOptionsVisibility;
- (void)_refreshRouteSearchFields;
- (void)_refreshSelectedVehicleDisplay;
- (void)_refreshTimingDisplay;
- (void)_setupSubviews;
- (void)_showManeuverArrowsForStep:(id)step;
- (void)_updateCurrentRouteDisplayedMapRect:(id)rect forRoute:(id)route;
- (void)arrowLeftPressed:(id)pressed;
- (void)arrowRightPressed:(id)pressed;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)directionsStepsList:(id)list didTapElevationInfoButton:(id)button;
- (void)directionsStepsList:(id)list didTapRowForRouteStep:(id)step;
- (void)directionsStepsListDidTapRAPButton:(id)button;
- (void)macMenuPresentationControllerDidDismiss:(id)dismiss;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)pressedAssumeFullCharge;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateResolvedWaypointSet:(id)set;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRouteCollection:(id)collection;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateTransportType:(int64_t)type;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setRouteSearchSuggestionsTableViewHidden:(BOOL)hidden;
- (void)transitDirectionsStepsListDataSource:(id)source didSelectTrip:(id)trip;
- (void)transitDirectionsStepsListDataSource:(id)source didTapClusteredVehiclesCell:(id)cell;
- (void)transitDirectionsStepsListDataSource:(id)source didTapGetTicketsWithURL:(id)l;
- (void)transitDirectionsStepsListDataSource:(id)source didTapIncidentsCell:(id)cell withAdvisory:(id)advisory;
- (void)transitDirectionsStepsListDataSource:(id)source didTapRowForItem:(id)item;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willChangeLayout:(unint64_t)layout;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation MacRoutePlanningOverviewViewController

- (void)macMenuPresentationControllerDidDismiss:(id)dismiss
{
  routeSearchSuggestionsTableViewController = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
  [routeSearchSuggestionsTableViewController reset];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  v8 = [MKMapService sharedService:dragging];
  if (y <= 0.0)
  {
    v7 = 7;
  }

  else
  {
    v7 = 8;
  }

  [v8 captureUserAction:v7 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  elevationPopoverController = self->_elevationPopoverController;
  dismissCopy = dismiss;
  popoverPresentationController = [(RoutePlanningElevationPopoverViewController *)elevationPopoverController popoverPresentationController];

  if (popoverPresentationController == dismissCopy)
  {
    v7 = self->_elevationPopoverController;
    self->_elevationPopoverController = 0;
  }
}

- (void)_presentElevationGraphForRoute:(id)route fromView:(id)view
{
  routeCopy = route;
  viewCopy = view;
  elevationPopoverController = self->_elevationPopoverController;
  if (routeCopy)
  {
    if (!elevationPopoverController)
    {
      v8 = objc_alloc_init(RoutePlanningElevationPopoverViewController);
      v9 = self->_elevationPopoverController;
      self->_elevationPopoverController = v8;

      [(RoutePlanningElevationPopoverViewController *)self->_elevationPopoverController setModalPresentationStyle:7];
      popoverPresentationController = [(RoutePlanningElevationPopoverViewController *)self->_elevationPopoverController popoverPresentationController];
      [popoverPresentationController setPermittedArrowDirections:12];

      popoverPresentationController2 = [(RoutePlanningElevationPopoverViewController *)self->_elevationPopoverController popoverPresentationController];
      [popoverPresentationController2 setDelegate:self];

      [(RoutePlanningElevationPopoverViewController *)self->_elevationPopoverController setDefinesPresentationContext:1];
      elevationPopoverController = self->_elevationPopoverController;
    }
  }

  else if (elevationPopoverController)
  {
    [(RoutePlanningElevationPopoverViewController *)elevationPopoverController dismissViewControllerAnimated:1 completion:0];
    v12 = self->_elevationPopoverController;
    self->_elevationPopoverController = 0;

    goto LABEL_8;
  }

  popoverPresentationController3 = [(RoutePlanningElevationPopoverViewController *)elevationPopoverController popoverPresentationController];
  [popoverPresentationController3 setSourceView:viewCopy];

  [(RoutePlanningElevationPopoverViewController *)self->_elevationPopoverController setRoute:routeCopy];
  presentingViewController = [(RoutePlanningElevationPopoverViewController *)self->_elevationPopoverController presentingViewController];

  if (!presentingViewController)
  {
    [(MacRoutePlanningOverviewViewController *)self presentViewController:self->_elevationPopoverController animated:1 completion:0];
  }

LABEL_8:
}

- (void)setRouteSearchSuggestionsTableViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  routeSearchSuggestionsContaineeViewController = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsContaineeViewController];

  if (!routeSearchSuggestionsContaineeViewController)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [NSString stringWithFormat:@"Route search suggestions containee should have been setup in viewDidLoad"];
      v21 = 136316162;
      v22 = "[MacRoutePlanningOverviewViewController setRouteSearchSuggestionsTableViewHidden:]";
      v23 = 2080;
      v24 = "RoutePlanningOverviewViewController.m";
      v25 = 1024;
      v26 = 3882;
      v27 = 2080;
      v28 = "self.routeSearchSuggestionsContaineeViewController != nil";
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v21, 0x30u);
    }

    if (sub_100E03634())
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = +[NSThread callStackSymbols];
        v21 = 138412290;
        v22 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", &v21, 0xCu);
      }
    }
  }

  if (hiddenCopy)
  {
    if ([(MacRoutePlanningOverviewViewController *)self isRouteSearchSuggestionsTableViewHidden])
    {
      return;
    }

    v6 = 1;
  }

  else
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v6 = [v7 BOOLForKey:@"__internal_DisableMacRoutingAutocomplete"];

    if (v6 == [(MacRoutePlanningOverviewViewController *)self isRouteSearchSuggestionsTableViewHidden])
    {
      return;
    }
  }

  view = [(MacRoutePlanningOverviewViewController *)self view];
  window = [view window];

  if (window)
  {
    searchFieldsViewController = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
    focusGroupIdentifierForCurrentlyEditingField = [searchFieldsViewController focusGroupIdentifierForCurrentlyEditingField];
    routeSearchSuggestionsTableViewController = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
    tableView = [routeSearchSuggestionsTableViewController tableView];
    [tableView setFocusGroupIdentifier:focusGroupIdentifierForCurrentlyEditingField];

    routePlanningDelegate = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
    routeSearchSuggestionsContaineeViewController2 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsContaineeViewController];
    if (v6)
    {
      [routePlanningDelegate macDismissRouteSearchSuggestionsController:routeSearchSuggestionsContaineeViewController2];
    }

    else
    {
      [routePlanningDelegate macPresentRouteSearchSuggestionsController:routeSearchSuggestionsContaineeViewController2];
    }

    goto LABEL_15;
  }

  v16 = sub_10006D178();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v21 = 136315650;
    v22 = "[MacRoutePlanningOverviewViewController setRouteSearchSuggestionsTableViewHidden:]";
    v23 = 2080;
    v24 = "RoutePlanningOverviewViewController.m";
    v25 = 1024;
    v26 = 3893;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v21, 0x1Cu);
  }

  if (sub_100E03634())
  {
    routePlanningDelegate = sub_10006D178();
    if (!os_log_type_enabled(routePlanningDelegate, OS_LOG_TYPE_ERROR))
    {
LABEL_16:

      return;
    }

    routeSearchSuggestionsContaineeViewController2 = +[NSThread callStackSymbols];
    v21 = 138412290;
    v22 = routeSearchSuggestionsContaineeViewController2;
    _os_log_impl(&_mh_execute_header, routePlanningDelegate, OS_LOG_TYPE_ERROR, "%@", &v21, 0xCu);
LABEL_15:

    goto LABEL_16;
  }
}

- (BOOL)isRouteSearchSuggestionsTableViewHidden
{
  routeSearchSuggestionsTableViewController = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
  if ([routeSearchSuggestionsTableViewController isViewLoaded])
  {
    routeSearchSuggestionsTableViewController2 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
    view = [routeSearchSuggestionsTableViewController2 view];
    window = [view window];
    v7 = window == 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_prepareRouteSearchControllers
{
  searchFieldsViewController = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];

  if (!searchFieldsViewController)
  {
    v40 = sub_10006D178();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [NSString stringWithFormat:@"Route search fields should have been setup in viewDidLoad"];
      *location = 136316162;
      *&location[4] = "[MacRoutePlanningOverviewViewController _prepareRouteSearchControllers]";
      v50 = 2080;
      v51 = "RoutePlanningOverviewViewController.m";
      v52 = 1024;
      v53 = 3835;
      v54 = 2080;
      v55 = "self.searchFieldsViewController != nil";
      v56 = 2112;
      v57 = v41;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", location, 0x30u);
    }

    if (sub_100E03634())
    {
      v42 = sub_10006D178();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = +[NSThread callStackSymbols];
        *location = 138412290;
        *&location[4] = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%@", location, 0xCu);
      }
    }
  }

  v4 = objc_alloc_init(RouteWaypointSuggestionsTableViewController);
  [(MacRoutePlanningOverviewViewController *)self setRouteSearchSuggestionsTableViewController:v4];

  routeSearchSuggestionsTableViewController = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
  [routeSearchSuggestionsTableViewController setRestoresFocusAfterTransition:0];

  routeSearchSuggestionsTableViewController2 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
  tableView = [routeSearchSuggestionsTableViewController2 tableView];

  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[UIColor clearColor];
  [tableView setBackgroundColor:v8];

  [tableView setSeparatorStyle:0];
  [tableView setRemembersLastFocusedIndexPath:0];
  LODWORD(v9) = 1132068864;
  [tableView setContentCompressionResistancePriority:1 forAxis:v9];
  LODWORD(v10) = 1144750080;
  [tableView setContentHuggingPriority:1 forAxis:v10];
  v11 = [RouteSearchViewController alloc];
  searchFieldsViewController2 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  routeSearchSuggestionsTableViewController3 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
  delegate = [(ControlContaineeViewController *)self delegate];
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v16 = [(RouteSearchViewController *)v11 initWithWaypointEditor:searchFieldsViewController2 suggestionsTableView:routeSearchSuggestionsTableViewController3 delegate:delegate dataCoordinator:dataCoordinator];
  [(MacRoutePlanningOverviewViewController *)self setRouteSearchViewController:v16];

  objc_initWeak(location, self);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10082B794;
  v46[3] = &unk_1016619A8;
  objc_copyWeak(&v47, location);
  routeSearchSuggestionsTableViewController4 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
  [routeSearchSuggestionsTableViewController4 setTableViewDidReloadHandler:v46];

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10082B7E4;
  v44[3] = &unk_101661B98;
  objc_copyWeak(&v45, location);
  searchFieldsViewController3 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [searchFieldsViewController3 setIntrinsicContentSizeInvalidationHandler:v44];

  v19 = [MenuContaineeViewController alloc];
  routeSearchSuggestionsTableViewController5 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
  v21 = [(MenuContaineeViewController *)v19 initWithContentViewController:routeSearchSuggestionsTableViewController5];
  [(MacRoutePlanningOverviewViewController *)self setRouteSearchSuggestionsContaineeViewController:v21];

  routeSearchSuggestionsTableViewController6 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
  tableView2 = [routeSearchSuggestionsTableViewController6 tableView];
  routeSearchSuggestionsContaineeViewController = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsContaineeViewController];
  [routeSearchSuggestionsContaineeViewController setTrackedScrollview:tableView2];

  searchFieldsViewController4 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  layoutGuideForCurrentlyEditingField = [searchFieldsViewController4 layoutGuideForCurrentlyEditingField];
  routeSearchSuggestionsContaineeViewController2 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsContaineeViewController];
  macMenuPresentationController = [routeSearchSuggestionsContaineeViewController2 macMenuPresentationController];
  [macMenuPresentationController setAnchorLayoutGuide:layoutGuideForCurrentlyEditingField];

  searchFieldsViewController5 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  layoutGuideForCurrentlyEditingField2 = [searchFieldsViewController5 layoutGuideForCurrentlyEditingField];
  routeSearchSuggestionsContaineeViewController3 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsContaineeViewController];
  macMenuPresentationController2 = [routeSearchSuggestionsContaineeViewController3 macMenuPresentationController];
  [macMenuPresentationController2 setWidthLayoutGuide:layoutGuideForCurrentlyEditingField2];

  searchFieldsViewController6 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  view = [searchFieldsViewController6 view];
  v48 = view;
  v35 = [NSArray arrayWithObjects:&v48 count:1];
  routeSearchSuggestionsContaineeViewController4 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsContaineeViewController];
  macMenuPresentationController3 = [routeSearchSuggestionsContaineeViewController4 macMenuPresentationController];
  [macMenuPresentationController3 setPassThroughViews:v35];

  routeSearchSuggestionsContaineeViewController5 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsContaineeViewController];
  macMenuPresentationController4 = [routeSearchSuggestionsContaineeViewController5 macMenuPresentationController];
  [macMenuPresentationController4 addObserver:self];

  objc_destroyWeak(&v45);
  objc_destroyWeak(&v47);
  objc_destroyWeak(location);
}

- (void)_refreshSelectedVehicleDisplay
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  desiredTransportType = [dataCoordinator desiredTransportType];

  if (desiredTransportType == 1)
  {
    if ((MapsFeature_IsEnabled_EVRouting() & 1) != 0 || MapsFeature_IsEnabled_Alberta())
    {
      vehicles = [(VGVirtualGarage *)self->super._virtualGarage vehicles];
      v6 = [vehicles count] != 0;
    }

    else
    {
      v6 = 0;
    }

    v19 = IsEVRoutingSupported();
    IsEnabled_Alberta = MapsFeature_IsEnabled_Alberta();
    selectedVehicle = [(VGVirtualGarage *)self->super._virtualGarage selectedVehicle];
    optionsBar = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    [optionsBar setSummaryText:0];

    optionsBar2 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    [optionsBar2 setVehicle:selectedVehicle];

    isPureElectricVehicle = [selectedVehicle isPureElectricVehicle];
    chargingOptionsView = [(MacRoutePlanningOverviewViewController *)self chargingOptionsView];
    headerStackView2 = chargingOptionsView;
    if (isPureElectricVehicle && v6 && ((v19 | IsEnabled_Alberta) & 1) != 0)
    {
      if (!chargingOptionsView)
      {
        goto LABEL_19;
      }

      headerStackView = [(MacRoutePlanningOverviewViewController *)self headerStackView];
      arrangedSubviews = [headerStackView arrangedSubviews];
      chargingOptionsView2 = [(MacRoutePlanningOverviewViewController *)self chargingOptionsView];
      v29 = [arrangedSubviews containsObject:chargingOptionsView2];

      if (v29)
      {
        goto LABEL_19;
      }

      headerStackView2 = [(MacRoutePlanningOverviewViewController *)self headerStackView];
      chargingOptionsView3 = [(MacRoutePlanningOverviewViewController *)self chargingOptionsView];
      [headerStackView2 addArrangedSubview:chargingOptionsView3];
    }

    else
    {
      [chargingOptionsView removeFromSuperview];
    }

LABEL_19:
    optionsBar8 = sub_100798A3C();
    if (!os_log_type_enabled(optionsBar8, OS_LOG_TYPE_INFO))
    {
LABEL_22:

      goto LABEL_27;
    }

    optionsBar3 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    vehicle = [optionsBar3 vehicle];
    v36 = 138412290;
    v37 = vehicle;
    _os_log_impl(&_mh_execute_header, optionsBar8, OS_LOG_TYPE_INFO, "Updating summary to vehicle: %@", &v36, 0xCu);

LABEL_21:
    goto LABEL_22;
  }

  dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  if ([dataCoordinator2 desiredTransportType] != 5)
  {
    goto LABEL_24;
  }

  dataCoordinator3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  cyclePreferences = [dataCoordinator3 cyclePreferences];
  if (([cyclePreferences ebike] & 1) == 0)
  {

LABEL_24:
LABEL_25:
    optionsBar4 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    [optionsBar4 setVehicle:0];

    optionsBar5 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    [optionsBar5 setSummaryText:0];

    chargingOptionsView4 = [(MacRoutePlanningOverviewViewController *)self chargingOptionsView];
    [chargingOptionsView4 removeFromSuperview];

    selectedVehicle = sub_100798A3C();
    if (os_log_type_enabled(selectedVehicle, OS_LOG_TYPE_INFO))
    {
      LOWORD(v36) = 0;
      _os_log_impl(&_mh_execute_header, selectedVehicle, OS_LOG_TYPE_INFO, "Removing summary", &v36, 2u);
    }

    goto LABEL_27;
  }

  v10 = sub_10072B0F0();

  if (!v10)
  {
    goto LABEL_25;
  }

  optionsBar6 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
  [optionsBar6 setVehicle:0];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"e-bike [RoutePlanning value:Catalyst]" table:{@"localized string not found", 0}];
  optionsBar7 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
  [optionsBar7 setSummaryText:v13];

  chargingOptionsView5 = [(MacRoutePlanningOverviewViewController *)self chargingOptionsView];
  [chargingOptionsView5 removeFromSuperview];

  selectedVehicle = sub_100798A3C();
  if (os_log_type_enabled(selectedVehicle, OS_LOG_TYPE_INFO))
  {
    optionsBar8 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    optionsBar3 = [optionsBar8 summaryText];
    v36 = 138412290;
    v37 = optionsBar3;
    _os_log_impl(&_mh_execute_header, selectedVehicle, OS_LOG_TYPE_INFO, "Updating summary to: %@", &v36, 0xCu);
    goto LABEL_21;
  }

LABEL_27:

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController updateHeightForCurrentLayout];
}

- (void)_refreshTimingDisplay
{
  if (MapsFeature_IsEnabled_Maps357RoutePlanning())
  {
    [NSSet setWithObjects:&off_1016E7298, &off_1016E7268, 0];
  }

  else
  {
    [NSSet setWithObjects:&off_1016E7298, 0, v20];
  }
  v3 = ;
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [dataCoordinator transportType]);
  if ([v3 containsObject:v5])
  {

LABEL_10:
    dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    timing = [dataCoordinator2 timing];

    dataCoordinator3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    routeCollection = [dataCoordinator3 routeCollection];
    currentRoute = [routeCollection currentRoute];

    if (currentRoute)
    {
      shouldShowSchedule = [currentRoute shouldShowSchedule];
    }

    else
    {
      shouldShowSchedule = 1;
    }

    timingControlsView = [(MacRoutePlanningOverviewViewController *)self timingControlsView];
    [timingControlsView setHidden:0];

    goto LABEL_15;
  }

  if (MapsFeature_IsEnabled_Maps357RoutePlanning())
  {
    [NSSet setWithObjects:&off_1016E7298, &off_1016E7268, 0];
  }

  else
  {
    [NSSet setWithObjects:&off_1016E7298, 0, v21];
  }
  v6 = ;
  dataCoordinator4 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [dataCoordinator4 desiredTransportType]);
  v9 = [v6 containsObject:v8];

  if (v9)
  {
    goto LABEL_10;
  }

  currentRoute = [(MacRoutePlanningOverviewViewController *)self timingControlsView];
  shouldShowSchedule = 1;
  [currentRoute setHidden:1];
  timing = 0;
LABEL_15:

  timingControlsView2 = [(MacRoutePlanningOverviewViewController *)self timingControlsView];
  [timingControlsView2 setSelectedTiming:timing];

  timingControlsView3 = [(MacRoutePlanningOverviewViewController *)self timingControlsView];
  [timingControlsView3 setShowSchedulingButtons:shouldShowSchedule];

  v19 = sub_100798A3C();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = timing;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Updating timing to: %@", buf, 0xCu);
  }
}

- (void)_refreshOptionsVisibility
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  desiredTransportType = [dataCoordinator desiredTransportType];
  v5 = 0;
  if (desiredTransportType <= 1)
  {
    if (desiredTransportType)
    {
      if (desiredTransportType == 1)
      {
        IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
LABEL_12:
        v5 = IsEnabled_DrivingMultiWaypointRoutes;
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
    {
      v5 = 1;
      goto LABEL_13;
    }

LABEL_11:
    IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_Maps182();
    goto LABEL_12;
  }

  if (desiredTransportType == 2)
  {
    goto LABEL_11;
  }

  if (desiredTransportType == 5)
  {
    IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_Maps420();
    goto LABEL_12;
  }

LABEL_13:
  searchFieldsViewController = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [searchFieldsViewController setMprEnabled:v5];

  dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  desiredTransportType2 = [dataCoordinator2 desiredTransportType];

  if (desiredTransportType2 <= 5 && ((1 << desiredTransportType2) & 0x2E) != 0)
  {
    objc_initWeak(&location, self);
    optionsBar = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Options [Catalyst value:Route Planning]" table:{@"localized string not found", 0}];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10082C26C;
    v16[3] = &unk_101661B98;
    objc_copyWeak(&v17, &location);
    [optionsBar setButtonTitle:v12 actionHandler:v16];

    optionsBar2 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    [optionsBar2 setHidden:0];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    optionsBar3 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    [optionsBar3 setButtonTitle:0 actionHandler:0];

    optionsBar4 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    [optionsBar4 setHidden:1];
  }
}

- (void)_refreshRouteSearchFields
{
  searchFieldsViewController = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];

  if (!searchFieldsViewController)
  {
    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [NSString stringWithFormat:@"Route search fields should have been setup in viewDidLoad"];
      v25 = 136316162;
      v26 = "[MacRoutePlanningOverviewViewController _refreshRouteSearchFields]";
      v27 = 2080;
      v28 = "RoutePlanningOverviewViewController.m";
      v29 = 1024;
      v30 = 3735;
      v31 = 2080;
      v32 = "self.searchFieldsViewController != nil";
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v25, 0x30u);
    }

    if (sub_100E03634())
    {
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = +[NSThread callStackSymbols];
        v25 = 138412290;
        v26 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", &v25, 0xCu);
      }
    }
  }

  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  desiredTransportType = [dataCoordinator desiredTransportType];
  v6 = 0;
  if (desiredTransportType > 1)
  {
    if (desiredTransportType != 2)
    {
      if (desiredTransportType != 5)
      {
        goto LABEL_14;
      }

      IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps420();
      goto LABEL_13;
    }
  }

  else
  {
    if (desiredTransportType)
    {
      if (desiredTransportType != 1)
      {
        goto LABEL_14;
      }

      IsEnabled_Maps420 = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
      goto LABEL_13;
    }

    if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
    {
      v6 = 1;
      goto LABEL_14;
    }
  }

  IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps182();
LABEL_13:
  v6 = IsEnabled_Maps420;
LABEL_14:
  searchFieldsViewController2 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [searchFieldsViewController2 setMprEnabled:v6];

  dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  directionItemForCurrentSession = [dataCoordinator2 directionItemForCurrentSession];

  items = [directionItemForCurrentSession items];
  searchFieldsViewController3 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [searchFieldsViewController3 setItems:items];

  searchFieldsViewController4 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  items2 = [searchFieldsViewController4 items];
  v15 = [items2 count];
  items3 = [directionItemForCurrentSession items];
  v17 = [items3 count];

  items4 = [directionItemForCurrentSession items];
  searchFieldsViewController5 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [searchFieldsViewController5 setItems:items4];

  if (v15 != v17)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController updateHeightForCurrentLayout];
  }
}

- (void)_refreshDesiredTransportType
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  desiredTransportType = [dataCoordinator desiredTransportType];

  if (desiredTransportType)
  {
    transportTypePicker = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    [transportTypePicker setSelectedType:{objc_msgSend(dataCoordinator2, "desiredTransportType")}];

    [(MacRoutePlanningOverviewViewController *)self _refreshTimingDisplay];
  }
}

- (void)_forceChangeOrigin
{
  searchFieldsViewController = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [searchFieldsViewController selectFromField];
}

- (void)_clearAlternateRouteManeuverArrows
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  routeCollection = [dataCoordinator routeCollection];
  alternateRoutes = [routeCollection alternateRoutes];

  v6 = [alternateRoutes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(alternateRoutes);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        [v10 setManeuverDisplayEnabled:0];
        [v10 setCurrentDisplayStep:0];
      }

      v7 = [alternateRoutes countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  delegate = [(ControlContaineeViewController *)self delegate];
  routeAnnotationsController = [delegate routeAnnotationsController];
  mapView = [routeAnnotationsController mapView];
  _mapLayer = [mapView _mapLayer];
  [_mapLayer setNeedsLayout];
}

- (void)_showManeuverArrowsForStep:(id)step
{
  stepCopy = step;
  composedRoute = [stepCopy composedRoute];
  steps = [composedRoute steps];
  v7 = [steps indexOfObject:stepCopy];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315906;
      v19 = "[MacRoutePlanningOverviewViewController _showManeuverArrowsForStep:]";
      v20 = 2080;
      v21 = "RoutePlanningOverviewViewController.m";
      v22 = 1024;
      v23 = 3697;
      v24 = 2080;
      v25 = "stepIndex != NSNotFound";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v18, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        v18 = 138412290;
        v19 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
      }
    }

    v17 = sub_100798A3C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = 134217984;
      v19 = stepCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find the index for step %p", &v18, 0xCu);
    }

    [composedRoute setManeuverDisplayEnabled:0];
    v8 = composedRoute;
    v9 = 0;
  }

  else
  {
    [composedRoute setManeuverDisplayEnabled:1];
    v8 = composedRoute;
    v9 = v7;
  }

  [v8 setCurrentDisplayStep:v9];
  delegate = [(ControlContaineeViewController *)self delegate];
  routeAnnotationsController = [delegate routeAnnotationsController];
  mapView = [routeAnnotationsController mapView];
  _mapLayer = [mapView _mapLayer];
  [_mapLayer setNeedsLayout];
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateTransportType:(int64_t)type
{
  v10.receiver = self;
  v10.super_class = MacRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v10 routePlanningDataCoordinator:coordinator didUpdateTransportType:type];
  routeSearchSuggestionsContaineeViewController = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsContaineeViewController];
  macMenuPresentationController = [routeSearchSuggestionsContaineeViewController macMenuPresentationController];
  isPresented = [macMenuPresentationController isPresented];

  if (isPresented)
  {
    routeSearchSuggestionsContaineeViewController2 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsContaineeViewController];
    macMenuPresentationController2 = [routeSearchSuggestionsContaineeViewController2 macMenuPresentationController];
    [macMenuPresentationController2 dismissAnimated:1 completion:0];
  }
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateResolvedWaypointSet:(id)set
{
  v5.receiver = self;
  v5.super_class = MacRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v5 routePlanningDataCoordinator:coordinator didUpdateResolvedWaypointSet:set];
  [(MacRoutePlanningOverviewViewController *)self _refreshRouteSearchFields];
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRouteCollection:(id)collection
{
  coordinatorCopy = coordinator;
  collectionCopy = collection;
  if (![collectionCopy count])
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    containeeLayout = [cardPresentationController containeeLayout];

    if (containeeLayout != 1)
    {
      cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController2 wantsLayout:1];
    }
  }

  v15.receiver = self;
  v15.super_class = MacRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v15 routePlanningDataCoordinator:coordinatorCopy didUpdateRouteCollection:collectionCopy];
  v11 = [collectionCopy count];

  if (v11)
  {
    cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
    containeeLayout2 = [cardPresentationController3 containeeLayout];

    if (containeeLayout2 == 1)
    {
      cardPresentationController4 = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController4 wantsExpandLayout];
    }
  }

  [(MacRoutePlanningOverviewViewController *)self _clearAlternateRouteManeuverArrows];
  [(MacRoutePlanningOverviewViewController *)self _refreshRouteSearchFields];
}

- (void)transitDirectionsStepsListDataSource:(id)source didTapGetTicketsWithURL:(id)l
{
  lCopy = l;
  v5 = +[MKMapService sharedService];
  absoluteString = [lCopy absoluteString];
  [v5 captureUserAction:6050 onTarget:647 eventValue:absoluteString];

  v7 = +[UIApplication sharedApplication];
  [v7 openURL:lCopy withCompletionHandler:&stru_10162B988];
}

- (void)transitDirectionsStepsListDataSource:(id)source didSelectTrip:(id)trip
{
  tripCopy = trip;
  sourceCopy = source;
  v8 = +[MKMapService sharedService];
  displayedItemIndexForAnalytics = [sourceCopy displayedItemIndexForAnalytics];

  [v8 captureUserAction:9040 onTarget:606 eventValue:0 transitStep:displayedItemIndexForAnalytics];
  delegate = [(ControlContaineeViewController *)self delegate];
  matchingRouteStep = [tripCopy matchingRouteStep];

  [delegate presentScheduleForStep:matchingRouteStep];
}

- (void)transitDirectionsStepsListDataSource:(id)source didTapIncidentsCell:(id)cell withAdvisory:(id)advisory
{
  advisoryCopy = advisory;
  cellCopy = cell;
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate setRoutePlanningAdvisory:advisoryCopy];

  delegate2 = [(ControlContaineeViewController *)self delegate];
  [delegate2 setRoutePlanningIncidentsSourceView:cellCopy];

  delegate3 = [(ControlContaineeViewController *)self delegate];
  [delegate3 presentRoutePlanningViewType:5];
}

- (void)transitDirectionsStepsListDataSource:(id)source didTapClusteredVehiclesCell:(id)cell
{
  cellCopy = cell;
  clusteredVehicleItem = [cellCopy clusteredVehicleItem];
  clusteredSegment = [clusteredVehicleItem clusteredSegment];

  if (clusteredSegment)
  {
    v7 = [UIAlertController clusteredVehiclesSelectionAlertControllerForClusteredSegment:clusteredSegment completion:0];
    view = [(MacRoutePlanningOverviewViewController *)self view];
    popoverPresentationController = [v7 popoverPresentationController];
    [popoverPresentationController setSourceView:view];

    view2 = [(MacRoutePlanningOverviewViewController *)self view];
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

    [(MacRoutePlanningOverviewViewController *)self presentViewController:v7 animated:1 completion:0];
    v21 = +[MKMapService sharedService];
    clusteredVehicleItem2 = [cellCopy clusteredVehicleItem];
    clusteredSegment2 = [clusteredVehicleItem2 clusteredSegment];
    v24 = sub_100B5D5D8(clusteredSegment2);
    [v21 captureUserAction:3037 onTarget:606 eventValue:v24];
  }
}

- (void)transitDirectionsStepsListDataSource:(id)source didTapRowForItem:(id)item
{
  sourceCopy = source;
  [item displayedMapRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  route = [sourceCopy route];

  [(MacRoutePlanningOverviewViewController *)self _updateCurrentRouteDisplayedMapRect:route forRoute:v8, v10, v12, v14];
}

- (void)directionsStepsList:(id)list didTapElevationInfoButton:(id)button
{
  listCopy = list;
  buttonCopy = button;
  if (sub_10000FA08(self) != 5)
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315906;
      v13 = "[MacRoutePlanningOverviewViewController directionsStepsList:didTapElevationInfoButton:]";
      v14 = 2080;
      v15 = "RoutePlanningOverviewViewController.m";
      v16 = 1024;
      v17 = 3604;
      v18 = 2080;
      v19 = "MapsIdiomIsMac(self)";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v12, 0x26u);
    }

    if (sub_100E03634())
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = +[NSThread callStackSymbols];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
      }
    }
  }

  if (sub_10000FA08(self) == 5)
  {
    route = [listCopy route];
    [(MacRoutePlanningOverviewViewController *)self _presentElevationGraphForRoute:route fromView:buttonCopy];
  }
}

- (void)directionsStepsListDidTapRAPButton:(id)button
{
  _maps_platformController = [(MacRoutePlanningOverviewViewController *)self _maps_platformController];
  currentSession = [_maps_platformController currentSession];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || !currentSession)
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315906;
      v14 = "[MacRoutePlanningOverviewViewController directionsStepsListDidTapRAPButton:]";
      v15 = 2080;
      v16 = "RoutePlanningOverviewViewController.m";
      v17 = 1024;
      v18 = 3588;
      v19 = 2080;
      v20 = "routePlanningSession != nil";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v13, 0x26u);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
      }
    }
  }

  v7 = +[MKMapService sharedService];
  [v7 captureUserAction:5013 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  _maps_mapsSceneDelegate = [(MacRoutePlanningOverviewViewController *)self _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
  [rapPresenter presentReportAProblemForRouteFromEntryPoint:{-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self, "currentUITargetForAnalytics")}];
}

- (void)_updateCurrentRouteDisplayedMapRect:(id)rect forRoute:(id)route
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v6 = rect.var0.var1;
  v7 = rect.var0.var0;
  routeCopy = route;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10082D86C;
  v23[3] = &unk_10164E3F8;
  v23[4] = self;
  *&v23[5] = v7;
  *&v23[6] = v6;
  *&v23[7] = var0;
  *&v23[8] = var1;
  v10 = objc_retainBlock(v23);
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  routeCollection = [dataCoordinator routeCollection];
  currentRoute = [routeCollection currentRoute];

  if (currentRoute == routeCopy)
  {
    (v10[2])(v10);
  }

  else
  {
    v14 = sub_100798A3C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Tapped a route step for a non-current route; switching current route", buf, 2u);
    }

    dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    routeCollection2 = [dataCoordinator2 routeCollection];
    v17 = [routeCollection2 indexOfRoute:routeCopy];

    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v25 = "[MacRoutePlanningOverviewViewController _updateCurrentRouteDisplayedMapRect:forRoute:]";
        v26 = 2080;
        v27 = "RoutePlanningOverviewViewController.m";
        v28 = 1024;
        v29 = 3572;
        v30 = 2080;
        v31 = "index != NSNotFound";
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v20 = sub_10006D178();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v25 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v22 = sub_100798A3C();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v25 = routeCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find index of non-current composedRoute in route collection: %p", buf, 0xCu);
      }
    }

    else
    {
      dataCoordinator3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      [dataCoordinator3 updateCurrentRoute:routeCopy];

      dispatch_async(&_dispatch_main_q, v10);
    }
  }
}

- (void)directionsStepsList:(id)list didTapRowForRouteStep:(id)step
{
  stepCopy = step;
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate clearMapSelection];

  [(MacRoutePlanningOverviewViewController *)self _showManeuverArrowsForStep:stepCopy];
  composedRoute = [stepCopy composedRoute];
  v7 = sub_100AF1870(stepCopy);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(MacRoutePlanningOverviewViewController *)self _updateCurrentRouteDisplayedMapRect:composedRoute forRoute:v7, v9, v11, v13];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &unk_10195D9D8)
  {
    v7 = [(RoutePlanningOverviewViewController *)self rootController:path];
    hasExpandedSteps = [v7 hasExpandedSteps];

    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    v11 = cardPresentationController;
    if (hasExpandedSteps)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    [cardPresentationController wantsLayout:v10];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MacRoutePlanningOverviewViewController;
    [(MacRoutePlanningOverviewViewController *)&v12 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)willChangeLayout:(unint64_t)layout
{
  v9.receiver = self;
  v9.super_class = MacRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v9 willChangeLayout:?];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  if (containeeLayout && containeeLayout < layout)
  {
    v7 = 2;
LABEL_7:
    v8 = +[MKMapService sharedService];
    [v8 captureUserAction:v7 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

    return;
  }

  if (layout && containeeLayout > layout)
  {
    v7 = 1;
    goto LABEL_7;
  }
}

- (double)_routePlanningAdvisoryFooterViewHeight
{
  rootController = [(RoutePlanningOverviewViewController *)self rootController];
  [rootController estimatedRoutePlanningAdvisoryFooterViewHeight];
  v4 = v3;

  return v4;
}

- (double)heightForLayout:(unint64_t)layout
{
  if (_UISolariumEnabled())
  {
    v3 = -1.0;
    if (layout - 3 <= 1)
    {
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController availableHeight];
      v3 = v7;
    }

    return v3;
  }

  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  routeCollection = [dataCoordinator routeCollection];
  v10 = [routeCollection count];

  if (layout > 2)
  {
    if (layout - 3 < 2)
    {
      if (!v10)
      {
        return -1.0;
      }

      rootController = [(RoutePlanningOverviewViewController *)self rootController];
      v3 = -1.0;
      if ([rootController hasExpandedSteps])
      {
        cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
        [cardPresentationController2 availableHeight];
        v3 = v17;
      }

      goto LABEL_7;
    }

    if (layout != 5)
    {
      return v3;
    }

    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315650;
      v30 = "[MacRoutePlanningOverviewViewController heightForLayout:]";
      v31 = 2080;
      v32 = "RoutePlanningOverviewViewController.m";
      v33 = 1024;
      v34 = 3505;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v29, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = +[NSThread callStackSymbols];
        v29 = 138412290;
        v30 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", &v29, 0xCu);
      }
    }

LABEL_6:
    rootController = [(ContaineeViewController *)self cardPresentationController];
    [rootController bottomSafeOffset];
    v13 = v12;
    [(ContaineeViewController *)self headerHeight];
    v3 = v13 + 8.0 + v14;
LABEL_7:

    return v3;
  }

  if (layout < 2)
  {
    goto LABEL_6;
  }

  if (layout == 2)
  {
    rootController2 = [(RoutePlanningOverviewViewController *)self rootController];
    hasExpandedSteps = [rootController2 hasExpandedSteps];

    v3 = -1.0;
    if ((hasExpandedSteps & 1) == 0)
    {
      if (!v10)
      {
        dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
        if ([dataCoordinator2 requestState] == 1)
        {
        }

        else
        {
          dataCoordinator3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
          requestState = [dataCoordinator3 requestState];

          if (requestState != 3)
          {
            return v3;
          }
        }
      }

      [(RoutePlanningOverviewViewController *)self _fittingHeightForMediumLayout];
      v27 = v26;
      [(MacRoutePlanningOverviewViewController *)self _routePlanningAdvisoryFooterViewHeight];
      return v28 + v27;
    }
  }

  return v3;
}

- (void)pressedAssumeFullCharge
{
  v5 = +[VGVirtualGarageService sharedService];
  chargingOptionsView = [(MacRoutePlanningOverviewViewController *)self chargingOptionsView];
  checkbox = [chargingOptionsView checkbox];
  [v5 virtualGarageSetAssumesFullCharge:{objc_msgSend(checkbox, "isOn")}];
}

- (void)willMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = MacRoutePlanningOverviewViewController;
  [(MacRoutePlanningOverviewViewController *)&v4 willMoveToParentViewController:controller];
  [(MacRoutePlanningOverviewViewController *)self setRouteSearchSuggestionsTableViewHidden:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = MacRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v8 viewDidDisappear:disappear];
  v4 = objc_opt_new();
  v9[0] = v4;
  v5 = objc_opt_new();
  v9[1] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:2];
  searchFieldsViewController = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [searchFieldsViewController setItems:v6];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MacRoutePlanningOverviewViewController;
  [(ContaineeViewController *)&v5 viewWillDisappear:disappear];
  searchFieldsViewController = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [searchFieldsViewController endEditingFields];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MacRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v4 viewWillAppear:appear];
  [(MacRoutePlanningOverviewViewController *)self _refreshRouteSearchFields];
  [(MacRoutePlanningOverviewViewController *)self _refreshDesiredTransportType];
  [(MacRoutePlanningOverviewViewController *)self _refreshOptionsVisibility];
}

- (id)_initialConstraints
{
  v22.receiver = self;
  v22.super_class = MacRoutePlanningOverviewViewController;
  _initialConstraints = [(RoutePlanningOverviewViewController *)&v22 _initialConstraints];
  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  topAnchor = [collectionView topAnchor];
  contentView = [(ContaineeViewController *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v23[0] = v16;
  collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
  leadingAnchor = [collectionView2 leadingAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v23[1] = v5;
  collectionView3 = [(RoutePlanningOverviewViewController *)self collectionView];
  trailingAnchor = [collectionView3 trailingAnchor];
  contentView3 = [(ContaineeViewController *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v23[2] = v10;
  collectionViewToBottomConstraint = [(RoutePlanningOverviewViewController *)self collectionViewToBottomConstraint];
  v23[3] = collectionViewToBottomConstraint;
  v12 = [NSArray arrayWithObjects:v23 count:4];
  [_initialConstraints addObjectsFromArray:v12];

  return _initialConstraints;
}

- (void)_setupSubviews
{
  v54.receiver = self;
  v54.super_class = MacRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v54 _setupSubviews];
  rootController = [(RoutePlanningOverviewViewController *)self rootController];
  [rootController setScrollViewDelegate:self];

  rootController2 = [(RoutePlanningOverviewViewController *)self rootController];
  [rootController2 setStepsListDelegate:self];

  rootController3 = [(RoutePlanningOverviewViewController *)self rootController];
  [rootController3 addObserver:self forKeyPath:@"hasExpandedSteps" options:1 context:&unk_10195D9D8];

  objc_initWeak(&location, self);
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10082EA30;
  v51[3] = &unk_101661B98;
  objc_copyWeak(&v52, &location);
  rootController4 = [(RoutePlanningOverviewViewController *)self rootController];
  [rootController4 setPostReloadHandler:v51];

  view = [(MacRoutePlanningOverviewViewController *)self view];
  contentView = [(ContaineeViewController *)self contentView];
  [view bringSubviewToFront:contentView];

  v9 = [RoutePlanningTransitTimingControlsView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(RoutePlanningTransitTimingControlsView *)v9 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(MacRoutePlanningOverviewViewController *)self setTimingControlsView:height];

  timingControlsView = [(MacRoutePlanningOverviewViewController *)self timingControlsView];
  [timingControlsView setTranslatesAutoresizingMaskIntoConstraints:0];

  height2 = [[RoutePlanningOptionsBar alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(MacRoutePlanningOverviewViewController *)self setOptionsBar:height2];

  optionsBar = [(MacRoutePlanningOverviewViewController *)self optionsBar];
  [optionsBar setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = objc_opt_new();
  [(MacRoutePlanningOverviewViewController *)self setChargingOptionsView:v17];

  chargingOptionsView = [(MacRoutePlanningOverviewViewController *)self chargingOptionsView];
  [chargingOptionsView setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"Charging Options Description [Catalyst value:Route Planning]" table:{@"localized string not found", 0}];
  chargingOptionsView2 = [(MacRoutePlanningOverviewViewController *)self chargingOptionsView];
  descriptionLabel = [chargingOptionsView2 descriptionLabel];
  [descriptionLabel setText:v20];

  chargingOptionsView3 = [(MacRoutePlanningOverviewViewController *)self chargingOptionsView];
  checkbox = [chargingOptionsView3 checkbox];
  [checkbox addTarget:self action:"pressedAssumeFullCharge" forControlEvents:0x2000];

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10082EAB8;
  v49[3] = &unk_10162B968;
  objc_copyWeak(&v50, &location);
  timingControlsView2 = [(MacRoutePlanningOverviewViewController *)self timingControlsView];
  [timingControlsView2 setChangeHandler:v49];

  objc_copyWeak(&v48, &location);
  v26 = [(MacRoutePlanningOverviewViewController *)self timingControlsView:_NSConcreteStackBlock];
  [v26 setLayoutHandler:&v47];

  v27 = [[RoutePlanningWaypointEditorViewController alloc] initWithWaypointInfoProvider:self];
  [(MacRoutePlanningOverviewViewController *)self setSearchFieldsViewController:v27];

  if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
  {
    IsEnabled_Maps182 = 1;
  }

  else
  {
    IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps182();
  }

  searchFieldsViewController = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [searchFieldsViewController setMprEnabled:IsEnabled_Maps182];

  v30 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  searchFieldsViewController2 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  view2 = [searchFieldsViewController2 view];

  searchFieldsViewController3 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [(MacRoutePlanningOverviewViewController *)self addChildViewController:searchFieldsViewController3];

  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = [UIStackView alloc];
  transportTypePicker = [(RoutePlanningOverviewViewController *)self transportTypePicker];
  v55[0] = transportTypePicker;
  v55[1] = view2;
  timingControlsView3 = [(MacRoutePlanningOverviewViewController *)self timingControlsView];
  v55[2] = timingControlsView3;
  optionsBar2 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
  v55[3] = optionsBar2;
  v38 = [NSArray arrayWithObjects:v55 count:4];
  v39 = [v34 initWithArrangedSubviews:v38];

  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v39 setAlignment:0];
  [v39 setAxis:1];
  [v39 setDistribution:0];
  [v39 setSpacing:16.0];
  [v30 addSubview:v39];
  [(MacRoutePlanningOverviewViewController *)self setHeaderStackView:v39];
  searchFieldsViewController4 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [searchFieldsViewController4 didMoveToParentViewController:self];

  LODWORD(v41) = 1148846080;
  v42 = [v39 _maps_constraintsEqualToEdgesOfView:v30 insets:4.0 priority:{16.0, 0.0, 16.0, v41}];
  allConstraints = [v42 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];

  containerHeaderView = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  [containerHeaderView setAccessoryView:v30];

  [(MacRoutePlanningOverviewViewController *)self _prepareRouteSearchControllers];
  containerHeaderView2 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  _headerTapGesture = [containerHeaderView2 _headerTapGesture];
  [_headerTapGesture setCancelsTouchesInView:0];

  objc_destroyWeak(&v48);
  objc_destroyWeak(&v50);
  objc_destroyWeak(&v52);
  objc_destroyWeak(&location);
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  nextFocusedItem = [contextCopy nextFocusedItem];
  if (nextFocusedItem)
  {
    v6 = nextFocusedItem;
    routeSearchSuggestionsTableViewController = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
    nextFocusedItem2 = [contextCopy nextFocusedItem];
    if ([UIFocusSystem environment:routeSearchSuggestionsTableViewController containsEnvironment:nextFocusedItem2])
    {
    }

    else
    {
      searchFieldsViewController = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
      nextFocusedItem3 = [contextCopy nextFocusedItem];
      v11 = [UIFocusSystem environment:searchFieldsViewController containsEnvironment:nextFocusedItem3];

      if ((v11 & 1) == 0)
      {
        [(MacRoutePlanningOverviewViewController *)self setRouteSearchSuggestionsTableViewHidden:1];
      }
    }
  }
}

- (void)arrowLeftPressed:(id)pressed
{
  traitCollection = [(MacRoutePlanningOverviewViewController *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  rootController = [(RoutePlanningOverviewViewController *)self rootController];
  v7 = rootController;
  if (layoutDirection == 1)
  {
    [rootController expandCurrentlyFocusedRoute];
  }

  else
  {
    [rootController collapseCurrentlyFocusedRoute];
  }
}

- (void)arrowRightPressed:(id)pressed
{
  traitCollection = [(MacRoutePlanningOverviewViewController *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  rootController = [(RoutePlanningOverviewViewController *)self rootController];
  v7 = rootController;
  if (layoutDirection == 1)
  {
    [rootController collapseCurrentlyFocusedRoute];
  }

  else
  {
    [rootController expandCurrentlyFocusedRoute];
  }
}

- (id)keyCommands
{
  v9.receiver = self;
  v9.super_class = MacRoutePlanningOverviewViewController;
  keyCommands = [(ContaineeViewController *)&v9 keyCommands];
  v4 = [keyCommands mutableCopy];

  if (sub_10000FA08(self) == 5)
  {
    v5 = [UIKeyCommand keyCommandWithInput:UIKeyInputLeftArrow modifierFlags:0 action:"arrowLeftPressed:"];
    [v4 addObject:v5];

    v6 = [UIKeyCommand keyCommandWithInput:UIKeyInputRightArrow modifierFlags:0 action:"arrowRightPressed:"];
    [v4 addObject:v6];
  }

  v7 = [v4 copy];

  return v7;
}

- (void)dealloc
{
  rootController = [(RoutePlanningOverviewViewController *)self rootController];
  [rootController removeObserver:self forKeyPath:@"hasExpandedSteps"];

  v4.receiver = self;
  v4.super_class = MacRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v4 dealloc];
}

- (MacRoutePlanningOverviewViewController)initWithDataCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = MacRoutePlanningOverviewViewController;
  v3 = [(RoutePlanningOverviewViewController *)&v8 initWithDataCoordinator:coordinator];
  v4 = v3;
  if (v3)
  {
    cardPresentationController = [(ContaineeViewController *)v3 cardPresentationController];
    [cardPresentationController setAllowResizeInFloatingStyle:1];

    cardPresentationController2 = [(ContaineeViewController *)v4 cardPresentationController];
    [cardPresentationController2 setDefaultContaineeLayout:1];
  }

  return v4;
}

@end