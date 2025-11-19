@interface ChromeNavigationDisplay
+ (id)defaultConfiguration;
- (BOOL)_isAuthorizedForPreciseLocation;
- (BOOL)_isRunningFullGuidance;
- (BOOL)mapView:(id)a3 shouldSelectLabelMarker:(id)a4;
- (BOOL)updateRouteAnnotationsConfiguration:(id)a3;
- (ChromeNavigationDisplay)initWithChromeViewController:(id)a3;
- (ChromeNavigationDisplayDelegate)delegate;
- (ChromeViewController)chromeViewController;
- (MKMapView)mapView;
- (double)_horizontalCameraOffset;
- (unint64_t)_routeMarkerOptionsForCameraStyle:(int64_t)a3 incidentAlert:(id)a4;
- (void)_applyHorizontalCameraOffset:(BOOL)a3 animated:(BOOL)a4;
- (void)_applyStaticCameraStyle;
- (void)_captureCurrentNavigationState;
- (void)_cleanupNavigationDisplay;
- (void)_clearAnnotations;
- (void)_ioHIDRepeatCurrentGuidance:(id)a3;
- (void)_locationManagerApprovalDidChange:(id)a3;
- (void)_pauseNavigationCameraMotion;
- (void)_prepareNavigationDisplay;
- (void)_setConfiguration:(id)a3 animated:(BOOL)a4;
- (void)_setRoute:(id)a3;
- (void)_startNavigationCameraMotionIfNeededAnimated:(BOOL)a3;
- (void)_stopNavigationCameraMotion;
- (void)_transitionToCameraStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)_updateDirectionsAnnotationManagerDisplayedRoutes;
- (void)_updateForCurrentRoute;
- (void)_updateWithMatchedLocation:(id)a3;
- (void)_updateWithRouteGeniusEntry:(id)a3;
- (void)configureDisplay:(id)a3 animated:(BOOL)a4;
- (void)dealloc;
- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4;
- (void)mapInsetsDidChangeAnimated:(BOOL)a3;
- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8;
- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5;
- (void)navigationDisplay:(id)a3 didChangeUserTrackingMode:(int64_t)a4;
- (void)navigationService:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didDismissTrafficIncidentAlert:(id)a4;
- (void)navigationService:(id)a3 didInvalidateTrafficIncidentAlert:(id)a4;
- (void)navigationService:(id)a3 didReceiveTrafficIncidentAlert:(id)a4 responseCallback:(id)a5;
- (void)navigationService:(id)a3 didUpdateTrafficForRouteID:(id)a4;
- (void)navigationService:(id)a3 didUpdateTrafficIncidentAlert:(id)a4;
- (void)navigationService:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)recenterCameraAnimated:(BOOL)a3;
- (void)setCameraPanning:(BOOL)a3 animated:(BOOL)a4;
- (void)setNonDefaultZoom:(BOOL)a3 animated:(BOOL)a4;
- (void)setSuppressed:(BOOL)a3 animated:(BOOL)a4;
- (void)setTrafficAlert:(id)a3;
- (void)startRunningNavigationAnimated:(BOOL)a3;
- (void)stopRunningNavigationAnimated:(BOOL)a3;
- (void)updateWithRoute:(id)a3;
- (void)zoomIn;
- (void)zoomOut;
@end

@implementation ChromeNavigationDisplay

- (double)_horizontalCameraOffset
{
  v3 = [(ChromeNavigationDisplay *)self chromeViewController];
  v4 = [v3 view];
  [v4 layoutIfNeeded];

  v5 = [(ChromeNavigationDisplay *)self chromeViewController];
  [v5 unobscuredMapContentBoundsInContainingView];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(ChromeNavigationDisplay *)self chromeViewController];
  v15 = [v14 mapView];
  [v15 frame];
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
  v2 = [(ChromeNavigationDisplay *)self chromeViewController];
  v3 = [v2 mapView];

  return v3;
}

