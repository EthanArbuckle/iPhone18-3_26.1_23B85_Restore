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
- (void)_performWhenTrayPresented:(id)a3;
- (void)_presentIncidents:(id)a3;
- (void)_presentPlaceCardViewControllerForMapItem:(id)a3 modally:(BOOL)a4;
- (void)_updateArrivalEndTimerIfNeeded;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)canRecenterDidChange;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
- (void)container:(id)a3 didPresentContainee:(id)a4 finished:(BOOL)a5;
- (void)didReselectDisplayedStep;
- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4;
- (void)directionsStepsListDidTapRAPButton:(id)a3;
- (void)directionsStepsListDidTapShareButton:(id)a3;
- (void)idleTimerDidTimeout:(id)a3;
- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4;
- (void)presentAdvisory:(id)a3;
- (void)recenterOnActiveStep;
- (void)showVLF;
- (void)startRequestingRealtimeUpdates;
- (void)stopRequestingRealtimeUpdates;
- (void)transitDirectionsStepsListDataSource:(id)a3 didSelectTrip:(id)a4;
- (void)transitDirectionsStepsListDataSource:(id)a3 didTapClusteredVehiclesCell:(id)a4;
- (void)transitDirectionsStepsListDataSource:(id)a3 didTapGetTicketsForSegments:(id)a4;
- (void)transitDirectionsStepsListDataSource:(id)a3 didUpdateActiveGuidanceStep:(id)a4;
- (void)transitDirectionsStepsListDataSource:(id)a3 didUpdateDisplayedGuidanceStep:(id)a4;
- (void)transitDirectionsStepsListDataSource:(id)a3 willExpandItem:(id)a4;
- (void)transitNavigationTrayDidTapClose:(id)a3;
@end

@implementation IOSTransitNavigationContext

- (void)_presentPlaceCardViewControllerForMapItem:(id)a3 modally:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10 = [[PlaceCardItem alloc] initWithMapItem:v6];

  v7 = [[_TtC4Maps29PlaceCardContextConfiguration alloc] initWithPlaceCardItem:v10 shouldInsertInHistory:0 excludedContent:[(IOSTransitNavigationContext *)self _placeCardExcludedContent] buildingMultistopRoute:0];
  [(PlaceCardContextConfiguration *)v7 setPresentedModally:v4];
  v8 = [[_TtC4Maps16PlaceCardContext alloc] initWithConfiguration:v7];
  v9 = [(TransitNavigationContext *)self chromeViewController];
  [v9 pushContext:v8 animated:1 completion:0];
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
    v4 = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
    v5 = [v4 _currentContainerViewController];

    v6 = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
    v7 = [v6 appCoordinator];
    v8 = [v7 baseActionCoordinator];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1008FCC1C;
    v18 = &unk_1016619A8;
    objc_copyWeak(&v19, &location);
    v9 = [v5 showVLFCrowdsourcingPermissionCardWithContaineeDelegate:self delegate:v8 completion:&v15];

    if ((v9 & 1) == 0)
    {
      v10 = [(IOSTransitNavigationContext *)self iosBasedChromeViewController:v15];
      v11 = [v10 userLocationView];

      if ([v11 isVLFBannerVisible])
      {
        v12 = 2;
      }

      else
      {
        v12 = [v11 isVLFPuckVisible];
      }

      v13 = [[VLFContaineeViewController alloc] initWithEntryPoint:v12];
      [(ContaineeViewController *)v13 setContaineeDelegate:self];
      objc_storeStrong(&self->_currentAdditionalCard, v13);
      v14 = [(TransitNavigationContext *)self chromeViewController];
      [v14 setNeedsUpdateComponent:@"cards" animated:1];
    }

    objc_destroyWeak(&v19);

    objc_destroyWeak(&location);
  }
}

