@interface MacRoutePlanningOverviewViewController
- (BOOL)isRouteSearchSuggestionsTableViewHidden;
- (MacRoutePlanningOverviewViewController)initWithDataCoordinator:(id)a3;
- (double)_routePlanningAdvisoryFooterViewHeight;
- (double)heightForLayout:(unint64_t)a3;
- (id)_initialConstraints;
- (id)keyCommands;
- (void)_clearAlternateRouteManeuverArrows;
- (void)_forceChangeOrigin;
- (void)_prepareRouteSearchControllers;
- (void)_presentElevationGraphForRoute:(id)a3 fromView:(id)a4;
- (void)_refreshDesiredTransportType;
- (void)_refreshOptionsVisibility;
- (void)_refreshRouteSearchFields;
- (void)_refreshSelectedVehicleDisplay;
- (void)_refreshTimingDisplay;
- (void)_setupSubviews;
- (void)_showManeuverArrowsForStep:(id)a3;
- (void)_updateCurrentRouteDisplayedMapRect:(id)a3 forRoute:(id)a4;
- (void)arrowLeftPressed:(id)a3;
- (void)arrowRightPressed:(id)a3;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)directionsStepsList:(id)a3 didTapElevationInfoButton:(id)a4;
- (void)directionsStepsList:(id)a3 didTapRowForRouteStep:(id)a4;
- (void)directionsStepsListDidTapRAPButton:(id)a3;
- (void)macMenuPresentationControllerDidDismiss:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)pressedAssumeFullCharge;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateResolvedWaypointSet:(id)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateRouteCollection:(id)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateTransportType:(int64_t)a4;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setRouteSearchSuggestionsTableViewHidden:(BOOL)a3;
- (void)transitDirectionsStepsListDataSource:(id)a3 didSelectTrip:(id)a4;
- (void)transitDirectionsStepsListDataSource:(id)a3 didTapClusteredVehiclesCell:(id)a4;
- (void)transitDirectionsStepsListDataSource:(id)a3 didTapGetTicketsWithURL:(id)a4;
- (void)transitDirectionsStepsListDataSource:(id)a3 didTapIncidentsCell:(id)a4 withAdvisory:(id)a5;
- (void)transitDirectionsStepsListDataSource:(id)a3 didTapRowForItem:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willChangeLayout:(unint64_t)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation MacRoutePlanningOverviewViewController

- (void)macMenuPresentationControllerDidDismiss:(id)a3
{
  v3 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
  [v3 reset];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  v8 = [MKMapService sharedService:a3];
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

- (void)presentationControllerWillDismiss:(id)a3
{
  elevationPopoverController = self->_elevationPopoverController;
  v5 = a3;
  v6 = [(RoutePlanningElevationPopoverViewController *)elevationPopoverController popoverPresentationController];

  if (v6 == v5)
  {
    v7 = self->_elevationPopoverController;
    self->_elevationPopoverController = 0;
  }
}

- (void)_presentElevationGraphForRoute:(id)a3 fromView:(id)a4
{
  v15 = a3;
  v6 = a4;
  elevationPopoverController = self->_elevationPopoverController;
  if (v15)
  {
    if (!elevationPopoverController)
    {
      v8 = objc_alloc_init(RoutePlanningElevationPopoverViewController);
      v9 = self->_elevationPopoverController;
      self->_elevationPopoverController = v8;

      [(RoutePlanningElevationPopoverViewController *)self->_elevationPopoverController setModalPresentationStyle:7];
      v10 = [(RoutePlanningElevationPopoverViewController *)self->_elevationPopoverController popoverPresentationController];
      [v10 setPermittedArrowDirections:12];

      v11 = [(RoutePlanningElevationPopoverViewController *)self->_elevationPopoverController popoverPresentationController];
      [v11 setDelegate:self];

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

  v13 = [(RoutePlanningElevationPopoverViewController *)elevationPopoverController popoverPresentationController];
  [v13 setSourceView:v6];

  [(RoutePlanningElevationPopoverViewController *)self->_elevationPopoverController setRoute:v15];
  v14 = [(RoutePlanningElevationPopoverViewController *)self->_elevationPopoverController presentingViewController];

  if (!v14)
  {
    [(MacRoutePlanningOverviewViewController *)self presentViewController:self->_elevationPopoverController animated:1 completion:0];
  }

LABEL_8:
}

- (void)setRouteSearchSuggestionsTableViewHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsContaineeViewController];

  if (!v5)
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

  if (v3)
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

  v8 = [(MacRoutePlanningOverviewViewController *)self view];
  v9 = [v8 window];

  if (v9)
  {
    v10 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
    v11 = [v10 focusGroupIdentifierForCurrentlyEditingField];
    v12 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
    v13 = [v12 tableView];
    [v13 setFocusGroupIdentifier:v11];

    v14 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
    v15 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsContaineeViewController];
    if (v6)
    {
      [v14 macDismissRouteSearchSuggestionsController:v15];
    }

    else
    {
      [v14 macPresentRouteSearchSuggestionsController:v15];
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
    v14 = sub_10006D178();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_16:

      return;
    }

    v15 = +[NSThread callStackSymbols];
    v21 = 138412290;
    v22 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v21, 0xCu);
LABEL_15:

    goto LABEL_16;
  }
}

