@interface TransitNavigationContext
- (BOOL)_sceneInBackground;
- (BOOL)_shouldFrameVehiclePositions;
- (BOOL)_shouldUseManualFraming;
- (BOOL)isNavigationCameraTracking;
- (BOOL)updateRouteAnnotationsConfiguration:(id)configuration;
- (ChromeViewController)chromeViewController;
- (TransitNavigationContext)init;
- (id)_navCameraController;
- (id)personalizedItemSources;
- (id)transitVehicleUpdater:(id)updater shouldUpdateVehiclePositionsForTripIDs:(id)ds;
- (void)_checkRouteProximityForManualFraming:(id)framing;
- (void)_pauseOrResumeRealtimeUpdatesIfNeeded;
- (void)_sceneDidEnterBackground:(id)background;
- (void)_sceneWillEnterForeground:(id)foreground;
- (void)_setupMapView:(id)view;
- (void)_updateAnnotationsForCurrentRoute;
- (void)_updateCurrentRouteIfNeeded;
- (void)_updateNavigationDisplayConfigurationForDisplayedStep:(id)step;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)dealloc;
- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)recenterOnActiveStep;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)temporarilyFrameStep:(id)step;
- (void)transitDirectionsStepsListDataSource:(id)source didTapRowForItem:(id)item;
- (void)transitDirectionsStepsListDataSource:(id)source didUpdateActiveGuidanceStep:(id)step;
- (void)transitDirectionsStepsListDataSource:(id)source didUpdateDisplayedGuidanceStep:(id)step;
- (void)transitVehicleUpdater:(id)updater didUpdateVehiclePositions:(id)positions forTripIDs:(id)ds;
- (void)updateFramingForCurrentStep;
- (void)updateTransitVehicleUpdaterIfNeeded;
@end

@implementation TransitNavigationContext

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)transitDirectionsStepsListDataSource:(id)source didUpdateActiveGuidanceStep:(id)step
{
  sourceCopy = source;
  stepCopy = step;
  activeStep = [(TransitNavigationContext *)self activeStep];
  if (!activeStep || (v9 = activeStep, -[TransitNavigationContext activeStep](self, "activeStep"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 stepIndex], v12 = objc_msgSend(stepCopy, "stepIndex"), v10, v9, v11 != v12))
  {
    v13 = sub_100799650();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      activeStep2 = [(TransitNavigationContext *)self activeStep];
      v17 = 134218240;
      stepIndex = [activeStep2 stepIndex];
      v19 = 2048;
      stepIndex2 = [stepCopy stepIndex];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Notified active step changed from %lu to %lu", &v17, 0x16u);
    }

    [(TransitNavigationContext *)self setActiveStep:stepCopy];
    [(TransitNavigationContext *)self canRecenterDidChange];
    currentUITargetForAnalytics = [(TransitNavigationContext *)self currentUITargetForAnalytics];
    displayedItemIndexForAnalytics = [sourceCopy displayedItemIndexForAnalytics];
    [GEOAPPortal captureUserAction:3066 target:currentUITargetForAnalytics value:0 transitStep:displayedItemIndexForAnalytics];
  }
}

- (void)transitDirectionsStepsListDataSource:(id)source didUpdateDisplayedGuidanceStep:(id)step
{
  stepCopy = step;
  displayedStep = [(TransitNavigationContext *)self displayedStep];
  if (!displayedStep || (v7 = displayedStep, -[TransitNavigationContext displayedStep](self, "displayedStep"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 stepIndex], v10 = objc_msgSend(stepCopy, "stepIndex"), v8, v7, v9 != v10))
  {
    v11 = sub_100799650();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      displayedStep2 = [(TransitNavigationContext *)self displayedStep];
      v13 = 134218240;
      stepIndex = [displayedStep2 stepIndex];
      v15 = 2048;
      stepIndex2 = [stepCopy stepIndex];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Notified displayed step changed from %lu to %lu", &v13, 0x16u);
    }

    [(TransitNavigationContext *)self setDisplayedStep:stepCopy];
    [(TransitNavigationContext *)self canRecenterDidChange];
    [(TransitNavigationContext *)self updateTransitVehicleUpdaterIfNeeded];
    [(TransitNavigationContext *)self updateFramingForCurrentStep];
  }
}