- (ChromeNavigationDisplayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)navigationService:(id)a3 didUpdateTrafficForRouteID:(id)a4
{
  v5 = a4;
  v6 = [(ChromeNavigationDisplay *)self chromeViewController];
  v7 = [v6 routeAnnotationsController];
  v8 = [v7 configuration];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 routes];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [v14 uniqueRouteID];
        v16 = [v15 isEqual:v5];

        if (v16)
        {
          [v14 _maps_refreshTrafficIncidentsOnRoute];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)navigationService:(id)a3 didDismissTrafficIncidentAlert:(id)a4
{
  v4 = a4;
  v5 = sub_10009B590();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 alertTitles];
    v7 = [v6 firstObject];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(alert:%@)", &v8, 0xCu);
  }
}

- (void)navigationService:(id)a3 didInvalidateTrafficIncidentAlert:(id)a4
{
  v4 = a4;
  v5 = sub_10009B590();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 alertTitles];
    v7 = [v6 firstObject];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(alert:%@)", &v8, 0xCu);
  }
}

- (void)navigationService:(id)a3 didUpdateTrafficIncidentAlert:(id)a4
{
  v4 = a4;
  v5 = sub_10009B590();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 alertTitles];
    v7 = [v6 firstObject];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(alert:%@)", &v8, 0xCu);
  }
}

- (void)navigationService:(id)a3 didReceiveTrafficIncidentAlert:(id)a4 responseCallback:(id)a5
{
  v5 = a4;
  v6 = sub_10009B590();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 alertTitles];
    v8 = [v7 firstObject];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(alert:%@)", &v9, 0xCu);
  }
}

- (void)navigationService:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v7 = a3;
  [(ChromeNavigationDisplay *)self _updateDirectionsAnnotationManagerDisplayedRoutes];
  v8 = [v7 route];

  self->_hasArrived = [v8 isLegIndexOfLastLeg:a5];
}

- (BOOL)mapView:(id)a3 shouldSelectLabelMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ChromeNavigationDisplay *)self chromeViewController];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(ChromeNavigationDisplay *)self chromeViewController];
    v11 = [v10 mapView:v6 shouldSelectLabelMarker:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  if ((MNNavigationServiceStateChangedToNavigating() & 1) != 0 || MNNavigationServiceStateChangedFromNavigatingToStopped())
  {

    [(ChromeNavigationDisplay *)self _captureCurrentNavigationState];
  }

  else if (a5 != a4 && (a5 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {

    [(ChromeNavigationDisplay *)self _updateDirectionsAnnotationManagerDisplayedRoutes];
  }
}

- (void)navigationService:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  if (MNNavigationServiceStateChangedToNavigating())
  {

    [(ChromeNavigationDisplay *)self setCameraPanning:0 animated:0];
  }
}

- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v7 = [(ChromeNavigationDisplay *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(ChromeNavigationDisplay *)self delegate];
    [v9 chromeNavigationDisplay:self userDidTapMap:v10 atPoint:{x, y}];
  }
}

- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8
{
  if (!a4)
  {
    [(ChromeNavigationDisplay *)self mapViewNavigationCameraHasStoppedPanning:a3, 0, a5, a6, a7, a8];
  }
}

- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5
{
  if (!a4)
  {
    [(ChromeNavigationDisplay *)self mapViewNavigationCameraHasStartedPanning:a3, 0, a5];
  }
}

- (void)navigationDisplay:(id)a3 didChangeUserTrackingMode:(int64_t)a4
{
  v5 = +[UIApplication sharedMapsDelegate];
  [v5 setTrackingMode:a4 monitorBatteryState:0];
}

- (void)_applyStaticCameraStyle
{
  if ([(NavigationDisplay *)self->_navigationDisplay isTracking])
  {
    [(NavigationDisplay *)self->_navigationDisplay stopCameraMotion];
  }

  v3 = [(ChromeNavigationDisplay *)self configuration];
  v4 = [v3 cameraStyle] == 5;

  v5 = [(ChromeNavigationDisplay *)self configuration];
  v6 = v5;
  if (!v4)
  {
    v10 = [v5 cameraStyle];

    if (v10 != 6)
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

    v11 = [(ChromeNavigationDisplay *)self configuration];
    v12 = [v11 staticMapCamera];

    if (v12)
    {
      v13 = sub_10009B590();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v50 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Will apply static map camera: %{private}@", buf, 0xCu);
      }

      v14 = [(ChromeNavigationDisplay *)self mapView];
      [v14 setCamera:v12 animated:1];
    }

    else
    {
      v21 = [(ChromeNavigationDisplay *)self configuration];
      [v21 staticMapRect];
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
          v12 = 0;
          goto LABEL_37;
        }

        v14 = sub_10006D178();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v32 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v50 = v32;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
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

        v14 = [(ChromeNavigationDisplay *)self mapView];
        [v14 setVisibleMapRect:1 animated:v23, v25, v27, v29];
      }
    }