- (void)_presentIncidents:(id)a3
{
  v4 = a3;
  v11 = objc_alloc_init(MapsIncidentsViewController);
  v5 = [[ModalContaineeViewController alloc] initWithChildViewController:v11];
  [(MapsIncidentsViewController *)v11 setTransitIncidents:v4];

  v6 = [(MapsIncidentsViewController *)v11 navigationItem];
  v7 = [v6 title];
  v8 = [(ModalContaineeViewController *)v5 headerView];
  [v8 setTitle:v7];

  currentAdditionalCard = self->_currentAdditionalCard;
  self->_currentAdditionalCard = v5;

  v10 = [(TransitNavigationContext *)self chromeViewController];
  [v10 setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)presentAdvisory:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MapsIncidentsViewController);
  v6 = [[ModalContaineeViewController alloc] initWithChildViewController:v5];
  [(MapsIncidentsViewController *)v5 setAdvisory:v4];
  v7 = [(MapsIncidentsViewController *)v5 navigationItem];
  v8 = [v7 title];
  v9 = [(ModalContaineeViewController *)v6 headerView];
  [v9 setTitle:v8];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1008FD250;
  v14[3] = &unk_101661B18;
  v15 = v4;
  v10 = v4;
  [(ModalContaineeViewController *)v6 setBlockAlongDismissContainee:v14];
  currentAdditionalCard = self->_currentAdditionalCard;
  self->_currentAdditionalCard = v6;
  v12 = v6;

  v13 = [(TransitNavigationContext *)self chromeViewController];
  [v13 setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)idleTimerDidTimeout:(id)a3
{
  v4 = sub_100799650();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Arrival timer fired", v11, 2u);
  }

  v5 = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
  v6 = [v5 appCoordinator];
  v7 = [v6 platformController];

  v8 = [v7 currentSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [v7 popIfCurrentSession:v10];
}

- (void)_updateArrivalEndTimerIfNeeded
{
  if (self->_arrivalEndTimer)
  {
LABEL_2:
    v3 = [(TransitNavigationContext *)self activeStep];
    v4 = [v3 isArrivalStep];

    if ((v4 & 1) == 0)
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

  v7 = [(TransitNavigationContext *)self activeStep];
  v8 = [v7 isArrivalStep];

  if (!v8)
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
  v15 = [(TransitNavigationContext *)self chromeViewController];
  v16 = [v15 view];
  v17 = [(NavIdleTimeoutTimer *)v14 initWithView:v16 idleTimeout:v10];
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
    v4 = [(TransitNavigationTrayViewController *)trayViewController traitCollection];
    v5 = [v4 isLuminanceReduced];

    if (v5)
    {
      v6 = [(TransitNavigationContext *)self chromeViewController];
      [v6 setNeedsUpdateComponent:@"cards" animated:0];
    }
  }
}