- (void)transitDirectionsStepsListDataSource:(id)source didTapRowForItem:(id)item
{
  sourceCopy = source;
  itemCopy = item;
  matchingRouteStepIndex = [itemCopy matchingRouteStepIndex];
  displayedStep = [(TransitNavigationContext *)self displayedStep];
  if (displayedStep)
  {
    displayedStep2 = [(TransitNavigationContext *)self displayedStep];
    stepIndex = [displayedStep2 stepIndex];
  }

  else
  {
    stepIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (stepIndex == matchingRouteStepIndex)
  {
    [(TransitNavigationContext *)self didReselectDisplayedStep];
  }

  else
  {
    v12 = sub_100799650();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v19 = 134218496;
      v20 = matchingRouteStepIndex;
      v21 = 2048;
      v22 = stepIndex;
      v23 = 2048;
      activeComposedRouteStepIndex = [sourceCopy activeComposedRouteStepIndex];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Will manually select stepIndex: %lu, previous: %lu, auto-advance: %lu", &v19, 0x20u);
    }

    displayedItemIndex = [sourceCopy displayedItemIndex];
    v14 = [sourceCopy indexOfItem:itemCopy];
    currentUITargetForAnalytics = [(TransitNavigationContext *)self currentUITargetForAnalytics];
    v16 = [NSNumber numberWithInteger:v14 - displayedItemIndex];
    stringValue = [v16 stringValue];
    displayedItemIndexForAnalytics = [sourceCopy displayedItemIndexForAnalytics];
    [GEOAPPortal captureUserAction:235 target:currentUITargetForAnalytics value:stringValue transitStep:displayedItemIndexForAnalytics];

    [sourceCopy setDisplayedComposedRouteStepIndex:{objc_msgSend(itemCopy, "matchingRouteStepIndex")}];
    [(TransitNavigationContext *)self canRecenterDidChange];
  }
}

- (BOOL)_sceneInBackground
{
  chromeViewController = [(TransitNavigationContext *)self chromeViewController];
  view = [chromeViewController view];
  window = [view window];
  windowScene = [window windowScene];

  if ([windowScene activationState])
  {
    v6 = [windowScene activationState] != 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_pauseOrResumeRealtimeUpdatesIfNeeded
{
  if (!self->_requestingRealtimeUpdates)
  {
LABEL_5:
    if (![(TransitNavigationContext *)self _sceneInBackground])
    {
      chromeViewController = [(TransitNavigationContext *)self chromeViewController];
      v6 = [chromeViewController isTopContext:self];

      if (v6)
      {
        v7 = sub_100799650();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Resuming realtime updates from context", v9, 2u);
        }

        self->_requestingRealtimeUpdates = 1;
        [(TransitNavigationContext *)self startRequestingRealtimeUpdates];
      }
    }

    return;
  }

  if (![(TransitNavigationContext *)self _sceneInBackground])
  {
    chromeViewController2 = [(TransitNavigationContext *)self chromeViewController];
    v4 = [chromeViewController2 isTopContext:self];

    if (v4)
    {
      if (self->_requestingRealtimeUpdates)
      {
        return;
      }

      goto LABEL_5;
    }
  }

  v8 = sub_100799650();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Pausing realtime updates from context", buf, 2u);
  }

  self->_requestingRealtimeUpdates = 0;
  [(TransitNavigationContext *)self stopRequestingRealtimeUpdates];
}

- (void)_sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  chromeViewController = [(TransitNavigationContext *)self chromeViewController];
  view = [chromeViewController view];
  window = [view window];
  windowScene = [window windowScene];

  object = [foregroundCopy object];

  if (windowScene == object)
  {
    [(TransitNavigationContext *)self _pauseOrResumeRealtimeUpdatesIfNeeded];
  }
}

- (void)_sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  chromeViewController = [(TransitNavigationContext *)self chromeViewController];
  view = [chromeViewController view];
  window = [view window];
  windowScene = [window windowScene];

  object = [backgroundCopy object];

  if (windowScene == object)
  {
    [(TransitNavigationContext *)self _pauseOrResumeRealtimeUpdatesIfNeeded];
  }
}