LABEL_37:
    return;
  }

  v7 = [v5 staticStepIndex];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = +[MNNavigationService sharedService];
    v9 = [v8 displayedStepIndex];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [v8 stepIndex];
    }
  }

  else
  {
    v8 = [(ChromeNavigationDisplay *)self configuration];
    v9 = [v8 staticStepIndex];
  }

  v15 = v9;

  if (v15 < [(GEOComposedRoute *)self->_route stepsCount])
  {
    v12 = [(GEOComposedRoute *)self->_route stepAtIndex:v15];
    if ([(GEOComposedRoute *)self->_route transportType]== 1)
    {
      if (!self->_transitStepFramer)
      {
        v16 = objc_alloc_init(TransitSteppingCameraFramer);
        transitStepFramer = self->_transitStepFramer;
        self->_transitStepFramer = v16;
      }

      v18 = [(ChromeNavigationDisplay *)self configuration];
      v19 = [v18 cameraStyle];

      objc_initWeak(buf, self);
      v20 = self->_transitStepFramer;
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100F0B6AC;
      v47[3] = &unk_10165CD58;
      objc_copyWeak(v48, buf);
      v48[1] = v19;
      [(TransitSteppingCameraFramer *)v20 rectForStep:v12 currentStepIndex:v15 handler:v47];
      objc_destroyWeak(v48);
      objc_destroyWeak(buf);
    }

    else
    {
      v33 = +[MNNavigationService sharedService];
      if ([v33 navigationType] == 3)
      {
        v34 = sub_100AF171C(v12);
      }

      else
      {
        v34 = sub_100AF1870(v12);
      }

      v39 = v34;
      v40 = v35;
      v41 = v36;
      v42 = v37;
      if (v34 != MKMapRectNull.origin.x || v35 != MKMapRectNull.origin.y)
      {
        v43 = [(ChromeNavigationDisplay *)self mapView];
        [v43 animateToVisibleMapRect:1 usingDefaultAnimationDuration:0 completion:{v39, v40, v41, v42}];
      }
    }

    goto LABEL_37;
  }
}

- (unint64_t)_routeMarkerOptionsForCameraStyle:(int64_t)a3 incidentAlert:(id)a4
{
  result = 3;
  if (a3 > 4)
  {
    if ((a3 - 5) < 2)
    {
      return 0;
    }
  }

  else if (a3)
  {
    if (a3 == 1 || a3 == 4)
    {
      if (a4)
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

- (void)_transitionToCameraStyle:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = sub_10009B590();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 6)
    {
      v8 = @".Unknown";
    }

    else
    {
      v8 = *(&off_10165CD98 + a3);
    }

    v9 = @"NO";
    if (v4)
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
    [(ChromeNavigationDisplay *)self setCameraPanning:0 animated:v4];
  }

  v11 = [(ChromeNavigationDisplayConfiguration *)self->_lastAppliedConfiguration cameraStyle];
  if (a3 > 2)
  {
    if ((a3 - 5) < 2)
    {
      [(ChromeNavigationDisplay *)self _stopNavigationCameraMotion];
      [(ChromeNavigationDisplay *)self _applyStaticCameraStyle];
      goto LABEL_23;
    }

    if (a3 == 3)
    {
      v12 = 2;
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_23;
      }

      v12 = 3;
    }
  }

  else
  {
    if (!a3)
    {
      return;
    }

    if (a3 == 1)
    {
      self->_currentCameraMode = 0;
      goto LABEL_23;
    }

    if (a3 != 2)
    {
      goto LABEL_23;
    }

    v12 = 1;
  }

  self->_currentCameraMode = v12;
