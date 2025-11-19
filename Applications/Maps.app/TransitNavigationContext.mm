@interface TransitNavigationContext
- (BOOL)_sceneInBackground;
- (BOOL)_shouldFrameVehiclePositions;
- (BOOL)_shouldUseManualFraming;
- (BOOL)isNavigationCameraTracking;
- (BOOL)updateRouteAnnotationsConfiguration:(id)a3;
- (ChromeViewController)chromeViewController;
- (TransitNavigationContext)init;
- (id)_navCameraController;
- (id)personalizedItemSources;
- (id)transitVehicleUpdater:(id)a3 shouldUpdateVehiclePositionsForTripIDs:(id)a4;
- (void)_checkRouteProximityForManualFraming:(id)a3;
- (void)_pauseOrResumeRealtimeUpdatesIfNeeded;
- (void)_sceneDidEnterBackground:(id)a3;
- (void)_sceneWillEnterForeground:(id)a3;
- (void)_setupMapView:(id)a3;
- (void)_updateAnnotationsForCurrentRoute;
- (void)_updateCurrentRouteIfNeeded;
- (void)_updateNavigationDisplayConfigurationForDisplayedStep:(id)a3;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)dealloc;
- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)recenterOnActiveStep;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)temporarilyFrameStep:(id)a3;
- (void)transitDirectionsStepsListDataSource:(id)a3 didTapRowForItem:(id)a4;
- (void)transitDirectionsStepsListDataSource:(id)a3 didUpdateActiveGuidanceStep:(id)a4;
- (void)transitDirectionsStepsListDataSource:(id)a3 didUpdateDisplayedGuidanceStep:(id)a4;
- (void)transitVehicleUpdater:(id)a3 didUpdateVehiclePositions:(id)a4 forTripIDs:(id)a5;
- (void)updateFramingForCurrentStep;
- (void)updateTransitVehicleUpdaterIfNeeded;
@end

@implementation TransitNavigationContext

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)transitDirectionsStepsListDataSource:(id)a3 didUpdateActiveGuidanceStep:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TransitNavigationContext *)self activeStep];
  if (!v8 || (v9 = v8, -[TransitNavigationContext activeStep](self, "activeStep"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 stepIndex], v12 = objc_msgSend(v7, "stepIndex"), v10, v9, v11 != v12))
  {
    v13 = sub_100799650();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [(TransitNavigationContext *)self activeStep];
      v17 = 134218240;
      v18 = [v14 stepIndex];
      v19 = 2048;
      v20 = [v7 stepIndex];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Notified active step changed from %lu to %lu", &v17, 0x16u);
    }

    [(TransitNavigationContext *)self setActiveStep:v7];
    [(TransitNavigationContext *)self canRecenterDidChange];
    v15 = [(TransitNavigationContext *)self currentUITargetForAnalytics];
    v16 = [v6 displayedItemIndexForAnalytics];
    [GEOAPPortal captureUserAction:3066 target:v15 value:0 transitStep:v16];
  }
}

- (void)transitDirectionsStepsListDataSource:(id)a3 didUpdateDisplayedGuidanceStep:(id)a4
{
  v5 = a4;
  v6 = [(TransitNavigationContext *)self displayedStep];
  if (!v6 || (v7 = v6, -[TransitNavigationContext displayedStep](self, "displayedStep"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 stepIndex], v10 = objc_msgSend(v5, "stepIndex"), v8, v7, v9 != v10))
  {
    v11 = sub_100799650();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(TransitNavigationContext *)self displayedStep];
      v13 = 134218240;
      v14 = [v12 stepIndex];
      v15 = 2048;
      v16 = [v5 stepIndex];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Notified displayed step changed from %lu to %lu", &v13, 0x16u);
    }

    [(TransitNavigationContext *)self setDisplayedStep:v5];
    [(TransitNavigationContext *)self canRecenterDidChange];
    [(TransitNavigationContext *)self updateTransitVehicleUpdaterIfNeeded];
    [(TransitNavigationContext *)self updateFramingForCurrentStep];
  }
}

- (void)transitDirectionsStepsListDataSource:(id)a3 didTapRowForItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 matchingRouteStepIndex];
  v9 = [(TransitNavigationContext *)self displayedStep];
  if (v9)
  {
    v10 = [(TransitNavigationContext *)self displayedStep];
    v11 = [v10 stepIndex];
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v11 == v8)
  {
    [(TransitNavigationContext *)self didReselectDisplayedStep];
  }

  else
  {
    v12 = sub_100799650();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v19 = 134218496;
      v20 = v8;
      v21 = 2048;
      v22 = v11;
      v23 = 2048;
      v24 = [v6 activeComposedRouteStepIndex];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Will manually select stepIndex: %lu, previous: %lu, auto-advance: %lu", &v19, 0x20u);
    }

    v13 = [v6 displayedItemIndex];
    v14 = [v6 indexOfItem:v7];
    v15 = [(TransitNavigationContext *)self currentUITargetForAnalytics];
    v16 = [NSNumber numberWithInteger:v14 - v13];
    v17 = [v16 stringValue];
    v18 = [v6 displayedItemIndexForAnalytics];
    [GEOAPPortal captureUserAction:235 target:v15 value:v17 transitStep:v18];

    [v6 setDisplayedComposedRouteStepIndex:{objc_msgSend(v7, "matchingRouteStepIndex")}];
    [(TransitNavigationContext *)self canRecenterDidChange];
  }
}