- (BOOL)_shouldFrameVehiclePositions
{
  _stepForTransitVehicleUpdater = [(TransitNavigationContext *)self _stepForTransitVehicleUpdater];
  stepIndex = [_stepForTransitVehicleUpdater stepIndex];

  if (stepIndex == [(GEOComposedRouteStep *)self->_activeStep stepIndex])
  {
    return 1;
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  if ([v6 BOOLForKey:@"NavigationTransitFrameVehiclePositionsForSelectedStep"])
  {
    v5 = stepIndex == [(GEOComposedRouteStep *)self->_displayedStep stepIndex];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateTransitVehicleUpdaterIfNeeded
{
  if (self->_transitVehicleUpdater)
  {
    _stepForTransitVehicleUpdater = [(TransitNavigationContext *)self _stepForTransitVehicleUpdater];
    if (_stepForTransitVehicleUpdater && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = _stepForTransitVehicleUpdater;
      vehicleEntries = [v4 vehicleEntries];
      if (vehicleEntries)
      {
        vehicleEntries2 = [v4 vehicleEntries];
        tripIDs = [vehicleEntries2 tripIDs];
      }

      else
      {
        tripIDs = &__NSArray0__struct;
      }

      v8 = [NSSet setWithArray:tripIDs];
      [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater setTripIDs:v8];
    }

    else
    {
      v4 = +[NSSet set];
      [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater setTripIDs:v4];
    }

    [(TransitNavigationContext *)self _updateAnnotationsForCurrentRoute];
    tripIDs2 = [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater tripIDs];
    if ([tripIDs2 count] && !-[TransitNavigationContext _shouldFrameVehiclePositions](self, "_shouldFrameVehiclePositions"))
    {
      v10 = sub_100799650();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Will not frame any vehicle positions, displayed step is not active step", v13, 2u);
      }

      v11 = +[NSSet set];

      tripIDs2 = v11;
    }

    _navCameraController = [(TransitNavigationContext *)self _navCameraController];
    [_navCameraController filterVehiclePositionsForTripsNotInSet:tripIDs2];
  }
}

- (void)transitVehicleUpdater:(id)updater didUpdateVehiclePositions:(id)positions forTripIDs:(id)ds
{
  allObjects = [positions allObjects];
  objc_storeStrong(&self->_lastReceivedVehiclePositions, allObjects);
  [(TransitNavigationContext *)self _updateAnnotationsForCurrentRoute];
  if ([allObjects count] && !-[TransitNavigationContext _shouldFrameVehiclePositions](self, "_shouldFrameVehiclePositions"))
  {
    v7 = sub_100799650();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      v10 = [allObjects count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Will not frame %lu vehicle positions, displayed step is not active step", &v9, 0xCu);
    }

    allObjects = &__NSArray0__struct;
  }

  _navCameraController = [(TransitNavigationContext *)self _navCameraController];
  [_navCameraController frameVehiclePositions:allObjects];
}

- (id)transitVehicleUpdater:(id)updater shouldUpdateVehiclePositionsForTripIDs:(id)ds
{
  dsCopy = ds;
  _stepForTransitVehicleUpdater = [(TransitNavigationContext *)self _stepForTransitVehicleUpdater];
  if (_stepForTransitVehicleUpdater && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = _stepForTransitVehicleUpdater;
    UInteger = GEOConfigGetUInteger();
    v9 = [NSMutableSet setWithCapacity:UInteger];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    vehicleEntries = [v7 vehicleEntries];
    upcomingTripIDs = [vehicleEntries upcomingTripIDs];

    v12 = [upcomingTripIDs countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
LABEL_5:
      v15 = 0;
      while (1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(upcomingTripIDs);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        if ([dsCopy containsObject:v16])
        {
          [v9 addObject:v16];
        }

        if ([v9 count] == UInteger)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [upcomingTripIDs countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v13)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    v17 = [v9 copy];
  }

  else
  {
    v17 = +[NSSet set];
  }

  return v17;
}

- (void)recenterOnActiveStep
{
  if ([(TransitNavigationContext *)self shouldShowRecenterButton])
  {
    temporarilyFramedStep = self->_temporarilyFramedStep;
    v4 = sub_100799650();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
    if (temporarilyFramedStep)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Camera clearing temporarily-framed step (recenter button)", buf, 2u);
      }

      v6 = self->_temporarilyFramedStep;
      self->_temporarilyFramedStep = 0;

      [(TransitNavigationContext *)self canRecenterDidChange];
      [(TransitNavigationContext *)self updateFramingForCurrentStep];
    }

    else
    {
      if (v5)
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Requesting camera recenter animated", v9, 2u);
      }

      chromeViewController = [(TransitNavigationContext *)self chromeViewController];
      navigationDisplay = [chromeViewController navigationDisplay];
      [navigationDisplay recenterCameraAnimated:1];
    }
  }
}

- (void)_updateNavigationDisplayConfigurationForDisplayedStep:(id)step
{
  stepCopy = step;
  if (*&self->_displayedStep == 0)
  {
    v9 = sub_100799650();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No displayedStep/temporary set to configure in navigation display", v12, 2u);
    }
  }

  else
  {
    _shouldUseManualFraming = [(TransitNavigationContext *)self _shouldUseManualFraming];
    v6 = sub_100799650();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (_shouldUseManualFraming)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Configurating for static step camera", buf, 2u);
      }

      temporarilyFramedStep = self->_temporarilyFramedStep;
      if (!temporarilyFramedStep)
      {
        temporarilyFramedStep = self->_displayedStep;
      }

      [stepCopy setStaticStepIndex:{-[GEOComposedRouteStep stepIndex](temporarilyFramedStep, "stepIndex")}];
      [stepCopy setCameraStyle:5];
    }

    else
    {
      if (v7)
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Configurating for default camera", v10, 2u);
      }

      [stepCopy setCameraStyle:1];
      [stepCopy setStaticStepIndex:0x7FFFFFFFFFFFFFFFLL];
      [stepCopy setCameraPaused:&__kCFBooleanFalse];
    }
  }
}

