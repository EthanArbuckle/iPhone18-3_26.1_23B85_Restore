@interface RoutePlanningContext
- (BOOL)chromeDidClearMapSelection;
- (BOOL)chromeDidSelectETAMarkerForRoute:(id)a3;
- (BOOL)chromeDidSelectMarkerForMapItem:(id)a3;
- (BOOL)chromeDidSelectUserLocationAnnotation:(id)a3;
- (BOOL)chromeShouldAllowSelectingLabelMarker:(id)a3;
- (BOOL)isRoutePlanningPresented;
- (ChromeViewController)chromeViewController;
- (RoutePlanningContext)initWithDirectionItem:(id)a3 userInfo:(id)a4;
- (id)_autosharingViewController;
- (id)_filteredFeaturesFromTransitSystems:(id)a3 allFeatures:(id)a4;
- (id)_incidentsViewController;
- (id)_optionsViewControllerForCurrentRoute;
- (id)_routeAnnotationViewController;
- (id)_routeSearchViewController;
- (id)_routingAppsViewController;
- (id)_stepsViewController;
- (id)_timingViewControllerForCurrentRoute;
- (id)desiredCards;
- (id)mapCameraController;
- (id)mapSelectionManager;
- (id)personalizedItemManagerForRouteSearchViewController:(id)a3;
- (id)personalizedItemSources;
- (id)traitsForRouteSearchViewController:(id)a3;
- (id)userLocationSearchResultForRouteSearchViewController:(id)a3;
- (void)_carPlayWantsToDisplayEVOnboarding:(id)a3;
- (void)_performInitialLoadIfNeeded;
- (void)_presentMacRouteEditingWithEditRequired:(unint64_t)a3 index:(unint64_t)a4;
- (void)_presentPlaceCardWithItem:(id)a3;
- (void)_promptForCurrentLocationConfirmationWithDirectionItem:(id)a3 userInfo:(id)a4;
- (void)_promptForEditRequired:(unint64_t)a3 forWaypointAtIndex:(unint64_t)a4 inDirectionItem:(id)a5 userInfo:(id)a6;
- (void)addStopForSearchFieldItem:(id)a3 withUserInfo:(id)a4;
- (void)autosharingController:(id)a3 wantsToSearchWithExistingContacts:(id)a4 selectionHandler:(id)a5;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)chromeViewController:(id)a3 didUpdateViewMode:(int64_t)a4;
- (void)closeRoutePlanningViewController:(id)a3 withSender:(id)a4;
- (void)containeeViewControllerDidDismissExternally:(id)a3;
- (void)continueRideBookingSessionWithApplicationIdentifier:(id)a3;
- (void)displayAlertWithTitle:(id)a3 message:(id)a4 postAlertSearchType:(unsigned int)a5;
- (void)displayStoreViewControllerForAppWithiTunesIdentifier:(id)a3 clientIdentifier:(id)a4;
- (void)ensureRoutePlanningContentIsVisible;
- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)exitRoutePlanningIfNeededAnimated:(BOOL)a3;
- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)macDismissRouteSearchSuggestionsController:(id)a3;
- (void)macPresentRouteSearchSuggestionsController:(id)a3;
- (void)prepareToEnterStackInChromeViewController:(id)a3;
- (void)presentEducationScreenWithAssetURLs:(id)a3 titleText:(id)a4 bodyText:(id)a5;
- (void)presentRoutePlanningViewType:(int64_t)a3;
- (void)presentScheduleForStep:(id)a3;
- (void)presentVehicleOnboardingWithVehicles:(id)a3 completion:(id)a4;
- (void)presentWalletDCIViewControllerWithTransitSystems:(id)a3 callbackDelegate:(id)a4;
- (void)presentWalletTopUpViewControllerWithTransitIdentifier:(id)a3 callbackDelegate:(id)a4;
- (void)productViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)refreshRoutePlanningTimingIfNeeded;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)routePlanningDataCoordinator:(id)a3 isEnabled:(BOOL)a4;
- (void)routePlanningUpdatedWaypoints:(id)a3;
- (void)routeSearchViewControllerDidDismiss:(id)a3 shouldExitRoutePlanning:(BOOL)a4;
- (void)routeStepsViewController:(id)a3 wantsToDisplayAdvisory:(id)a4;
- (void)routeStepsViewController:(id)a3 wantsToShareItem:(id)a4 fromView:(id)a5;
- (void)selectWaypointSearchFieldIndex:(unint64_t)a3 exitPlanningIfCancelTapped:(BOOL)a4 beginEditing:(BOOL)a5;
- (void)setDirectionItem:(id)a3 allowToPromptEditing:(BOOL)a4 userInfo:(id)a5;
- (void)setRoutePlanningAdvisoriesInfo:(id)a3;
- (void)setRoutePlanningAdvisory:(id)a3;
- (void)startNavigationWithRouteCollection:(id)a3 navigationDetailsOptions:(NavigationDetailsOptions *)a4;
- (void)startRideBookingSessionWithRideOption:(id)a3;
@end

@implementation RoutePlanningContext

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (BOOL)isRoutePlanningPresented
{
  v2 = self;
  v3 = [(RoutePlanningContext *)self chromeViewController];
  LOBYTE(v2) = [v3 isTopContext:v2];

  return v2;
}

- (void)ensureRoutePlanningContentIsVisible
{
  if ([(RoutePlanningContext *)self isRoutePlanningPresented])
  {
    mapController = self->_mapController;

    [(RoutePlanningMapController *)mapController updateCameraIfPossible];
  }
}

- (void)displayStoreViewControllerForAppWithiTunesIdentifier:(id)a3 clientIdentifier:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = objc_alloc_init(SKStoreProductViewController);
    [v8 setDelegate:self];
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = &stru_1016631F0;
    }

    [v8 setClientIdentifier:v9];

    v12 = SKStoreProductParameterITunesItemIdentifier;
    v13 = v7;
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

    [v8 loadProductWithParameters:v10 completionBlock:&stru_1016275C8];
    v11 = [(RoutePlanningContext *)self chromeViewController];
    [v11 _maps_topMostPresentViewController:v8 animated:1 completion:0];
  }
}

- (void)continueRideBookingSessionWithApplicationIdentifier:(id)a3
{
  v4 = a3;
  v6 = [(RoutePlanningContext *)self iosChromeViewController];
  v5 = [v6 appCoordinator];
  [v5 continueRideBookingSessionWithApplicationIdentifier:v4];
}

- (void)startRideBookingSessionWithRideOption:(id)a3
{
  v4 = a3;
  v6 = [(RoutePlanningContext *)self iosChromeViewController];
  v5 = [v6 appCoordinator];
  [v5 startRideBookingSessionWithRideBookingRideOption:v4];
}

- (void)startNavigationWithRouteCollection:(id)a3 navigationDetailsOptions:(NavigationDetailsOptions *)a4
{
  v6 = a3;
  v7 = [(RoutePlanningContext *)self iosChromeViewController];
  v8 = [v7 appCoordinator];
  v9 = *&a4->guidanceType;
  v10[0] = *&a4->shouldSimulateLocations;
  v10[1] = v9;
  v10[2] = *&a4->isReconnecting;
  navigationModeContext = a4->navigationModeContext;
  [v8 startNavigationWithRouteCollection:v6 navigationDetailsOptions:v10];
}

