@interface RoutePlanningContext
- (BOOL)chromeDidClearMapSelection;
- (BOOL)chromeDidSelectETAMarkerForRoute:(id)route;
- (BOOL)chromeDidSelectMarkerForMapItem:(id)item;
- (BOOL)chromeDidSelectUserLocationAnnotation:(id)annotation;
- (BOOL)chromeShouldAllowSelectingLabelMarker:(id)marker;
- (BOOL)isRoutePlanningPresented;
- (ChromeViewController)chromeViewController;
- (RoutePlanningContext)initWithDirectionItem:(id)item userInfo:(id)info;
- (id)_autosharingViewController;
- (id)_filteredFeaturesFromTransitSystems:(id)systems allFeatures:(id)features;
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
- (id)personalizedItemManagerForRouteSearchViewController:(id)controller;
- (id)personalizedItemSources;
- (id)traitsForRouteSearchViewController:(id)controller;
- (id)userLocationSearchResultForRouteSearchViewController:(id)controller;
- (void)_carPlayWantsToDisplayEVOnboarding:(id)onboarding;
- (void)_performInitialLoadIfNeeded;
- (void)_presentMacRouteEditingWithEditRequired:(unint64_t)required index:(unint64_t)index;
- (void)_presentPlaceCardWithItem:(id)item;
- (void)_promptForCurrentLocationConfirmationWithDirectionItem:(id)item userInfo:(id)info;
- (void)_promptForEditRequired:(unint64_t)required forWaypointAtIndex:(unint64_t)index inDirectionItem:(id)item userInfo:(id)info;
- (void)addStopForSearchFieldItem:(id)item withUserInfo:(id)info;
- (void)autosharingController:(id)controller wantsToSearchWithExistingContacts:(id)contacts selectionHandler:(id)handler;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)chromeViewController:(id)controller didUpdateViewMode:(int64_t)mode;
- (void)closeRoutePlanningViewController:(id)controller withSender:(id)sender;
- (void)containeeViewControllerDidDismissExternally:(id)externally;
- (void)continueRideBookingSessionWithApplicationIdentifier:(id)identifier;
- (void)displayAlertWithTitle:(id)title message:(id)message postAlertSearchType:(unsigned int)type;
- (void)displayStoreViewControllerForAppWithiTunesIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier;
- (void)ensureRoutePlanningContentIsVisible;
- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)exitRoutePlanningIfNeededAnimated:(BOOL)animated;
- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)macDismissRouteSearchSuggestionsController:(id)controller;
- (void)macPresentRouteSearchSuggestionsController:(id)controller;
- (void)prepareToEnterStackInChromeViewController:(id)controller;
- (void)presentEducationScreenWithAssetURLs:(id)ls titleText:(id)text bodyText:(id)bodyText;
- (void)presentRoutePlanningViewType:(int64_t)type;
- (void)presentScheduleForStep:(id)step;
- (void)presentVehicleOnboardingWithVehicles:(id)vehicles completion:(id)completion;
- (void)presentWalletDCIViewControllerWithTransitSystems:(id)systems callbackDelegate:(id)delegate;
- (void)presentWalletTopUpViewControllerWithTransitIdentifier:(id)identifier callbackDelegate:(id)delegate;
- (void)productViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)refreshRoutePlanningTimingIfNeeded;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)routePlanningDataCoordinator:(id)coordinator isEnabled:(BOOL)enabled;
- (void)routePlanningUpdatedWaypoints:(id)waypoints;
- (void)routeSearchViewControllerDidDismiss:(id)dismiss shouldExitRoutePlanning:(BOOL)planning;
- (void)routeStepsViewController:(id)controller wantsToDisplayAdvisory:(id)advisory;
- (void)routeStepsViewController:(id)controller wantsToShareItem:(id)item fromView:(id)view;
- (void)selectWaypointSearchFieldIndex:(unint64_t)index exitPlanningIfCancelTapped:(BOOL)tapped beginEditing:(BOOL)editing;
- (void)setDirectionItem:(id)item allowToPromptEditing:(BOOL)editing userInfo:(id)info;
- (void)setRoutePlanningAdvisoriesInfo:(id)info;
- (void)setRoutePlanningAdvisory:(id)advisory;
- (void)startNavigationWithRouteCollection:(id)collection navigationDetailsOptions:(NavigationDetailsOptions *)options;
- (void)startRideBookingSessionWithRideOption:(id)option;
@end

@implementation RoutePlanningContext

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (BOOL)isRoutePlanningPresented
{
  selfCopy = self;
  chromeViewController = [(RoutePlanningContext *)self chromeViewController];
  LOBYTE(selfCopy) = [chromeViewController isTopContext:selfCopy];

  return selfCopy;
}

- (void)ensureRoutePlanningContentIsVisible
{
  if ([(RoutePlanningContext *)self isRoutePlanningPresented])
  {
    mapController = self->_mapController;

    [(RoutePlanningMapController *)mapController updateCameraIfPossible];
  }
}

- (void)displayStoreViewControllerForAppWithiTunesIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier
{
  if (identifier)
  {
    clientIdentifierCopy = clientIdentifier;
    identifierCopy = identifier;
    v8 = objc_alloc_init(SKStoreProductViewController);
    [v8 setDelegate:self];
    if (clientIdentifierCopy)
    {
      v9 = clientIdentifierCopy;
    }

    else
    {
      v9 = &stru_1016631F0;
    }

    [v8 setClientIdentifier:v9];

    v12 = SKStoreProductParameterITunesItemIdentifier;
    v13 = identifierCopy;
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

    [v8 loadProductWithParameters:v10 completionBlock:&stru_1016275C8];
    chromeViewController = [(RoutePlanningContext *)self chromeViewController];
    [chromeViewController _maps_topMostPresentViewController:v8 animated:1 completion:0];
  }
}

- (void)continueRideBookingSessionWithApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  iosChromeViewController = [(RoutePlanningContext *)self iosChromeViewController];
  appCoordinator = [iosChromeViewController appCoordinator];
  [appCoordinator continueRideBookingSessionWithApplicationIdentifier:identifierCopy];
}

- (void)startRideBookingSessionWithRideOption:(id)option
{
  optionCopy = option;
  iosChromeViewController = [(RoutePlanningContext *)self iosChromeViewController];
  appCoordinator = [iosChromeViewController appCoordinator];
  [appCoordinator startRideBookingSessionWithRideBookingRideOption:optionCopy];
}