LABEL_23:
  [(NavigationDisplay *)self->_navigationDisplay setNavigationCameraMode:self->_currentCameraMode];
  [(ChromeNavigationDisplay *)self _startNavigationCameraMotionIfNeededAnimated:v4];
  if (v11 != a3)
  {
    v13 = [(ChromeNavigationDisplay *)self chromeViewController];
    [v13 setNeedsUpdateMapInsets];

    v14 = [(ChromeNavigationDisplay *)self mapView];
    v15 = [v14 _mapLayer];
    v16 = [v15 carDisplayType] != 2;

    v17 = [(ChromeNavigationDisplay *)self chromeViewController];
    v18 = [v17 routeAnnotationsController];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100F0BABC;
    v19[3] = &unk_10165CD30;
    v19[4] = self;
    v19[5] = a3;
    v20 = v16;
    [v18 updateConfigurationWithBlock:v19];
  }
}

- (void)setNonDefaultZoom:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_nonDefaultZoom != a3)
  {
    v4 = a4;
    self->_nonDefaultZoom = a3;
    v6 = [(ChromeNavigationDisplay *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(ChromeNavigationDisplay *)self delegate];
      v9 = self->_nonDefaultZoom || self->_cameraPanning;
      v10 = v8;
      [v8 chromeNavigationDisplay:self didChangePanning:v9 animated:v4];
    }
  }
}

- (void)setCameraPanning:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_cameraPanning != a3)
  {
    v4 = a4;
    self->_cameraPanning = a3;
    if (!a3)
    {
      v6 = [(ChromeNavigationDisplay *)self chromeViewController];
      [v6 clearMapGesturesAndAnimations];
    }

    v7 = [(ChromeNavigationDisplay *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(ChromeNavigationDisplay *)self delegate];
      v10 = self->_nonDefaultZoom || self->_cameraPanning;
      v11 = v9;
      [v9 chromeNavigationDisplay:self didChangePanning:v10 animated:v4];
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

- (void)_startNavigationCameraMotionIfNeededAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(ChromeNavigationDisplay *)self configuration];
  v6 = [v5 cameraPaused];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = sub_10009B590();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(ChromeNavigationDisplay *)self configuration];
      v10 = [v9 cameraPaused];
      if ([v10 BOOLValue])
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v12 = v11;
      if (v3)
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
    v15 = [(ChromeNavigationDisplay *)self configuration];
    v16 = [v15 requiresCameraMotion];

    if (v16)
    {
      v17 = [(NavigationDisplay *)self->_navigationDisplay mapView];
      [v17 setUserTrackingMode:0];

      v18 = sub_10009B590();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = @"NO";
        if (v3)
        {
          v19 = @"YES";
        }

        v20 = v19;
        v25 = 138412290;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Will start navigation camera (animated:%@)", &v25, 0xCu);
      }

      [(ChromeNavigationDisplay *)self setCameraPanning:0];
      v21 = [(ChromeNavigationDisplay *)self configuration];
      -[ChromeNavigationDisplay _applyHorizontalCameraOffset:animated:](self, "_applyHorizontalCameraOffset:animated:", ([v21 cameraStyle] & 0xFFFFFFFFFFFFFFFDLL) != 0, v3);

      [(NavigationDisplay *)self->_navigationDisplay startMotion:v3];
    }

    else
    {
      v22 = sub_10009B590();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [(ChromeNavigationDisplay *)self configuration];
        v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v23 cameraStyle]);
        v25 = 138412290;
        v26 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Will not start navigation camera (cameraStyle:%@)", &v25, 0xCu);
      }
    }
  }
}

- (void)mapInsetsDidChangeAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(ChromeNavigationDisplay *)self configuration];
  v6 = [v5 requiresCameraMotion];

  v10 = [(ChromeNavigationDisplay *)self configuration];
  v7 = [v10 cameraStyle];
  if (v6)
  {
    [(ChromeNavigationDisplay *)self _applyHorizontalCameraOffset:(v7 & 0xFFFFFFFFFFFFFFFDLL) != 0 animated:v3];
  }

  else
  {
    if (v7 == 5)
    {
    }

    else
    {
      v8 = [(ChromeNavigationDisplay *)self configuration];
      v9 = [v8 cameraStyle];

      if (v9 != 6)
      {
        return;
      }
    }

    [(ChromeNavigationDisplay *)self _applyStaticCameraStyle];
  }
}