- (void)autosharingController:(id)a3 wantsToSearchWithExistingContacts:(id)a4 selectionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [ContactSearchViewController alloc];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10070C064;
  v18[3] = &unk_1016275A8;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  v12 = v9;
  v13 = v8;
  v14 = [(ContactSearchViewController *)v11 initWithInitialContacts:v10 selectionHandler:v18];

  v15 = [(ContaineeViewController *)v14 cardPresentationController];
  [v15 setPresentedModally:1];

  [(ContaineeViewController *)v14 setContaineeDelegate:self];
  currentCard = self->_currentCard;
  self->_currentCard = v14;

  v17 = [(RoutePlanningContext *)self iosBasedChromeViewController];
  [v17 setNeedsUpdateComponent:@"cards" animated:1];
}

- (id)_autosharingViewController
{
  autosharingViewController = self->_autosharingViewController;
  if (!autosharingViewController)
  {
    v4 = [[SharedTripAutosharingContaineeViewController alloc] initWithContacts:&__NSArray0__struct];
    v5 = self->_autosharingViewController;
    self->_autosharingViewController = v4;

    [(ContaineeViewController *)self->_autosharingViewController setContaineeDelegate:self];
    [(SharedTripAutosharingContaineeViewController *)self->_autosharingViewController setDelegate:self];
    autosharingViewController = self->_autosharingViewController;
  }

  return autosharingViewController;
}

- (void)presentScheduleForStep:(id)a3
{
  v4 = a3;
  v6 = [[_TtC4Maps23TransitSchedulesContext alloc] initWithRouteStep:v4];

  v5 = [(RoutePlanningContext *)self chromeViewController];
  [v5 pushContext:v6 animated:1 completion:0];
}

- (void)setRoutePlanningAdvisory:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningContext *)self _incidentsViewController];
  [v5 setAdvisory:v4];
}

- (void)setRoutePlanningAdvisoriesInfo:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningContext *)self _incidentsViewController];
  [v5 setAdvisoriesInfo:v4];
}

- (void)presentVehicleOnboardingWithVehicles:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[EVOnboardingController alloc] initWithUnpairedVehicles:v7];

  vehicleOnboardingController = self->_vehicleOnboardingController;
  self->_vehicleOnboardingController = v8;

  v10 = self->_vehicleOnboardingController;
  v11 = [(RoutePlanningContext *)self chromeViewController];
  [(EVOnboardingController *)v10 presentInViewController:v11 animated:1 completion:v6];
}

- (id)userLocationSearchResultForRouteSearchViewController:(id)a3
{
  v3 = [(RoutePlanningContext *)self chromeViewController];
  v4 = [v3 mapView];
  v5 = [v4 userLocation];

  v6 = [v5 annotation];

  return v6;
}

- (id)traitsForRouteSearchViewController:(id)a3
{
  v3 = [(RoutePlanningContext *)self chromeViewController];
  v4 = [v3 currentTraits];

  return v4;
}

- (id)personalizedItemManagerForRouteSearchViewController:(id)a3
{
  v3 = [(RoutePlanningContext *)self iosChromeViewController];
  v4 = [v3 personalizedItemManager];

  return v4;
}

- (void)routeSearchViewControllerDidDismiss:(id)a3 shouldExitRoutePlanning:(BOOL)a4
{
  if (a4)
  {
    v5 = [(RoutePlanningContext *)self chromeViewController];
    [v5 popContext:self animated:1 completion:0];
  }

  else
  {

    [(RoutePlanningContext *)self containeeViewControllerGoToPreviousState:a3 withSender:0];
  }
}

- (void)routePlanningUpdatedWaypoints:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = v4;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = v13;
    if (isKindOfClass)
    {
      v6 = self->_currentCard;
      v7 = [v13 origin];
      v8 = [v7 geoMapItem];
      v9 = [v8 timezone];
      [(ContaineeProtocol *)v6 setOriginTimeZone:v9];

      v10 = [v13 destination];
      v11 = [v10 geoMapItem];
      v12 = [v11 timezone];
      [(ContaineeProtocol *)v6 setDestinationTimeZone:v12];

      v4 = v13;
    }
  }
}

- (void)selectWaypointSearchFieldIndex:(unint64_t)a3 exitPlanningIfCancelTapped:(BOOL)a4 beginEditing:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(RoutePlanningContext *)self _routeSearchViewController];
  [v8 setExitRoutePlanningOnCancel:v6];
  [v8 selectFieldIndex:a3 beginEditing:v5];
}

- (id)_routeSearchViewController
{
  routeSearchViewController = self->_routeSearchViewController;
  if (!routeSearchViewController || ([(RouteSearchViewController *)routeSearchViewController dataCoordinator], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    [(RoutePlanningOverviewViewController *)self->_overviewViewController loadViewIfNeeded];
    v5 = [(RoutePlanningOverviewViewController *)self->_overviewViewController routeSearchViewController];

    if (v5)
    {
      v6 = [(RoutePlanningOverviewViewController *)self->_overviewViewController routeSearchViewController];
    }

    else
    {
      v6 = [[RouteSearchViewController alloc] initWithDelegate:self dataCoordinator:self->_dataCoordinator];
    }

    v7 = self->_routeSearchViewController;
    self->_routeSearchViewController = v6;
  }

  v8 = self->_routeSearchViewController;

  return v8;
}

- (id)_routeAnnotationViewController
{
  routeAnnotationViewController = self->_routeAnnotationViewController;
  if (!routeAnnotationViewController)
  {
    v4 = objc_alloc_init(_TtC4Maps38RouteAnnotationContaineeViewController);
    v5 = self->_routeAnnotationViewController;
    self->_routeAnnotationViewController = v4;

    [(ContaineeViewController *)self->_routeAnnotationViewController setContaineeDelegate:self];
    objc_initWeak(&location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10070C854;
    v7[3] = &unk_101627580;
    objc_copyWeak(&v8, &location);
    [(RouteAnnotationContaineeViewController *)self->_routeAnnotationViewController setOnDismiss:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    routeAnnotationViewController = self->_routeAnnotationViewController;
  }

  return routeAnnotationViewController;
}

- (id)_routingAppsViewController
{
  v3 = [[RoutePlanningRoutingAppsController alloc] initWithDataCoordination:self->_dataCoordinator];
  [(ContaineeViewController *)v3 setContaineeDelegate:self];

  return v3;
}

- (id)_incidentsViewController
{
  incidentsViewController = self->_incidentsViewController;
  if (!incidentsViewController)
  {
    v4 = [[RouteIncidentsViewController alloc] initWithDataCoordination:self->_dataCoordinator];
    v5 = self->_incidentsViewController;
    self->_incidentsViewController = v4;

    [(ContaineeViewController *)self->_incidentsViewController setContaineeDelegate:self];
    incidentsViewController = self->_incidentsViewController;
  }

  if (sub_10000FA08(incidentsViewController) == 5)
  {
    [(RouteIncidentsViewController *)self->_incidentsViewController setModalPresentationStyle:7];
    WeakRetained = objc_loadWeakRetained(&self->_incidentsControllerSourceView);
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = WeakRetained;
    }

    else
    {
      v8 = [(RoutePlanningOverviewViewController *)self->_overviewViewController view];
    }

    v9 = v8;

    v10 = [(RouteIncidentsViewController *)self->_incidentsViewController popoverPresentationController];
    [v10 setSourceView:v9];

    [v9 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(RouteIncidentsViewController *)self->_incidentsViewController popoverPresentationController];
    [v19 setSourceRect:{v12, v14, v16, v18}];

    v20 = [(RouteIncidentsViewController *)self->_incidentsViewController popoverPresentationController];
    [v20 setPermittedArrowDirections:12];
  }

  v21 = self->_incidentsViewController;

  return v21;
}

- (id)_optionsViewControllerForCurrentRoute
{
  v3 = [RoutePlanningOptionsViewController alloc];
  dataCoordinator = self->_dataCoordinator;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10070CBCC;
  v21[3] = &unk_10162E5D0;
  v21[4] = self;
  v5 = [(RoutePlanningOptionsViewController *)v3 initWithDataCoordinator:dataCoordinator automaticallySaveChanges:0 completionHandler:v21];
  v6 = [(RoutePlanningOptionsViewController *)v5 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 5)
  {
    v8 = [(RoutePlanningOverviewViewController *)self->_overviewViewController routeOptionsPopoverSourceView];
    [(RoutePlanningOptionsViewController *)v5 setModalPresentationStyle:7];
    v9 = [(RoutePlanningOptionsViewController *)v5 popoverPresentationController];
    [v9 setSourceView:v8];

    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(RoutePlanningOptionsViewController *)v5 popoverPresentationController];
    [v18 setSourceRect:{v11, v13, v15, v17}];

    v19 = [(RoutePlanningOptionsViewController *)v5 popoverPresentationController];
    [v19 setPermittedArrowDirections:12];
  }

  return v5;
}

- (void)refreshRoutePlanningTimingIfNeeded
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = self->_currentCard;
    v3 = [(RoutePlanningDataCoordinator *)self->_dataCoordinator routeCollection];
    v4 = [v3 currentRoute];

    if (v4)
    {
      v5 = [v4 shouldShowSchedule];
    }

    else
    {
      v5 = 0;
    }

    [(ContaineeProtocol *)v6 setShowArriveBy:v5 animated:1];
  }
}