- (void)canRecenterDidChange
{
  v2 = [(TransitNavigationContext *)self chromeViewController];
  [v2 setNeedsUpdateComponent:@"RecenterButton" animated:1];
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

- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4
{
  v5 = a3;
  if (self->_debugViewsController)
  {
    v20 = v5;
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 BOOLForKey:@"PlaybackControls"];

    v5 = v20;
    if (v7)
    {
      v8 = [(TransitNavigationContext *)self chromeViewController];
      v9 = [v8 viewport];

      v10 = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
      v11 = [v10 innerLayoutGuide];

      v12 = [(NavigationDebugViewsController *)self->_debugViewsController debugControlsView];
      v13 = [v12 superview];

      debugViewsController = self->_debugViewsController;
      if (v13 == v9)
      {
        v19 = [(NavigationDebugViewsController *)self->_debugViewsController isShowingTraceControls];
        v18 = self->_debugViewsController;
        if (v19)
        {
          [(NavigationDebugViewsController *)v18 hideTraceControlsAnimated:1];
LABEL_8:

          v5 = v20;
          goto LABEL_9;
        }
      }

      else
      {
        v15 = [(TransitNavigationContext *)self chromeViewController];
        v16 = [v15 mapView];
        v17 = [(TransitNavigationContext *)self chromeViewController];
        [(NavigationDebugViewsController *)debugViewsController addDebugViewsToView:v9 layoutGuide:v11 mapView:v16 modalPresentingViewController:v17];

        v18 = self->_debugViewsController;
      }

      [(NavigationDebugViewsController *)v18 showTraceControls];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4
{
  v6 = a4;
  v5 = [[MKMapItem alloc] _initWithLabelMarker:v6];
  [(IOSTransitNavigationContext *)self _presentPlaceCardViewControllerForMapItem:v5 modally:0];
  if ([v6 isTransit] && (objc_msgSend(v6, "isTransitLine") & 1) == 0)
  {
    [(TransitSteppingAnalyticsDelegate *)self->_analyticsDelegate recordTapOnTransitStationPOI];
  }
}

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v13 = a4;
  v6 = a3;
  v7 = [v13 annotation];
  [v6 deselectAnnotation:v7 animated:0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 isVLFPuckVisible])
  {
    v8 = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
    v9 = [v8 appCoordinator];
    v10 = [v9 platformController];
    v11 = [v10 auxiliaryTasksManager];
    v12 = [v11 auxilaryTaskForClass:objc_opt_class()];

    [v12 showVLFUI];
  }
}

- (void)container:(id)a3 didPresentContainee:(id)a4 finished:(BOOL)a5
{
  v11 = a3;
  v7 = a4;
  if (self->_trayViewController == v7)
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

- (void)_performWhenTrayPresented:(id)a3
{
  if (a3 && self->_trayPresented)
  {
    v4 = *(a3 + 2);

    v4(a3);
  }

  else
  {
    v5 = [a3 copy];
    whenTrayPresentedBlock = self->_whenTrayPresentedBlock;
    self->_whenTrayPresentedBlock = v5;
  }
}

- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4
{
  v5 = a3;
  v6 = [(TransitNavigationContext *)self currentUITargetForAnalytics];
  v7 = [(TransitNavigationTrayViewController *)self->_trayViewController displayedItemIndexForAnalytics];
  [GEOAPPortal captureUserAction:4 target:v6 value:0 transitStep:v7];

  currentAdditionalCard = self->_currentAdditionalCard;
  if (currentAdditionalCard == v5)
  {
    self->_currentAdditionalCard = 0;

    v9 = [(TransitNavigationContext *)self chromeViewController];
    [v9 setNeedsUpdateComponent:@"cards" animated:1];
  }

  v11 = [(TransitNavigationContext *)self chromeViewController];
  v10 = [v11 mapSelectionManager];
  [v10 clearSelectionAnimated:1];
}

- (void)transitDirectionsStepsListDataSource:(id)a3 didTapGetTicketsForSegments:(id)a4
{
  v5 = a4;
  v6 = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
  v21 = [v6 _currentContainerViewController];

  v7 = [UIAlertController _maps_alertControllerForTicketedSegments:v5];

  v8 = [v21 view];
  v9 = [v7 popoverPresentationController];
  [v9 setSourceView:v8];

  v10 = [v21 view];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v7 popoverPresentationController];
  [v19 setSourceRect:{v12, v14, v16, v18}];

  v20 = [v7 popoverPresentationController];
  [v20 setPermittedArrowDirections:12];

  [v21 presentViewController:v7 animated:1 completion:0];
}

- (void)transitDirectionsStepsListDataSource:(id)a3 willExpandItem:(id)a4
{
  v4 = [(ContaineeViewController *)self->_trayViewController cardPresentationController:a3];
  [v4 wantsLayout:3];
}

- (void)transitDirectionsStepsListDataSource:(id)a3 didUpdateActiveGuidanceStep:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = IOSTransitNavigationContext;
  [(TransitNavigationContext *)&v15 transitDirectionsStepsListDataSource:v6 didUpdateActiveGuidanceStep:v7];
  [(IOSTransitNavigationContext *)self _updateArrivalEndTimerIfNeeded];
  v8 = [(TransitNavigationContext *)self activeStep];
  if (v8 && (v9 = v8, -[TransitNavigationContext activeStep](self, "activeStep"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 stepIndex], v12 = objc_msgSend(v7, "stepIndex"), v10, v9, v11 == v12))
  {
    [(TransitNavigationTrayViewController *)self->_trayViewController updateBacklightSceneEnvironment];
  }

  else
  {
    v13 = [(TransitNavigationContext *)self currentUITargetForAnalytics];
    v14 = [v6 displayedItemIndexForAnalytics];
    [GEOAPPortal captureUserAction:3066 target:v13 value:0 transitStep:v14];
  }
}

