@interface ChromeNavigationDisplay
+ (id)defaultConfiguration;
- (BOOL)_isAuthorizedForPreciseLocation;
- (BOOL)_isRunningFullGuidance;
- (BOOL)mapView:(id)view shouldSelectLabelMarker:(id)marker;
- (BOOL)updateRouteAnnotationsConfiguration:(id)configuration;
- (ChromeNavigationDisplay)initWithChromeViewController:(id)controller;
- (ChromeNavigationDisplayDelegate)delegate;
- (ChromeViewController)chromeViewController;
- (MKMapView)mapView;
- (double)_horizontalCameraOffset;
- (unint64_t)_routeMarkerOptionsForCameraStyle:(int64_t)style incidentAlert:(id)alert;
- (void)_applyHorizontalCameraOffset:(BOOL)offset animated:(BOOL)animated;
- (void)_applyStaticCameraStyle;
- (void)_captureCurrentNavigationState;
- (void)_cleanupNavigationDisplay;
- (void)_clearAnnotations;
- (void)_ioHIDRepeatCurrentGuidance:(id)guidance;
- (void)_locationManagerApprovalDidChange:(id)change;
- (void)_pauseNavigationCameraMotion;
- (void)_prepareNavigationDisplay;
- (void)_setConfiguration:(id)configuration animated:(BOOL)animated;
- (void)_setRoute:(id)route;
- (void)_startNavigationCameraMotionIfNeededAnimated:(BOOL)animated;
- (void)_stopNavigationCameraMotion;
- (void)_transitionToCameraStyle:(int64_t)style animated:(BOOL)animated;
- (void)_updateDirectionsAnnotationManagerDisplayedRoutes;
- (void)_updateForCurrentRoute;
- (void)_updateWithMatchedLocation:(id)location;
- (void)_updateWithRouteGeniusEntry:(id)entry;
- (void)configureDisplay:(id)display animated:(BOOL)animated;
- (void)dealloc;
- (void)didTapMapView:(id)view atPoint:(CGPoint)point;
- (void)mapInsetsDidChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection;
- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated;
- (void)navigationDisplay:(id)display didChangeUserTrackingMode:(int64_t)mode;
- (void)navigationService:(id)service didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didDismissTrafficIncidentAlert:(id)alert;
- (void)navigationService:(id)service didInvalidateTrafficIncidentAlert:(id)alert;
- (void)navigationService:(id)service didReceiveTrafficIncidentAlert:(id)alert responseCallback:(id)callback;
- (void)navigationService:(id)service didUpdateTrafficForRouteID:(id)d;
- (void)navigationService:(id)service didUpdateTrafficIncidentAlert:(id)alert;
- (void)navigationService:(id)service willChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)recenterCameraAnimated:(BOOL)animated;
- (void)setCameraPanning:(BOOL)panning animated:(BOOL)animated;
- (void)setNonDefaultZoom:(BOOL)zoom animated:(BOOL)animated;
- (void)setSuppressed:(BOOL)suppressed animated:(BOOL)animated;
- (void)setTrafficAlert:(id)alert;
- (void)startRunningNavigationAnimated:(BOOL)animated;
- (void)stopRunningNavigationAnimated:(BOOL)animated;
- (void)updateWithRoute:(id)route;
- (void)zoomIn;
- (void)zoomOut;
@end

@implementation ChromeNavigationDisplay

- (double)_horizontalCameraOffset
{
  chromeViewController = [(ChromeNavigationDisplay *)self chromeViewController];
  view = [chromeViewController view];
  [view layoutIfNeeded];

  chromeViewController2 = [(ChromeNavigationDisplay *)self chromeViewController];
  [chromeViewController2 unobscuredMapContentBoundsInContainingView];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  chromeViewController3 = [(ChromeNavigationDisplay *)self chromeViewController];
  mapView = [chromeViewController3 mapView];
  [mapView frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = v17;
  v27.origin.y = v19;
  v27.size.width = v21;
  v27.size.height = v23;
  return MidX - CGRectGetMidX(v27);
}

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (MKMapView)mapView
{
  chromeViewController = [(ChromeNavigationDisplay *)self chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (ChromeNavigationDisplayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)navigationService:(id)service didUpdateTrafficForRouteID:(id)d
{
  dCopy = d;
  chromeViewController = [(ChromeNavigationDisplay *)self chromeViewController];
  routeAnnotationsController = [chromeViewController routeAnnotationsController];
  configuration = [routeAnnotationsController configuration];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  routes = [configuration routes];
  v10 = [routes countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(routes);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        uniqueRouteID = [v14 uniqueRouteID];
        v16 = [uniqueRouteID isEqual:dCopy];

        if (v16)
        {
          [v14 _maps_refreshTrafficIncidentsOnRoute];
        }
      }

      v11 = [routes countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)navigationService:(id)service didDismissTrafficIncidentAlert:(id)alert
{
  alertCopy = alert;
  v5 = sub_10009B590();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    alertTitles = [alertCopy alertTitles];
    firstObject = [alertTitles firstObject];
    v8 = 138412290;
    v9 = firstObject;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(alert:%@)", &v8, 0xCu);
  }
}

- (void)navigationService:(id)service didInvalidateTrafficIncidentAlert:(id)alert
{
  alertCopy = alert;
  v5 = sub_10009B590();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    alertTitles = [alertCopy alertTitles];
    firstObject = [alertTitles firstObject];
    v8 = 138412290;
    v9 = firstObject;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(alert:%@)", &v8, 0xCu);
  }
}

- (void)navigationService:(id)service didUpdateTrafficIncidentAlert:(id)alert
{
  alertCopy = alert;
  v5 = sub_10009B590();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    alertTitles = [alertCopy alertTitles];
    firstObject = [alertTitles firstObject];
    v8 = 138412290;
    v9 = firstObject;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(alert:%@)", &v8, 0xCu);
  }
}

- (void)navigationService:(id)service didReceiveTrafficIncidentAlert:(id)alert responseCallback:(id)callback
{
  alertCopy = alert;
  v6 = sub_10009B590();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    alertTitles = [alertCopy alertTitles];
    firstObject = [alertTitles firstObject];
    v9 = 138412290;
    v10 = firstObject;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(alert:%@)", &v9, 0xCu);
  }
}