- (void)startNavigationWithRouteCollection:(id)collection navigationDetailsOptions:(NavigationDetailsOptions *)options
{
  collectionCopy = collection;
  iosChromeViewController = [(RoutePlanningContext *)self iosChromeViewController];
  appCoordinator = [iosChromeViewController appCoordinator];
  v9 = *&options->guidanceType;
  v10[0] = *&options->shouldSimulateLocations;
  v10[1] = v9;
  v10[2] = *&options->isReconnecting;
  navigationModeContext = options->navigationModeContext;
  [appCoordinator startNavigationWithRouteCollection:collectionCopy navigationDetailsOptions:v10];
}

- (void)autosharingController:(id)controller wantsToSearchWithExistingContacts:(id)contacts selectionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  contactsCopy = contacts;
  v11 = [ContactSearchViewController alloc];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10070C064;
  v18[3] = &unk_1016275A8;
  v18[4] = self;
  v19 = controllerCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = controllerCopy;
  v14 = [(ContactSearchViewController *)v11 initWithInitialContacts:contactsCopy selectionHandler:v18];

  cardPresentationController = [(ContaineeViewController *)v14 cardPresentationController];
  [cardPresentationController setPresentedModally:1];

  [(ContaineeViewController *)v14 setContaineeDelegate:self];
  currentCard = self->_currentCard;
  self->_currentCard = v14;

  iosBasedChromeViewController = [(RoutePlanningContext *)self iosBasedChromeViewController];
  [iosBasedChromeViewController setNeedsUpdateComponent:@"cards" animated:1];
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

- (void)presentScheduleForStep:(id)step
{
  stepCopy = step;
  v6 = [[_TtC4Maps23TransitSchedulesContext alloc] initWithRouteStep:stepCopy];

  chromeViewController = [(RoutePlanningContext *)self chromeViewController];
  [chromeViewController pushContext:v6 animated:1 completion:0];
}

- (void)setRoutePlanningAdvisory:(id)advisory
{
  advisoryCopy = advisory;
  _incidentsViewController = [(RoutePlanningContext *)self _incidentsViewController];
  [_incidentsViewController setAdvisory:advisoryCopy];
}

- (void)setRoutePlanningAdvisoriesInfo:(id)info
{
  infoCopy = info;
  _incidentsViewController = [(RoutePlanningContext *)self _incidentsViewController];
  [_incidentsViewController setAdvisoriesInfo:infoCopy];
}

- (void)presentVehicleOnboardingWithVehicles:(id)vehicles completion:(id)completion
{
  completionCopy = completion;
  vehiclesCopy = vehicles;
  v8 = [[EVOnboardingController alloc] initWithUnpairedVehicles:vehiclesCopy];

  vehicleOnboardingController = self->_vehicleOnboardingController;
  self->_vehicleOnboardingController = v8;

  v10 = self->_vehicleOnboardingController;
  chromeViewController = [(RoutePlanningContext *)self chromeViewController];
  [(EVOnboardingController *)v10 presentInViewController:chromeViewController animated:1 completion:completionCopy];
}

- (id)userLocationSearchResultForRouteSearchViewController:(id)controller
{
  chromeViewController = [(RoutePlanningContext *)self chromeViewController];
  mapView = [chromeViewController mapView];
  userLocation = [mapView userLocation];

  annotation = [userLocation annotation];

  return annotation;
}

- (id)traitsForRouteSearchViewController:(id)controller
{
  chromeViewController = [(RoutePlanningContext *)self chromeViewController];
  currentTraits = [chromeViewController currentTraits];

  return currentTraits;
}

- (id)personalizedItemManagerForRouteSearchViewController:(id)controller
{
  iosChromeViewController = [(RoutePlanningContext *)self iosChromeViewController];
  personalizedItemManager = [iosChromeViewController personalizedItemManager];

  return personalizedItemManager;
}

- (void)routeSearchViewControllerDidDismiss:(id)dismiss shouldExitRoutePlanning:(BOOL)planning
{
  if (planning)
  {
    chromeViewController = [(RoutePlanningContext *)self chromeViewController];
    [chromeViewController popContext:self animated:1 completion:0];
  }

  else
  {

    [(RoutePlanningContext *)self containeeViewControllerGoToPreviousState:dismiss withSender:0];
  }
}

- (void)routePlanningUpdatedWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  if (waypointsCopy)
  {
    v13 = waypointsCopy;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    waypointsCopy = v13;
    if (isKindOfClass)
    {
      v6 = self->_currentCard;
      origin = [v13 origin];
      geoMapItem = [origin geoMapItem];
      timezone = [geoMapItem timezone];
      [(ContaineeProtocol *)v6 setOriginTimeZone:timezone];

      destination = [v13 destination];
      geoMapItem2 = [destination geoMapItem];
      timezone2 = [geoMapItem2 timezone];
      [(ContaineeProtocol *)v6 setDestinationTimeZone:timezone2];

      waypointsCopy = v13;
    }
  }
}

- (void)selectWaypointSearchFieldIndex:(unint64_t)index exitPlanningIfCancelTapped:(BOOL)tapped beginEditing:(BOOL)editing
{
  editingCopy = editing;
  tappedCopy = tapped;
  _routeSearchViewController = [(RoutePlanningContext *)self _routeSearchViewController];
  [_routeSearchViewController setExitRoutePlanningOnCancel:tappedCopy];
  [_routeSearchViewController selectFieldIndex:index beginEditing:editingCopy];
}