- (id)_timingViewControllerForCurrentRoute
{
  v3 = [(RoutePlanningDataCoordinator *)self->_dataCoordinator routeCollection];
  v4 = [v3 currentRoute];

  v5 = [RoutePlanningTimingViewController alloc];
  v6 = [(RoutePlanningDataCoordinator *)self->_dataCoordinator timing];
  v7 = -[RoutePlanningTimingViewController initWithCurrentTiming:shouldShowArriveBy:pickerDelegate:](v5, "initWithCurrentTiming:shouldShowArriveBy:pickerDelegate:", v6, [v4 shouldShowSchedule], self);

  [(ContaineeViewController *)v7 setContaineeDelegate:self];

  return v7;
}

- (void)routeStepsViewController:(id)a3 wantsToDisplayAdvisory:(id)a4
{
  [(RoutePlanningContext *)self setRoutePlanningAdvisory:a4];

  [(RoutePlanningContext *)self presentRoutePlanningViewType:5];
}

- (void)routeStepsViewController:(id)a3 wantsToShareItem:(id)a4 fromView:(id)a5
{
  v7 = a4;
  v10 = [MUPresentationOptions optionsWithSender:a5];
  v8 = [(RoutePlanningContext *)self iosChromeViewController];
  v9 = [v8 appCoordinator];
  [v9 shareItem:v7 presentationOptions:v10 completion:0];
}

- (id)_stepsViewController
{
  routeStepsViewController = self->_routeStepsViewController;
  if (!routeStepsViewController)
  {
    v4 = [[RouteStepsViewController alloc] initWithNibName:0 bundle:0];
    v5 = self->_routeStepsViewController;
    self->_routeStepsViewController = v4;

    [(RouteStepsViewController *)self->_routeStepsViewController setDelegate:self];
    [(ContaineeViewController *)self->_routeStepsViewController setContaineeDelegate:self];
    [(RouteStepsViewController *)self->_routeStepsViewController setDataCoordinator:self->_dataCoordinator];
    routeStepsViewController = self->_routeStepsViewController;
  }

  return routeStepsViewController;
}

- (void)chromeViewController:(id)a3 didUpdateViewMode:(int64_t)a4
{
  v6 = a3;
  if (![v6 isTopContext:self])
  {
    goto LABEL_43;
  }

  v7 = self->_dataCoordinator;
  v8 = [(RoutePlanningDataCoordinator *)v7 transportType];
  if (!v8)
  {
    goto LABEL_40;
  }

  v9 = v8;
  if (a4 > 7)
  {
    goto LABEL_13;
  }

  if (((1 << a4) & 0x67) == 0)
  {
    if (a4 == 3)
    {
      if (v8 == 3)
      {
        goto LABEL_40;
      }

LABEL_19:
      if (a4 == 3)
      {
        v12 = 3;
      }

      else
      {
        v12 = 1;
      }

      if (a4 == -1)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      v14 = sub_100798408();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        if ((0x1DFu >> (a4 + 1)))
        {
          v15 = *(&off_101627628 + a4 + 1);
        }

        else
        {
          v15 = [NSString stringWithFormat:@"<Unknown: %ld>", a4];
        }

        v17 = v15;
        v18 = v17;
        if ((v9 - 2) > 3)
        {
          v19 = @"Drive";
        }

        else
        {
          v19 = *(&off_101627690 + (v9 - 2));
        }

        v20 = *(&off_101627670 + v13);
        *buf = 138543874;
        v29 = v17;
        v30 = 2114;
        v31 = v19;
        v32 = 2114;
        v33 = v20;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "view mode %{public}@ isn't supported by transport type %{public}@; will switch to default transport type %{public}@", buf, 0x20u);
      }

      [(DirectionItem *)self->_directionItem setTransportType:v13];
      [(RoutePlanningDataCoordinator *)v7 updateTransportType:v13];
      goto LABEL_40;
    }

    if (a4 == 7)
    {
      if (v8 == 1 || v8 == 4)
      {
        goto LABEL_40;
      }

      goto LABEL_19;
    }

LABEL_13:
    if (a4 != -1)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (v8 == 3)
  {
    if (a4 == 3)
    {
      goto LABEL_19;
    }

LABEL_14:
    v10 = sub_100798408();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (a4 < 8 && ((0xEFu >> a4) & 1) != 0)
      {
        v11 = *(&off_1016275E8 + a4);
      }

      else
      {
        v11 = [NSString stringWithFormat:@"<Unknown: %ld>", a4];
      }

      if ((v9 - 2) > 3)
      {
        v16 = @"Drive";
      }

      else
      {
        v16 = *(&off_101627690 + (v9 - 2));
      }

      *buf = 138543618;
      v29 = v11;
      v30 = 2114;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "view mode %{public}@ isn't supported by transport type %{public}@; will attempt to replace the transport type", buf, 0x16u);
    }

    v21 = [v6 defaultTransportTypeFinder];
    objc_initWeak(buf, self);
    directionItem = self->_directionItem;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10070D2A0;
    v25[3] = &unk_10162EB60;
    objc_copyWeak(v27, buf);
    v27[1] = a4;
    v26 = v7;
    [v21 transportTypeForDirectionItem:directionItem ignoreMapType:0 completion:v25];

    objc_destroyWeak(v27);
    objc_destroyWeak(buf);
  }

LABEL_40:
  v23 = [v6 settingsController];
  v24 = [v23 userRequestingViewModeChange];

  if (v24)
  {
    [(RoutePlanningMapController *)self->_mapController saveOriginalMapViewModeAs:a4];
  }

LABEL_43:
}

- (void)macDismissRouteSearchSuggestionsController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_routeSearchSuggestionsController);

  if (WeakRetained == v4)
  {
    objc_storeWeak(&self->_routeSearchSuggestionsController, 0);
    v6 = [(RoutePlanningContext *)self chromeViewController];
    [v6 setNeedsUpdateComponent:@"cards" animated:1];
  }
}