- (void)navigationService:(id)service didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  serviceCopy = service;
  [(ChromeNavigationDisplay *)self _updateDirectionsAnnotationManagerDisplayedRoutes];
  route = [serviceCopy route];

  self->_hasArrived = [route isLegIndexOfLastLeg:index];
}

- (BOOL)mapView:(id)view shouldSelectLabelMarker:(id)marker
{
  viewCopy = view;
  markerCopy = marker;
  chromeViewController = [(ChromeNavigationDisplay *)self chromeViewController];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    chromeViewController2 = [(ChromeNavigationDisplay *)self chromeViewController];
    v11 = [chromeViewController2 mapView:viewCopy shouldSelectLabelMarker:markerCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  if ((MNNavigationServiceStateChangedToNavigating() & 1) != 0 || MNNavigationServiceStateChangedFromNavigatingToStopped())
  {

    [(ChromeNavigationDisplay *)self _captureCurrentNavigationState];
  }

  else if (toState != state && (toState & 0xFFFFFFFFFFFFFFFELL) == 4)
  {

    [(ChromeNavigationDisplay *)self _updateDirectionsAnnotationManagerDisplayedRoutes];
  }
}

- (void)navigationService:(id)service willChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  if (MNNavigationServiceStateChangedToNavigating())
  {

    [(ChromeNavigationDisplay *)self setCameraPanning:0 animated:0];
  }
}

- (void)didTapMapView:(id)view atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  delegate = [(ChromeNavigationDisplay *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(ChromeNavigationDisplay *)self delegate];
    [delegate2 chromeNavigationDisplay:self userDidTapMap:viewCopy atPoint:{x, y}];
  }
}

- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection
{
  if (!gesture)
  {
    [(ChromeNavigationDisplay *)self mapViewNavigationCameraHasStoppedPanning:view, 0, direction, type, decelerate, tiltDirection];
  }
}

- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated
{
  if (!gesture)
  {
    [(ChromeNavigationDisplay *)self mapViewNavigationCameraHasStartedPanning:view, 0, animated];
  }
}

- (void)navigationDisplay:(id)display didChangeUserTrackingMode:(int64_t)mode
{
  v5 = +[UIApplication sharedMapsDelegate];
  [v5 setTrackingMode:mode monitorBatteryState:0];
}