- (BOOL)isRouteSearchSuggestionsTableViewHidden
{
  v3 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
  if ([v3 isViewLoaded])
  {
    v4 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
    v5 = [v4 view];
    v6 = [v5 window];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_prepareRouteSearchControllers
{
  v3 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];

  if (!v3)
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

  v5 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
  [v5 setRestoresFocusAfterTransition:0];

  v6 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
  v7 = [v6 tableView];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[UIColor clearColor];
  [v7 setBackgroundColor:v8];

  [v7 setSeparatorStyle:0];
  [v7 setRemembersLastFocusedIndexPath:0];
  LODWORD(v9) = 1132068864;
  [v7 setContentCompressionResistancePriority:1 forAxis:v9];
  LODWORD(v10) = 1144750080;
  [v7 setContentHuggingPriority:1 forAxis:v10];
  v11 = [RouteSearchViewController alloc];
  v12 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  v13 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
  v14 = [(ControlContaineeViewController *)self delegate];
  v15 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v16 = [(RouteSearchViewController *)v11 initWithWaypointEditor:v12 suggestionsTableView:v13 delegate:v14 dataCoordinator:v15];
  [(MacRoutePlanningOverviewViewController *)self setRouteSearchViewController:v16];

  objc_initWeak(location, self);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10082B794;
  v46[3] = &unk_1016619A8;
  objc_copyWeak(&v47, location);
  v17 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
  [v17 setTableViewDidReloadHandler:v46];

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10082B7E4;
  v44[3] = &unk_101661B98;
  objc_copyWeak(&v45, location);
  v18 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [v18 setIntrinsicContentSizeInvalidationHandler:v44];

  v19 = [MenuContaineeViewController alloc];
  v20 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
  v21 = [(MenuContaineeViewController *)v19 initWithContentViewController:v20];
  [(MacRoutePlanningOverviewViewController *)self setRouteSearchSuggestionsContaineeViewController:v21];

  v22 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
  v23 = [v22 tableView];
  v24 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsContaineeViewController];
  [v24 setTrackedScrollview:v23];

  v25 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  v26 = [v25 layoutGuideForCurrentlyEditingField];
  v27 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsContaineeViewController];
  v28 = [v27 macMenuPresentationController];
  [v28 setAnchorLayoutGuide:v26];

  v29 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  v30 = [v29 layoutGuideForCurrentlyEditingField];
  v31 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsContaineeViewController];
  v32 = [v31 macMenuPresentationController];
  [v32 setWidthLayoutGuide:v30];

  v33 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  v34 = [v33 view];
  v48 = v34;
  v35 = [NSArray arrayWithObjects:&v48 count:1];
  v36 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsContaineeViewController];
  v37 = [v36 macMenuPresentationController];
  [v37 setPassThroughViews:v35];

  v38 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsContaineeViewController];
  v39 = [v38 macMenuPresentationController];
  [v39 addObserver:self];

  objc_destroyWeak(&v45);
  objc_destroyWeak(&v47);
  objc_destroyWeak(location);
}