- (BOOL)_sceneInBackground
{
  v2 = [(TransitNavigationContext *)self chromeViewController];
  v3 = [v2 view];
  v4 = [v3 window];
  v5 = [v4 windowScene];

  if ([v5 activationState])
  {
    v6 = [v5 activationState] != 1;
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
      v5 = [(TransitNavigationContext *)self chromeViewController];
      v6 = [v5 isTopContext:self];

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
    v3 = [(TransitNavigationContext *)self chromeViewController];
    v4 = [v3 isTopContext:self];

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

- (void)_sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = [(TransitNavigationContext *)self chromeViewController];
  v6 = [v5 view];
  v7 = [v6 window];
  v9 = [v7 windowScene];

  v8 = [v4 object];

  if (v9 == v8)
  {
    [(TransitNavigationContext *)self _pauseOrResumeRealtimeUpdatesIfNeeded];
  }
}

- (void)_sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = [(TransitNavigationContext *)self chromeViewController];
  v6 = [v5 view];
  v7 = [v6 window];
  v9 = [v7 windowScene];

  v8 = [v4 object];

  if (v9 == v8)
  {
    [(TransitNavigationContext *)self _pauseOrResumeRealtimeUpdatesIfNeeded];
  }
}

- (BOOL)_shouldFrameVehiclePositions
{
  v3 = [(TransitNavigationContext *)self _stepForTransitVehicleUpdater];
  v4 = [v3 stepIndex];

  if (v4 == [(GEOComposedRouteStep *)self->_activeStep stepIndex])
  {
    return 1;
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  if ([v6 BOOLForKey:@"NavigationTransitFrameVehiclePositionsForSelectedStep"])
  {
    v5 = v4 == [(GEOComposedRouteStep *)self->_displayedStep stepIndex];
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
    v3 = [(TransitNavigationContext *)self _stepForTransitVehicleUpdater];
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = v3;
      v5 = [v4 vehicleEntries];
      if (v5)
      {
        v6 = [v4 vehicleEntries];
        v7 = [v6 tripIDs];
      }

      else
      {
        v7 = &__NSArray0__struct;
      }

      v8 = [NSSet setWithArray:v7];
      [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater setTripIDs:v8];
    }

    else
    {
      v4 = +[NSSet set];
      [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater setTripIDs:v4];
    }

    [(TransitNavigationContext *)self _updateAnnotationsForCurrentRoute];
    v9 = [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater tripIDs];
    if ([v9 count] && !-[TransitNavigationContext _shouldFrameVehiclePositions](self, "_shouldFrameVehiclePositions"))
    {
      v10 = sub_100799650();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Will not frame any vehicle positions, displayed step is not active step", v13, 2u);
      }

      v11 = +[NSSet set];

      v9 = v11;
    }

    v12 = [(TransitNavigationContext *)self _navCameraController];
    [v12 filterVehiclePositionsForTripsNotInSet:v9];
  }
}

- (void)transitVehicleUpdater:(id)a3 didUpdateVehiclePositions:(id)a4 forTripIDs:(id)a5
{
  v6 = [a4 allObjects];
  objc_storeStrong(&self->_lastReceivedVehiclePositions, v6);
  [(TransitNavigationContext *)self _updateAnnotationsForCurrentRoute];
  if ([v6 count] && !-[TransitNavigationContext _shouldFrameVehiclePositions](self, "_shouldFrameVehiclePositions"))
  {
    v7 = sub_100799650();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      v10 = [v6 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Will not frame %lu vehicle positions, displayed step is not active step", &v9, 0xCu);
    }

    v6 = &__NSArray0__struct;
  }

  v8 = [(TransitNavigationContext *)self _navCameraController];
  [v8 frameVehiclePositions:v6];
}

- (id)transitVehicleUpdater:(id)a3 shouldUpdateVehiclePositionsForTripIDs:(id)a4
{
  v5 = a4;
  v6 = [(TransitNavigationContext *)self _stepForTransitVehicleUpdater];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
    UInteger = GEOConfigGetUInteger();
    v9 = [NSMutableSet setWithCapacity:UInteger];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [v7 vehicleEntries];
    v11 = [v10 upcomingTripIDs];

    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        if ([v5 containsObject:v16])
        {
          [v9 addObject:v16];
        }

        if ([v9 count] == UInteger)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

      v7 = [(TransitNavigationContext *)self chromeViewController];
      v8 = [v7 navigationDisplay];
      [v8 recenterCameraAnimated:1];
    }
  }
}