- (void)macPresentRouteSearchSuggestionsController:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_routeSearchSuggestionsController, v4);
  [v4 setContaineeDelegate:self];

  v5 = [(RoutePlanningContext *)self chromeViewController];
  [v5 setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)exitRoutePlanningIfNeededAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(RoutePlanningContext *)self chromeViewController];
  [v5 popContext:self animated:v3 completion:0];
}

- (void)closeRoutePlanningViewController:(id)a3 withSender:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    if (sub_10000FA08(v11) == 5 && [(RoutePlanningOverviewViewController *)v11 modalPresentationStyle]== 7)
    {
      [(RoutePlanningOverviewViewController *)v11 dismissViewControllerAnimated:1 completion:0];
    }

    else if (self->_overviewViewController == v11)
    {
      v10 = [(RoutePlanningContext *)self chromeViewController];
      [v10 popContext:self animated:1 completion:0];
    }

    else
    {
      currentCard = self->_currentCard;
      if (currentCard == v11)
      {
        self->_currentCard = 0;

        routeSearchViewController = self->_routeSearchViewController;
        if (routeSearchViewController == v11)
        {
          self->_routeSearchViewController = 0;
        }

        v9 = [(RoutePlanningContext *)self chromeViewController];
        [v9 setNeedsUpdateComponent:@"cards" animated:1];
      }
    }
  }
}

- (void)presentRoutePlanningViewType:(int64_t)a3
{
  if (a3 <= 4)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v4 = [(RoutePlanningContext *)self _routeSearchViewController];
      }

      else
      {
        if (a3 != 2)
        {
          return;
        }

        v4 = [(RoutePlanningContext *)self _stepsViewController];
      }

      goto LABEL_18;
    }

    if (a3 == 3)
    {
      [(RoutePlanningContext *)self _timingViewControllerForCurrentRoute];
    }

    else
    {
      [(RoutePlanningContext *)self _optionsViewControllerForCurrentRoute];
    }

    v4 = LABEL_9:;
    goto LABEL_18;
  }

  if (a3 <= 6)
  {
    if (a3 == 5)
    {
      [(RoutePlanningContext *)self _incidentsViewController];
    }

    else
    {
      [(RoutePlanningContext *)self _routingAppsViewController];
    }

    goto LABEL_9;
  }

  if (a3 != 7)
  {
    if (a3 != 8)
    {
      return;
    }

    v5 = [RoutePlanningEbikeOptionsViewController alloc];
    dataCoordinator = self->_dataCoordinator;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10070D97C;
    v17[3] = &unk_10162E5D0;
    v17[4] = self;
    v4 = [(RoutePlanningOptionsViewController *)v5 initWithDataCoordinator:dataCoordinator automaticallySaveChanges:0 completionHandler:v17];
LABEL_18:
    v7 = v4;
    if (!v4)
    {
      return;
    }

    goto LABEL_19;
  }

  v7 = [(RoutePlanningContext *)self _autosharingViewController];
  WeakRetained = objc_loadWeakRetained(&self->_platformController);
  v12 = [WeakRetained currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v14 automaticSharingContacts];

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  [v7 setContacts:v16];

  if (v7)
  {
LABEL_19:
    if ([v7 modalPresentationStyle] == 7)
    {
      v8 = [(RoutePlanningContext *)self chromeViewController];
      [v8 presentViewController:v7 animated:1 completion:0];
    }

    else
    {
      currentCard = self->_currentCard;
      self->_currentCard = v7;
      v10 = v7;

      v8 = [(RoutePlanningContext *)self chromeViewController];
      [v8 setNeedsUpdateComponent:@"cards" animated:1];
    }
  }
}

- (void)_carPlayWantsToDisplayEVOnboarding:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"EVOnboardingCarPlayVehicleKey"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v4 objectForKeyedSubscript:@"EVOnboardingCarPlayDictionaryKey"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = sub_100798370();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "_carPlayWantsToDisplayEVOnboarding: will display onboarding for vehicle: %@", buf, 0xCu);
      }

      v12 = v5;
      v8 = [NSArray arrayWithObjects:&v12 count:1];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10070DBF0;
      v10[3] = &unk_101661B18;
      v11 = v6;
      [(RoutePlanningContext *)self presentVehicleOnboardingWithVehicles:v8 completion:v10];

      v9 = v11;
    }

    else
    {
      v9 = sub_100798370();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "_carPlayWantsToDisplayEVOnboarding: Received invalid dictionaryKey object through notification: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = sub_100798370();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "_carPlayWantsToDisplayEVOnboarding: Received invalid vehicle object through notification: %@", buf, 0xCu);
    }
  }
}

- (void)presentWalletTopUpViewControllerWithTransitIdentifier:(id)a3 callbackDelegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_10003D020();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Showing Wallet Top-Up View Controller", v11, 2u);
  }

  v9 = [[PKPerformActionSetupViewController alloc] initWithPassIdentifier:v7];
  [v9 setDelegate:v6];

  v10 = [(RoutePlanningContext *)self chromeViewController];
  [v10 _maps_topMostPresentViewController:v9 animated:1 completion:0];
}

- (void)presentWalletDCIViewControllerWithTransitSystems:(id)a3 callbackDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    if ([v7 count])
    {
      v9 = objc_alloc_init(PKPaymentSetupConfiguration);
      [v9 setReferrerIdentifier:@"maps"];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10070E040;
      v14[3] = &unk_10162EC68;
      v14[4] = self;
      v15 = v7;
      v16 = v9;
      v17 = v8;
      v18 = a2;
      v10 = v9;
      [PKPaymentSetupViewController paymentSetupFeaturesForConfiguration:v10 completion:v14];

      goto LABEL_13;
    }

    v13 = sub_10003D020();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RoutePlanningContext.m";
      v21 = 1024;
      v22 = 825;
      v23 = 2082;
      v24 = "[RoutePlanningContext presentWalletDCIViewControllerWithTransitSystems:callbackDelegate:]";
      v25 = 2082;
      v26 = "transitSystems.count == 0u";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. transitSystems.count cannot be 0", buf, 0x26u);
    }

    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RoutePlanningContext.m";
      v21 = 1024;
      v22 = 825;
      v23 = 2082;
      v24 = "[RoutePlanningContext presentWalletDCIViewControllerWithTransitSystems:callbackDelegate:]";
      v25 = 2082;
      v26 = "transitSystems.count == 0u";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. transitSystems.count cannot be 0";
      goto LABEL_12;
    }
  }

  else
  {
    v11 = sub_10003D020();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RoutePlanningContext.m";
      v21 = 1024;
      v22 = 824;
      v23 = 2082;
      v24 = "[RoutePlanningContext presentWalletDCIViewControllerWithTransitSystems:callbackDelegate:]";
      v25 = 2082;
      v26 = "transitSystems == nil";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. transitSystems cannot be nil", buf, 0x26u);
    }

    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RoutePlanningContext.m";
      v21 = 1024;
      v22 = 824;
      v23 = 2082;
      v24 = "[RoutePlanningContext presentWalletDCIViewControllerWithTransitSystems:callbackDelegate:]";
      v25 = 2082;
      v26 = "transitSystems == nil";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. transitSystems cannot be nil";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, v12, buf, 0x26u);
    }
  }

LABEL_13:
}

- (id)_filteredFeaturesFromTransitSystems:(id)a3 allFeatures:(id)a4
{
  v5 = a3;
  v6 = a4;
  v24 = v5;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v6;
  v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v25)
  {
    v23 = *v31;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v10 = v24;
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v27;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v27 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v26 + 1) + 8 * j);
              v16 = [v9 identifiers];
              v17 = [v15 identifier];
              v18 = [v16 containsObject:v17];

              if (v18)
              {
                v19 = [v9 copy];
                [v7 addObject:v19];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v12);
        }
      }

      v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v25);
  }

  v20 = [v7 copy];

  return v20;
}