- (void)_refreshSelectedVehicleDisplay
{
  v3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v4 = [v3 desiredTransportType];

  if (v4 == 1)
  {
    if ((MapsFeature_IsEnabled_EVRouting() & 1) != 0 || MapsFeature_IsEnabled_Alberta())
    {
      v5 = [(VGVirtualGarage *)self->super._virtualGarage vehicles];
      v6 = [v5 count] != 0;
    }

    else
    {
      v6 = 0;
    }

    v19 = IsEVRoutingSupported();
    IsEnabled_Alberta = MapsFeature_IsEnabled_Alberta();
    v16 = [(VGVirtualGarage *)self->super._virtualGarage selectedVehicle];
    v21 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    [v21 setSummaryText:0];

    v22 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    [v22 setVehicle:v16];

    v23 = [v16 isPureElectricVehicle];
    v24 = [(MacRoutePlanningOverviewViewController *)self chargingOptionsView];
    v25 = v24;
    if (v23 && v6 && ((v19 | IsEnabled_Alberta) & 1) != 0)
    {
      if (!v24)
      {
        goto LABEL_19;
      }

      v26 = [(MacRoutePlanningOverviewViewController *)self headerStackView];
      v27 = [v26 arrangedSubviews];
      v28 = [(MacRoutePlanningOverviewViewController *)self chargingOptionsView];
      v29 = [v27 containsObject:v28];

      if (v29)
      {
        goto LABEL_19;
      }

      v25 = [(MacRoutePlanningOverviewViewController *)self headerStackView];
      v30 = [(MacRoutePlanningOverviewViewController *)self chargingOptionsView];
      [v25 addArrangedSubview:v30];
    }

    else
    {
      [v24 removeFromSuperview];
    }

LABEL_19:
    v17 = sub_100798A3C();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
LABEL_22:

      goto LABEL_27;
    }

    v18 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    v31 = [v18 vehicle];
    v36 = 138412290;
    v37 = v31;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Updating summary to vehicle: %@", &v36, 0xCu);

LABEL_21:
    goto LABEL_22;
  }

  v7 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  if ([v7 desiredTransportType] != 5)
  {
    goto LABEL_24;
  }

  v8 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v9 = [v8 cyclePreferences];
  if (([v9 ebike] & 1) == 0)
  {

LABEL_24:
LABEL_25:
    v32 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    [v32 setVehicle:0];

    v33 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    [v33 setSummaryText:0];

    v34 = [(MacRoutePlanningOverviewViewController *)self chargingOptionsView];
    [v34 removeFromSuperview];

    v16 = sub_100798A3C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(v36) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Removing summary", &v36, 2u);
    }

    goto LABEL_27;
  }

  v10 = sub_10072B0F0();

  if (!v10)
  {
    goto LABEL_25;
  }

  v11 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
  [v11 setVehicle:0];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"e-bike [RoutePlanning value:Catalyst]" table:{@"localized string not found", 0}];
  v14 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
  [v14 setSummaryText:v13];

  v15 = [(MacRoutePlanningOverviewViewController *)self chargingOptionsView];
  [v15 removeFromSuperview];

  v16 = sub_100798A3C();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    v18 = [v17 summaryText];
    v36 = 138412290;
    v37 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Updating summary to: %@", &v36, 0xCu);
    goto LABEL_21;
  }

LABEL_27:

  v35 = [(ContaineeViewController *)self cardPresentationController];
  [v35 updateHeightForCurrentLayout];
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
  v4 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 transportType]);
  if ([v3 containsObject:v5])
  {

LABEL_10:
    v10 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v11 = [v10 timing];

    v12 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v13 = [v12 routeCollection];
    v14 = [v13 currentRoute];

    if (v14)
    {
      v15 = [v14 shouldShowSchedule];
    }

    else
    {
      v15 = 1;
    }

    v16 = [(MacRoutePlanningOverviewViewController *)self timingControlsView];
    [v16 setHidden:0];

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
  v7 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 desiredTransportType]);
  v9 = [v6 containsObject:v8];

  if (v9)
  {
    goto LABEL_10;
  }

  v14 = [(MacRoutePlanningOverviewViewController *)self timingControlsView];
  v15 = 1;
  [v14 setHidden:1];
  v11 = 0;
LABEL_15:

  v17 = [(MacRoutePlanningOverviewViewController *)self timingControlsView];
  [v17 setSelectedTiming:v11];

  v18 = [(MacRoutePlanningOverviewViewController *)self timingControlsView];
  [v18 setShowSchedulingButtons:v15];

  v19 = sub_100798A3C();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Updating timing to: %@", buf, 0xCu);
  }
}