- (void)_applyStaticCameraStyle
{
  if ([(NavigationDisplay *)self->_navigationDisplay isTracking])
  {
    [(NavigationDisplay *)self->_navigationDisplay stopCameraMotion];
  }

  configuration = [(ChromeNavigationDisplay *)self configuration];
  v4 = [configuration cameraStyle] == 5;

  configuration2 = [(ChromeNavigationDisplay *)self configuration];
  v6 = configuration2;
  if (!v4)
  {
    cameraStyle = [configuration2 cameraStyle];

    if (cameraStyle != 6)
    {
      v44 = sub_10006D178();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v50 = "[ChromeNavigationDisplay _applyStaticCameraStyle]";
        v51 = 2080;
        v52 = "ChromeNavigationDisplay.m";
        v53 = 1024;
        v54 = 998;
        v55 = 2080;
        v56 = "self.configuration.cameraStyle == ChromeNavigationCameraStyleStaticCamera";
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v45 = sub_10006D178();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v50 = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    configuration3 = [(ChromeNavigationDisplay *)self configuration];
    staticMapCamera = [configuration3 staticMapCamera];

    if (staticMapCamera)
    {
      v13 = sub_10009B590();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v50 = staticMapCamera;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Will apply static map camera: %{private}@", buf, 0xCu);
      }

      mapView = [(ChromeNavigationDisplay *)self mapView];
      [mapView setCamera:staticMapCamera animated:1];
    }

    else
    {
      configuration4 = [(ChromeNavigationDisplay *)self configuration];
      [configuration4 staticMapRect];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      if (v23 == MKMapRectNull.origin.x && v25 == MKMapRectNull.origin.y)
      {
        v30 = sub_10006D178();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = [NSString stringWithFormat:@"Asked to apply static camera style but no camera or map rect provided"];
          *buf = 136315906;
          v50 = "[ChromeNavigationDisplay _applyStaticCameraStyle]";
          v51 = 2080;
          v52 = "ChromeNavigationDisplay.m";
          v53 = 1024;
          v54 = 1014;
          v55 = 2112;
          v56 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", buf, 0x26u);
        }

        if (!sub_100E03634())
        {
          staticMapCamera = 0;
          goto LABEL_37;
        }

        mapView = sub_10006D178();
        if (os_log_type_enabled(mapView, OS_LOG_TYPE_ERROR))
        {
          v32 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v50 = v32;
          _os_log_impl(&_mh_execute_header, mapView, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      else
      {
        v38 = sub_10009B590();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Will apply static map rect", buf, 2u);
        }

        mapView = [(ChromeNavigationDisplay *)self mapView];
        [mapView setVisibleMapRect:1 animated:v23, v25, v27, v29];
      }
    }

LABEL_37:
    return;
  }

  staticStepIndex = [configuration2 staticStepIndex];

  if (staticStepIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    configuration5 = +[MNNavigationService sharedService];
    displayedStepIndex = [configuration5 displayedStepIndex];
    if (displayedStepIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      displayedStepIndex = [configuration5 stepIndex];
    }
  }

  else
  {
    configuration5 = [(ChromeNavigationDisplay *)self configuration];
    displayedStepIndex = [configuration5 staticStepIndex];
  }

  v15 = displayedStepIndex;

  if (v15 < [(GEOComposedRoute *)self->_route stepsCount])
  {
    staticMapCamera = [(GEOComposedRoute *)self->_route stepAtIndex:v15];
    if ([(GEOComposedRoute *)self->_route transportType]== 1)
    {
      if (!self->_transitStepFramer)
      {
        v16 = objc_alloc_init(TransitSteppingCameraFramer);
        transitStepFramer = self->_transitStepFramer;
        self->_transitStepFramer = v16;
      }

      configuration6 = [(ChromeNavigationDisplay *)self configuration];
      cameraStyle2 = [configuration6 cameraStyle];

      objc_initWeak(buf, self);
      v20 = self->_transitStepFramer;
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100F0B6AC;
      v47[3] = &unk_10165CD58;
      objc_copyWeak(v48, buf);
      v48[1] = cameraStyle2;
      [(TransitSteppingCameraFramer *)v20 rectForStep:staticMapCamera currentStepIndex:v15 handler:v47];
      objc_destroyWeak(v48);
      objc_destroyWeak(buf);
    }

    else
    {
      v33 = +[MNNavigationService sharedService];
      if ([v33 navigationType] == 3)
      {
        v34 = sub_100AF171C(staticMapCamera);
      }

      else
      {
        v34 = sub_100AF1870(staticMapCamera);
      }

      v39 = v34;
      v40 = v35;
      v41 = v36;
      v42 = v37;
      if (v34 != MKMapRectNull.origin.x || v35 != MKMapRectNull.origin.y)
      {
        mapView2 = [(ChromeNavigationDisplay *)self mapView];
        [mapView2 animateToVisibleMapRect:1 usingDefaultAnimationDuration:0 completion:{v39, v40, v41, v42}];
      }
    }

    goto LABEL_37;
  }
}

- (unint64_t)_routeMarkerOptionsForCameraStyle:(int64_t)style incidentAlert:(id)alert
{
  result = 3;
  if (style > 4)
  {
    if ((style - 5) < 2)
    {
      return 0;
    }
  }

  else if (style)
  {
    if (style == 1 || style == 4)
    {
      if (alert)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    return 0;
  }

  return result;
}

- (void)_transitionToCameraStyle:(int64_t)style animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = sub_10009B590();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (style > 6)
    {
      v8 = @".Unknown";
    }

    else
    {
      v8 = *(&off_10165CD98 + style);
    }

    v9 = @"NO";
    if (animatedCopy)
    {
      v9 = @"YES";
    }

    v10 = v9;
    *buf = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Will configure camera style %@ (animated:%@)", buf, 0x16u);
  }

  if ([(ChromeNavigationDisplay *)self isCameraPanning])
  {
    [(ChromeNavigationDisplay *)self setCameraPanning:0 animated:animatedCopy];
  }

  cameraStyle = [(ChromeNavigationDisplayConfiguration *)self->_lastAppliedConfiguration cameraStyle];
  if (style > 2)
  {
    if ((style - 5) < 2)
    {
      [(ChromeNavigationDisplay *)self _stopNavigationCameraMotion];
      [(ChromeNavigationDisplay *)self _applyStaticCameraStyle];
      goto LABEL_23;
    }

    if (style == 3)
    {
      v12 = 2;
    }

    else
    {
      if (style != 4)
      {
        goto LABEL_23;
      }

      v12 = 3;
    }
  }

  else
  {
    if (!style)
    {
      return;
    }

    if (style == 1)
    {
      self->_currentCameraMode = 0;
      goto LABEL_23;
    }

    if (style != 2)
    {
      goto LABEL_23;
    }

    v12 = 1;
  }

  self->_currentCameraMode = v12;
LABEL_23:
  [(NavigationDisplay *)self->_navigationDisplay setNavigationCameraMode:self->_currentCameraMode];
  [(ChromeNavigationDisplay *)self _startNavigationCameraMotionIfNeededAnimated:animatedCopy];
  if (cameraStyle != style)
  {
    chromeViewController = [(ChromeNavigationDisplay *)self chromeViewController];
    [chromeViewController setNeedsUpdateMapInsets];

    mapView = [(ChromeNavigationDisplay *)self mapView];
    _mapLayer = [mapView _mapLayer];
    v16 = [_mapLayer carDisplayType] != 2;

    chromeViewController2 = [(ChromeNavigationDisplay *)self chromeViewController];
    routeAnnotationsController = [chromeViewController2 routeAnnotationsController];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100F0BABC;
    v19[3] = &unk_10165CD30;
    v19[4] = self;
    v19[5] = style;
    v20 = v16;
    [routeAnnotationsController updateConfigurationWithBlock:v19];
  }
}

- (void)setNonDefaultZoom:(BOOL)zoom animated:(BOOL)animated
{
  if (self->_nonDefaultZoom != zoom)
  {
    animatedCopy = animated;
    self->_nonDefaultZoom = zoom;
    delegate = [(ChromeNavigationDisplay *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(ChromeNavigationDisplay *)self delegate];
      v9 = self->_nonDefaultZoom || self->_cameraPanning;
      v10 = delegate2;
      [delegate2 chromeNavigationDisplay:self didChangePanning:v9 animated:animatedCopy];
    }
  }
}

- (void)setCameraPanning:(BOOL)panning animated:(BOOL)animated
{
  if (self->_cameraPanning != panning)
  {
    animatedCopy = animated;
    self->_cameraPanning = panning;
    if (!panning)
    {
      chromeViewController = [(ChromeNavigationDisplay *)self chromeViewController];
      [chromeViewController clearMapGesturesAndAnimations];
    }

    delegate = [(ChromeNavigationDisplay *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(ChromeNavigationDisplay *)self delegate];
      v10 = self->_nonDefaultZoom || self->_cameraPanning;
      v11 = delegate2;
      [delegate2 chromeNavigationDisplay:self didChangePanning:v10 animated:animatedCopy];
    }
  }
}

- (void)_stopNavigationCameraMotion
{
  v3 = sub_10009B590();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Will stop navigation camera", v4, 2u);
  }

  [(NavigationDisplay *)self->_navigationDisplay stopCameraMotion];
}

- (void)_pauseNavigationCameraMotion
{
  v3 = sub_10009B590();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Will pause navigation camera", v4, 2u);
  }

  [(NavigationDisplay *)self->_navigationDisplay pauseCameraMotion];
}