- (void)presentEducationScreenWithAssetURLs:(id)a3 titleText:(id)a4 bodyText:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = [[TransitPayEducationScreenViewController alloc] initWithAssetURLs:v10 titleText:v9 bodyText:v8];

  v11 = [[UINavigationController alloc] initWithRootViewController:v13];
  v12 = [(RoutePlanningContext *)self chromeViewController];
  [v12 _maps_topMostPresentViewController:v11 animated:1 completion:0];
}

- (void)productViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v6 = a3;
  [v6 dismissViewControllerAnimated:1 completion:0];
  v7 = [v6 clientIdentifier];

  v8 = [v7 isEqualToString:@"RidesharingStoreProductClientIdentifier"];
  if (a4 == 4 && v8)
  {
    v10 = [(RoutePlanningDataCoordinator *)self->_dataCoordinator rideOptionStateObserver];
    v9 = [v10 analyticsBookingSession];
    [v9 setInstalledApp:1];
  }
}

- (void)containeeViewControllerDidDismissExternally:(id)a3
{
  v4 = a3;
  currentCard = self->_currentCard;
  v9 = v4;
  if (currentCard == v4)
  {
    self->_currentCard = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_routeSearchSuggestionsController);

    v7 = v9;
    if (WeakRetained != v9)
    {
      goto LABEL_6;
    }

    objc_storeWeak(&self->_routeSearchSuggestionsController, 0);
  }

  v8 = [(RoutePlanningContext *)self chromeViewController];
  [v8 setNeedsUpdateComponent:@"cards" animated:0];

  v7 = v9;
LABEL_6:
}

- (void)routePlanningDataCoordinator:(id)a3 isEnabled:(BOOL)a4
{
  if (!a4)
  {
    v6 = [(RoutePlanningContext *)self chromeViewController];
    [v6 popContext:self animated:1 completion:0];
  }
}

- (BOOL)chromeDidClearMapSelection
{
  v3 = [(RoutePlanningContext *)self chromeViewController];
  v4 = [v3 isTopContext:self];

  if ((v4 & 1) == 0)
  {
    v5 = [(RoutePlanningContext *)self chromeViewController];
    [v5 popToContext:self animated:1 completion:0];
  }

  return v4 ^ 1;
}

- (void)_presentPlaceCardWithItem:(id)a3
{
  dataCoordinator = self->_dataCoordinator;
  v5 = a3;
  if ([(RoutePlanningDataCoordinator *)dataCoordinator isEnabled])
  {
    v6 = [(RoutePlanningDataCoordinator *)self->_dataCoordinator isEnabled];
    v7 = [(RoutePlanningDataCoordinator *)self->_dataCoordinator transportType];
    v8 = [(RoutePlanningDataCoordinator *)self->_dataCoordinator waypointRequests];
    v9 = [v8 count];
  }

  else
  {
    v6 = [(DirectionItem *)self->_directionItem canAddStop];
    v7 = [(DirectionItem *)self->_directionItem transportType];
    v9 = [(DirectionItem *)self->_directionItem numberOfUserRequestedWaypoints];
  }

  IsEnabled_DrivingMultiWaypointRoutes = 0;
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
      }

      goto LABEL_15;
    }

    if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
    {
      IsEnabled_DrivingMultiWaypointRoutes = 1;
      goto LABEL_15;
    }

LABEL_14:
    IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_Maps182();
    goto LABEL_15;
  }

  if (v7 == 2)
  {
    goto LABEL_14;
  }

  if (v7 == 5)
  {
    IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_Maps420();
  }

LABEL_15:
  if (v9)
  {
    v11 = IsEnabled_DrivingMultiWaypointRoutes;
  }

  else
  {
    v11 = 0;
  }

  v12 = [[_TtC4Maps29PlaceCardContextConfiguration alloc] initWithPlaceCardItem:v5 shouldInsertInHistory:0 excludedContent:22 buildingMultistopRoute:v11 & v6];

  v13 = [(RoutePlanningContext *)self chromeViewController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10070EA24;
  v15[3] = &unk_10165FB98;
  v16 = v12;
  v14 = v12;
  [v13 scheduleCoordinatedContextChange:v15 completionHandler:&stru_101627558];
}

- (BOOL)chromeDidSelectUserLocationAnnotation:(id)a3
{
  v4 = [a3 annotation];
  v5 = [[PlaceCardItem alloc] initWithSearchResult:v4];
  [(RoutePlanningContext *)self _presentPlaceCardWithItem:v5];

  return 1;
}

- (BOOL)chromeDidSelectMarkerForMapItem:(id)a3
{
  v4 = a3;
  v5 = [[PlaceCardItem alloc] initWithMapItem:v4];

  [(RoutePlanningContext *)self _presentPlaceCardWithItem:v5];
  return 1;
}

- (BOOL)chromeDidSelectETAMarkerForRoute:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueRouteID];
  v6 = [(RoutePlanningDataCoordinator *)self->_dataCoordinator currentRoute];
  v7 = [v6 uniqueRouteID];
  v8 = v5;
  v9 = v7;
  if (!(v8 | v9))
  {
    goto LABEL_4;
  }

  v10 = v9;
  v11 = [v8 isEqual:v9];

  if ((v11 & 1) == 0)
  {
    [(RoutePlanningDataCoordinator *)self->_dataCoordinator updateCurrentRoute:v4];
    v12 = +[MKMapService sharedService];
    v13 = [(RoutePlanningContext *)self iosBasedChromeViewController];
    [v12 captureUserAction:3015 onTarget:objc_msgSend(v13 eventValue:"currentMapViewTargetForAnalytics") routeIndex:{0, objc_msgSend(v4, "_maps_routeIndex")}];

    currentCard = self->_currentCard;
    self->_currentCard = 0;

    v6 = [(RoutePlanningContext *)self chromeViewController];
    [v6 setNeedsUpdateComponent:@"cards" animated:1];
LABEL_4:
  }

  return 1;
}

- (BOOL)chromeShouldAllowSelectingLabelMarker:(id)a3
{
  v3 = a3;
  if ([v3 isTransitLine])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 waypointInfo];
    v6 = [v5 waypoint];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v4 = isKindOfClass ^ 1;
  }

  return v4 & 1;
}

- (id)desiredCards
{
  v3 = [[NSMutableArray alloc] initWithCapacity:3];
  [v3 addObject:self->_overviewViewController];
  if (self->_currentCard)
  {
    [v3 addObject:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_routeSearchSuggestionsController);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_routeSearchSuggestionsController);
    [v3 addObject:v5];
  }

  v6 = [v3 copy];

  return v6;
}

- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a4;
  [a3 mapView];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10070EF64;
  v10 = v9[3] = &unk_101660CE8;
  v11 = self;
  v12 = [v6 isAnimated];
  v7 = v10;
  [v6 addAnimations:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10070EFBC;
  v8[3] = &unk_101661738;
  v8[4] = self;
  [v6 addCompletion:v8];
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10070F0FC;
  v7[3] = &unk_101661B18;
  v7[4] = self;
  v5 = a4;
  [v5 addPreparation:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10070F10C;
  v6[3] = &unk_101661738;
  v6[4] = self;
  [v5 addCompletion:v6];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 mapView];
  v9 = [v7 mapSelectionManager];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10070F2F8;
  v16[3] = &unk_101661B18;
  v16[4] = self;
  [v6 addPreparation:v16];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10070F308;
  v13[3] = &unk_101661A90;
  v14 = v9;
  v15 = v8;
  v10 = v8;
  v11 = v9;
  [v6 addAnimations:v13];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10070F364;
  v12[3] = &unk_101661738;
  v12[4] = self;
  [v6 addCompletion:v12];
}