- (void)_refreshOptionsVisibility
{
  v3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v4 = [v3 desiredTransportType];
  v5 = 0;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
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

  if (v4 == 2)
  {
    goto LABEL_11;
  }

  if (v4 == 5)
  {
    IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_Maps420();
    goto LABEL_12;
  }

LABEL_13:
  v7 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [v7 setMprEnabled:v5];

  v8 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v9 = [v8 desiredTransportType];

  if (v9 <= 5 && ((1 << v9) & 0x2E) != 0)
  {
    objc_initWeak(&location, self);
    v10 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Options [Catalyst value:Route Planning]" table:{@"localized string not found", 0}];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10082C26C;
    v16[3] = &unk_101661B98;
    objc_copyWeak(&v17, &location);
    [v10 setButtonTitle:v12 actionHandler:v16];

    v13 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    [v13 setHidden:0];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    [v14 setButtonTitle:0 actionHandler:0];

    v15 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
    [v15 setHidden:1];
  }
}

- (void)_refreshRouteSearchFields
{
  v3 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];

  if (!v3)
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

  v4 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v5 = [v4 desiredTransportType];
  v6 = 0;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 != 5)
      {
        goto LABEL_14;
      }

      IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps420();
      goto LABEL_13;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 != 1)
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
  v8 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [v8 setMprEnabled:v6];

  v9 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v10 = [v9 directionItemForCurrentSession];

  v11 = [v10 items];
  v12 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [v12 setItems:v11];

  v13 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  v14 = [v13 items];
  v15 = [v14 count];
  v16 = [v10 items];
  v17 = [v16 count];

  v18 = [v10 items];
  v19 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [v19 setItems:v18];

  if (v15 != v17)
  {
    v20 = [(ContaineeViewController *)self cardPresentationController];
    [v20 updateHeightForCurrentLayout];
  }
}

- (void)_refreshDesiredTransportType
{
  v3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v4 = [v3 desiredTransportType];

  if (v4)
  {
    v5 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    v6 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    [v5 setSelectedType:{objc_msgSend(v6, "desiredTransportType")}];

    [(MacRoutePlanningOverviewViewController *)self _refreshTimingDisplay];
  }
}

- (void)_forceChangeOrigin
{
  v2 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [v2 selectFromField];
}

- (void)_clearAlternateRouteManeuverArrows
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v4 = [v3 routeCollection];
  v5 = [v4 alternateRoutes];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        [v10 setManeuverDisplayEnabled:0];
        [v10 setCurrentDisplayStep:0];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [(ControlContaineeViewController *)self delegate];
  v12 = [v11 routeAnnotationsController];
  v13 = [v12 mapView];
  v14 = [v13 _mapLayer];
  [v14 setNeedsLayout];
}

- (void)_showManeuverArrowsForStep:(id)a3
{
  v4 = a3;
  v5 = [v4 composedRoute];
  v6 = [v5 steps];
  v7 = [v6 indexOfObject:v4];

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
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find the index for step %p", &v18, 0xCu);
    }

    [v5 setManeuverDisplayEnabled:0];
    v8 = v5;
    v9 = 0;
  }

  else
  {
    [v5 setManeuverDisplayEnabled:1];
    v8 = v5;
    v9 = v7;
  }

  [v8 setCurrentDisplayStep:v9];
  v10 = [(ControlContaineeViewController *)self delegate];
  v11 = [v10 routeAnnotationsController];
  v12 = [v11 mapView];
  v13 = [v12 _mapLayer];
  [v13 setNeedsLayout];
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateTransportType:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = MacRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v10 routePlanningDataCoordinator:a3 didUpdateTransportType:a4];
  v5 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsContaineeViewController];
  v6 = [v5 macMenuPresentationController];
  v7 = [v6 isPresented];

  if (v7)
  {
    v8 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsContaineeViewController];
    v9 = [v8 macMenuPresentationController];
    [v9 dismissAnimated:1 completion:0];
  }
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateResolvedWaypointSet:(id)a4
{
  v5.receiver = self;
  v5.super_class = MacRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v5 routePlanningDataCoordinator:a3 didUpdateResolvedWaypointSet:a4];
  [(MacRoutePlanningOverviewViewController *)self _refreshRouteSearchFields];
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateRouteCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 count])
  {
    v8 = [(ContaineeViewController *)self cardPresentationController];
    v9 = [v8 containeeLayout];

    if (v9 != 1)
    {
      v10 = [(ContaineeViewController *)self cardPresentationController];
      [v10 wantsLayout:1];
    }
  }

  v15.receiver = self;
  v15.super_class = MacRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v15 routePlanningDataCoordinator:v6 didUpdateRouteCollection:v7];
  v11 = [v7 count];

  if (v11)
  {
    v12 = [(ContaineeViewController *)self cardPresentationController];
    v13 = [v12 containeeLayout];

    if (v13 == 1)
    {
      v14 = [(ContaineeViewController *)self cardPresentationController];
      [v14 wantsExpandLayout];
    }
  }

  [(MacRoutePlanningOverviewViewController *)self _clearAlternateRouteManeuverArrows];
  [(MacRoutePlanningOverviewViewController *)self _refreshRouteSearchFields];
}