- (void)_startNavigationCameraMotionIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  configuration = [(ChromeNavigationDisplay *)self configuration];
  cameraPaused = [configuration cameraPaused];
  bOOLValue = [cameraPaused BOOLValue];

  if (bOOLValue)
  {
    v8 = sub_10009B590();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      configuration2 = [(ChromeNavigationDisplay *)self configuration];
      cameraPaused2 = [configuration2 cameraPaused];
      if ([cameraPaused2 BOOLValue])
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v12 = v11;
      if (animatedCopy)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v14 = v13;
      v25 = 138412546;
      v26 = v12;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Will not start navigation camera (cameraPaused:%@, animated:%@)", &v25, 0x16u);
    }
  }

  else
  {
    configuration3 = [(ChromeNavigationDisplay *)self configuration];
    requiresCameraMotion = [configuration3 requiresCameraMotion];

    if (requiresCameraMotion)
    {
      mapView = [(NavigationDisplay *)self->_navigationDisplay mapView];
      [mapView setUserTrackingMode:0];

      v18 = sub_10009B590();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = @"NO";
        if (animatedCopy)
        {
          v19 = @"YES";
        }

        v20 = v19;
        v25 = 138412290;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Will start navigation camera (animated:%@)", &v25, 0xCu);
      }

      [(ChromeNavigationDisplay *)self setCameraPanning:0];
      configuration4 = [(ChromeNavigationDisplay *)self configuration];
      -[ChromeNavigationDisplay _applyHorizontalCameraOffset:animated:](self, "_applyHorizontalCameraOffset:animated:", ([configuration4 cameraStyle] & 0xFFFFFFFFFFFFFFFDLL) != 0, animatedCopy);

      [(NavigationDisplay *)self->_navigationDisplay startMotion:animatedCopy];
    }

    else
    {
      v22 = sub_10009B590();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        configuration5 = [(ChromeNavigationDisplay *)self configuration];
        v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [configuration5 cameraStyle]);
        v25 = 138412290;
        v26 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Will not start navigation camera (cameraStyle:%@)", &v25, 0xCu);
      }
    }
  }
}

- (void)mapInsetsDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  configuration = [(ChromeNavigationDisplay *)self configuration];
  requiresCameraMotion = [configuration requiresCameraMotion];

  configuration2 = [(ChromeNavigationDisplay *)self configuration];
  cameraStyle = [configuration2 cameraStyle];
  if (requiresCameraMotion)
  {
    [(ChromeNavigationDisplay *)self _applyHorizontalCameraOffset:(cameraStyle & 0xFFFFFFFFFFFFFFFDLL) != 0 animated:animatedCopy];
  }

  else
  {
    if (cameraStyle == 5)
    {
    }

    else
    {
      configuration3 = [(ChromeNavigationDisplay *)self configuration];
      cameraStyle2 = [configuration3 cameraStyle];

      if (cameraStyle2 != 6)
      {
        return;
      }
    }

    [(ChromeNavigationDisplay *)self _applyStaticCameraStyle];
  }
}

- (void)_applyHorizontalCameraOffset:(BOOL)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  offsetCopy = offset;
  v7 = 0.0;
  if (offset && self->_navigationDisplay)
  {
    [(ChromeNavigationDisplay *)self _horizontalCameraOffset];
    v7 = v8;
  }

  if (self->_currentCameraOffset != v7)
  {
    self->_currentCameraOffset = v7;
    v9 = &kCAMediaTimingFunctionEaseInEaseOut;
    if (animatedCopy)
    {
      v10 = 2.5;
    }

    else
    {
      v10 = 0.0;
    }

    if (!offsetCopy)
    {
      v9 = &kCAMediaTimingFunctionDefault;
    }

    v11 = *v9;
    v12 = sub_10009B590();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Will set camera offset (offset:%lf)", &v17, 0xCu);
    }

    chromeViewController = [(ChromeNavigationDisplay *)self chromeViewController];
    mapView = [chromeViewController mapView];

    _mapLayer = [mapView _mapLayer];
    v16 = [CAMediaTimingFunction functionWithName:v11];

    [_mapLayer setCameraHorizontalOffset:v16 duration:v7 timingFunction:v10];
  }
}

- (void)recenterCameraAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(ChromeNavigationDisplay *)self setCameraPanning:0 animated:animated];
  [(ChromeNavigationDisplay *)self setNonDefaultZoom:0 animated:animatedCopy];
  v5 = sub_100798240();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mapView = [(ChromeNavigationDisplay *)self mapView];
    v13 = 136315394;
    v14 = "[ChromeNavigationDisplay recenterCameraAnimated:]";
    v15 = 2114;
    v16 = mapView;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s, navigationCameraReturnToPuck! on mapView: %{public}@", &v13, 0x16u);
  }

  configuration = [(ChromeNavigationDisplay *)self configuration];
  requiresCameraMotion = [configuration requiresCameraMotion];

  if (requiresCameraMotion)
  {
    mapView2 = [(ChromeNavigationDisplay *)self mapView];
    [mapView2 navigationCameraReturnToPuck];

    return;
  }

  configuration2 = [(ChromeNavigationDisplay *)self configuration];
  if ([configuration2 cameraStyle] == 5)
  {
  }

  else
  {
    configuration3 = [(ChromeNavigationDisplay *)self configuration];
    cameraStyle = [configuration3 cameraStyle];

    if (cameraStyle != 6)
    {
      return;
    }
  }

  [(ChromeNavigationDisplay *)self _applyStaticCameraStyle];
}

- (BOOL)_isAuthorizedForPreciseLocation
{
  v2 = +[MKLocationManager sharedLocationManager];
  isLocationServicesApproved = [v2 isLocationServicesApproved];
  isAuthorizedForPreciseLocation = [v2 isAuthorizedForPreciseLocation];

  return isLocationServicesApproved & isAuthorizedForPreciseLocation;
}

- (BOOL)_isRunningFullGuidance
{
  v2 = +[MNNavigationService sharedService];
  isInNavigatingState = [v2 isInNavigatingState];

  if (!isInNavigatingState)
  {
    return 0;
  }

  v4 = +[MNNavigationService sharedService];
  v5 = [v4 navigationType] == 3;

  return v5;
}