- (void)_performInitialLoadIfNeeded
{
  pendingDirectionItem = self->_pendingDirectionItem;
  if (pendingDirectionItem)
  {
    pendingAllowErrorEditingPrompts = self->_pendingAllowErrorEditingPrompts;
    pendingUserInfo = self->_pendingUserInfo;
    self->_pendingDirectionItem = 0;
    v6 = pendingUserInfo;
    v8 = pendingDirectionItem;

    self->_pendingAllowErrorEditingPrompts = 1;
    v7 = self->_pendingUserInfo;
    self->_pendingUserInfo = 0;

    [(RoutePlanningContext *)self setDirectionItem:v8 allowToPromptEditing:pendingAllowErrorEditingPrompts userInfo:v6];
  }
}

- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10070F4E0;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [a4 addPreparation:v4];
}

- (void)prepareToEnterStackInChromeViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 appCoordinator];
  v6 = [v5 platformController];
  objc_storeWeak(&self->_platformController, v6);

  WeakRetained = objc_loadWeakRetained(&self->_platformController);
  if (!WeakRetained)
  {
    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315906;
      v28 = "[RoutePlanningContext prepareToEnterStackInChromeViewController:]";
      v29 = 2080;
      v30 = "RoutePlanningContext.m";
      v31 = 1024;
      v32 = 496;
      v33 = 2080;
      v34 = "_platformController";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v27, 0x26u);
    }

    if (sub_100E03634())
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = +[NSThread callStackSymbols];
        v27 = 138412290;
        v28 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", &v27, 0xCu);
      }
    }
  }

  v8 = [RoutePlanningDataCoordinator alloc];
  v9 = objc_loadWeakRetained(&self->_platformController);
  v10 = [(RoutePlanningDataCoordinator *)v8 initWithPlatformController:v9];
  dataCoordinator = self->_dataCoordinator;
  self->_dataCoordinator = v10;

  [(RoutePlanningDataCoordinator *)self->_dataCoordinator setDelegate:self];
  if (!self->_dataCoordinator)
  {
    v24 = sub_10006D178();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315906;
      v28 = "[RoutePlanningContext prepareToEnterStackInChromeViewController:]";
      v29 = 2080;
      v30 = "RoutePlanningContext.m";
      v31 = 1024;
      v32 = 500;
      v33 = 2080;
      v34 = "_dataCoordinator";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v27, 0x26u);
    }

    if (sub_100E03634())
    {
      v25 = sub_10006D178();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = +[NSThread callStackSymbols];
        v27 = 138412290;
        v28 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@", &v27, 0xCu);
      }
    }
  }

  v12 = [RoutePlanningOverviewViewController routePlanningOverviewViewControllerWithDataCoordinator:self->_dataCoordinator];
  overviewViewController = self->_overviewViewController;
  self->_overviewViewController = v12;

  [(ContaineeViewController *)self->_overviewViewController setContaineeDelegate:self];
  [(RoutePlanningOverviewViewController *)self->_overviewViewController setRoutePlanningDelegate:self];
  if (sub_10000FA08(v4) == 5)
  {
    [(RoutePlanningOverviewViewController *)self->_overviewViewController loadViewIfNeeded];
  }

  v14 = [(RoutePlanningOverviewViewController *)self->_overviewViewController routeSearchViewController];
  [v14 setDelegate:self];

  v15 = [[RoutePlanningMapController alloc] initWithChromeViewController:v4];
  mapController = self->_mapController;
  self->_mapController = v15;

  [(RoutePlanningMapController *)self->_mapController setDataCoordinator:self->_dataCoordinator];
  -[RoutePlanningMapController saveOriginalMapViewModeAs:](self->_mapController, "saveOriginalMapViewModeAs:", [v4 displayedViewMode]);
  v17 = [v4 personalizedItemManager];
  [(RoutePlanningMapController *)self->_mapController setPersonalizedItemManager:v17];

  v18 = [v4 searchPinsManager];
  [(RoutePlanningMapController *)self->_mapController setSearchPinsManager:v18];

  v19 = [v4 mapCameraController];
  [(RoutePlanningMapController *)self->_mapController setMapCameraController:v19];

  v20 = [v4 routeAnnotationsController];
  [(RoutePlanningMapController *)self->_mapController setRouteAnnotationsController:v20];

  [(RoutePlanningMapController *)self->_mapController setViewModeController:v4];
}

- (id)mapCameraController
{
  v2 = [(RoutePlanningContext *)self chromeViewController];
  v3 = [v2 mapCameraController];

  return v3;
}

- (id)mapSelectionManager
{
  v2 = [(RoutePlanningContext *)self chromeViewController];
  v3 = [v2 mapSelectionManager];

  return v3;
}