- (void)_applyHorizontalCameraOffset:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = 0.0;
  if (a3 && self->_navigationDisplay)
  {
    [(ChromeNavigationDisplay *)self _horizontalCameraOffset];
    v7 = v8;
  }

  if (self->_currentCameraOffset != v7)
  {
    self->_currentCameraOffset = v7;
    v9 = &kCAMediaTimingFunctionEaseInEaseOut;
    if (v4)
    {
      v10 = 2.5;
    }

    else
    {
      v10 = 0.0;
    }

    if (!v5)
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

    v13 = [(ChromeNavigationDisplay *)self chromeViewController];
    v14 = [v13 mapView];

    v15 = [v14 _mapLayer];
    v16 = [CAMediaTimingFunction functionWithName:v11];

    [v15 setCameraHorizontalOffset:v16 duration:v7 timingFunction:v10];
  }
}

- (void)recenterCameraAnimated:(BOOL)a3
{
  v3 = a3;
  [(ChromeNavigationDisplay *)self setCameraPanning:0 animated:a3];
  [(ChromeNavigationDisplay *)self setNonDefaultZoom:0 animated:v3];
  v5 = sub_100798240();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ChromeNavigationDisplay *)self mapView];
    v13 = 136315394;
    v14 = "[ChromeNavigationDisplay recenterCameraAnimated:]";
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s, navigationCameraReturnToPuck! on mapView: %{public}@", &v13, 0x16u);
  }

  v7 = [(ChromeNavigationDisplay *)self configuration];
  v8 = [v7 requiresCameraMotion];

  if (v8)
  {
    v9 = [(ChromeNavigationDisplay *)self mapView];
    [v9 navigationCameraReturnToPuck];

    return;
  }

  v10 = [(ChromeNavigationDisplay *)self configuration];
  if ([v10 cameraStyle] == 5)
  {
  }

  else
  {
    v11 = [(ChromeNavigationDisplay *)self configuration];
    v12 = [v11 cameraStyle];

    if (v12 != 6)
    {
      return;
    }
  }

  [(ChromeNavigationDisplay *)self _applyStaticCameraStyle];
}

- (BOOL)_isAuthorizedForPreciseLocation
{
  v2 = +[MKLocationManager sharedLocationManager];
  v3 = [v2 isLocationServicesApproved];
  v4 = [v2 isAuthorizedForPreciseLocation];

  return v3 & v4;
}

- (BOOL)_isRunningFullGuidance
{
  v2 = +[MNNavigationService sharedService];
  v3 = [v2 isInNavigatingState];

  if (!v3)
  {
    return 0;
  }

  v4 = +[MNNavigationService sharedService];
  v5 = [v4 navigationType] == 3;

  return v5;
}

- (void)_locationManagerApprovalDidChange:(id)a3
{
  if (![(ChromeNavigationDisplay *)self _isRunningFullGuidance])
  {
    v4 = [(ChromeNavigationDisplay *)self _isAuthorizedForPreciseLocation];
    v5 = [(ChromeNavigationDisplay *)self mapView];
    [v5 _setShowHeadingIndicatorForStepping:v4];
  }
}