- (void)_locationManagerApprovalDidChange:(id)change
{
  if (![(ChromeNavigationDisplay *)self _isRunningFullGuidance])
  {
    _isAuthorizedForPreciseLocation = [(ChromeNavigationDisplay *)self _isAuthorizedForPreciseLocation];
    mapView = [(ChromeNavigationDisplay *)self mapView];
    [mapView _setShowHeadingIndicatorForStepping:_isAuthorizedForPreciseLocation];
  }
}

- (void)_prepareNavigationDisplay
{
  if ([(ChromeNavigationDisplay *)self isSuppressed])
  {
    mapView = sub_10009B590();
    if (os_log_type_enabled(mapView, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, mapView, OS_LOG_TYPE_INFO, "Will not prepare navigation display, currently paused", buf, 2u);
    }
  }

  else
  {
    if (!self->_navigationDisplay)
    {
      v4 = objc_alloc_init(NavigationDisplay);
      navigationDisplay = self->_navigationDisplay;
      self->_navigationDisplay = v4;

      [(NavigationDisplay *)self->_navigationDisplay setDelegate:self];
    }

    mapView = [(ChromeNavigationDisplay *)self mapView];
    mapView2 = [(NavigationDisplay *)self->_navigationDisplay mapView];

    if (mapView != mapView2)
    {
      self->_mapClearsUserLocationOnReset = [mapView _clearUserLocationOnLocationReset];
    }

    chromeViewController = [(ChromeNavigationDisplay *)self chromeViewController];
    [(NavigationDisplay *)self->_navigationDisplay setChromeViewController:chromeViewController];

    v8 = +[MNNavigationService sharedService];
    isInNavigatingState = [v8 isInNavigatingState];

    if (isInNavigatingState)
    {
      v10 = +[MNNavigationService sharedService];
      route = [v10 route];
      destination = [route destination];

      [(NavigationDisplay *)self->_navigationDisplay setDestinationWaypoint:destination];
    }

    if ([(ChromeNavigationDisplay *)self _isRunningFullGuidance])
    {
      _isAuthorizedForPreciseLocation = 0;
    }

    else
    {
      [mapView _setAlwaysShowHeadingIndicatorIfSupported:0];
      _isAuthorizedForPreciseLocation = [(ChromeNavigationDisplay *)self _isAuthorizedForPreciseLocation];
    }

    [mapView _setShowHeadingIndicatorForStepping:_isAuthorizedForPreciseLocation];
    carChromeViewController = [(ChromeNavigationDisplay *)self carChromeViewController];

    v15 = self->_navigationDisplay;
    if (carChromeViewController)
    {
      [(NavigationDisplay *)v15 setSky:2];
      [mapView _setCanSelectPOIs:0];
      [mapView setShowsTraffic:0];
      v16 = self->_navigationDisplay;
      transportType = 0;
    }

    else
    {
      [(NavigationDisplay *)v15 setSky:0];
      v18 = self->_navigationDisplay;
      transportType = [(GEOComposedRoute *)self->_route transportType];
      v16 = v18;
    }

    [(NavigationDisplay *)v16 setTransportType:transportType];
    chromeViewController2 = [(ChromeNavigationDisplay *)self chromeViewController];
    userLocationView = [chromeViewController2 userLocationView];
    [(NavigationDisplay *)self->_navigationDisplay setUserLocationAnnotationView:userLocationView];

    userLocationAnnotationView = [(NavigationDisplay *)self->_navigationDisplay userLocationAnnotationView];
    [userLocationAnnotationView setInNavMode:1 animated:0];

    [mapView _setClearUserLocationOnLocationReset:0];
    [mapView _setShouldSplitRouteLine:1];
    if (!self->_locationAuthorisationApprovalObserver)
    {
      objc_initWeak(buf, self);
      v22 = +[NSNotificationCenter defaultCenter];
      v23 = MKLocationManagerApprovalDidChangeNotification;
      v24 = +[NSOperationQueue mainQueue];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100F0C9B8;
      v27[3] = &unk_10165FBE8;
      objc_copyWeak(&v28, buf);
      v25 = [v22 addObserverForName:v23 object:0 queue:v24 usingBlock:v27];
      locationAuthorisationApprovalObserver = self->_locationAuthorisationApprovalObserver;
      self->_locationAuthorisationApprovalObserver = v25;

      objc_destroyWeak(&v28);
      objc_destroyWeak(buf);
    }
  }
}

- (void)_cleanupNavigationDisplay
{
  [(ChromeNavigationDisplay *)self _applyHorizontalCameraOffset:0 animated:0];
  [(ChromeNavigationDisplay *)self _stopNavigationCameraMotion];
  if (self->_locationAuthorisationApprovalObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_locationAuthorisationApprovalObserver];

    locationAuthorisationApprovalObserver = self->_locationAuthorisationApprovalObserver;
    self->_locationAuthorisationApprovalObserver = 0;
  }

  lastAppliedConfiguration = self->_lastAppliedConfiguration;
  self->_lastAppliedConfiguration = 0;

  transitStepFramer = self->_transitStepFramer;
  self->_transitStepFramer = 0;

  if ([(GEOComposedRoute *)self->_route transportType])
  {
    v7 = [(GEOComposedRoute *)self->_route transportType]== 3;
  }

  else
  {
    v7 = 1;
  }

  mapView = [(ChromeNavigationDisplay *)self mapView];
  [mapView setShowsTraffic:v7];

  mapView2 = [(NavigationDisplay *)self->_navigationDisplay mapView];
  _mapLayer = [mapView2 _mapLayer];
  [_mapLayer setFocusedLabelsPolyline:0];

  mapClearsUserLocationOnReset = self->_mapClearsUserLocationOnReset;
  mapView3 = [(NavigationDisplay *)self->_navigationDisplay mapView];
  [mapView3 _setClearUserLocationOnLocationReset:mapClearsUserLocationOnReset];

  mapView4 = [(NavigationDisplay *)self->_navigationDisplay mapView];
  [mapView4 _setShouldSplitRouteLine:0];

  [(NavigationDisplay *)self->_navigationDisplay clearAllAnnotations];
  cameraController = [(NavigationDisplay *)self->_navigationDisplay cameraController];
  [cameraController resetMapViewNavigationState];

  userLocationAnnotationView = [(NavigationDisplay *)self->_navigationDisplay userLocationAnnotationView];
  [userLocationAnnotationView setInNavMode:0 animated:0];

  [(NavigationDisplay *)self->_navigationDisplay setUserLocationAnnotationView:0];
  [(NavigationDisplay *)self->_navigationDisplay setChromeViewController:0];
  [(NavigationDisplay *)self->_navigationDisplay setDelegate:0];
  navigationDisplay = self->_navigationDisplay;
  self->_navigationDisplay = 0;
}