- (id)personalizedItemSources
{
  v2 = [(RoutePlanningContext *)self chromeViewController];
  v3 = [v2 searchPinsManager];

  if (v3)
  {
    v4 = [NSMutableArray alloc];
    v5 = [v3 searchResultsItemSource];
    v6 = [v3 singleSearchResultItemSource];
    v7 = [v3 searchResultsItemSource];
    v8 = [v3 droppedPinsItemSource];
    v9 = [v3 collectionPinsItemSource];
    v10 = [v3 routeStartEndItemSource];
    v11 = [v3 placeCardLinkedPlacesItemSource];
    v12 = [v3 searchDotPlacesItemSource];
    v13 = [v4 initWithObjects:{v5, v6, v7, v8, v9, v10, v11, v12, 0}];

    v14 = +[TrafficIncidentLayoutManager sharedInstance];
    LODWORD(v6) = [v14 isIncidentReportingEnabled];

    if (v6)
    {
      v15 = objc_alloc_init(TrafficIncidentItemSource);
      [v13 addObject:v15];
    }

    v16 = [v13 copy];
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  return v16;
}

- (void)_presentMacRouteEditingWithEditRequired:(unint64_t)a3 index:(unint64_t)a4
{
  [(RoutePlanningContext *)self presentRoutePlanningViewType:1];
  if (a3)
  {
    v9 = [(DirectionItem *)self->_directionItem items];
    v7 = [(RoutePlanningContext *)self _routeSearchViewController];
    [v7 updateWithItems:v9];

    if ([v9 count] > a4)
    {
      v8 = [(RoutePlanningContext *)self _routeSearchViewController];
      [v8 selectFieldIndex:a4 beginEditing:1];
    }
  }
}

- (void)displayAlertWithTitle:(id)a3 message:(id)a4 postAlertSearchType:(unsigned int)a5
{
  v5 = *&a5;
  v8 = a4;
  v9 = a3;
  v11 = [(RoutePlanningContext *)self iosBasedChromeViewController];
  v10 = [v11 interruptionManager];
  [v10 displayAlertWithTitle:v9 message:v8 postAlertSearchType:v5];
}

- (void)_promptForEditRequired:(unint64_t)a3 forWaypointAtIndex:(unint64_t)a4 inDirectionItem:(id)a5 userInfo:(id)a6
{
  v10 = a5;
  v11 = a6;
  if (!a3)
  {
    goto LABEL_19;
  }

  v12 = [(RoutePlanningContext *)self chromeViewController];
  v13 = sub_10000FA08(v12);

  if (v13 == 5)
  {
    [(RoutePlanningContext *)self _presentMacRouteEditingWithEditRequired:a3 index:a4];
    goto LABEL_19;
  }

  if (a3 - 2 < 2)
  {
    v17 = [v10 hasCurrentLocationOnlyAsOriginWaypoint];
    v14 = +[NSBundle mainBundle];
    v15 = v14;
    if (v17)
    {
      v16 = @"Choose Start";
    }

    else
    {
      v16 = @"Set Current Location";
    }
  }

  else if (a3 == 4)
  {
    v14 = +[NSBundle mainBundle];
    v15 = v14;
    v16 = @"Choose Destination";
  }

  else
  {
    if (a3 != 1)
    {
      v18 = 0;
      goto LABEL_13;
    }

    v14 = +[NSBundle mainBundle];
    v15 = v14;
    v16 = @"Choose Start";
  }

  v18 = [v14 localizedStringForKey:v16 value:@"localized string not found" table:0];

LABEL_13:
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100710114;
  v40 = sub_100710124;
  v41 = 0;
  v19 = [RouteSearchViewController alloc];
  v20 = [v10 items];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10071012C;
  v30[3] = &unk_10162EA10;
  v30[4] = self;
  v33 = &v36;
  v31 = v10;
  v34 = a3;
  v35 = a4;
  v32 = v11;
  v21 = [(RouteSearchViewController *)v19 initWithDelegate:self items:v20 waypointIndex:a4 selectionHandler:v30];
  v22 = v37[5];
  v37[5] = v21;

  [v37[5] setTitle:v18];
  objc_storeStrong(&self->_routeSearchViewController, v37[5]);
  if ([v37[5] modalPresentationStyle] == 7)
  {
    v23 = [v37[5] popoverPresentationController];
    v24 = [v23 delegate];

    if (!v24)
    {
      v25 = [v37[5] popoverPresentationController];
      [v25 setDelegate:self];
    }

    v26 = [(RoutePlanningContext *)self chromeViewController];
    [v26 _maps_topMostPresentViewController:v37[5] animated:1 completion:0];
  }

  else
  {
    v27 = [(RoutePlanningContext *)self iosBasedChromeViewController];
    [v27 setNeedsUpdateComponent:@"cards" animated:1];

    v26 = [(RoutePlanningContext *)self chromeViewController];
    v28 = v37[5];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1007102E0;
    v29[3] = &unk_101659998;
    v29[4] = &v36;
    v29[5] = a4;
    [v26 presentController:v28 animated:1 completion:v29];
  }

  _Block_object_dispose(&v36, 8);
LABEL_19:
}

- (void)_promptForCurrentLocationConfirmationWithDirectionItem:(id)a3 userInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Get Directions from Approximate Location" value:@"localized string not found" table:0];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Your current location can't be used by Maps because of your privacy settings." value:@"localized string not found" table:0];
  v11 = [UIAlertController alertControllerWithTitle:v8 message:v10 preferredStyle:1];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Use Approximate Location" value:@"localized string not found" table:0];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1007106A8;
  v31[3] = &unk_101630B88;
  v14 = v6;
  v32 = v14;
  v33 = self;
  v15 = v5;
  v34 = v15;
  v16 = [UIAlertAction actionWithTitle:v13 style:0 handler:v31];

  [v11 addAction:v16];
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"Choose Location" value:@"localized string not found" table:0];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100710734;
  v27[3] = &unk_101630B88;
  v28 = v14;
  v29 = self;
  v30 = v15;
  v19 = v15;
  v20 = v14;
  v21 = [UIAlertAction actionWithTitle:v18 style:0 handler:v27];

  [v11 addAction:v21];
  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
  v24 = [UIAlertAction actionWithTitle:v23 style:1 handler:0];

  [v11 addAction:v24];
  v25 = [(RoutePlanningContext *)self chromeViewController];
  [v25 _maps_topMostPresentViewController:v11 animated:1 completion:0];
}

- (void)addStopForSearchFieldItem:(id)a3 withUserInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RoutePlanningContext *)self isRoutePlanningPresented]|| ([(RouteSearchViewController *)self->_routeSearchViewController presentingViewController], (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (v9 = v8, [(RouteSearchViewController *)self->_routeSearchViewController dataCoordinator], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v11 = [(RoutePlanningDataCoordinator *)self->_dataCoordinator directionItemForCurrentSession];
    v12 = [v11 items];
    v13 = [NSMutableArray arrayWithArray:v12];

    v14 = [(RouteSearchViewController *)self->_routeSearchViewController presentingViewController];
    if (v14)
    {
      v15 = v14;
      v16 = [(RouteSearchViewController *)self->_routeSearchViewController _currentlySelectedIndexForAddStop];

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = sub_100798A3C();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v29 = 134217984;
          v30 = v16;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Performing fresh directions with replaced stop at index %lu", &v29, 0xCu);
        }

        [v13 replaceObjectAtIndex:v16 withObject:v6];
        goto LABEL_31;
      }
    }

    v17 = [v11 transportType];
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        if (MapsFeature_IsEnabled_Maps182())
        {
LABEL_28:
          v23 = sub_100798A3C();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            LOWORD(v29) = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Performing fresh directions with added stop", &v29, 2u);
          }

          [v13 addObject:v6];
LABEL_31:
          v24 = [(RoutePlanningDataCoordinator *)self->_dataCoordinator transportType];
          v25 = [DirectionItem alloc];
          v26 = [v13 copy];
          v19 = [(DirectionItem *)v25 initWithItems:v26 transportType:v24];

          v27 = [v7 mutableCopy];
          [v27 setObject:0 forKeyedSubscript:@"DirectionsAppendContentsOfItem"];
          v28 = [v27 copy];
          [(RoutePlanningContext *)self setDirectionItem:v19 allowToPromptEditing:1 userInfo:v28];

          goto LABEL_44;
        }
      }

      else if (v17 == 5 && (MapsFeature_IsEnabled_Maps420() & 1) != 0)
      {
        goto LABEL_28;
      }
    }

    else if (v17)
    {
      if (v17 == 1 && (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0)
      {
        goto LABEL_28;
      }
    }

    else if ((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420() & 1) != 0 || MapsFeature_IsEnabled_Maps182())
    {
      goto LABEL_28;
    }

    v19 = sub_100798A3C();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_44:

      goto LABEL_45;
    }

    v20 = [v13 count];
    v21 = [v11 transportType];
    v22 = @"NO";
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        if (MapsFeature_IsEnabled_Maps182())
        {
LABEL_42:
          v22 = @"YES";
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      if (v21 != 5)
      {
        goto LABEL_43;
      }

      if (MapsFeature_IsEnabled_Maps420())
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v21)
      {
        if (v21 == 1)
        {
          if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes())
          {
            goto LABEL_42;
          }

          goto LABEL_40;
        }

LABEL_43:
        v29 = 134218498;
        v30 = 0x7FFFFFFFFFFFFFFFLL;
        v31 = 2048;
        v32 = v20;
        v33 = 2112;
        v34 = v22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Will not add or replace stop, index out of bounds (%lu/%lu) or not permitted (mpr permitted: %@)", &v29, 0x20u);
        goto LABEL_44;
      }

      if ((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420() & 1) != 0 || MapsFeature_IsEnabled_Maps182())
      {
        goto LABEL_42;
      }
    }

LABEL_40:
    v22 = @"NO";
    goto LABEL_43;
  }

  [(RouteSearchViewController *)self->_routeSearchViewController replaceSelectedFieldWithItem:v6];
LABEL_45:
}