- (id)_routeSearchViewController
{
  routeSearchViewController = self->_routeSearchViewController;
  if (!routeSearchViewController || ([(RouteSearchViewController *)routeSearchViewController dataCoordinator], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    [(RoutePlanningOverviewViewController *)self->_overviewViewController loadViewIfNeeded];
    routeSearchViewController = [(RoutePlanningOverviewViewController *)self->_overviewViewController routeSearchViewController];

    if (routeSearchViewController)
    {
      routeSearchViewController2 = [(RoutePlanningOverviewViewController *)self->_overviewViewController routeSearchViewController];
    }

    else
    {
      routeSearchViewController2 = [[RouteSearchViewController alloc] initWithDelegate:self dataCoordinator:self->_dataCoordinator];
    }

    v7 = self->_routeSearchViewController;
    self->_routeSearchViewController = routeSearchViewController2;
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
      view = WeakRetained;
    }

    else
    {
      view = [(RoutePlanningOverviewViewController *)self->_overviewViewController view];
    }

    v9 = view;

    popoverPresentationController = [(RouteIncidentsViewController *)self->_incidentsViewController popoverPresentationController];
    [popoverPresentationController setSourceView:v9];

    [v9 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    popoverPresentationController2 = [(RouteIncidentsViewController *)self->_incidentsViewController popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{v12, v14, v16, v18}];

    popoverPresentationController3 = [(RouteIncidentsViewController *)self->_incidentsViewController popoverPresentationController];
    [popoverPresentationController3 setPermittedArrowDirections:12];
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
  traitCollection = [(RoutePlanningOptionsViewController *)v5 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    routeOptionsPopoverSourceView = [(RoutePlanningOverviewViewController *)self->_overviewViewController routeOptionsPopoverSourceView];
    [(RoutePlanningOptionsViewController *)v5 setModalPresentationStyle:7];
    popoverPresentationController = [(RoutePlanningOptionsViewController *)v5 popoverPresentationController];
    [popoverPresentationController setSourceView:routeOptionsPopoverSourceView];

    [routeOptionsPopoverSourceView bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    popoverPresentationController2 = [(RoutePlanningOptionsViewController *)v5 popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{v11, v13, v15, v17}];

    popoverPresentationController3 = [(RoutePlanningOptionsViewController *)v5 popoverPresentationController];
    [popoverPresentationController3 setPermittedArrowDirections:12];
  }

  return v5;
}

- (void)refreshRoutePlanningTimingIfNeeded
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = self->_currentCard;
    routeCollection = [(RoutePlanningDataCoordinator *)self->_dataCoordinator routeCollection];
    currentRoute = [routeCollection currentRoute];

    if (currentRoute)
    {
      shouldShowSchedule = [currentRoute shouldShowSchedule];
    }

    else
    {
      shouldShowSchedule = 0;
    }

    [(ContaineeProtocol *)v6 setShowArriveBy:shouldShowSchedule animated:1];
  }
}

- (id)_timingViewControllerForCurrentRoute
{
  routeCollection = [(RoutePlanningDataCoordinator *)self->_dataCoordinator routeCollection];
  currentRoute = [routeCollection currentRoute];

  v5 = [RoutePlanningTimingViewController alloc];
  timing = [(RoutePlanningDataCoordinator *)self->_dataCoordinator timing];
  v7 = -[RoutePlanningTimingViewController initWithCurrentTiming:shouldShowArriveBy:pickerDelegate:](v5, "initWithCurrentTiming:shouldShowArriveBy:pickerDelegate:", timing, [currentRoute shouldShowSchedule], self);

  [(ContaineeViewController *)v7 setContaineeDelegate:self];

  return v7;
}

- (void)routeStepsViewController:(id)controller wantsToDisplayAdvisory:(id)advisory
{
  [(RoutePlanningContext *)self setRoutePlanningAdvisory:advisory];

  [(RoutePlanningContext *)self presentRoutePlanningViewType:5];
}

- (void)routeStepsViewController:(id)controller wantsToShareItem:(id)item fromView:(id)view
{
  itemCopy = item;
  v10 = [MUPresentationOptions optionsWithSender:view];
  iosChromeViewController = [(RoutePlanningContext *)self iosChromeViewController];
  appCoordinator = [iosChromeViewController appCoordinator];
  [appCoordinator shareItem:itemCopy presentationOptions:v10 completion:0];
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

- (void)chromeViewController:(id)controller didUpdateViewMode:(int64_t)mode
{
  controllerCopy = controller;
  if (![controllerCopy isTopContext:self])
  {
    goto LABEL_43;
  }

  v7 = self->_dataCoordinator;
  transportType = [(RoutePlanningDataCoordinator *)v7 transportType];
  if (!transportType)
  {
    goto LABEL_40;
  }

  v9 = transportType;
  if (mode > 7)
  {
    goto LABEL_13;
  }

  if (((1 << mode) & 0x67) == 0)
  {
    if (mode == 3)
    {
      if (transportType == 3)
      {
        goto LABEL_40;
      }

LABEL_19:
      if (mode == 3)
      {
        v12 = 3;
      }

      else
      {
        v12 = 1;
      }

      if (mode == -1)
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
        if ((0x1DFu >> (mode + 1)))
        {
          mode = *(&off_101627628 + mode + 1);
        }

        else
        {
          mode = [NSString stringWithFormat:@"<Unknown: %ld>", mode];
        }

        v17 = mode;
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

    if (mode == 7)
    {
      if (transportType == 1 || transportType == 4)
      {
        goto LABEL_40;
      }

      goto LABEL_19;
    }

LABEL_13:
    if (mode != -1)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (transportType == 3)
  {
    if (mode == 3)
    {
      goto LABEL_19;
    }

LABEL_14:
    v10 = sub_100798408();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (mode < 8 && ((0xEFu >> mode) & 1) != 0)
      {
        mode2 = *(&off_1016275E8 + mode);
      }

      else
      {
        mode2 = [NSString stringWithFormat:@"<Unknown: %ld>", mode];
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
      v29 = mode2;
      v30 = 2114;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "view mode %{public}@ isn't supported by transport type %{public}@; will attempt to replace the transport type", buf, 0x16u);
    }

    defaultTransportTypeFinder = [controllerCopy defaultTransportTypeFinder];
    objc_initWeak(buf, self);
    directionItem = self->_directionItem;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10070D2A0;
    v25[3] = &unk_10162EB60;
    objc_copyWeak(v27, buf);
    v27[1] = mode;
    v26 = v7;
    [defaultTransportTypeFinder transportTypeForDirectionItem:directionItem ignoreMapType:0 completion:v25];

    objc_destroyWeak(v27);
    objc_destroyWeak(buf);
  }

LABEL_40:
  settingsController = [controllerCopy settingsController];
  userRequestingViewModeChange = [settingsController userRequestingViewModeChange];

  if (userRequestingViewModeChange)
  {
    [(RoutePlanningMapController *)self->_mapController saveOriginalMapViewModeAs:mode];
  }

LABEL_43:
}

- (void)macDismissRouteSearchSuggestionsController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_routeSearchSuggestionsController);

  if (WeakRetained == controllerCopy)
  {
    objc_storeWeak(&self->_routeSearchSuggestionsController, 0);
    chromeViewController = [(RoutePlanningContext *)self chromeViewController];
    [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
  }
}

- (void)macPresentRouteSearchSuggestionsController:(id)controller
{
  controllerCopy = controller;
  objc_storeWeak(&self->_routeSearchSuggestionsController, controllerCopy);
  [controllerCopy setContaineeDelegate:self];

  chromeViewController = [(RoutePlanningContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)exitRoutePlanningIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  chromeViewController = [(RoutePlanningContext *)self chromeViewController];
  [chromeViewController popContext:self animated:animatedCopy completion:0];
}

- (void)closeRoutePlanningViewController:(id)controller withSender:(id)sender
{
  controllerCopy = controller;
  senderCopy = sender;
  if (controllerCopy)
  {
    if (sub_10000FA08(controllerCopy) == 5 && [(RoutePlanningOverviewViewController *)controllerCopy modalPresentationStyle]== 7)
    {
      [(RoutePlanningOverviewViewController *)controllerCopy dismissViewControllerAnimated:1 completion:0];
    }

    else if (self->_overviewViewController == controllerCopy)
    {
      chromeViewController = [(RoutePlanningContext *)self chromeViewController];
      [chromeViewController popContext:self animated:1 completion:0];
    }

    else
    {
      currentCard = self->_currentCard;
      if (currentCard == controllerCopy)
      {
        self->_currentCard = 0;

        routeSearchViewController = self->_routeSearchViewController;
        if (routeSearchViewController == controllerCopy)
        {
          self->_routeSearchViewController = 0;
        }

        chromeViewController2 = [(RoutePlanningContext *)self chromeViewController];
        [chromeViewController2 setNeedsUpdateComponent:@"cards" animated:1];
      }
    }
  }
}

- (void)presentRoutePlanningViewType:(int64_t)type
{
  if (type <= 4)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        _routeSearchViewController = [(RoutePlanningContext *)self _routeSearchViewController];
      }

      else
      {
        if (type != 2)
        {
          return;
        }

        _routeSearchViewController = [(RoutePlanningContext *)self _stepsViewController];
      }

      goto LABEL_18;
    }

    if (type == 3)
    {
      [(RoutePlanningContext *)self _timingViewControllerForCurrentRoute];
    }

    else
    {
      [(RoutePlanningContext *)self _optionsViewControllerForCurrentRoute];
    }

    _routeSearchViewController = LABEL_9:;
    goto LABEL_18;
  }

  if (type <= 6)
  {
    if (type == 5)
    {
      [(RoutePlanningContext *)self _incidentsViewController];
    }

    else
    {
      [(RoutePlanningContext *)self _routingAppsViewController];
    }

    goto LABEL_9;
  }

  if (type != 7)
  {
    if (type != 8)
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
    _routeSearchViewController = [(RoutePlanningOptionsViewController *)v5 initWithDataCoordinator:dataCoordinator automaticallySaveChanges:0 completionHandler:v17];
LABEL_18:
    _autosharingViewController = _routeSearchViewController;
    if (!_routeSearchViewController)
    {
      return;
    }

    goto LABEL_19;
  }

  _autosharingViewController = [(RoutePlanningContext *)self _autosharingViewController];
  WeakRetained = objc_loadWeakRetained(&self->_platformController);
  currentSession = [WeakRetained currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = currentSession;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  automaticSharingContacts = [v14 automaticSharingContacts];

  if (automaticSharingContacts)
  {
    v16 = automaticSharingContacts;
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  [_autosharingViewController setContacts:v16];

  if (_autosharingViewController)
  {
LABEL_19:
    if ([_autosharingViewController modalPresentationStyle] == 7)
    {
      chromeViewController = [(RoutePlanningContext *)self chromeViewController];
      [chromeViewController presentViewController:_autosharingViewController animated:1 completion:0];
    }

    else
    {
      currentCard = self->_currentCard;
      self->_currentCard = _autosharingViewController;
      v10 = _autosharingViewController;

      chromeViewController = [(RoutePlanningContext *)self chromeViewController];
      [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
    }
  }
}

- (void)_carPlayWantsToDisplayEVOnboarding:(id)onboarding
{
  userInfo = [onboarding userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"EVOnboardingCarPlayVehicleKey"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [userInfo objectForKeyedSubscript:@"EVOnboardingCarPlayDictionaryKey"];
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
        v14 = userInfo;
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
      v14 = userInfo;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "_carPlayWantsToDisplayEVOnboarding: Received invalid vehicle object through notification: %@", buf, 0xCu);
    }
  }
}

- (void)presentWalletTopUpViewControllerWithTransitIdentifier:(id)identifier callbackDelegate:(id)delegate
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  v8 = sub_10003D020();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Showing Wallet Top-Up View Controller", v11, 2u);
  }

  v9 = [[PKPerformActionSetupViewController alloc] initWithPassIdentifier:identifierCopy];
  [v9 setDelegate:delegateCopy];

  chromeViewController = [(RoutePlanningContext *)self chromeViewController];
  [chromeViewController _maps_topMostPresentViewController:v9 animated:1 completion:0];
}