- (void)transitDirectionsStepsListDataSource:(id)a3 didUpdateDisplayedGuidanceStep:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TransitNavigationContext *)self displayedStep];
  v13.receiver = self;
  v13.super_class = IOSTransitNavigationContext;
  [(TransitNavigationContext *)&v13 transitDirectionsStepsListDataSource:v7 didUpdateDisplayedGuidanceStep:v6];

  if (!v8 || (v9 = [v8 stepIndex], v9 != objc_msgSend(v6, "stepIndex")))
  {
    [(TransitNavigationTrayViewController *)self->_trayViewController updateForCurrentDisplayedStep];
    [(TransitNavigationTrayViewController *)self->_trayViewController updateBacklightSceneEnvironment];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1008FE0B8;
    v10[3] = &unk_101661A90;
    v11 = v8;
    v12 = self;
    [(IOSTransitNavigationContext *)self _performWhenTrayPresented:v10];
  }
}

- (void)transitDirectionsStepsListDataSource:(id)a3 didTapClusteredVehiclesCell:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 clusteredVehicleItem];
  v9 = [v8 clusteredSegment];

  v10 = [v9 selectedRideOptionIndex];
  objc_initWeak(&location, self);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1008FE3AC;
  v32[3] = &unk_10162E400;
  v33[1] = v10;
  objc_copyWeak(v33, &location);
  v11 = [UIAlertController clusteredVehiclesSelectionAlertControllerForClusteredSegment:v9 completion:v32];
  v12 = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
  v13 = [v12 _currentContainerViewController];
  v14 = [v13 topMostPresentedViewController];

  if (v14)
  {
    v15 = [v14 view];
    v16 = [v11 popoverPresentationController];
    [v16 setSourceView:v15];

    v17 = [v14 view];
    [v7 bounds];
    [v17 convertRect:v7 fromView:?];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [v11 popoverPresentationController];
    [v26 setSourceRect:{v19, v21, v23, v25}];

    v27 = [v11 popoverPresentationController];
    [v27 setPermittedArrowDirections:3];

    [v14 presentViewController:v11 animated:1 completion:0];
  }

  v28 = +[MKMapService sharedService];
  v29 = [(TransitNavigationContext *)self currentUITargetForAnalytics];
  v30 = sub_100B5D5D8(v9);
  v31 = [(TransitNavigationTrayViewController *)self->_trayViewController displayedItemIndexForAnalytics];
  [v28 captureUserAction:3037 onTarget:v29 eventValue:v30 transitStep:v31];

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

  v4 = [(ContaineeViewController *)self->_trayViewController cardPresentationController];
  [v4 wantsLayout:2];
}

- (void)transitDirectionsStepsListDataSource:(id)a3 didSelectTrip:(id)a4
{
  v5 = a4;
  v6 = [(TransitNavigationContext *)self currentUITargetForAnalytics];
  v7 = [(TransitNavigationTrayViewController *)self->_trayViewController displayedItemIndexForAnalytics];
  [GEOAPPortal captureUserAction:9040 target:v6 value:0 transitStep:v7];

  v11 = [v5 matchingRouteStep];

  v8 = [[TransitSchedulesViewController alloc] initWithTransitRouteStep:v11];
  [(ContaineeViewController *)v8 setContaineeDelegate:self];
  currentAdditionalCard = self->_currentAdditionalCard;
  self->_currentAdditionalCard = v8;

  v10 = [(TransitNavigationContext *)self chromeViewController];
  [v10 setNeedsUpdateComponent:@"cards" animated:1];
}

- (void)directionsStepsListDidTapRAPButton:(id)a3
{
  v4 = [(TransitNavigationContext *)self route];
  v5 = [v4 transportType] - 1;
  if (v5 > 5)
  {
    v6 = 608;
  }

  else
  {
    v6 = dword_101213740[v5];
  }

  v7 = +[MKMapService sharedService];
  v8 = [(TransitNavigationTrayViewController *)self->_trayViewController displayedItemIndexForAnalytics];
  [v7 captureUserAction:5013 onTarget:v6 eventValue:0 transitStep:v8];

  v10 = [(TransitNavigationTrayViewController *)self->_trayViewController _maps_mapsSceneDelegate];
  v9 = [v10 rapPresenter];
  [v9 presentReportAProblemForRouteFromEntryPoint:v6];
}