- (void)startRunningNavigationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  isRunning = self->_isRunning;
  v6 = sub_10009B590();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (isRunning)
  {
    if (v7)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Will not start running navigation, already running", &v11, 2u);
    }
  }

  else
  {
    if (v7)
    {
      v8 = @"NO";
      if (animatedCopy)
      {
        v8 = @"YES";
      }

      v9 = v8;
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Will start running navigation (animated:%@)", &v11, 0xCu);
    }

    self->_isRunning = 1;
    [(ChromeNavigationDisplay *)self _captureCurrentNavigationState];
    self->_currentStepIndex = 0x7FFFFFFFFFFFFFFFLL;
    [(ChromeNavigationDisplay *)self _prepareNavigationDisplay];
    configuration = [(ChromeNavigationDisplay *)self configuration];
    [(ChromeNavigationDisplay *)self _setConfiguration:configuration animated:animatedCopy];

    v6 = +[MNNavigationService sharedService];
    [v6 registerObserver:self];
  }
}

- (void)stopRunningNavigationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  isRunning = self->_isRunning;
  v6 = sub_10009B590();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (isRunning)
  {
    if (v7)
    {
      v8 = @"NO";
      if (animatedCopy)
      {
        v8 = @"YES";
      }

      v9 = v8;
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Will stop running navigation (animated:%@)", &v13, 0xCu);
    }

    v10 = +[MNNavigationService sharedService];
    [v10 unregisterObserver:self];

    [(ChromeNavigationDisplay *)self _setRoute:0];
    [(ChromeNavigationDisplay *)self _cleanupNavigationDisplay];
    self->_isRunning = 0;
  }

  else
  {
    if (v7)
    {
      v11 = @"NO";
      if (animatedCopy)
      {
        v11 = @"YES";
      }

      v12 = v11;
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Will not stop running navigation, not running (animated:%@)", &v13, 0xCu);
    }
  }
}

- (void)setSuppressed:(BOOL)suppressed animated:(BOOL)animated
{
  if (self->_suppressed == suppressed)
  {
    return;
  }

  animatedCopy = animated;
  suppressedCopy = suppressed;
  self->_suppressed = suppressed;
  isRunning = self->_isRunning;
  configuration2 = sub_10009B590();
  v9 = os_log_type_enabled(configuration2, OS_LOG_TYPE_INFO);
  if (!isRunning)
  {
    if (v9)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, configuration2, OS_LOG_TYPE_INFO, "Not navigating, will not pause", &v12, 2u);
    }

    goto LABEL_15;
  }

  if (!suppressedCopy)
  {
    if (v9)
    {
      configuration = [(ChromeNavigationDisplay *)self configuration];
      v12 = 138412290;
      v13 = configuration;
      _os_log_impl(&_mh_execute_header, configuration2, OS_LOG_TYPE_INFO, "Will unsuppress navigation display and unpause camera display by refreshing current configuration (configuration:%@)", &v12, 0xCu);
    }

    if (self->_route)
    {
      [(ChromeNavigationDisplay *)self _updateForCurrentRoute];
    }

    else
    {
      [(ChromeNavigationDisplay *)self _clearAnnotations];
    }

    [(ChromeNavigationDisplay *)self _prepareNavigationDisplay];
    configuration2 = [(ChromeNavigationDisplay *)self configuration];
    [(ChromeNavigationDisplay *)self _setConfiguration:configuration2 animated:animatedCopy];
LABEL_15:

    return;
  }

  if (v9)
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, configuration2, OS_LOG_TYPE_INFO, "Will suppress navigation display and pause camera", &v12, 2u);
  }

  lastAppliedConfiguration = self->_lastAppliedConfiguration;
  self->_lastAppliedConfiguration = 0;

  [(ChromeNavigationDisplay *)self _pauseNavigationCameraMotion];
}

- (void)zoomOut
{
  v3 = sub_10009B590();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Will zoom out", v7, 2u);
  }

  configuration = [(ChromeNavigationDisplay *)self configuration];
  cameraStyle = [configuration cameraStyle];

  if ((cameraStyle - 1) <= 5)
  {
    mapView = [(NavigationDisplay *)self->_navigationDisplay mapView];
    [mapView _zoomOut];
  }
}

- (void)zoomIn
{
  v3 = sub_10009B590();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Will zoom in", v7, 2u);
  }

  configuration = [(ChromeNavigationDisplay *)self configuration];
  cameraStyle = [configuration cameraStyle];

  if ((cameraStyle - 1) <= 5)
  {
    mapView = [(NavigationDisplay *)self->_navigationDisplay mapView];
    [mapView _zoomIn];
  }
}

- (void)_ioHIDRepeatCurrentGuidance:(id)guidance
{
  v3 = sub_10009B590();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "IOHID has requested repeat current guidance", v5, 2u);
  }

  v4 = +[MNNavigationService sharedService];
  [v4 repeatCurrentGuidance:0];
}

- (void)setTrafficAlert:(id)alert
{
  alertCopy = alert;
  alertID = [(MNTrafficIncidentAlert *)self->_trafficAlert alertID];
  alertID2 = [alertCopy alertID];
  v7 = alertID;
  v8 = alertID2;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      objc_storeStrong(&self->_trafficAlert, alert);
      cameraController = [(ChromeNavigationDisplay *)self cameraController];
      [cameraController setTrafficIncidentAlert:alertCopy];

      [(ChromeNavigationDisplay *)self _updateDirectionsAnnotationManagerDisplayedRoutes];
    }
  }
}