- (void)presentWalletDCIViewControllerWithTransitSystems:(id)systems callbackDelegate:(id)delegate
{
  systemsCopy = systems;
  delegateCopy = delegate;
  if (systemsCopy)
  {
    if ([systemsCopy count])
    {
      v9 = objc_alloc_init(PKPaymentSetupConfiguration);
      [v9 setReferrerIdentifier:@"maps"];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10070E040;
      v14[3] = &unk_10162EC68;
      v14[4] = self;
      v15 = systemsCopy;
      v16 = v9;
      v17 = delegateCopy;
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

- (id)_filteredFeaturesFromTransitSystems:(id)systems allFeatures:(id)features
{
  systemsCopy = systems;
  featuresCopy = features;
  v24 = systemsCopy;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(systemsCopy, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = featuresCopy;
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
              identifiers = [v9 identifiers];
              identifier = [v15 identifier];
              v18 = [identifiers containsObject:identifier];

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

- (void)presentEducationScreenWithAssetURLs:(id)ls titleText:(id)text bodyText:(id)bodyText
{
  bodyTextCopy = bodyText;
  textCopy = text;
  lsCopy = ls;
  v13 = [[TransitPayEducationScreenViewController alloc] initWithAssetURLs:lsCopy titleText:textCopy bodyText:bodyTextCopy];

  v11 = [[UINavigationController alloc] initWithRootViewController:v13];
  chromeViewController = [(RoutePlanningContext *)self chromeViewController];
  [chromeViewController _maps_topMostPresentViewController:v11 animated:1 completion:0];
}

- (void)productViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  [controllerCopy dismissViewControllerAnimated:1 completion:0];
  clientIdentifier = [controllerCopy clientIdentifier];

  v8 = [clientIdentifier isEqualToString:@"RidesharingStoreProductClientIdentifier"];
  if (result == 4 && v8)
  {
    rideOptionStateObserver = [(RoutePlanningDataCoordinator *)self->_dataCoordinator rideOptionStateObserver];
    analyticsBookingSession = [rideOptionStateObserver analyticsBookingSession];
    [analyticsBookingSession setInstalledApp:1];
  }
}

- (void)containeeViewControllerDidDismissExternally:(id)externally
{
  externallyCopy = externally;
  currentCard = self->_currentCard;
  v9 = externallyCopy;
  if (currentCard == externallyCopy)
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

  chromeViewController = [(RoutePlanningContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"cards" animated:0];

  v7 = v9;
LABEL_6:
}

- (void)routePlanningDataCoordinator:(id)coordinator isEnabled:(BOOL)enabled
{
  if (!enabled)
  {
    chromeViewController = [(RoutePlanningContext *)self chromeViewController];
    [chromeViewController popContext:self animated:1 completion:0];
  }
}

- (BOOL)chromeDidClearMapSelection
{
  chromeViewController = [(RoutePlanningContext *)self chromeViewController];
  v4 = [chromeViewController isTopContext:self];

  if ((v4 & 1) == 0)
  {
    chromeViewController2 = [(RoutePlanningContext *)self chromeViewController];
    [chromeViewController2 popToContext:self animated:1 completion:0];
  }

  return v4 ^ 1;
}

- (void)_presentPlaceCardWithItem:(id)item
{
  dataCoordinator = self->_dataCoordinator;
  itemCopy = item;
  if ([(RoutePlanningDataCoordinator *)dataCoordinator isEnabled])
  {
    isEnabled = [(RoutePlanningDataCoordinator *)self->_dataCoordinator isEnabled];
    transportType = [(RoutePlanningDataCoordinator *)self->_dataCoordinator transportType];
    waypointRequests = [(RoutePlanningDataCoordinator *)self->_dataCoordinator waypointRequests];
    numberOfUserRequestedWaypoints = [waypointRequests count];
  }

  else
  {
    isEnabled = [(DirectionItem *)self->_directionItem canAddStop];
    transportType = [(DirectionItem *)self->_directionItem transportType];
    numberOfUserRequestedWaypoints = [(DirectionItem *)self->_directionItem numberOfUserRequestedWaypoints];
  }

  IsEnabled_DrivingMultiWaypointRoutes = 0;
  if (transportType <= 1)
  {
    if (transportType)
    {
      if (transportType == 1)
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

  if (transportType == 2)
  {
    goto LABEL_14;
  }

  if (transportType == 5)
  {
    IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_Maps420();
  }

LABEL_15:
  if (numberOfUserRequestedWaypoints)
  {
    v11 = IsEnabled_DrivingMultiWaypointRoutes;
  }

  else
  {
    v11 = 0;
  }

  v12 = [[_TtC4Maps29PlaceCardContextConfiguration alloc] initWithPlaceCardItem:itemCopy shouldInsertInHistory:0 excludedContent:22 buildingMultistopRoute:v11 & isEnabled];

  chromeViewController = [(RoutePlanningContext *)self chromeViewController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10070EA24;
  v15[3] = &unk_10165FB98;
  v16 = v12;
  v14 = v12;
  [chromeViewController scheduleCoordinatedContextChange:v15 completionHandler:&stru_101627558];
}

- (BOOL)chromeDidSelectUserLocationAnnotation:(id)annotation
{
  annotation = [annotation annotation];
  v5 = [[PlaceCardItem alloc] initWithSearchResult:annotation];
  [(RoutePlanningContext *)self _presentPlaceCardWithItem:v5];

  return 1;
}

- (BOOL)chromeDidSelectMarkerForMapItem:(id)item
{
  itemCopy = item;
  v5 = [[PlaceCardItem alloc] initWithMapItem:itemCopy];

  [(RoutePlanningContext *)self _presentPlaceCardWithItem:v5];
  return 1;
}

- (BOOL)chromeDidSelectETAMarkerForRoute:(id)route
{
  routeCopy = route;
  uniqueRouteID = [routeCopy uniqueRouteID];
  currentRoute = [(RoutePlanningDataCoordinator *)self->_dataCoordinator currentRoute];
  uniqueRouteID2 = [currentRoute uniqueRouteID];
  v8 = uniqueRouteID;
  v9 = uniqueRouteID2;
  if (!(v8 | v9))
  {
    goto LABEL_4;
  }

  v10 = v9;
  v11 = [v8 isEqual:v9];

  if ((v11 & 1) == 0)
  {
    [(RoutePlanningDataCoordinator *)self->_dataCoordinator updateCurrentRoute:routeCopy];
    v12 = +[MKMapService sharedService];
    iosBasedChromeViewController = [(RoutePlanningContext *)self iosBasedChromeViewController];
    [v12 captureUserAction:3015 onTarget:objc_msgSend(iosBasedChromeViewController eventValue:"currentMapViewTargetForAnalytics") routeIndex:{0, objc_msgSend(routeCopy, "_maps_routeIndex")}];

    currentCard = self->_currentCard;
    self->_currentCard = 0;

    currentRoute = [(RoutePlanningContext *)self chromeViewController];
    [currentRoute setNeedsUpdateComponent:@"cards" animated:1];
LABEL_4:
  }

  return 1;
}

- (BOOL)chromeShouldAllowSelectingLabelMarker:(id)marker
{
  markerCopy = marker;
  if ([markerCopy isTransitLine])
  {
    v4 = 0;
  }

  else
  {
    waypointInfo = [markerCopy waypointInfo];
    waypoint = [waypointInfo waypoint];
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

- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  animationCopy = animation;
  [controller mapView];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10070EF64;
  v10 = v9[3] = &unk_101660CE8;
  selfCopy = self;
  isAnimated = [animationCopy isAnimated];
  v7 = v10;
  [animationCopy addAnimations:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10070EFBC;
  v8[3] = &unk_101661738;
  v8[4] = self;
  [animationCopy addCompletion:v8];
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10070F0FC;
  v7[3] = &unk_101661B18;
  v7[4] = self;
  animationCopy = animation;
  [animationCopy addPreparation:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10070F10C;
  v6[3] = &unk_101661738;
  v6[4] = self;
  [animationCopy addCompletion:v6];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  animationCopy = animation;
  controllerCopy = controller;
  mapView = [controllerCopy mapView];
  mapSelectionManager = [controllerCopy mapSelectionManager];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10070F2F8;
  v16[3] = &unk_101661B18;
  v16[4] = self;
  [animationCopy addPreparation:v16];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10070F308;
  v13[3] = &unk_101661A90;
  v14 = mapSelectionManager;
  v15 = mapView;
  v10 = mapView;
  v11 = mapSelectionManager;
  [animationCopy addAnimations:v13];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10070F364;
  v12[3] = &unk_101661738;
  v12[4] = self;
  [animationCopy addCompletion:v12];
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

- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10070F4E0;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [animation addPreparation:v4];
}

- (void)prepareToEnterStackInChromeViewController:(id)controller
{
  controllerCopy = controller;
  appCoordinator = [controllerCopy appCoordinator];
  platformController = [appCoordinator platformController];
  objc_storeWeak(&self->_platformController, platformController);

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
  if (sub_10000FA08(controllerCopy) == 5)
  {
    [(RoutePlanningOverviewViewController *)self->_overviewViewController loadViewIfNeeded];
  }

  routeSearchViewController = [(RoutePlanningOverviewViewController *)self->_overviewViewController routeSearchViewController];
  [routeSearchViewController setDelegate:self];

  v15 = [[RoutePlanningMapController alloc] initWithChromeViewController:controllerCopy];
  mapController = self->_mapController;
  self->_mapController = v15;

  [(RoutePlanningMapController *)self->_mapController setDataCoordinator:self->_dataCoordinator];
  -[RoutePlanningMapController saveOriginalMapViewModeAs:](self->_mapController, "saveOriginalMapViewModeAs:", [controllerCopy displayedViewMode]);
  personalizedItemManager = [controllerCopy personalizedItemManager];
  [(RoutePlanningMapController *)self->_mapController setPersonalizedItemManager:personalizedItemManager];

  searchPinsManager = [controllerCopy searchPinsManager];
  [(RoutePlanningMapController *)self->_mapController setSearchPinsManager:searchPinsManager];

  mapCameraController = [controllerCopy mapCameraController];
  [(RoutePlanningMapController *)self->_mapController setMapCameraController:mapCameraController];

  routeAnnotationsController = [controllerCopy routeAnnotationsController];
  [(RoutePlanningMapController *)self->_mapController setRouteAnnotationsController:routeAnnotationsController];

  [(RoutePlanningMapController *)self->_mapController setViewModeController:controllerCopy];
}

- (id)mapCameraController
{
  chromeViewController = [(RoutePlanningContext *)self chromeViewController];
  mapCameraController = [chromeViewController mapCameraController];

  return mapCameraController;
}

- (id)mapSelectionManager
{
  chromeViewController = [(RoutePlanningContext *)self chromeViewController];
  mapSelectionManager = [chromeViewController mapSelectionManager];

  return mapSelectionManager;
}

- (id)personalizedItemSources
{
  chromeViewController = [(RoutePlanningContext *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];

  if (searchPinsManager)
  {
    v4 = [NSMutableArray alloc];
    searchResultsItemSource = [searchPinsManager searchResultsItemSource];
    singleSearchResultItemSource = [searchPinsManager singleSearchResultItemSource];
    searchResultsItemSource2 = [searchPinsManager searchResultsItemSource];
    droppedPinsItemSource = [searchPinsManager droppedPinsItemSource];
    collectionPinsItemSource = [searchPinsManager collectionPinsItemSource];
    routeStartEndItemSource = [searchPinsManager routeStartEndItemSource];
    placeCardLinkedPlacesItemSource = [searchPinsManager placeCardLinkedPlacesItemSource];
    searchDotPlacesItemSource = [searchPinsManager searchDotPlacesItemSource];
    v13 = [v4 initWithObjects:{searchResultsItemSource, singleSearchResultItemSource, searchResultsItemSource2, droppedPinsItemSource, collectionPinsItemSource, routeStartEndItemSource, placeCardLinkedPlacesItemSource, searchDotPlacesItemSource, 0}];

    v14 = +[TrafficIncidentLayoutManager sharedInstance];
    LODWORD(singleSearchResultItemSource) = [v14 isIncidentReportingEnabled];

    if (singleSearchResultItemSource)
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

- (void)_presentMacRouteEditingWithEditRequired:(unint64_t)required index:(unint64_t)index
{
  [(RoutePlanningContext *)self presentRoutePlanningViewType:1];
  if (required)
  {
    items = [(DirectionItem *)self->_directionItem items];
    _routeSearchViewController = [(RoutePlanningContext *)self _routeSearchViewController];
    [_routeSearchViewController updateWithItems:items];

    if ([items count] > index)
    {
      _routeSearchViewController2 = [(RoutePlanningContext *)self _routeSearchViewController];
      [_routeSearchViewController2 selectFieldIndex:index beginEditing:1];
    }
  }
}

- (void)displayAlertWithTitle:(id)title message:(id)message postAlertSearchType:(unsigned int)type
{
  v5 = *&type;
  messageCopy = message;
  titleCopy = title;
  iosBasedChromeViewController = [(RoutePlanningContext *)self iosBasedChromeViewController];
  interruptionManager = [iosBasedChromeViewController interruptionManager];
  [interruptionManager displayAlertWithTitle:titleCopy message:messageCopy postAlertSearchType:v5];
}

- (void)_promptForEditRequired:(unint64_t)required forWaypointAtIndex:(unint64_t)index inDirectionItem:(id)item userInfo:(id)info
{
  itemCopy = item;
  infoCopy = info;
  if (!required)
  {
    goto LABEL_19;
  }

  chromeViewController = [(RoutePlanningContext *)self chromeViewController];
  v13 = sub_10000FA08(chromeViewController);

  if (v13 == 5)
  {
    [(RoutePlanningContext *)self _presentMacRouteEditingWithEditRequired:required index:index];
    goto LABEL_19;
  }

  if (required - 2 < 2)
  {
    hasCurrentLocationOnlyAsOriginWaypoint = [itemCopy hasCurrentLocationOnlyAsOriginWaypoint];
    v14 = +[NSBundle mainBundle];
    v15 = v14;
    if (hasCurrentLocationOnlyAsOriginWaypoint)
    {
      v16 = @"Choose Start";
    }

    else
    {
      v16 = @"Set Current Location";
    }
  }

  else if (required == 4)
  {
    v14 = +[NSBundle mainBundle];
    v15 = v14;
    v16 = @"Choose Destination";
  }

  else
  {
    if (required != 1)
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
  items = [itemCopy items];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10071012C;
  v30[3] = &unk_10162EA10;
  v30[4] = self;
  v33 = &v36;
  v31 = itemCopy;
  requiredCopy = required;
  indexCopy = index;
  v32 = infoCopy;
  v21 = [(RouteSearchViewController *)v19 initWithDelegate:self items:items waypointIndex:index selectionHandler:v30];
  v22 = v37[5];
  v37[5] = v21;

  [v37[5] setTitle:v18];
  objc_storeStrong(&self->_routeSearchViewController, v37[5]);
  if ([v37[5] modalPresentationStyle] == 7)
  {
    popoverPresentationController = [v37[5] popoverPresentationController];
    delegate = [popoverPresentationController delegate];

    if (!delegate)
    {
      popoverPresentationController2 = [v37[5] popoverPresentationController];
      [popoverPresentationController2 setDelegate:self];
    }

    chromeViewController2 = [(RoutePlanningContext *)self chromeViewController];
    [chromeViewController2 _maps_topMostPresentViewController:v37[5] animated:1 completion:0];
  }

  else
  {
    iosBasedChromeViewController = [(RoutePlanningContext *)self iosBasedChromeViewController];
    [iosBasedChromeViewController setNeedsUpdateComponent:@"cards" animated:1];

    chromeViewController2 = [(RoutePlanningContext *)self chromeViewController];
    v28 = v37[5];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1007102E0;
    v29[3] = &unk_101659998;
    v29[4] = &v36;
    v29[5] = index;
    [chromeViewController2 presentController:v28 animated:1 completion:v29];
  }

  _Block_object_dispose(&v36, 8);
LABEL_19:
}

- (void)_promptForCurrentLocationConfirmationWithDirectionItem:(id)item userInfo:(id)info
{
  itemCopy = item;
  infoCopy = info;
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
  v14 = infoCopy;
  v32 = v14;
  selfCopy = self;
  v15 = itemCopy;
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
  selfCopy2 = self;
  v30 = v15;
  v19 = v15;
  v20 = v14;
  v21 = [UIAlertAction actionWithTitle:v18 style:0 handler:v27];

  [v11 addAction:v21];
  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
  v24 = [UIAlertAction actionWithTitle:v23 style:1 handler:0];

  [v11 addAction:v24];
  chromeViewController = [(RoutePlanningContext *)self chromeViewController];
  [chromeViewController _maps_topMostPresentViewController:v11 animated:1 completion:0];
}

- (void)addStopForSearchFieldItem:(id)item withUserInfo:(id)info
{
  itemCopy = item;
  infoCopy = info;
  if ([(RoutePlanningContext *)self isRoutePlanningPresented]|| ([(RouteSearchViewController *)self->_routeSearchViewController presentingViewController], (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (v9 = v8, [(RouteSearchViewController *)self->_routeSearchViewController dataCoordinator], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    directionItemForCurrentSession = [(RoutePlanningDataCoordinator *)self->_dataCoordinator directionItemForCurrentSession];
    items = [directionItemForCurrentSession items];
    v13 = [NSMutableArray arrayWithArray:items];

    presentingViewController = [(RouteSearchViewController *)self->_routeSearchViewController presentingViewController];
    if (presentingViewController)
    {
      v15 = presentingViewController;
      _currentlySelectedIndexForAddStop = [(RouteSearchViewController *)self->_routeSearchViewController _currentlySelectedIndexForAddStop];

      if (_currentlySelectedIndexForAddStop != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = sub_100798A3C();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v29 = 134217984;
          v30 = _currentlySelectedIndexForAddStop;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Performing fresh directions with replaced stop at index %lu", &v29, 0xCu);
        }

        [v13 replaceObjectAtIndex:_currentlySelectedIndexForAddStop withObject:itemCopy];
        goto LABEL_31;
      }
    }

    transportType = [directionItemForCurrentSession transportType];
    if (transportType > 1)
    {
      if (transportType == 2)
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

          [v13 addObject:itemCopy];
LABEL_31:
          transportType2 = [(RoutePlanningDataCoordinator *)self->_dataCoordinator transportType];
          v25 = [DirectionItem alloc];
          v26 = [v13 copy];
          v19 = [(DirectionItem *)v25 initWithItems:v26 transportType:transportType2];

          v27 = [infoCopy mutableCopy];
          [v27 setObject:0 forKeyedSubscript:@"DirectionsAppendContentsOfItem"];
          v28 = [v27 copy];
          [(RoutePlanningContext *)self setDirectionItem:v19 allowToPromptEditing:1 userInfo:v28];

          goto LABEL_44;
        }
      }

      else if (transportType == 5 && (MapsFeature_IsEnabled_Maps420() & 1) != 0)
      {
        goto LABEL_28;
      }
    }

    else if (transportType)
    {
      if (transportType == 1 && (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0)
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
    transportType3 = [directionItemForCurrentSession transportType];
    v22 = @"NO";
    if (transportType3 > 1)
    {
      if (transportType3 == 2)
      {
        if (MapsFeature_IsEnabled_Maps182())
        {
LABEL_42:
          v22 = @"YES";
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      if (transportType3 != 5)
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
      if (transportType3)
      {
        if (transportType3 == 1)
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

  [(RouteSearchViewController *)self->_routeSearchViewController replaceSelectedFieldWithItem:itemCopy];
LABEL_45:
}

- (void)setDirectionItem:(id)item allowToPromptEditing:(BOOL)editing userInfo:(id)info
{
  editingCopy = editing;
  itemCopy = item;
  infoCopy = info;
  chromeViewController = [(RoutePlanningContext *)self chromeViewController];

  if (chromeViewController)
  {
    currentCard = self->_currentCard;
    if (currentCard)
    {
      self->_currentCard = 0;

      iosChromeViewController = [(RoutePlanningContext *)self iosChromeViewController];
      [iosChromeViewController setNeedsUpdateComponent:@"cards" animated:1 completion:0];
    }

    if (!itemCopy)
    {
      v14 = [DirectionItem alloc];
      v15 = objc_opt_new();
      v71[0] = v15;
      v16 = objc_opt_new();
      v71[1] = v16;
      v17 = [NSArray arrayWithObjects:v71 count:2];
      itemCopy = [(DirectionItem *)v14 initWithItems:v17 transportType:0];
    }

    objc_storeStrong(&self->_directionItem, itemCopy);
    objc_storeStrong(&self->_userInfo, info);
    self->_allowErrorEditingPrompts = 1;
    chromeViewController2 = [(RoutePlanningContext *)self chromeViewController];
    v19 = chromeViewController2 == 0;

    if (!v19)
    {
      items = [(DirectionItem *)itemCopy items];
      if ([(RoutePlanningContext *)self isRoutePlanningPresented])
      {
        directionItemForCurrentSession = [(RoutePlanningDataCoordinator *)self->_dataCoordinator directionItemForCurrentSession];
      }

      else
      {
        directionItemForCurrentSession = self->_directionItem;
      }

      v22 = directionItemForCurrentSession;
      if (directionItemForCurrentSession)
      {
        v23 = [infoCopy objectForKeyedSubscript:@"DirectionsAppendContentsOfItem"];
        bOOLValue = [v23 BOOLValue];

        if (bOOLValue)
        {
          items2 = [(DirectionItem *)itemCopy items];
          firstObject = [items2 firstObject];

          [(RoutePlanningContext *)self addStopForSearchFieldItem:firstObject withUserInfo:infoCopy];
LABEL_57:

          goto LABEL_58;
        }
      }

      if (![(DirectionItem *)itemCopy isEquivalentAsWaypointToDirectionItem:v22])
      {
        v27 = [(DirectionItem *)itemCopy copy];
        directionItem = self->_directionItem;
        self->_directionItem = v27;
      }

      if ([items count] == 1)
      {
        v29 = [infoCopy objectForKeyedSubscript:@"DirectionsAppendContentsOfItem"];
        bOOLValue2 = [v29 BOOLValue];

        if ((bOOLValue2 & 1) == 0)
        {
          v31 = sub_100798A3C();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            firstObject2 = [items firstObject];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = firstObject2;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "DirectionItem unexpectedly had only 1 waypoint: %@", &buf, 0xCu);
          }
        }
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v69 = 0x2020000000;
      v70 = [items count] > 1;
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_1007113A8;
      v63[3] = &unk_10162E978;
      v64 = items;
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

      v37 = [infoCopy objectForKeyedSubscript:@"DirectionsAllowApproximateCurrentLocation"];
      [(DirectionItem *)itemCopy setAllowApproximateUserLocation:v37];

      v62 = 0x7FFFFFFFFFFFFFFFLL;
      v38 = [(DirectionItem *)itemCopy editRequired:&v62];
      v39 = v38;
      if (!editingCopy || !v38)
      {
        if (v38)
        {
          v41 = +[NSBundle mainBundle];
          currentTraits = [v41 localizedStringForKey:@"Cannot Provide Directions" value:@"localized string not found" table:0];

          [(RoutePlanningContext *)self displayAlertWithTitle:currentTraits message:0 postAlertSearchType:2];
        }

        else
        {
          transportType = [(DirectionItem *)self->_directionItem transportType];
          v44 = sub_100798A3C();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            if ((transportType - 1) > 4)
            {
              v45 = @"Undefined";
            }

            else
            {
              v45 = *(&off_1016276B0 + transportType - 1);
            }

            *v66 = 138412290;
            v67 = v45;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Initial transport type from direction item: %@", v66, 0xCu);
          }

          if (transportType)
          {
            if (transportType == 4)
            {
              if (sub_100016C50())
              {
                transportType = 4;
              }

              else
              {
                v50 = sub_100798A3C();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  *v66 = 0;
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Detected rideshare transport type when ride booking is not enabled; changing to driving", v66, 2u);
                }

                transportType = 1;
              }
            }

            v51 = +[MapsSuggestionsPredictor sharedPredictor];
            v52 = v51;
            if ((transportType - 1) > 4)
            {
              v53 = 4;
            }

            else
            {
              v53 = dword_101216100[transportType - 1];
            }

            [v51 capturePredictedTransportationMode:v53];
          }

          [(DirectionItem *)self->_directionItem setTransportType:transportType];
          currentTraits = [infoCopy objectForKeyedSubscript:@"SearchSessionTraits"];
          if (!currentTraits)
          {
            chromeViewController3 = [(RoutePlanningContext *)self chromeViewController];
            currentTraits = [chromeViewController3 currentTraits];
          }

          v55 = [infoCopy objectForKeyedSubscript:@"SearchSessionTraitsSource"];

          if (v55)
          {
            v56 = [infoCopy objectForKeyedSubscript:@"SearchSessionTraitsSource"];
            [currentTraits setSource:{objc_msgSend(v56, "integerValue")}];
          }

          v57 = [infoCopy mutableCopy];
          v58 = [NSNumber numberWithInt:self->_currentCard == self->_routeSearchViewController];
          [v57 setObject:v58 forKeyedSubscript:@"DisableNotReachableErrorInRoutePlanning"];

          dataCoordinator = self->_dataCoordinator;
          v60 = self->_directionItem;
          v61 = [v57 copy];
          [(RoutePlanningDataCoordinator *)dataCoordinator startWithDirectionItem:v60 traits:currentTraits userInfo:v61];
        }

        goto LABEL_56;
      }

      if (v38 == 3)
      {
        v40 = [infoCopy objectForKeyedSubscript:@"SearchSessionTraitsSource"];
        if ([v40 integerValue] == 1)
        {

          goto LABEL_34;
        }

        v46 = [infoCopy objectForKeyedSubscript:@"DirectionsSourceKey"];
        v47 = [v46 integerValue] == 2;

        if (v47)
        {
LABEL_34:
          v48 = [infoCopy objectForKeyedSubscript:@"DirectionsAllowApproximateCurrentLocation"];
          v49 = v48 == 0;

          if (v49)
          {
            [(RoutePlanningContext *)self _promptForCurrentLocationConfirmationWithDirectionItem:itemCopy userInfo:infoCopy];
            goto LABEL_56;
          }
        }
      }

      [(RoutePlanningContext *)self _promptForEditRequired:v39 forWaypointAtIndex:v62 inDirectionItem:itemCopy userInfo:infoCopy];
      goto LABEL_56;
    }
  }

  else
  {
    objc_storeStrong(&self->_pendingDirectionItem, item);
    self->_pendingAllowErrorEditingPrompts = editingCopy;
    objc_storeStrong(&self->_pendingUserInfo, info);
  }

LABEL_58:
}

- (RoutePlanningContext)initWithDirectionItem:(id)item userInfo:(id)info
{
  itemCopy = item;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = RoutePlanningContext;
  v9 = [(RoutePlanningContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pendingDirectionItem, item);
    v10->_pendingAllowErrorEditingPrompts = 1;
    objc_storeStrong(&v10->_pendingUserInfo, info);
  }

  return v10;
}

@end