- (void)transitDirectionsStepsListDataSource:(id)a3 didTapGetTicketsWithURL:(id)a4
{
  v4 = a4;
  v5 = +[MKMapService sharedService];
  v6 = [v4 absoluteString];
  [v5 captureUserAction:6050 onTarget:647 eventValue:v6];

  v7 = +[UIApplication sharedApplication];
  [v7 openURL:v4 withCompletionHandler:&stru_10162B988];
}

- (void)transitDirectionsStepsListDataSource:(id)a3 didSelectTrip:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[MKMapService sharedService];
  v9 = [v7 displayedItemIndexForAnalytics];

  [v8 captureUserAction:9040 onTarget:606 eventValue:0 transitStep:v9];
  v11 = [(ControlContaineeViewController *)self delegate];
  v10 = [v6 matchingRouteStep];

  [v11 presentScheduleForStep:v10];
}

- (void)transitDirectionsStepsListDataSource:(id)a3 didTapIncidentsCell:(id)a4 withAdvisory:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(ControlContaineeViewController *)self delegate];
  [v9 setRoutePlanningAdvisory:v7];

  v10 = [(ControlContaineeViewController *)self delegate];
  [v10 setRoutePlanningIncidentsSourceView:v8];

  v11 = [(ControlContaineeViewController *)self delegate];
  [v11 presentRoutePlanningViewType:5];
}

- (void)transitDirectionsStepsListDataSource:(id)a3 didTapClusteredVehiclesCell:(id)a4
{
  v25 = a4;
  v5 = [v25 clusteredVehicleItem];
  v6 = [v5 clusteredSegment];

  if (v6)
  {
    v7 = [UIAlertController clusteredVehiclesSelectionAlertControllerForClusteredSegment:v6 completion:0];
    v8 = [(MacRoutePlanningOverviewViewController *)self view];
    v9 = [v7 popoverPresentationController];
    [v9 setSourceView:v8];

    v10 = [(MacRoutePlanningOverviewViewController *)self view];
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

    [(MacRoutePlanningOverviewViewController *)self presentViewController:v7 animated:1 completion:0];
    v21 = +[MKMapService sharedService];
    v22 = [v25 clusteredVehicleItem];
    v23 = [v22 clusteredSegment];
    v24 = sub_100B5D5D8(v23);
    [v21 captureUserAction:3037 onTarget:606 eventValue:v24];
  }
}

- (void)transitDirectionsStepsListDataSource:(id)a3 didTapRowForItem:(id)a4
{
  v6 = a3;
  [a4 displayedMapRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v6 route];

  [(MacRoutePlanningOverviewViewController *)self _updateCurrentRouteDisplayedMapRect:v15 forRoute:v8, v10, v12, v14];
}

- (void)directionsStepsList:(id)a3 didTapElevationInfoButton:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v8 = [v6 route];
    [(MacRoutePlanningOverviewViewController *)self _presentElevationGraphForRoute:v8 fromView:v7];
  }
}

- (void)directionsStepsListDidTapRAPButton:(id)a3
{
  v4 = [(MacRoutePlanningOverviewViewController *)self _maps_platformController];
  v5 = [v4 currentSession];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || !v5)
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

  v8 = [(MacRoutePlanningOverviewViewController *)self _maps_mapsSceneDelegate];
  v9 = [v8 rapPresenter];
  [v9 presentReportAProblemForRouteFromEntryPoint:{-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self, "currentUITargetForAnalytics")}];
}

