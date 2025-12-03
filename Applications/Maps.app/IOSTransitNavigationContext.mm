@interface IOSTransitNavigationContext
- (BOOL)allowOnlyStandardCardStyle;
- (BOOL)handleRecenterButton;
- (BOOL)isDisplayingManuallySelectedStep;
- (BOOL)shouldResetStateAfterResigning;
- (IOSTransitNavigationContext)init;
- (id)desiredCards;
- (id)fetchCurrentRoute;
- (id)fetchLastLocation;
- (void)_backlightLuminanceDidChange;
- (void)_didLeaveDefaultZoomPan;
- (void)_didReturnToDefaultZoomPan;
- (void)_performWhenTrayPresented:(id)presented;
- (void)_presentIncidents:(id)incidents;
- (void)_presentPlaceCardViewControllerForMapItem:(id)item modally:(BOOL)modally;
- (void)_updateArrivalEndTimerIfNeeded;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)canRecenterDidChange;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
- (void)container:(id)container didPresentContainee:(id)containee finished:(BOOL)finished;
- (void)didReselectDisplayedStep;
- (void)didTapMapView:(id)view atPoint:(CGPoint)point;
- (void)directionsStepsListDidTapRAPButton:(id)button;
- (void)directionsStepsListDidTapShareButton:(id)button;
- (void)idleTimerDidTimeout:(id)timeout;
- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didSelectLabelMarker:(id)marker;
- (void)presentAdvisory:(id)advisory;
- (void)recenterOnActiveStep;
- (void)showVLF;
- (void)startRequestingRealtimeUpdates;
- (void)stopRequestingRealtimeUpdates;
- (void)transitDirectionsStepsListDataSource:(id)source didSelectTrip:(id)trip;
- (void)transitDirectionsStepsListDataSource:(id)source didTapClusteredVehiclesCell:(id)cell;
- (void)transitDirectionsStepsListDataSource:(id)source didTapGetTicketsForSegments:(id)segments;
- (void)transitDirectionsStepsListDataSource:(id)source didUpdateActiveGuidanceStep:(id)step;
- (void)transitDirectionsStepsListDataSource:(id)source didUpdateDisplayedGuidanceStep:(id)step;
- (void)transitDirectionsStepsListDataSource:(id)source willExpandItem:(id)item;
- (void)transitNavigationTrayDidTapClose:(id)close;
@end

@implementation IOSTransitNavigationContext

- (void)_presentPlaceCardViewControllerForMapItem:(id)item modally:(BOOL)modally
{
  modallyCopy = modally;
  itemCopy = item;
  v10 = [[PlaceCardItem alloc] initWithMapItem:itemCopy];

  v7 = [[_TtC4Maps29PlaceCardContextConfiguration alloc] initWithPlaceCardItem:v10 shouldInsertInHistory:0 excludedContent:[(IOSTransitNavigationContext *)self _placeCardExcludedContent] buildingMultistopRoute:0];
  [(PlaceCardContextConfiguration *)v7 setPresentedModally:modallyCopy];
  v8 = [[_TtC4Maps16PlaceCardContext alloc] initWithConfiguration:v7];
  chromeViewController = [(TransitNavigationContext *)self chromeViewController];
  [chromeViewController pushContext:v8 animated:1 completion:0];
}

- (void)showVLF
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentAdditionalCard = self->_currentAdditionalCard;

    [(ContaineeProtocol *)currentAdditionalCard handleVLFPuckTapped];
  }

  else
  {
    objc_initWeak(&location, self);
    iosBasedChromeViewController = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
    _currentContainerViewController = [iosBasedChromeViewController _currentContainerViewController];

    iosBasedChromeViewController2 = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
    appCoordinator = [iosBasedChromeViewController2 appCoordinator];
    baseActionCoordinator = [appCoordinator baseActionCoordinator];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1008FCC1C;
    v18 = &unk_1016619A8;
    objc_copyWeak(&v19, &location);
    v9 = [_currentContainerViewController showVLFCrowdsourcingPermissionCardWithContaineeDelegate:self delegate:baseActionCoordinator completion:&v15];

    if ((v9 & 1) == 0)
    {
      v10 = [(IOSTransitNavigationContext *)self iosBasedChromeViewController:v15];
      userLocationView = [v10 userLocationView];

      if ([userLocationView isVLFBannerVisible])
      {
        isVLFPuckVisible = 2;
      }

      else
      {
        isVLFPuckVisible = [userLocationView isVLFPuckVisible];
      }

      v13 = [[VLFContaineeViewController alloc] initWithEntryPoint:isVLFPuckVisible];
      [(ContaineeViewController *)v13 setContaineeDelegate:self];
      objc_storeStrong(&self->_currentAdditionalCard, v13);
      chromeViewController = [(TransitNavigationContext *)self chromeViewController];
      [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
    }

    objc_destroyWeak(&v19);

    objc_destroyWeak(&location);
  }
}