- (void)_prepareNavigationDisplay
{
  if ([(ChromeNavigationDisplay *)self isSuppressed])
  {
    v3 = sub_10009B590();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will not prepare navigation display, currently paused", buf, 2u);
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

    v3 = [(ChromeNavigationDisplay *)self mapView];
    v6 = [(NavigationDisplay *)self->_navigationDisplay mapView];

    if (v3 != v6)
    {
      self->_mapClearsUserLocationOnReset = [v3 _clearUserLocationOnLocationReset];
    }

    v7 = [(ChromeNavigationDisplay *)self chromeViewController];
    [(NavigationDisplay *)self->_navigationDisplay setChromeViewController:v7];

    v8 = +[MNNavigationService sharedService];
    v9 = [v8 isInNavigatingState];

    if (v9)
    {
      v10 = +[MNNavigationService sharedService];
      v11 = [v10 route];
      v12 = [v11 destination];

      [(NavigationDisplay *)self->_navigationDisplay setDestinationWaypoint:v12];
    }

    if ([(ChromeNavigationDisplay *)self _isRunningFullGuidance])
    {
      v13 = 0;
    }

    else
    {
      [v3 _setAlwaysShowHeadingIndicatorIfSupported:0];
      v13 = [(ChromeNavigationDisplay *)self _isAuthorizedForPreciseLocation];
    }

    [v3 _setShowHeadingIndicatorForStepping:v13];
    v14 = [(ChromeNavigationDisplay *)self carChromeViewController];

    v15 = self->_navigationDisplay;
    if (v14)
    {
      [(NavigationDisplay *)v15 setSky:2];
      [v3 _setCanSelectPOIs:0];
      [v3 setShowsTraffic:0];
      v16 = self->_navigationDisplay;
      v17 = 0;
    }

    else
    {
      [(NavigationDisplay *)v15 setSky:0];
      v18 = self->_navigationDisplay;
      v17 = [(GEOComposedRoute *)self->_route transportType];
      v16 = v18;
    }

    [(NavigationDisplay *)v16 setTransportType:v17];
    v19 = [(ChromeNavigationDisplay *)self chromeViewController];
    v20 = [v19 userLocationView];
    [(NavigationDisplay *)self->_navigationDisplay setUserLocationAnnotationView:v20];

    v21 = [(NavigationDisplay *)self->_navigationDisplay userLocationAnnotationView];
    [v21 setInNavMode:1 animated:0];

    [v3 _setClearUserLocationOnLocationReset:0];
    [v3 _setShouldSplitRouteLine:1];
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

  v8 = [(ChromeNavigationDisplay *)self mapView];
  [v8 setShowsTraffic:v7];

  v9 = [(NavigationDisplay *)self->_navigationDisplay mapView];
  v10 = [v9 _mapLayer];
  [v10 setFocusedLabelsPolyline:0];

  mapClearsUserLocationOnReset = self->_mapClearsUserLocationOnReset;
  v12 = [(NavigationDisplay *)self->_navigationDisplay mapView];
  [v12 _setClearUserLocationOnLocationReset:mapClearsUserLocationOnReset];

  v13 = [(NavigationDisplay *)self->_navigationDisplay mapView];
  [v13 _setShouldSplitRouteLine:0];

  [(NavigationDisplay *)self->_navigationDisplay clearAllAnnotations];
  v14 = [(NavigationDisplay *)self->_navigationDisplay cameraController];
  [v14 resetMapViewNavigationState];

  v15 = [(NavigationDisplay *)self->_navigationDisplay userLocationAnnotationView];
  [v15 setInNavMode:0 animated:0];

  [(NavigationDisplay *)self->_navigationDisplay setUserLocationAnnotationView:0];
  [(NavigationDisplay *)self->_navigationDisplay setChromeViewController:0];
  [(NavigationDisplay *)self->_navigationDisplay setDelegate:0];
  navigationDisplay = self->_navigationDisplay;
  self->_navigationDisplay = 0;
}

- (void)startRunningNavigationAnimated:(BOOL)a3
{
  v3 = a3;
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
      if (v3)
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
    v10 = [(ChromeNavigationDisplay *)self configuration];
    [(ChromeNavigationDisplay *)self _setConfiguration:v10 animated:v3];

    v6 = +[MNNavigationService sharedService];
    [v6 registerObserver:self];
  }
}