- (void)_updateCurrentRouteDisplayedMapRect:(id)a3 forRoute:(id)a4
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v6 = a3.var0.var1;
  v7 = a3.var0.var0;
  v9 = a4;
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
  v11 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v12 = [v11 routeCollection];
  v13 = [v12 currentRoute];

  if (v13 == v9)
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

    v15 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v16 = [v15 routeCollection];
    v17 = [v16 indexOfRoute:v9];

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
        v25 = v9;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find index of non-current composedRoute in route collection: %p", buf, 0xCu);
      }
    }

    else
    {
      v18 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      [v18 updateCurrentRoute:v9];

      dispatch_async(&_dispatch_main_q, v10);
    }
  }
}

- (void)directionsStepsList:(id)a3 didTapRowForRouteStep:(id)a4
{
  v5 = a4;
  v6 = [(ControlContaineeViewController *)self delegate];
  [v6 clearMapSelection];

  [(MacRoutePlanningOverviewViewController *)self _showManeuverArrowsForStep:v5];
  v14 = [v5 composedRoute];
  v7 = sub_100AF1870(v5);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(MacRoutePlanningOverviewViewController *)self _updateCurrentRouteDisplayedMapRect:v14 forRoute:v7, v9, v11, v13];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &unk_10195D9D8)
  {
    v7 = [(RoutePlanningOverviewViewController *)self rootController:a3];
    v8 = [v7 hasExpandedSteps];

    v9 = [(ContaineeViewController *)self cardPresentationController];
    v11 = v9;
    if (v8)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    [v9 wantsLayout:v10];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MacRoutePlanningOverviewViewController;
    [(MacRoutePlanningOverviewViewController *)&v12 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)willChangeLayout:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = MacRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v9 willChangeLayout:?];
  v5 = [(ContaineeViewController *)self cardPresentationController];
  v6 = [v5 containeeLayout];

  if (v6 && v6 < a3)
  {
    v7 = 2;
LABEL_7:
    v8 = +[MKMapService sharedService];
    [v8 captureUserAction:v7 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

    return;
  }

  if (a3 && v6 > a3)
  {
    v7 = 1;
    goto LABEL_7;
  }
}

- (double)_routePlanningAdvisoryFooterViewHeight
{
  v2 = [(RoutePlanningOverviewViewController *)self rootController];
  [v2 estimatedRoutePlanningAdvisoryFooterViewHeight];
  v4 = v3;

  return v4;
}