- (void)setDirectionItem:(id)a3 allowToPromptEditing:(BOOL)a4 userInfo:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v11 = [(RoutePlanningContext *)self chromeViewController];

  if (v11)
  {
    currentCard = self->_currentCard;
    if (currentCard)
    {
      self->_currentCard = 0;

      v13 = [(RoutePlanningContext *)self iosChromeViewController];
      [v13 setNeedsUpdateComponent:@"cards" animated:1 completion:0];
    }

    if (!v9)
    {
      v14 = [DirectionItem alloc];
      v15 = objc_opt_new();
      v71[0] = v15;
      v16 = objc_opt_new();
      v71[1] = v16;
      v17 = [NSArray arrayWithObjects:v71 count:2];
      v9 = [(DirectionItem *)v14 initWithItems:v17 transportType:0];
    }

    objc_storeStrong(&self->_directionItem, v9);
    objc_storeStrong(&self->_userInfo, a5);
    self->_allowErrorEditingPrompts = 1;
    v18 = [(RoutePlanningContext *)self chromeViewController];
    v19 = v18 == 0;

    if (!v19)
    {
      v20 = [(DirectionItem *)v9 items];
      if ([(RoutePlanningContext *)self isRoutePlanningPresented])
      {
        v21 = [(RoutePlanningDataCoordinator *)self->_dataCoordinator directionItemForCurrentSession];
      }

      else
      {
        v21 = self->_directionItem;
      }

      v22 = v21;
      if (v21)
      {
        v23 = [v10 objectForKeyedSubscript:@"DirectionsAppendContentsOfItem"];
        v24 = [v23 BOOLValue];

        if (v24)
        {
          v25 = [(DirectionItem *)v9 items];
          v26 = [v25 firstObject];

          [(RoutePlanningContext *)self addStopForSearchFieldItem:v26 withUserInfo:v10];
LABEL_57:

          goto LABEL_58;
        }
      }

      if (![(DirectionItem *)v9 isEquivalentAsWaypointToDirectionItem:v22])
      {
        v27 = [(DirectionItem *)v9 copy];
        directionItem = self->_directionItem;
        self->_directionItem = v27;
      }

      if ([v20 count] == 1)
      {
        v29 = [v10 objectForKeyedSubscript:@"DirectionsAppendContentsOfItem"];
        v30 = [v29 BOOLValue];

        if ((v30 & 1) == 0)
        {
          v31 = sub_100798A3C();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = [v20 firstObject];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "DirectionItem unexpectedly had only 1 waypoint: %@", &buf, 0xCu);
          }
        }
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v69 = 0x2020000000;
      v70 = [v20 count] > 1;
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_1007113A8;
      v63[3] = &unk_10162E978;
      v64 = v20;
      p_buf = &buf;
      [v64 enumerateObjectsUsingBlock:v63];
      if (*(*(&buf + 1) + 24) == 1)
      {
        v33 = +[NSBundle mainBundle];
        v34 = [v33 localizedStringForKey:@"Cannot Provide Directions" value:@"localized string not found" table:0];
        v35 = +[NSBundle mainBundle];
        v36 = [v35 localizedStringForKey:@"Cannot get directions to and from the same location." value:@"localized string not found" table:0];
        [(RoutePlanningContext *)self displayAlertWithTitle:v34 message:v36 postAlertSearchType:2];

LABEL_56:
        _Block_object_dispose(&buf, 8);
        goto LABEL_57;
      }

      v37 = [v10 objectForKeyedSubscript:@"DirectionsAllowApproximateCurrentLocation"];
      [(DirectionItem *)v9 setAllowApproximateUserLocation:v37];

      v62 = 0x7FFFFFFFFFFFFFFFLL;
      v38 = [(DirectionItem *)v9 editRequired:&v62];
      v39 = v38;
      if (!v6 || !v38)
      {
        if (v38)
        {
          v41 = +[NSBundle mainBundle];
          v42 = [v41 localizedStringForKey:@"Cannot Provide Directions" value:@"localized string not found" table:0];

          [(RoutePlanningContext *)self displayAlertWithTitle:v42 message:0 postAlertSearchType:2];
        }

        else
        {
          v43 = [(DirectionItem *)self->_directionItem transportType];
          v44 = sub_100798A3C();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            if ((v43 - 1) > 4)
            {
              v45 = @"Undefined";
            }

            else
            {
              v45 = *(&off_1016276B0 + v43 - 1);
            }

            *v66 = 138412290;
            v67 = v45;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Initial transport type from direction item: %@", v66, 0xCu);
          }

          if (v43)
          {
            if (v43 == 4)
            {
              if (sub_100016C50())
              {
                v43 = 4;
              }

              else
              {
                v50 = sub_100798A3C();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  *v66 = 0;
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Detected rideshare transport type when ride booking is not enabled; changing to driving", v66, 2u);
                }

                v43 = 1;
              }
            }

            v51 = +[MapsSuggestionsPredictor sharedPredictor];
            v52 = v51;
            if ((v43 - 1) > 4)
            {
              v53 = 4;
            }

            else
            {
              v53 = dword_101216100[v43 - 1];
            }

            [v51 capturePredictedTransportationMode:v53];
          }

          [(DirectionItem *)self->_directionItem setTransportType:v43];
          v42 = [v10 objectForKeyedSubscript:@"SearchSessionTraits"];
          if (!v42)
          {
            v54 = [(RoutePlanningContext *)self chromeViewController];
            v42 = [v54 currentTraits];
          }

          v55 = [v10 objectForKeyedSubscript:@"SearchSessionTraitsSource"];

          if (v55)
          {
            v56 = [v10 objectForKeyedSubscript:@"SearchSessionTraitsSource"];
            [v42 setSource:{objc_msgSend(v56, "integerValue")}];
          }

          v57 = [v10 mutableCopy];
          v58 = [NSNumber numberWithInt:self->_currentCard == self->_routeSearchViewController];
          [v57 setObject:v58 forKeyedSubscript:@"DisableNotReachableErrorInRoutePlanning"];

          dataCoordinator = self->_dataCoordinator;
          v60 = self->_directionItem;
          v61 = [v57 copy];
          [(RoutePlanningDataCoordinator *)dataCoordinator startWithDirectionItem:v60 traits:v42 userInfo:v61];
        }

        goto LABEL_56;
      }

      if (v38 == 3)
      {
        v40 = [v10 objectForKeyedSubscript:@"SearchSessionTraitsSource"];
        if ([v40 integerValue] == 1)
        {

          goto LABEL_34;
        }

        v46 = [v10 objectForKeyedSubscript:@"DirectionsSourceKey"];
        v47 = [v46 integerValue] == 2;

        if (v47)
        {
LABEL_34:
          v48 = [v10 objectForKeyedSubscript:@"DirectionsAllowApproximateCurrentLocation"];
          v49 = v48 == 0;

          if (v49)
          {
            [(RoutePlanningContext *)self _promptForCurrentLocationConfirmationWithDirectionItem:v9 userInfo:v10];
            goto LABEL_56;
          }
        }
      }

      [(RoutePlanningContext *)self _promptForEditRequired:v39 forWaypointAtIndex:v62 inDirectionItem:v9 userInfo:v10];
      goto LABEL_56;
    }
  }

  else
  {
    objc_storeStrong(&self->_pendingDirectionItem, a3);
    self->_pendingAllowErrorEditingPrompts = v6;
    objc_storeStrong(&self->_pendingUserInfo, a5);
  }

LABEL_58:
}

- (RoutePlanningContext)initWithDirectionItem:(id)a3 userInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RoutePlanningContext;
  v9 = [(RoutePlanningContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pendingDirectionItem, a3);
    v10->_pendingAllowErrorEditingPrompts = 1;
    objc_storeStrong(&v10->_pendingUserInfo, a4);
  }

  return v10;
}

@end