- (void)directionsStepsListDidTapShareButton:(id)a3
{
  v4 = [(TransitNavigationContext *)self route];

  if (v4)
  {
    v5 = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
    v10 = [v5 appCoordinator];

    v6 = [(TransitNavigationContext *)self route];
    v7 = [ShareItem shareItemWithRoute:v6 includeRoutingApps:0];

    v8 = [(TransitNavigationTrayViewController *)self->_trayViewController view];
    v9 = [MUPresentationOptions optionsWithSender:v8];

    [v10 shareItem:v7 presentationOptions:v9 completion:0];
  }
}

- (void)transitNavigationTrayDidTapClose:(id)a3
{
  v4 = sub_100799650();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Tray did tap close", v11, 2u);
  }

  v5 = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
  v6 = [v5 appCoordinator];
  v7 = [v6 platformController];

  v8 = [v7 currentSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if ([(IOSTransitNavigationContext *)self shouldResetStateAfterResigning])
  {
    [v7 clearIfCurrentSession:v10];
  }

  else
  {
    [v7 popIfCurrentSession:v10];
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
    v4 = [(ContaineeViewController *)self->_trayViewController cardPresentationController];
    [v4 wantsLayout:1];
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

    v4 = +[MNNavigationService sharedService];
    [v4 setDisplayedStepIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    v4 = [(IOSTransitNavigationContext *)self iosBasedChromeViewController];
    [v4 requestCardLayout:2 animated:1 forCard:self->_trayViewController];
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
    v5 = [v4 displayedStepIndex];
    v6 = +[MNNavigationService sharedService];
    v3 = v5 != [v6 stepIndex];
  }

  return v3;
}

- (id)fetchLastLocation
{
  v2 = +[MNNavigationService sharedService];
  v3 = [v2 lastLocation];

  return v3;
}

- (id)fetchCurrentRoute
{
  v2 = [(TransitNavigationContext *)self chromeViewController];
  v3 = [v2 _maps_platformController];
  v4 = [v3 currentSession];

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

  v7 = [v6 currentRouteCollection];

  v8 = [v7 currentRoute];

  return v8;
}

- (BOOL)shouldResetStateAfterResigning
{
  v3 = [(TransitNavigationContext *)self activeStep];

  if (!v3)
  {
    return 0;
  }

  v4 = [(TransitNavigationContext *)self route];
  v5 = [(TransitNavigationContext *)self activeStep];
  v6 = [v4 shouldReturnToRoutePickerWhenEndingDirectionsAtStepIndex:{objc_msgSend(v5, "stepIndex")}];

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

- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v12.receiver = self;
  v12.super_class = IOSTransitNavigationContext;
  v6 = a4;
  v7 = a3;
  [(TransitNavigationContext *)&v12 leaveStackInChromeViewController:v7 withAnimation:v6];
  v8 = [v7 viewport];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1008FEFBC;
  v10[3] = &unk_101661A90;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [v6 addPreparation:v10];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v15.receiver = self;
  v15.super_class = IOSTransitNavigationContext;
  v6 = a4;
  [(TransitNavigationContext *)&v15 becomeTopContextInChromeViewController:a3 withAnimation:v6];
  LOBYTE(a3) = [v6 isAnimated];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1008FF1A0;
  v14[3] = &unk_101661B18;
  v14[4] = self;
  [v6 addPreparation:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1008FF228;
  v12[3] = &unk_101661AE0;
  v12[4] = self;
  v13 = a3;
  [v6 addAnimations:v12];

  v7 = [(IOSTransitNavigationContext *)self fetchCurrentRoute];
  v8 = v7;
  if (self->_trayViewController)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (!v9)
  {
    v10 = [[TransitNavigationTrayViewController alloc] initWithRoute:v7 stepsListDelegate:self];
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