- (void)_updateNavigationDisplayConfigurationForDisplayedStep:(id)a3
{
  v4 = a3;
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
    v5 = [(TransitNavigationContext *)self _shouldUseManualFraming];
    v6 = sub_100799650();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
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

      [v4 setStaticStepIndex:{-[GEOComposedRouteStep stepIndex](temporarilyFramedStep, "stepIndex")}];
      [v4 setCameraStyle:5];
    }

    else
    {
      if (v7)
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Configurating for default camera", v10, 2u);
      }

      [v4 setCameraStyle:1];
      [v4 setStaticStepIndex:0x7FFFFFFFFFFFFFFFLL];
      [v4 setCameraPaused:&__kCFBooleanFalse];
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

  v4 = [(TransitNavigationContext *)self chromeViewController];
  v5 = [v4 navigationDisplay];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100C6846C;
  v9[3] = &unk_10164F208;
  v9[4] = self;
  [v5 configureDisplay:v9 animated:1];

  if ([(TransitNavigationContext *)self isNavigationCameraTracking]&& ([(TransitNavigationContext *)self isCameraPanningOrZoomed]& 1) == 0)
  {
    v6 = sub_100799650();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Automatically returning to puck, navigation display is unpaused and user has no panned/zoomed map", buf, 2u);
    }

    v7 = [(TransitNavigationContext *)self chromeViewController];
    v8 = [v7 mapView];
    [v8 navigationCameraReturnToPuck];
  }
}

- (void)_checkRouteProximityForManualFraming:(id)a3
{
  v4 = a3;
  v5 = [v4 origin];
  v6 = [v5 isCurrentLocation];

  if (v6)
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
      v8 = v4;
      if (v8)
      {
        v9 = [[MNRouteProximitySensor alloc] initWithRoute:v8];
        GEOConfigGetDouble();
        [v9 setProximityThreshold:?];
        v10 = [(TransitNavigationContext *)self fetchLastLocation];
        v11 = [[GEOLocation alloc] initWithCLLocation:v10];
        [v9 updateForLocation:v11];
        v12 = [v9 proximity];
        self->_forceManualFraming = v12 < 2;
        v13 = sub_100799650();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          if (v12 > 4)
          {
            v14 = &stru_1016631F0;
          }

          else
          {
            v14 = *(&off_10164F228 + v12);
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

- (void)temporarilyFrameStep:(id)a3
{
  v4 = a3;
  v5 = sub_100799650();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = [v4 stepIndex];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Asked to temporarily frame step %lu", &v7, 0xCu);
  }

  temporarilyFramedStep = self->_temporarilyFramedStep;
  self->_temporarilyFramedStep = v4;

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
  v2 = [(TransitNavigationContext *)self chromeViewController];
  v3 = [v2 navigationDisplay];
  v4 = [v3 configuration];

  v5 = [v4 cameraPaused];
  LOBYTE(v3) = [v5 BOOLValue];

  return v3 ^ 1;
}

- (id)_navCameraController
{
  v2 = [(TransitNavigationContext *)self chromeViewController];
  v3 = [v2 navigationDisplay];
  v4 = [v3 cameraController];

  return v4;
}

- (BOOL)updateRouteAnnotationsConfiguration:(id)a3
{
  lastReceivedVehiclePositions = self->_lastReceivedVehiclePositions;
  v5 = a3;
  [v5 setTransitVehiclePositions:lastReceivedVehiclePositions];
  v6 = [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater tripIDs];
  [v5 filterTransitVehiclePositionsForTripsNotInSet:v6];

  return 1;
}

- (void)_updateAnnotationsForCurrentRoute
{
  [(GEOComposedRoute *)self->_route setManeuverDisplayEnabled:1];
  v3 = [(TransitNavigationContext *)self chromeViewController];
  [v3 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (void)_updateCurrentRouteIfNeeded
{
  obj = [(TransitNavigationContext *)self fetchCurrentRoute];
  v3 = [obj uniqueRouteID];
  route = self->_route;
  p_route = &self->_route;
  v6 = [(GEOComposedRoute *)route uniqueRouteID];
  v7 = v3;
  v8 = v6;
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

- (void)_setupMapView:(id)a3
{
  v3 = a3;
  [v3 _setApplicationState:3];
  if ([v3 mapType] != 104)
  {
    [v3 setMapType:104];
  }
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C68BEC;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [a4 addPreparation:v4];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100C68D5C;
  v9[3] = &unk_101661A90;
  v9[4] = self;
  v10 = a3;
  v6 = v10;
  v7 = a4;
  [v7 addPreparation:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C68DB8;
  v8[3] = &unk_101661B18;
  v8[4] = self;
  [v7 addAnimations:v8];
}

- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C68E6C;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [a4 addPreparation:v4];
}

- (id)personalizedItemSources
{
  v3 = [(TransitNavigationContext *)self chromeViewController];
  v4 = [v3 searchPinsManager];

  if (v4)
  {
    v5 = [(TransitNavigationContext *)self chromeViewController];
    v6 = [v5 searchPinsManager];
    v7 = [v6 routeStartEndItemSource];
    v10 = v7;
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