- (double)heightForLayout:(unint64_t)a3
{
  if (_UISolariumEnabled())
  {
    v3 = -1.0;
    if (a3 - 3 <= 1)
    {
      v6 = [(ContaineeViewController *)self cardPresentationController];
      [v6 availableHeight];
      v3 = v7;
    }

    return v3;
  }

  v8 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v9 = [v8 routeCollection];
  v10 = [v9 count];

  if (a3 > 2)
  {
    if (a3 - 3 < 2)
    {
      if (!v10)
      {
        return -1.0;
      }

      v11 = [(RoutePlanningOverviewViewController *)self rootController];
      v3 = -1.0;
      if ([v11 hasExpandedSteps])
      {
        v16 = [(ContaineeViewController *)self cardPresentationController];
        [v16 availableHeight];
        v3 = v17;
      }

      goto LABEL_7;
    }

    if (a3 != 5)
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
    v11 = [(ContaineeViewController *)self cardPresentationController];
    [v11 bottomSafeOffset];
    v13 = v12;
    [(ContaineeViewController *)self headerHeight];
    v3 = v13 + 8.0 + v14;
LABEL_7:

    return v3;
  }

  if (a3 < 2)
  {
    goto LABEL_6;
  }

  if (a3 == 2)
  {
    v18 = [(RoutePlanningOverviewViewController *)self rootController];
    v19 = [v18 hasExpandedSteps];

    v3 = -1.0;
    if ((v19 & 1) == 0)
    {
      if (!v10)
      {
        v20 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
        if ([v20 requestState] == 1)
        {
        }

        else
        {
          v24 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
          v25 = [v24 requestState];

          if (v25 != 3)
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
  v3 = [(MacRoutePlanningOverviewViewController *)self chargingOptionsView];
  v4 = [v3 checkbox];
  [v5 virtualGarageSetAssumesFullCharge:{objc_msgSend(v4, "isOn")}];
}

- (void)willMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = MacRoutePlanningOverviewViewController;
  [(MacRoutePlanningOverviewViewController *)&v4 willMoveToParentViewController:a3];
  [(MacRoutePlanningOverviewViewController *)self setRouteSearchSuggestionsTableViewHidden:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = MacRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v8 viewDidDisappear:a3];
  v4 = objc_opt_new();
  v9[0] = v4;
  v5 = objc_opt_new();
  v9[1] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:2];
  v7 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [v7 setItems:v6];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MacRoutePlanningOverviewViewController;
  [(ContaineeViewController *)&v5 viewWillDisappear:a3];
  v4 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [v4 endEditingFields];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MacRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v4 viewWillAppear:a3];
  [(MacRoutePlanningOverviewViewController *)self _refreshRouteSearchFields];
  [(MacRoutePlanningOverviewViewController *)self _refreshDesiredTransportType];
  [(MacRoutePlanningOverviewViewController *)self _refreshOptionsVisibility];
}

- (id)_initialConstraints
{
  v22.receiver = self;
  v22.super_class = MacRoutePlanningOverviewViewController;
  v21 = [(RoutePlanningOverviewViewController *)&v22 _initialConstraints];
  v20 = [(RoutePlanningOverviewViewController *)self collectionView];
  v18 = [v20 topAnchor];
  v19 = [(ContaineeViewController *)self contentView];
  v17 = [v19 topAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v23[0] = v16;
  v15 = [(RoutePlanningOverviewViewController *)self collectionView];
  v14 = [v15 leadingAnchor];
  v3 = [(ContaineeViewController *)self contentView];
  v4 = [v3 leadingAnchor];
  v5 = [v14 constraintEqualToAnchor:v4];
  v23[1] = v5;
  v6 = [(RoutePlanningOverviewViewController *)self collectionView];
  v7 = [v6 trailingAnchor];
  v8 = [(ContaineeViewController *)self contentView];
  v9 = [v8 trailingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v23[2] = v10;
  v11 = [(RoutePlanningOverviewViewController *)self collectionViewToBottomConstraint];
  v23[3] = v11;
  v12 = [NSArray arrayWithObjects:v23 count:4];
  [v21 addObjectsFromArray:v12];

  return v21;
}

- (void)_setupSubviews
{
  v54.receiver = self;
  v54.super_class = MacRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v54 _setupSubviews];
  v3 = [(RoutePlanningOverviewViewController *)self rootController];
  [v3 setScrollViewDelegate:self];

  v4 = [(RoutePlanningOverviewViewController *)self rootController];
  [v4 setStepsListDelegate:self];

  v5 = [(RoutePlanningOverviewViewController *)self rootController];
  [v5 addObserver:self forKeyPath:@"hasExpandedSteps" options:1 context:&unk_10195D9D8];

  objc_initWeak(&location, self);
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10082EA30;
  v51[3] = &unk_101661B98;
  objc_copyWeak(&v52, &location);
  v6 = [(RoutePlanningOverviewViewController *)self rootController];
  [v6 setPostReloadHandler:v51];

  v7 = [(MacRoutePlanningOverviewViewController *)self view];
  v8 = [(ContaineeViewController *)self contentView];
  [v7 bringSubviewToFront:v8];

  v9 = [RoutePlanningTransitTimingControlsView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v13 = [(RoutePlanningTransitTimingControlsView *)v9 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(MacRoutePlanningOverviewViewController *)self setTimingControlsView:v13];

  v14 = [(MacRoutePlanningOverviewViewController *)self timingControlsView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [[RoutePlanningOptionsBar alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(MacRoutePlanningOverviewViewController *)self setOptionsBar:v15];

  v16 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = objc_opt_new();
  [(MacRoutePlanningOverviewViewController *)self setChargingOptionsView:v17];

  v18 = [(MacRoutePlanningOverviewViewController *)self chargingOptionsView];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"Charging Options Description [Catalyst value:Route Planning]" table:{@"localized string not found", 0}];
  v21 = [(MacRoutePlanningOverviewViewController *)self chargingOptionsView];
  v22 = [v21 descriptionLabel];
  [v22 setText:v20];

  v23 = [(MacRoutePlanningOverviewViewController *)self chargingOptionsView];
  v24 = [v23 checkbox];
  [v24 addTarget:self action:"pressedAssumeFullCharge" forControlEvents:0x2000];

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10082EAB8;
  v49[3] = &unk_10162B968;
  objc_copyWeak(&v50, &location);
  v25 = [(MacRoutePlanningOverviewViewController *)self timingControlsView];
  [v25 setChangeHandler:v49];

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

  v29 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [v29 setMprEnabled:IsEnabled_Maps182];

  v30 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  v32 = [v31 view];

  v33 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [(MacRoutePlanningOverviewViewController *)self addChildViewController:v33];

  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = [UIStackView alloc];
  v35 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
  v55[0] = v35;
  v55[1] = v32;
  v36 = [(MacRoutePlanningOverviewViewController *)self timingControlsView];
  v55[2] = v36;
  v37 = [(MacRoutePlanningOverviewViewController *)self optionsBar];
  v55[3] = v37;
  v38 = [NSArray arrayWithObjects:v55 count:4];
  v39 = [v34 initWithArrangedSubviews:v38];

  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v39 setAlignment:0];
  [v39 setAxis:1];
  [v39 setDistribution:0];
  [v39 setSpacing:16.0];
  [v30 addSubview:v39];
  [(MacRoutePlanningOverviewViewController *)self setHeaderStackView:v39];
  v40 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
  [v40 didMoveToParentViewController:self];

  LODWORD(v41) = 1148846080;
  v42 = [v39 _maps_constraintsEqualToEdgesOfView:v30 insets:4.0 priority:{16.0, 0.0, 16.0, v41}];
  v43 = [v42 allConstraints];
  [NSLayoutConstraint activateConstraints:v43];

  v44 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  [v44 setAccessoryView:v30];

  [(MacRoutePlanningOverviewViewController *)self _prepareRouteSearchControllers];
  v45 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  v46 = [v45 _headerTapGesture];
  [v46 setCancelsTouchesInView:0];

  objc_destroyWeak(&v48);
  objc_destroyWeak(&v50);
  objc_destroyWeak(&v52);
  objc_destroyWeak(&location);
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v12 = a3;
  v5 = [v12 nextFocusedItem];
  if (v5)
  {
    v6 = v5;
    v7 = [(MacRoutePlanningOverviewViewController *)self routeSearchSuggestionsTableViewController];
    v8 = [v12 nextFocusedItem];
    if ([UIFocusSystem environment:v7 containsEnvironment:v8])
    {
    }

    else
    {
      v9 = [(MacRoutePlanningOverviewViewController *)self searchFieldsViewController];
      v10 = [v12 nextFocusedItem];
      v11 = [UIFocusSystem environment:v9 containsEnvironment:v10];

      if ((v11 & 1) == 0)
      {
        [(MacRoutePlanningOverviewViewController *)self setRouteSearchSuggestionsTableViewHidden:1];
      }
    }
  }
}

- (void)arrowLeftPressed:(id)a3
{
  v4 = [(MacRoutePlanningOverviewViewController *)self traitCollection];
  v5 = [v4 layoutDirection];

  v6 = [(RoutePlanningOverviewViewController *)self rootController];
  v7 = v6;
  if (v5 == 1)
  {
    [v6 expandCurrentlyFocusedRoute];
  }

  else
  {
    [v6 collapseCurrentlyFocusedRoute];
  }
}

- (void)arrowRightPressed:(id)a3
{
  v4 = [(MacRoutePlanningOverviewViewController *)self traitCollection];
  v5 = [v4 layoutDirection];

  v6 = [(RoutePlanningOverviewViewController *)self rootController];
  v7 = v6;
  if (v5 == 1)
  {
    [v6 collapseCurrentlyFocusedRoute];
  }

  else
  {
    [v6 expandCurrentlyFocusedRoute];
  }
}

- (id)keyCommands
{
  v9.receiver = self;
  v9.super_class = MacRoutePlanningOverviewViewController;
  v3 = [(ContaineeViewController *)&v9 keyCommands];
  v4 = [v3 mutableCopy];

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
  v3 = [(RoutePlanningOverviewViewController *)self rootController];
  [v3 removeObserver:self forKeyPath:@"hasExpandedSteps"];

  v4.receiver = self;
  v4.super_class = MacRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v4 dealloc];
}

- (MacRoutePlanningOverviewViewController)initWithDataCoordinator:(id)a3
{
  v8.receiver = self;
  v8.super_class = MacRoutePlanningOverviewViewController;
  v3 = [(RoutePlanningOverviewViewController *)&v8 initWithDataCoordinator:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(ContaineeViewController *)v3 cardPresentationController];
    [v5 setAllowResizeInFloatingStyle:1];

    v6 = [(ContaineeViewController *)v4 cardPresentationController];
    [v6 setDefaultContaineeLayout:1];
  }

  return v4;
}

@end