- (void)updateFramingForCurrentStep
{
  v3 = sub_100799650();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Updating camera behaviour for current step...", buf, 2u);
  }

  chromeViewController = [(TransitNavigationContext *)self chromeViewController];
  navigationDisplay = [chromeViewController navigationDisplay];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100C6846C;
  v9[3] = &unk_10164F208;
  v9[4] = self;
  [navigationDisplay configureDisplay:v9 animated:1];

  if ([(TransitNavigationContext *)self isNavigationCameraTracking]&& ([(TransitNavigationContext *)self isCameraPanningOrZoomed]& 1) == 0)
  {
    v6 = sub_100799650();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Automatically returning to puck, navigation display is unpaused and user has no panned/zoomed map", buf, 2u);
    }

    chromeViewController2 = [(TransitNavigationContext *)self chromeViewController];
    mapView = [chromeViewController2 mapView];
    [mapView navigationCameraReturnToPuck];
  }
}

- (void)_checkRouteProximityForManualFraming:(id)framing
{
  framingCopy = framing;
  origin = [framingCopy origin];
  isCurrentLocation = [origin isCurrentLocation];

  if (isCurrentLocation)
  {
    if (self->_forceManualFraming)
    {
      v7 = sub_100799650();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Route is from current location, disable forced manual framing", &v19, 2u);
      }

      self->_forceManualFraming = 0;
    }
  }

  else if (!self->_forceManualFraming)
  {
    if (GEOConfigGetBOOL())
    {
      v8 = framingCopy;
      if (v8)
      {
        v9 = [[MNRouteProximitySensor alloc] initWithRoute:v8];
        GEOConfigGetDouble();
        [v9 setProximityThreshold:?];
        fetchLastLocation = [(TransitNavigationContext *)self fetchLastLocation];
        v11 = [[GEOLocation alloc] initWithCLLocation:fetchLastLocation];
        [v9 updateForLocation:v11];
        proximity = [v9 proximity];
        self->_forceManualFraming = proximity < 2;
        v13 = sub_100799650();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          if (proximity > 4)
          {
            v14 = &stru_1016631F0;
          }

          else
          {
            v14 = *(&off_10164F228 + proximity);
          }

          if (self->_forceManualFraming)
          {
            v16 = @"YES";
          }

          else
          {
            v16 = @"NO";
          }

          v17 = v16;
          [v9 proximityThreshold];
          v19 = 138543874;
          v20 = v14;
          v21 = 2114;
          v22 = v16;
          v23 = 2048;
          v24 = v18;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Route is point-to-point, proximity to route is %{public}@, force manual framing: %{public}@ (threshold: %#.1lfm)", &v19, 0x20u);
        }
      }
    }

    else
    {
      v15 = sub_100799650();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Route is point-to-point, force manual framing", &v19, 2u);
      }

      self->_forceManualFraming = 1;
    }
  }
}