- (void)_updateWithMatchedLocation:(id)location
{
  locationCopy = location;
  chromeViewController = [(ChromeNavigationDisplay *)self chromeViewController];
  routeAnnotationsController = [chromeViewController routeAnnotationsController];
  [routeAnnotationsController updateMatchedLocation:locationCopy];

  [(NavigationDisplay *)self->_navigationDisplay updateWithLocation:locationCopy];
}

- (void)_clearAnnotations
{
  v3 = sub_10009B590();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Clearing annotations", v7, 2u);
  }

  chromeViewController = [(ChromeNavigationDisplay *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];
  [searchPinsManager clearDirectionsPins];

  chromeViewController2 = [(ChromeNavigationDisplay *)self chromeViewController];
  [chromeViewController2 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (void)_updateDirectionsAnnotationManagerDisplayedRoutes
{
  chromeViewController = [(ChromeNavigationDisplay *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (BOOL)updateRouteAnnotationsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy updateNavConfigurationWithCurrentRoute:self->_route incidentAlert:self->_trafficAlert];
  mapView = [(ChromeNavigationDisplay *)self mapView];
  _mapLayer = [mapView _mapLayer];
  v7 = [_mapLayer carDisplayType] != 2;

  configuration = [(ChromeNavigationDisplay *)self configuration];
  if ([configuration cameraStyle] != 2 && !self->_trafficAlert)
  {
    v7 = 0;
  }

  [configurationCopy setAlternateRoutesEnabled:v7];

  cameraStyle = [(ChromeNavigationDisplayConfiguration *)self->_configuration cameraStyle];
  trafficAlert = [(ChromeNavigationDisplay *)self trafficAlert];
  [configurationCopy setRouteMarkerOptions:{-[ChromeNavigationDisplay _routeMarkerOptionsForCameraStyle:incidentAlert:](self, "_routeMarkerOptionsForCameraStyle:incidentAlert:", cameraStyle, trafficAlert)}];

  v11 = +[MNNavigationService sharedService];
  arrivalInfo = [v11 arrivalInfo];
  v13 = arrivalInfo;
  if (arrivalInfo && [arrivalInfo isInArrivalState])
  {
    destination = [v13 destination];
    v15 = 2;
  }

  else
  {
    v16 = -[GEOComposedRoute legIndexForStepIndex:](self->_route, "legIndexForStepIndex:", [v11 stepIndex]);
    legs = [(GEOComposedRoute *)self->_route legs];
    if (v16 >= [legs count])
    {
      v19 = 0;
    }

    else
    {
      legs2 = [(GEOComposedRoute *)self->_route legs];
      v19 = [legs2 objectAtIndexedSubscript:v16];
    }

    destination = [v19 destination];
    v15 = destination != 0;
  }

  [configurationCopy setCurrentNavigationWaypoint:destination];
  [configurationCopy setProximityToCurrentNavigationWaypoint:v15];
  if (self->_route)
  {
    delegate = [(ChromeNavigationDisplay *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      delegate2 = [(ChromeNavigationDisplay *)self delegate];
      [delegate2 chromeNavigationDisplayDidRenderRoute:self];
    }
  }

  return 1;
}

- (void)_updateForCurrentRoute
{
  if ([(ChromeNavigationDisplay *)self isSuppressed])
  {
    v3 = sub_10009B590();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      v4 = "Will not update route, currently suppressed";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, &v9, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  route = self->_route;
  v3 = sub_10009B590();
  v6 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (!route)
  {
    if (v6)
    {
      LOWORD(v9) = 0;
      v4 = "Will not update for current route, there is no route";
      goto LABEL_10;
    }

LABEL_11:

    return;
  }

  if (v6)
  {
    uniqueRouteID = [(GEOComposedRoute *)self->_route uniqueRouteID];
    uUIDString = [uniqueRouteID UUIDString];
    v9 = 138412290;
    v10 = uUIDString;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Updating for the current route: %@", &v9, 0xCu);
  }

  [(ChromeNavigationDisplay *)self _updateDirectionsAnnotationManagerDisplayedRoutes];
}

- (void)_setRoute:(id)route
{
  routeCopy = route;
  v5 = routeCopy;
  if (routeCopy)
  {
    if ([(GEOComposedRoute *)routeCopy transportType])
    {
      carChromeViewController = [(ChromeNavigationDisplay *)self carChromeViewController];

      if (carChromeViewController)
      {
        v7 = sub_10009B590();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Trying to display a non-driving route in ChromeNavigationDisplay while in CarPlay, ignoring it", &v12, 2u);
        }

        v5 = 0;
      }
    }
  }

  p_route = &self->_route;
  if (self->_route != v5)
  {
    objc_storeStrong(&self->_route, v5);
    v9 = sub_10009B590();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      uniqueRouteID = [(GEOComposedRoute *)*p_route uniqueRouteID];
      uUIDString = [uniqueRouteID UUIDString];
      v12 = 138412290;
      v13 = uUIDString;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Got a new route: %@", &v12, 0xCu);
    }

    if (*p_route)
    {
      [(ChromeNavigationDisplay *)self _updateWithRouteGeniusEntry:0];
      [(ChromeNavigationDisplay *)self _updateForCurrentRoute];
    }

    else
    {
      [(ChromeNavigationDisplay *)self _clearAnnotations];
    }
  }
}

- (void)_captureCurrentNavigationState
{
  v3 = +[MNNavigationService sharedService];
  if ([v3 isInNavigatingState] && (objc_msgSend(v3, "route"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    if (self->_route != v4)
    {
      v6 = sub_10009B590();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        destination = [(GEOComposedRoute *)v5 destination];
        navDisplayName = [destination navDisplayName];
        v10 = 138412290;
        v11 = navDisplayName;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Will capture current navigation state (route:%@)", &v10, 0xCu);
      }

      [(ChromeNavigationDisplay *)self _setRoute:v5];
    }
  }

  else
  {
    v9 = sub_10009B590();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Will reset navigation state, not navigating", &v10, 2u);
    }

    [(ChromeNavigationDisplay *)self _setRoute:0];
    v5 = 0;
  }

  self->_hasArrived = [v3 navigationState] == 6;
}

- (void)_updateWithRouteGeniusEntry:(id)entry
{
  [(NavigationDisplay *)self->_navigationDisplay setRouteGeniusEntry:?];
  if (entry)
  {

    [(ChromeNavigationDisplay *)self updateWithRoute:0];
  }
}

- (void)updateWithRoute:(id)route
{
  routeCopy = route;
  [(NavigationDisplay *)self->_navigationDisplay updateWithRoute:routeCopy];
  if (self->_route == routeCopy)
  {
    [(ChromeNavigationDisplay *)self _updateForCurrentRoute];
  }

  else
  {
    [(ChromeNavigationDisplay *)self _setRoute:routeCopy];
  }
}

- (void)_setConfiguration:(id)configuration animated:(BOOL)animated
{
  animatedCopy = animated;
  configurationCopy = configuration;
  cameraStyle = [configurationCopy cameraStyle];
  if (!cameraStyle)
  {
    v8 = [configurationCopy copy];

    [v8 setCameraStyle:{-[ChromeNavigationDisplayConfiguration cameraStyle](self->_configuration, "cameraStyle")}];
    configurationCopy = v8;
  }

  objc_storeStrong(&self->_configuration, configurationCopy);
  v9 = sub_10009B590();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@", &v20, 0xCu);
  }

  if ([(ChromeNavigationDisplay *)self isSuppressed])
  {
    p_super = sub_10009B590();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      v11 = "Will not update for current configuration, currently suppressed";
LABEL_18:
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, v11, &v20, 2u);
    }
  }

  else if (self->_navigationDisplay)
  {
    if (cameraStyle)
    {
      [(ChromeNavigationDisplay *)self _transitionToCameraStyle:cameraStyle animated:animatedCopy];
    }

    routeGeniusEntry = [(ChromeNavigationDisplayConfiguration *)self->_configuration routeGeniusEntry];
    [(ChromeNavigationDisplay *)self _updateWithRouteGeniusEntry:routeGeniusEntry];

    cameraPaused = [(ChromeNavigationDisplayConfiguration *)self->_configuration cameraPaused];

    if (cameraPaused)
    {
      cameraPaused2 = [(ChromeNavigationDisplayConfiguration *)self->_configuration cameraPaused];
      bOOLValue = [cameraPaused2 BOOLValue];

      if (bOOLValue)
      {
        v16 = sub_10009B590();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Will force stop navigation camera motion", &v20, 2u);
        }

        [(ChromeNavigationDisplay *)self setCameraPanning:0 animated:animatedCopy];
        [(ChromeNavigationDisplay *)self _stopNavigationCameraMotion];
      }

      else
      {
        [(ChromeNavigationDisplay *)self _startNavigationCameraMotionIfNeededAnimated:animatedCopy];
      }
    }

    showsRoadLabel = [(ChromeNavigationDisplayConfiguration *)self->_configuration showsRoadLabel];

    if (showsRoadLabel)
    {
      showsRoadLabel2 = [(ChromeNavigationDisplayConfiguration *)self->_configuration showsRoadLabel];
      -[NavigationDisplay setShowsRoadLabel:](self->_navigationDisplay, "setShowsRoadLabel:", [showsRoadLabel2 BOOLValue]);
    }

    else
    {
      [(NavigationDisplay *)self->_navigationDisplay setShowsRoadLabel:1];
    }

    v19 = [(ChromeNavigationDisplayConfiguration *)self->_configuration copy];
    p_super = &self->_lastAppliedConfiguration->super;
    self->_lastAppliedConfiguration = v19;
  }

  else
  {
    p_super = sub_10009B590();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      v11 = "Will not update for current configuration, navigation display not ready";
      goto LABEL_18;
    }
  }
}