- (void)stopRunningNavigationAnimated:(BOOL)a3
{
  v3 = a3;
  isRunning = self->_isRunning;
  v6 = sub_10009B590();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (isRunning)
  {
    if (v7)
    {
      v8 = @"NO";
      if (v3)
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
      if (v3)
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

- (void)setSuppressed:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_suppressed == a3)
  {
    return;
  }

  v4 = a4;
  v5 = a3;
  self->_suppressed = a3;
  isRunning = self->_isRunning;
  v8 = sub_10009B590();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (!isRunning)
  {
    if (v9)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Not navigating, will not pause", &v12, 2u);
    }

    goto LABEL_15;
  }

  if (!v5)
  {
    if (v9)
    {
      v11 = [(ChromeNavigationDisplay *)self configuration];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will unsuppress navigation display and unpause camera display by refreshing current configuration (configuration:%@)", &v12, 0xCu);
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
    v8 = [(ChromeNavigationDisplay *)self configuration];
    [(ChromeNavigationDisplay *)self _setConfiguration:v8 animated:v4];
LABEL_15:

    return;
  }

  if (v9)
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will suppress navigation display and pause camera", &v12, 2u);
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

  v4 = [(ChromeNavigationDisplay *)self configuration];
  v5 = [v4 cameraStyle];

  if ((v5 - 1) <= 5)
  {
    v6 = [(NavigationDisplay *)self->_navigationDisplay mapView];
    [v6 _zoomOut];
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

  v4 = [(ChromeNavigationDisplay *)self configuration];
  v5 = [v4 cameraStyle];

  if ((v5 - 1) <= 5)
  {
    v6 = [(NavigationDisplay *)self->_navigationDisplay mapView];
    [v6 _zoomIn];
  }
}

- (void)_ioHIDRepeatCurrentGuidance:(id)a3
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

- (void)setTrafficAlert:(id)a3
{
  v12 = a3;
  v5 = [(MNTrafficIncidentAlert *)self->_trafficAlert alertID];
  v6 = [v12 alertID];
  v7 = v5;
  v8 = v6;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      objc_storeStrong(&self->_trafficAlert, a3);
      v11 = [(ChromeNavigationDisplay *)self cameraController];
      [v11 setTrafficIncidentAlert:v12];

      [(ChromeNavigationDisplay *)self _updateDirectionsAnnotationManagerDisplayedRoutes];
    }
  }
}

- (void)_updateWithMatchedLocation:(id)a3
{
  v6 = a3;
  v4 = [(ChromeNavigationDisplay *)self chromeViewController];
  v5 = [v4 routeAnnotationsController];
  [v5 updateMatchedLocation:v6];

  [(NavigationDisplay *)self->_navigationDisplay updateWithLocation:v6];
}