- (void)temporarilyFrameStep:(id)step
{
  stepCopy = step;
  v5 = sub_100799650();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    stepIndex = [stepCopy stepIndex];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Asked to temporarily frame step %lu", &v7, 0xCu);
  }

  temporarilyFramedStep = self->_temporarilyFramedStep;
  self->_temporarilyFramedStep = stepCopy;

  [(TransitNavigationContext *)self canRecenterDidChange];
  [(TransitNavigationContext *)self updateFramingForCurrentStep];
}

- (BOOL)_shouldUseManualFraming
{
  if (self->_forceManualFraming || [(TransitNavigationContext *)self isDisplayingManuallySelectedStep])
  {
    return 1;
  }

  return [(TransitNavigationContext *)self isTemporarilyFramingStep];
}

- (BOOL)isNavigationCameraTracking
{
  chromeViewController = [(TransitNavigationContext *)self chromeViewController];
  navigationDisplay = [chromeViewController navigationDisplay];
  configuration = [navigationDisplay configuration];

  cameraPaused = [configuration cameraPaused];
  LOBYTE(navigationDisplay) = [cameraPaused BOOLValue];

  return navigationDisplay ^ 1;
}

- (id)_navCameraController
{
  chromeViewController = [(TransitNavigationContext *)self chromeViewController];
  navigationDisplay = [chromeViewController navigationDisplay];
  cameraController = [navigationDisplay cameraController];

  return cameraController;
}

- (BOOL)updateRouteAnnotationsConfiguration:(id)configuration
{
  lastReceivedVehiclePositions = self->_lastReceivedVehiclePositions;
  configurationCopy = configuration;
  [configurationCopy setTransitVehiclePositions:lastReceivedVehiclePositions];
  tripIDs = [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater tripIDs];
  [configurationCopy filterTransitVehiclePositionsForTripsNotInSet:tripIDs];

  return 1;
}

- (void)_updateAnnotationsForCurrentRoute
{
  [(GEOComposedRoute *)self->_route setManeuverDisplayEnabled:1];
  chromeViewController = [(TransitNavigationContext *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (void)_updateCurrentRouteIfNeeded
{
  obj = [(TransitNavigationContext *)self fetchCurrentRoute];
  uniqueRouteID = [obj uniqueRouteID];
  route = self->_route;
  p_route = &self->_route;
  uniqueRouteID2 = [(GEOComposedRoute *)route uniqueRouteID];
  v7 = uniqueRouteID;
  v8 = uniqueRouteID2;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      [(GEOComposedRoute *)*p_route setManeuverDisplayEnabled:0];
      objc_storeStrong(p_route, obj);
      [(GEOComposedRoute *)*p_route setManeuverDisplayEnabled:1];
    }
  }
}

- (void)_setupMapView:(id)view
{
  viewCopy = view;
  [viewCopy _setApplicationState:3];
  if ([viewCopy mapType] != 104)
  {
    [viewCopy setMapType:104];
  }
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C68BEC;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [animation addPreparation:v4];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100C68D5C;
  v9[3] = &unk_101661A90;
  v9[4] = self;
  controllerCopy = controller;
  v6 = controllerCopy;
  animationCopy = animation;
  [animationCopy addPreparation:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C68DB8;
  v8[3] = &unk_101661B18;
  v8[4] = self;
  [animationCopy addAnimations:v8];
}

- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C68E6C;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [animation addPreparation:v4];
}

- (id)personalizedItemSources
{
  chromeViewController = [(TransitNavigationContext *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];

  if (searchPinsManager)
  {
    chromeViewController2 = [(TransitNavigationContext *)self chromeViewController];
    searchPinsManager2 = [chromeViewController2 searchPinsManager];
    routeStartEndItemSource = [searchPinsManager2 routeStartEndItemSource];
    v10 = routeStartEndItemSource;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (TransitNavigationContext)init
{
  v6.receiver = self;
  v6.super_class = TransitNavigationContext;
  v2 = [(TransitNavigationContext *)&v6 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_sceneDidEnterBackground:" name:UISceneDidEnterBackgroundNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_sceneWillEnterForeground:" name:UISceneWillEnterForegroundNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater setActive:0];
  transitVehicleUpdater = self->_transitVehicleUpdater;
  self->_transitVehicleUpdater = 0;

  v4.receiver = self;
  v4.super_class = TransitNavigationContext;
  [(TransitNavigationContext *)&v4 dealloc];
}

@end