- (void)configureDisplay:(id)display animated:(BOOL)animated
{
  animatedCopy = animated;
  displayCopy = display;
  configuration = [(ChromeNavigationDisplay *)self configuration];
  v8 = [configuration copy];
  v9 = v8;
  if (v8)
  {
    defaultConfiguration = v8;
  }

  else
  {
    defaultConfiguration = [objc_opt_class() defaultConfiguration];
  }

  v15 = defaultConfiguration;

  displayCopy[2](displayCopy, v15);
  [(ChromeNavigationDisplay *)self _setConfiguration:v15 animated:animatedCopy];
  delegate = [(ChromeNavigationDisplay *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(ChromeNavigationDisplay *)self delegate];
    v14 = [(ChromeNavigationDisplayConfiguration *)self->_configuration copy];
    [delegate2 chromeNavigationDisplay:self configurationDidChange:v14];
  }
}

- (ChromeNavigationDisplay)initWithChromeViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = ChromeNavigationDisplay;
  v5 = [(ChromeNavigationDisplay *)&v9 init];
  if (v5)
  {
    defaultConfiguration = [objc_opt_class() defaultConfiguration];
    configuration = v5->_configuration;
    v5->_configuration = defaultConfiguration;

    [(ChromeNavigationDisplay *)v5 setChromeViewController:controllerCopy];
  }

  return v5;
}

- (void)dealloc
{
  [(ChromeNavigationDisplay *)self stopRunningNavigationAnimated:0];
  v3.receiver = self;
  v3.super_class = ChromeNavigationDisplay;
  [(ChromeNavigationDisplay *)&v3 dealloc];
}

+ (id)defaultConfiguration
{
  v2 = objc_opt_new();
  [v2 setCameraStyle:1];
  [v2 setCameraPaused:&__kCFBooleanFalse];
  [v2 setShowsRoadLabel:&__kCFBooleanTrue];
  [v2 setStaticMapRect:{MKMapRectNull.origin.x, MKMapRectNull.origin.y, MKMapRectNull.size.width, MKMapRectNull.size.height}];

  return v2;
}

@end