- (void)_clearAnnotations
{
  v3 = sub_10009B590();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Clearing annotations", v7, 2u);
  }

  v4 = [(ChromeNavigationDisplay *)self chromeViewController];
  v5 = [v4 searchPinsManager];
  [v5 clearDirectionsPins];

  v6 = [(ChromeNavigationDisplay *)self chromeViewController];
  [v6 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (void)_updateDirectionsAnnotationManagerDisplayedRoutes
{
  v2 = [(ChromeNavigationDisplay *)self chromeViewController];
  [v2 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (BOOL)updateRouteAnnotationsConfiguration:(id)a3
{
  v4 = a3;
  [v4 updateNavConfigurationWithCurrentRoute:self->_route incidentAlert:self->_trafficAlert];
  v5 = [(ChromeNavigationDisplay *)self mapView];
  v6 = [v5 _mapLayer];
  v7 = [v6 carDisplayType] != 2;

  v8 = [(ChromeNavigationDisplay *)self configuration];
  if ([v8 cameraStyle] != 2 && !self->_trafficAlert)
  {
    v7 = 0;
  }

  [v4 setAlternateRoutesEnabled:v7];

  v9 = [(ChromeNavigationDisplayConfiguration *)self->_configuration cameraStyle];
  v10 = [(ChromeNavigationDisplay *)self trafficAlert];
  [v4 setRouteMarkerOptions:{-[ChromeNavigationDisplay _routeMarkerOptionsForCameraStyle:incidentAlert:](self, "_routeMarkerOptionsForCameraStyle:incidentAlert:", v9, v10)}];

  v11 = +[MNNavigationService sharedService];
  v12 = [v11 arrivalInfo];
  v13 = v12;
  if (v12 && [v12 isInArrivalState])
  {
    v14 = [v13 destination];
    v15 = 2;
  }

  else
  {
    v16 = -[GEOComposedRoute legIndexForStepIndex:](self->_route, "legIndexForStepIndex:", [v11 stepIndex]);
    v17 = [(GEOComposedRoute *)self->_route legs];
    if (v16 >= [v17 count])
    {
      v19 = 0;
    }

    else
    {
      v18 = [(GEOComposedRoute *)self->_route legs];
      v19 = [v18 objectAtIndexedSubscript:v16];
    }

    v14 = [v19 destination];
    v15 = v14 != 0;
  }

  [v4 setCurrentNavigationWaypoint:v14];
  [v4 setProximityToCurrentNavigationWaypoint:v15];
  if (self->_route)
  {
    v20 = [(ChromeNavigationDisplay *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [(ChromeNavigationDisplay *)self delegate];
      [v22 chromeNavigationDisplayDidRenderRoute:self];
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
    v7 = [(GEOComposedRoute *)self->_route uniqueRouteID];
    v8 = [v7 UUIDString];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Updating for the current route: %@", &v9, 0xCu);
  }

  [(ChromeNavigationDisplay *)self _updateDirectionsAnnotationManagerDisplayedRoutes];
}

- (void)_setRoute:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([(GEOComposedRoute *)v4 transportType])
    {
      v6 = [(ChromeNavigationDisplay *)self carChromeViewController];

      if (v6)
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
      v10 = [(GEOComposedRoute *)*p_route uniqueRouteID];
      v11 = [v10 UUIDString];
      v12 = 138412290;
      v13 = v11;
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
        v7 = [(GEOComposedRoute *)v5 destination];
        v8 = [v7 navDisplayName];
        v10 = 138412290;
        v11 = v8;
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

- (void)_updateWithRouteGeniusEntry:(id)a3
{
  [(NavigationDisplay *)self->_navigationDisplay setRouteGeniusEntry:?];
  if (a3)
  {

    [(ChromeNavigationDisplay *)self updateWithRoute:0];
  }
}

- (void)updateWithRoute:(id)a3
{
  v4 = a3;
  [(NavigationDisplay *)self->_navigationDisplay updateWithRoute:v4];
  if (self->_route == v4)
  {
    [(ChromeNavigationDisplay *)self _updateForCurrentRoute];
  }

  else
  {
    [(ChromeNavigationDisplay *)self _setRoute:v4];
  }
}

- (void)_setConfiguration:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 cameraStyle];
  if (!v7)
  {
    v8 = [v6 copy];

    [v8 setCameraStyle:{-[ChromeNavigationDisplayConfiguration cameraStyle](self->_configuration, "cameraStyle")}];
    v6 = v8;
  }

  objc_storeStrong(&self->_configuration, v6);
  v9 = sub_10009B590();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v6;
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
    if (v7)
    {
      [(ChromeNavigationDisplay *)self _transitionToCameraStyle:v7 animated:v4];
    }

    v12 = [(ChromeNavigationDisplayConfiguration *)self->_configuration routeGeniusEntry];
    [(ChromeNavigationDisplay *)self _updateWithRouteGeniusEntry:v12];

    v13 = [(ChromeNavigationDisplayConfiguration *)self->_configuration cameraPaused];

    if (v13)
    {
      v14 = [(ChromeNavigationDisplayConfiguration *)self->_configuration cameraPaused];
      v15 = [v14 BOOLValue];

      if (v15)
      {
        v16 = sub_10009B590();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Will force stop navigation camera motion", &v20, 2u);
        }

        [(ChromeNavigationDisplay *)self setCameraPanning:0 animated:v4];
        [(ChromeNavigationDisplay *)self _stopNavigationCameraMotion];
      }

      else
      {
        [(ChromeNavigationDisplay *)self _startNavigationCameraMotionIfNeededAnimated:v4];
      }
    }

    v17 = [(ChromeNavigationDisplayConfiguration *)self->_configuration showsRoadLabel];

    if (v17)
    {
      v18 = [(ChromeNavigationDisplayConfiguration *)self->_configuration showsRoadLabel];
      -[NavigationDisplay setShowsRoadLabel:](self->_navigationDisplay, "setShowsRoadLabel:", [v18 BOOLValue]);
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

- (void)configureDisplay:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ChromeNavigationDisplay *)self configuration];
  v8 = [v7 copy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [objc_opt_class() defaultConfiguration];
  }

  v15 = v10;

  v6[2](v6, v15);
  [(ChromeNavigationDisplay *)self _setConfiguration:v15 animated:v4];
  v11 = [(ChromeNavigationDisplay *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(ChromeNavigationDisplay *)self delegate];
    v14 = [(ChromeNavigationDisplayConfiguration *)self->_configuration copy];
    [v13 chromeNavigationDisplay:self configurationDidChange:v14];
  }
}

- (ChromeNavigationDisplay)initWithChromeViewController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ChromeNavigationDisplay;
  v5 = [(ChromeNavigationDisplay *)&v9 init];
  if (v5)
  {
    v6 = [objc_opt_class() defaultConfiguration];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    [(ChromeNavigationDisplay *)v5 setChromeViewController:v4];
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