- (void)_presentIncidents:(id)incidents
{
  incidentsCopy = incidents;
  v11 = objc_alloc_init(MapsIncidentsViewController);
  v5 = [[ModalContaineeViewController alloc] initWithChildViewController:v11];
  [(MapsIncidentsViewController *)v11 setTransitIncidents:incidentsCopy];

  navigationItem = [(MapsIncidentsViewController *)v11 navigationItem];
  title = [navigationItem title];
  headerView = [(ModalContaineeViewController *)v5 headerView];
  [headerView setTitle:title];

  currentAdditionalCard = self->_currentAdditionalCard;
  self->_currentAdditionalCard = v5;

  chromeViewController = [(TransitNavigationContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)presentAdvisory:(id)advisory
{
  advisoryCopy = advisory;
  v5 = objc_alloc_init(MapsIncidentsViewController);
  v6 = [[ModalContaineeViewController alloc] initWithChildViewController:v5];
  [(MapsIncidentsViewController *)v5 setAdvisory:advisoryCopy];
  navigationItem = [(MapsIncidentsViewController *)v5 navigationItem];
  title = [navigationItem title];
  headerView = [(ModalContaineeViewController *)v6 headerView];
  [headerView setTitle:title];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1008FD250;
  v14[3] = &unk_101661B18;
  v15 = advisoryCopy;
  v10 = advisoryCopy;
  [(ModalContaineeViewController *)v6 setBlockAlongDismissContainee:v14];
  currentAdditionalCard = self->_currentAdditionalCard;
  self->_currentAdditionalCard = v6;
  v12 = v6;

  chromeViewController = [(TransitNavigationContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)idleTimerDidTimeout:(id)timeout
{
  v4 = sub_100799650();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Arrival timer fired", v11, 2u);
  }

  iosBasedChromeViewController = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
  appCoordinator = [iosBasedChromeViewController appCoordinator];
  platformController = [appCoordinator platformController];

  currentSession = [platformController currentSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = currentSession;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [platformController popIfCurrentSession:v10];
}

- (void)_updateArrivalEndTimerIfNeeded
{
  if (self->_arrivalEndTimer)
  {
LABEL_2:
    activeStep = [(TransitNavigationContext *)self activeStep];
    isArrivalStep = [activeStep isArrivalStep];

    if ((isArrivalStep & 1) == 0)
    {
      v5 = sub_100799650();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Clearing arrival timer", &v19, 2u);
      }

      arrivalEndTimer = self->_arrivalEndTimer;
      self->_arrivalEndTimer = 0;
    }

    return;
  }

  activeStep2 = [(TransitNavigationContext *)self activeStep];
  isArrivalStep2 = [activeStep2 isArrivalStep];

  if (!isArrivalStep2)
  {
    if (!self->_arrivalEndTimer)
    {
      return;
    }

    goto LABEL_2;
  }

  GEOConfigGetDouble();
  v10 = v9;
  BOOL = GEOConfigGetBOOL();
  v12 = sub_100799650();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "not ";
    if (BOOL)
    {
      v13 = "";
    }

    v19 = 134218242;
    v20 = v10;
    v21 = 2080;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Scheduling arrival timer for %#.1lfs (%sinterruptible by user)", &v19, 0x16u);
  }

  v14 = [NavIdleTimeoutTimer alloc];
  chromeViewController = [(TransitNavigationContext *)self chromeViewController];
  view = [chromeViewController view];
  v17 = [(NavIdleTimeoutTimer *)v14 initWithView:view idleTimeout:v10];
  v18 = self->_arrivalEndTimer;
  self->_arrivalEndTimer = v17;

  [(NavIdleTimeoutTimer *)self->_arrivalEndTimer setDelegate:self];
  [(NavIdleTimeoutTimer *)self->_arrivalEndTimer setSuppressInterruptions:BOOL ^ 1u];
}

- (void)_backlightLuminanceDidChange
{
  trayViewController = self->_trayViewController;
  if (trayViewController)
  {
    traitCollection = [(TransitNavigationTrayViewController *)trayViewController traitCollection];
    isLuminanceReduced = [traitCollection isLuminanceReduced];

    if (isLuminanceReduced)
    {
      chromeViewController = [(TransitNavigationContext *)self chromeViewController];
      [chromeViewController setNeedsUpdateComponent:@"cards" animated:0];
    }
  }
}

- (void)canRecenterDidChange
{
  chromeViewController = [(TransitNavigationContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"RecenterButton" animated:1];
}

- (BOOL)handleRecenterButton
{
  if ([(TransitNavigationContext *)self isTemporarilyFramingStep]|| (v3 = [(IOSTransitNavigationContext *)self isDisplayingManuallySelectedStep]))
  {
    [(IOSTransitNavigationContext *)self recenterOnActiveStep];
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)didTapMapView:(id)view atPoint:(CGPoint)point
{
  viewCopy = view;
  if (self->_debugViewsController)
  {
    v20 = viewCopy;
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 BOOLForKey:@"PlaybackControls"];

    viewCopy = v20;
    if (v7)
    {
      chromeViewController = [(TransitNavigationContext *)self chromeViewController];
      viewport = [chromeViewController viewport];

      iosBasedChromeViewController = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
      innerLayoutGuide = [iosBasedChromeViewController innerLayoutGuide];

      debugControlsView = [(NavigationDebugViewsController *)self->_debugViewsController debugControlsView];
      superview = [debugControlsView superview];

      debugViewsController = self->_debugViewsController;
      if (superview == viewport)
      {
        isShowingTraceControls = [(NavigationDebugViewsController *)self->_debugViewsController isShowingTraceControls];
        v18 = self->_debugViewsController;
        if (isShowingTraceControls)
        {
          [(NavigationDebugViewsController *)v18 hideTraceControlsAnimated:1];
LABEL_8:

          viewCopy = v20;
          goto LABEL_9;
        }
      }

      else
      {
        chromeViewController2 = [(TransitNavigationContext *)self chromeViewController];
        mapView = [chromeViewController2 mapView];
        chromeViewController3 = [(TransitNavigationContext *)self chromeViewController];
        [(NavigationDebugViewsController *)debugViewsController addDebugViewsToView:viewport layoutGuide:innerLayoutGuide mapView:mapView modalPresentingViewController:chromeViewController3];

        v18 = self->_debugViewsController;
      }

      [(NavigationDebugViewsController *)v18 showTraceControls];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)mapView:(id)view didSelectLabelMarker:(id)marker
{
  markerCopy = marker;
  v5 = [[MKMapItem alloc] _initWithLabelMarker:markerCopy];
  [(IOSTransitNavigationContext *)self _presentPlaceCardViewControllerForMapItem:v5 modally:0];
  if ([markerCopy isTransit] && (objc_msgSend(markerCopy, "isTransitLine") & 1) == 0)
  {
    [(TransitSteppingAnalyticsDelegate *)self->_analyticsDelegate recordTapOnTransitStationPOI];
  }
}

- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView
{
  annotationViewCopy = annotationView;
  viewCopy = view;
  annotation = [annotationViewCopy annotation];
  [viewCopy deselectAnnotation:annotation animated:0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [annotationViewCopy isVLFPuckVisible])
  {
    iosBasedChromeViewController = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
    appCoordinator = [iosBasedChromeViewController appCoordinator];
    platformController = [appCoordinator platformController];
    auxiliaryTasksManager = [platformController auxiliaryTasksManager];
    v12 = [auxiliaryTasksManager auxilaryTaskForClass:objc_opt_class()];

    [v12 showVLFUI];
  }
}

- (void)container:(id)container didPresentContainee:(id)containee finished:(BOOL)finished
{
  containerCopy = container;
  containeeCopy = containee;
  if (self->_trayViewController == containeeCopy)
  {
    if (!self->_trayPresented)
    {
      self->_trayPresented = 1;
      whenTrayPresentedBlock = self->_whenTrayPresentedBlock;
      if (whenTrayPresentedBlock)
      {
        v9 = objc_retainBlock(whenTrayPresentedBlock);
        v10 = self->_whenTrayPresentedBlock;
        self->_whenTrayPresentedBlock = 0;

        v9[2](v9);
      }
    }
  }

  else if (self->_trayPresented)
  {
    self->_trayPresented = 0;
  }
}

- (void)_performWhenTrayPresented:(id)presented
{
  if (presented && self->_trayPresented)
  {
    v4 = *(presented + 2);

    v4(presented);
  }

  else
  {
    v5 = [presented copy];
    whenTrayPresentedBlock = self->_whenTrayPresentedBlock;
    self->_whenTrayPresentedBlock = v5;
  }
}

- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender
{
  stateCopy = state;
  currentUITargetForAnalytics = [(TransitNavigationContext *)self currentUITargetForAnalytics];
  displayedItemIndexForAnalytics = [(TransitNavigationTrayViewController *)self->_trayViewController displayedItemIndexForAnalytics];
  [GEOAPPortal captureUserAction:4 target:currentUITargetForAnalytics value:0 transitStep:displayedItemIndexForAnalytics];

  currentAdditionalCard = self->_currentAdditionalCard;
  if (currentAdditionalCard == stateCopy)
  {
    self->_currentAdditionalCard = 0;

    chromeViewController = [(TransitNavigationContext *)self chromeViewController];
    [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
  }

  chromeViewController2 = [(TransitNavigationContext *)self chromeViewController];
  mapSelectionManager = [chromeViewController2 mapSelectionManager];
  [mapSelectionManager clearSelectionAnimated:1];
}

- (void)transitDirectionsStepsListDataSource:(id)source didTapGetTicketsForSegments:(id)segments
{
  segmentsCopy = segments;
  iosBasedChromeViewController = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
  _currentContainerViewController = [iosBasedChromeViewController _currentContainerViewController];

  v7 = [UIAlertController _maps_alertControllerForTicketedSegments:segmentsCopy];

  view = [_currentContainerViewController view];
  popoverPresentationController = [v7 popoverPresentationController];
  [popoverPresentationController setSourceView:view];

  view2 = [_currentContainerViewController view];
  [view2 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  popoverPresentationController2 = [v7 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v12, v14, v16, v18}];

  popoverPresentationController3 = [v7 popoverPresentationController];
  [popoverPresentationController3 setPermittedArrowDirections:12];

  [_currentContainerViewController presentViewController:v7 animated:1 completion:0];
}

- (void)transitDirectionsStepsListDataSource:(id)source willExpandItem:(id)item
{
  v4 = [(ContaineeViewController *)self->_trayViewController cardPresentationController:source];
  [v4 wantsLayout:3];
}

- (void)transitDirectionsStepsListDataSource:(id)source didUpdateActiveGuidanceStep:(id)step
{
  sourceCopy = source;
  stepCopy = step;
  v15.receiver = self;
  v15.super_class = IOSTransitNavigationContext;
  [(TransitNavigationContext *)&v15 transitDirectionsStepsListDataSource:sourceCopy didUpdateActiveGuidanceStep:stepCopy];
  [(IOSTransitNavigationContext *)self _updateArrivalEndTimerIfNeeded];
  activeStep = [(TransitNavigationContext *)self activeStep];
  if (activeStep && (v9 = activeStep, -[TransitNavigationContext activeStep](self, "activeStep"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 stepIndex], v12 = objc_msgSend(stepCopy, "stepIndex"), v10, v9, v11 == v12))
  {
    [(TransitNavigationTrayViewController *)self->_trayViewController updateBacklightSceneEnvironment];
  }

  else
  {
    currentUITargetForAnalytics = [(TransitNavigationContext *)self currentUITargetForAnalytics];
    displayedItemIndexForAnalytics = [sourceCopy displayedItemIndexForAnalytics];
    [GEOAPPortal captureUserAction:3066 target:currentUITargetForAnalytics value:0 transitStep:displayedItemIndexForAnalytics];
  }
}

- (void)transitDirectionsStepsListDataSource:(id)source didUpdateDisplayedGuidanceStep:(id)step
{
  stepCopy = step;
  sourceCopy = source;
  displayedStep = [(TransitNavigationContext *)self displayedStep];
  v13.receiver = self;
  v13.super_class = IOSTransitNavigationContext;
  [(TransitNavigationContext *)&v13 transitDirectionsStepsListDataSource:sourceCopy didUpdateDisplayedGuidanceStep:stepCopy];

  if (!displayedStep || (v9 = [displayedStep stepIndex], v9 != objc_msgSend(stepCopy, "stepIndex")))
  {
    [(TransitNavigationTrayViewController *)self->_trayViewController updateForCurrentDisplayedStep];
    [(TransitNavigationTrayViewController *)self->_trayViewController updateBacklightSceneEnvironment];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1008FE0B8;
    v10[3] = &unk_101661A90;
    v11 = displayedStep;
    selfCopy = self;
    [(IOSTransitNavigationContext *)self _performWhenTrayPresented:v10];
  }
}

- (void)transitDirectionsStepsListDataSource:(id)source didTapClusteredVehiclesCell:(id)cell
{
  sourceCopy = source;
  cellCopy = cell;
  clusteredVehicleItem = [cellCopy clusteredVehicleItem];
  clusteredSegment = [clusteredVehicleItem clusteredSegment];

  selectedRideOptionIndex = [clusteredSegment selectedRideOptionIndex];
  objc_initWeak(&location, self);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1008FE3AC;
  v32[3] = &unk_10162E400;
  v33[1] = selectedRideOptionIndex;
  objc_copyWeak(v33, &location);
  v11 = [UIAlertController clusteredVehiclesSelectionAlertControllerForClusteredSegment:clusteredSegment completion:v32];
  iosBasedChromeViewController = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
  _currentContainerViewController = [iosBasedChromeViewController _currentContainerViewController];
  topMostPresentedViewController = [_currentContainerViewController topMostPresentedViewController];

  if (topMostPresentedViewController)
  {
    view = [topMostPresentedViewController view];
    popoverPresentationController = [v11 popoverPresentationController];
    [popoverPresentationController setSourceView:view];

    view2 = [topMostPresentedViewController view];
    [cellCopy bounds];
    [view2 convertRect:cellCopy fromView:?];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    popoverPresentationController2 = [v11 popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{v19, v21, v23, v25}];

    popoverPresentationController3 = [v11 popoverPresentationController];
    [popoverPresentationController3 setPermittedArrowDirections:3];

    [topMostPresentedViewController presentViewController:v11 animated:1 completion:0];
  }

  v28 = +[MKMapService sharedService];
  currentUITargetForAnalytics = [(TransitNavigationContext *)self currentUITargetForAnalytics];
  v30 = sub_100B5D5D8(clusteredSegment);
  displayedItemIndexForAnalytics = [(TransitNavigationTrayViewController *)self->_trayViewController displayedItemIndexForAnalytics];
  [v28 captureUserAction:3037 onTarget:currentUITargetForAnalytics eventValue:v30 transitStep:displayedItemIndexForAnalytics];

  objc_destroyWeak(v33);
  objc_destroyWeak(&location);
}

- (void)didReselectDisplayedStep
{
  v3 = sub_100799650();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    v6 = &index;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Reselected displayed step index %lu, docking the tray", &v5, 0xCu);
  }

  cardPresentationController = [(ContaineeViewController *)self->_trayViewController cardPresentationController];
  [cardPresentationController wantsLayout:2];
}

- (void)transitDirectionsStepsListDataSource:(id)source didSelectTrip:(id)trip
{
  tripCopy = trip;
  currentUITargetForAnalytics = [(TransitNavigationContext *)self currentUITargetForAnalytics];
  displayedItemIndexForAnalytics = [(TransitNavigationTrayViewController *)self->_trayViewController displayedItemIndexForAnalytics];
  [GEOAPPortal captureUserAction:9040 target:currentUITargetForAnalytics value:0 transitStep:displayedItemIndexForAnalytics];

  matchingRouteStep = [tripCopy matchingRouteStep];

  v8 = [[TransitSchedulesViewController alloc] initWithTransitRouteStep:matchingRouteStep];
  [(ContaineeViewController *)v8 setContaineeDelegate:self];
  currentAdditionalCard = self->_currentAdditionalCard;
  self->_currentAdditionalCard = v8;

  chromeViewController = [(TransitNavigationContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)directionsStepsListDidTapRAPButton:(id)button
{
  route = [(TransitNavigationContext *)self route];
  v5 = [route transportType] - 1;
  if (v5 > 5)
  {
    v6 = 608;
  }

  else
  {
    v6 = dword_101213740[v5];
  }

  v7 = +[MKMapService sharedService];
  displayedItemIndexForAnalytics = [(TransitNavigationTrayViewController *)self->_trayViewController displayedItemIndexForAnalytics];
  [v7 captureUserAction:5013 onTarget:v6 eventValue:0 transitStep:displayedItemIndexForAnalytics];

  _maps_mapsSceneDelegate = [(TransitNavigationTrayViewController *)self->_trayViewController _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
  [rapPresenter presentReportAProblemForRouteFromEntryPoint:v6];
}

- (void)directionsStepsListDidTapShareButton:(id)button
{
  route = [(TransitNavigationContext *)self route];

  if (route)
  {
    iosBasedChromeViewController = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
    appCoordinator = [iosBasedChromeViewController appCoordinator];

    route2 = [(TransitNavigationContext *)self route];
    v7 = [ShareItem shareItemWithRoute:route2 includeRoutingApps:0];

    view = [(TransitNavigationTrayViewController *)self->_trayViewController view];
    v9 = [MUPresentationOptions optionsWithSender:view];

    [appCoordinator shareItem:v7 presentationOptions:v9 completion:0];
  }
}

- (void)transitNavigationTrayDidTapClose:(id)close
{
  v4 = sub_100799650();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Tray did tap close", v11, 2u);
  }

  iosBasedChromeViewController = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
  appCoordinator = [iosBasedChromeViewController appCoordinator];
  platformController = [appCoordinator platformController];

  currentSession = [platformController currentSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = currentSession;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if ([(IOSTransitNavigationContext *)self shouldResetStateAfterResigning])
  {
    [platformController clearIfCurrentSession:v10];
  }

  else
  {
    [platformController popIfCurrentSession:v10];
  }
}

- (void)_didReturnToDefaultZoomPan
{
  if (self->_cameraPanningOrZoomed)
  {
    self->_cameraPanningOrZoomed = 0;
    [(IOSTransitNavigationContext *)self canRecenterDidChange];
  }
}

- (void)_didLeaveDefaultZoomPan
{
  if (!self->_cameraPanningOrZoomed)
  {
    self->_cameraPanningOrZoomed = 1;
    [(IOSTransitNavigationContext *)self canRecenterDidChange];
    cardPresentationController = [(ContaineeViewController *)self->_trayViewController cardPresentationController];
    [cardPresentationController wantsLayout:1];
  }
}

- (void)recenterOnActiveStep
{
  if ([(IOSTransitNavigationContext *)self isDisplayingManuallySelectedStep])
  {
    v3 = sub_100799650();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Returning to auto-advance step index (recenter button)", buf, 2u);
    }

    iosBasedChromeViewController = +[MNNavigationService sharedService];
    [iosBasedChromeViewController setDisplayedStepIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    iosBasedChromeViewController = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
    [iosBasedChromeViewController requestCardLayout:2 animated:1 forCard:self->_trayViewController];
  }

  v5.receiver = self;
  v5.super_class = IOSTransitNavigationContext;
  [(TransitNavigationContext *)&v5 recenterOnActiveStep];
}

- (void)stopRequestingRealtimeUpdates
{
  v3 = +[MNNavigationService sharedService];
  [v3 pauseRealtimeUpdates];

  v4.receiver = self;
  v4.super_class = IOSTransitNavigationContext;
  [(TransitNavigationContext *)&v4 stopRequestingRealtimeUpdates];
}

- (void)startRequestingRealtimeUpdates
{
  v3.receiver = self;
  v3.super_class = IOSTransitNavigationContext;
  [(TransitNavigationContext *)&v3 startRequestingRealtimeUpdates];
  v2 = +[MNNavigationService sharedService];
  [v2 resumeRealtimeUpdates];
}

- (BOOL)isDisplayingManuallySelectedStep
{
  v2 = +[MNNavigationService sharedService];
  if ([v2 displayedStepIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v4 = +[MNNavigationService sharedService];
    displayedStepIndex = [v4 displayedStepIndex];
    v6 = +[MNNavigationService sharedService];
    v3 = displayedStepIndex != [v6 stepIndex];
  }

  return v3;
}

- (id)fetchLastLocation
{
  v2 = +[MNNavigationService sharedService];
  lastLocation = [v2 lastLocation];

  return lastLocation;
}

- (id)fetchCurrentRoute
{
  chromeViewController = [(TransitNavigationContext *)self chromeViewController];
  _maps_platformController = [chromeViewController _maps_platformController];
  currentSession = [_maps_platformController currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = currentSession;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  currentRouteCollection = [v6 currentRouteCollection];

  currentRoute = [currentRouteCollection currentRoute];

  return currentRoute;
}

- (BOOL)shouldResetStateAfterResigning
{
  activeStep = [(TransitNavigationContext *)self activeStep];

  if (!activeStep)
  {
    return 0;
  }

  route = [(TransitNavigationContext *)self route];
  activeStep2 = [(TransitNavigationContext *)self activeStep];
  v6 = [route shouldReturnToRoutePickerWhenEndingDirectionsAtStepIndex:{objc_msgSend(activeStep2, "stepIndex")}];

  return v6 ^ 1;
}

- (BOOL)allowOnlyStandardCardStyle
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom] == 1)
  {
    v3 = 0;
  }

  else
  {
    v4 = +[UIDevice currentDevice];
    v3 = [v4 userInterfaceIdiom] != 5;
  }

  return v3;
}

- (id)desiredCards
{
  v3 = [[NSMutableArray alloc] initWithCapacity:2];
  v4 = v3;
  if (self->_trayViewController)
  {
    [v3 addObject:?];
  }

  if (self->_currentAdditionalCard)
  {
    [v4 addObject:?];
  }

  v5 = [v4 copy];

  return v5;
}

- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  v12.receiver = self;
  v12.super_class = IOSTransitNavigationContext;
  animationCopy = animation;
  controllerCopy = controller;
  [(TransitNavigationContext *)&v12 leaveStackInChromeViewController:controllerCopy withAnimation:animationCopy];
  viewport = [controllerCopy viewport];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1008FEFBC;
  v10[3] = &unk_101661A90;
  v10[4] = self;
  v11 = viewport;
  v9 = viewport;
  [animationCopy addPreparation:v10];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v15.receiver = self;
  v15.super_class = IOSTransitNavigationContext;
  animationCopy = animation;
  [(TransitNavigationContext *)&v15 becomeTopContextInChromeViewController:controller withAnimation:animationCopy];
  LOBYTE(controller) = [animationCopy isAnimated];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1008FF1A0;
  v14[3] = &unk_101661B18;
  v14[4] = self;
  [animationCopy addPreparation:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1008FF228;
  v12[3] = &unk_101661AE0;
  v12[4] = self;
  controllerCopy = controller;
  [animationCopy addAnimations:v12];

  fetchCurrentRoute = [(IOSTransitNavigationContext *)self fetchCurrentRoute];
  v8 = fetchCurrentRoute;
  if (self->_trayViewController)
  {
    v9 = 1;
  }

  else
  {
    v9 = fetchCurrentRoute == 0;
  }

  if (!v9)
  {
    v10 = [[TransitNavigationTrayViewController alloc] initWithRoute:fetchCurrentRoute stepsListDelegate:self];
    trayViewController = self->_trayViewController;
    self->_trayViewController = v10;

    [(TransitNavigationTrayViewController *)self->_trayViewController setTrayDelegate:self];
  }
}

- (IOSTransitNavigationContext)init
{
  v9.receiver = self;
  v9.super_class = IOSTransitNavigationContext;
  v2 = [(TransitNavigationContext *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(TransitSteppingAnalyticsDelegate);
    analyticsDelegate = v2->_analyticsDelegate;
    v2->_analyticsDelegate = v3;

    v5 = [[NavigationDebugViewsController alloc] initWithDelegate:v2];
    debugViewsController = v2->_debugViewsController;
    v2->_debugViewsController = v5;

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_backlightLuminanceDidChange" name:@"BacklightLuminanceDidChangeNotification" object:0];
  }

  return v2;
}

@end