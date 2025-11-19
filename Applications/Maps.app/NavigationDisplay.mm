@interface NavigationDisplay
- ($F9C4767691F2EDF2F3162F5FE7B1523A)cartographicConfigurationForTransportType:(SEL)a3;
- (BOOL)mapView:(id)a3 shouldSelectLabelMarker:(id)a4;
- (ChromeViewController)chromeViewController;
- (NavigationDisplay)init;
- (NavigationDisplayDelegate)delegate;
- (id)mapViewCurrentRouteMatch:(id)a3;
- (void)_setTracking:(BOOL)a3;
- (void)_startObservingChromeIfNeeded;
- (void)_stopObservingChromeIfNeeded;
- (void)_updateCartographicConfiguration;
- (void)_updateDestinationBuildingId;
- (void)_updateMapViewAndCameraController;
- (void)_updateRoadDescription:(id)a3;
- (void)_updateSky;
- (void)_updateUserAnnotationViewForCurrentTransportTypeAnimated:(BOOL)a3;
- (void)clearCache;
- (void)dealloc;
- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4;
- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5 fromTrackingButton:(BOOL)a6;
- (void)mapView:(id)a3 didDeselectLabelMarker:(id)a4;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4;
- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8;
- (void)mapView:(id)a3 didUpdateYaw:(double)a4;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapViewNavigationCameraDidLeaveDefaultZoom:(id)a3;
- (void)mapViewNavigationCameraDidReturnToDefaultZoom:(id)a3;
- (void)mapViewNavigationCameraHasStartedPanning:(id)a3;
- (void)mapViewNavigationCameraHasStoppedPanning:(id)a3;
- (void)pauseCameraMotion;
- (void)setChromeViewController:(id)a3;
- (void)setMapView:(id)a3;
- (void)setNavigationDestinationState:(unint64_t)a3;
- (void)setRouteGeniusEntry:(id)a3;
- (void)setShowsRoadLabel:(BOOL)a3;
- (void)setSky:(int64_t)a3;
- (void)setTransportType:(int)a3 animated:(BOOL)a4;
- (void)setUserLocationAnnotationView:(id)a3;
- (void)startMotion:(BOOL)a3;
- (void)stopCameraMotion;
- (void)updateWithLocation:(id)a3;
- (void)updateWithRoute:(id)a3;
@end

@implementation NavigationDisplay

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (NavigationDisplayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 mapView:v9 regionDidChangeAnimated:v4];
  }
}

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v11 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 performSelector:a2 withObject:v11 withObject:v7];
  }
}

- (void)mapViewNavigationCameraDidReturnToDefaultZoom:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 performSelector:a2 withObject:v8];
  }
}

- (void)mapViewNavigationCameraDidLeaveDefaultZoom:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 performSelector:a2 withObject:v8];
  }
}

- (void)mapViewNavigationCameraHasStoppedPanning:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 performSelector:a2 withObject:v8];
  }
}

- (void)mapViewNavigationCameraHasStartedPanning:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 performSelector:a2 withObject:v8];
  }
}

- (void)mapView:(id)a3 didDeselectLabelMarker:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 mapView:v10 didDeselectLabelMarker:v6];
  }
}

- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 mapView:v10 didSelectLabelMarker:v6];
  }
}

- (BOOL)mapView:(id)a3 shouldSelectLabelMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = [v10 mapView:v6 shouldSelectLabelMarker:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8
{
  v12 = a3;
  if (a4 <= 1)
  {
    if (!a4)
    {
      v24 = v12;
      v13 = 1001;
      goto LABEL_34;
    }

    if (a5 == 1)
    {
      v13 = 1043;
      if (a6 > 3)
      {
        v24 = v12;
        if (a6 == 5)
        {
          v14 = 1049;
        }

        else
        {
          v14 = 1043;
        }

        if (a6 == 4)
        {
          v15 = 1047;
        }

        else
        {
          v15 = v14;
        }

        if ((a6 - 6) >= 2)
        {
          v13 = v15;
        }

        else
        {
          v13 = 1002;
        }
      }

      else
      {
        switch(a6)
        {
          case 0:
            goto LABEL_49;
          case 2:
            v24 = v12;
            v13 = 1045;
            break;
          case 3:
            goto LABEL_49;
          default:
            v24 = v12;
            break;
        }
      }

LABEL_34:
      v17 = +[MKMapService sharedService];
      v18 = [v24 mapRegion];
      [v24 _zoomLevel];
      v20 = v19;
      v21 = [(NavigationDisplay *)self mapView];
      v22 = [v21 mapType];
      v23 = 1;
      if (v22 <= 2)
      {
        switch(v22)
        {
          case 0:
LABEL_48:
            [v17 captureUserAction:v13 onTarget:505 eventValue:0 mapRegion:v18 zoomLevel:v23 mapType:v20];

            v12 = v24;
            goto LABEL_49;
          case 1:
            goto LABEL_46;
          case 2:
LABEL_42:
            v23 = 3;
            goto LABEL_48;
        }
      }

      else
      {
        if (v22 <= 101)
        {
          if (v22 != 3)
          {
            if (v22 != 4)
            {
              goto LABEL_47;
            }

            goto LABEL_42;
          }

LABEL_46:
          v23 = 2;
          goto LABEL_48;
        }

        if (v22 == 102)
        {
          goto LABEL_48;
        }

        if (v22 == 104)
        {
          v23 = 4;
          goto LABEL_48;
        }
      }

LABEL_47:
      v23 = 0;
      goto LABEL_48;
    }

    if (a6 > 3)
    {
      v24 = v12;
      if (a6 == 5)
      {
        v16 = 1050;
      }

      else
      {
        v16 = 1044;
      }

      if (a6 == 4)
      {
        v16 = 1048;
      }

      if ((a6 - 6) >= 2)
      {
        v13 = v16;
      }

      else
      {
        v13 = 1003;
      }

      goto LABEL_34;
    }

    if (a6 && a6 != 2)
    {
      v24 = v12;
      if (a6 == 3)
      {
        v13 = 1046;
      }

      else
      {
        v13 = 1044;
      }

      goto LABEL_34;
    }
  }

LABEL_49:
}

- (id)mapViewCurrentRouteMatch:(id)a3
{
  if ([(MNLocation *)self->_matchedLocation state]== 1)
  {
    v4 = [(MNLocation *)self->_matchedLocation routeMatch];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didTapMapView:v7 atPoint:{x, y}];
}

- (void)mapView:(id)a3 didUpdateYaw:(double)a4
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 mapView:v9 didUpdateYaw:a4];
  }
}

- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5 fromTrackingButton:(BOOL)a6
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 navigationDisplay:self didChangeUserTrackingMode:a4];
  }
}

- (void)_stopObservingChromeIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  if (WeakRetained)
  {
    observingChrome = self->_observingChrome;

    if (observingChrome)
    {
      v5 = +[NSNotificationCenter defaultCenter];
      v6 = objc_loadWeakRetained(&self->_chromeViewController);
      [v5 removeObserver:self name:@"ChromeViewControllerDidUpdateShouldUseModernMap" object:v6];

      self->_observingChrome = 0;
    }
  }
}

- (void)_startObservingChromeIfNeeded
{
  [(NavigationDisplay *)self _stopObservingChromeIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_chromeViewController);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      self->_observingChrome = 1;
      v8 = +[NSNotificationCenter defaultCenter];
      v7 = objc_loadWeakRetained(&self->_chromeViewController);
      [v8 addObserver:self selector:"_shouldUseModernMapDidUpdate:" name:@"ChromeViewControllerDidUpdateShouldUseModernMap" object:v7];
    }
  }
}

- (void)pauseCameraMotion
{
  [(NavigationDisplay *)self _setTracking:0];
  cameraController = self->_cameraController;

  [(NavCameraController *)cameraController pauseTracking];
}

- (void)stopCameraMotion
{
  [(NavigationDisplay *)self _setTracking:0];
  cameraController = self->_cameraController;

  [(NavCameraController *)cameraController stopTracking];
}

- (void)startMotion:(BOOL)a3
{
  v3 = a3;
  [(NavigationDisplay *)self _setTracking:1];
  transportType = self->_transportType;
  if ((transportType - 1) < 2)
  {
    v7 = 0;
  }

  else
  {
    if (transportType)
    {
      v6 = transportType == 3;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      [(NavigationDisplay *)self _updateCartographicConfiguration];
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  v8 = [(MKMapView *)self->_mapView _mapLayer];
  [v8 setDesiredMapMode:v7];

  v9 = self->_matchedLocation;
  if (v9)
  {
    v10 = v9;
  }

  else if (!-[MKMapView hasUserLocation](self->_mapView, "hasUserLocation") || (v11 = [MNLocation alloc], -[MKMapView userLocation](self->_mapView, "userLocation"), v12 = objc_claimAutoreleasedReturnValue(), [v12 location], v13 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v11, "initWithRawLocation:", v13), v13, v12, (v10 = v23) == 0))
  {
    v14 = +[MNNavigationService sharedService];
    v15 = [v14 originalOrigin];

    if (v15)
    {
      v16 = [CLLocation alloc];
      v17 = [v15 latLng];
      [v17 lat];
      v19 = v18;
      v20 = [v15 latLng];
      [v20 lng];
      v22 = [v16 initWithLatitude:v19 longitude:v21];

      v24 = [[MNLocation alloc] initWithRawLocation:v22];
    }

    else
    {
      v24 = 0;
    }

    v10 = v24;
  }

  v25 = v10;
  [(NavCameraController *)self->_cameraController transitionToTrackingInMapMode:v7 animated:v3 startLocation:v10 startHandler:0];
}

- (void)setNavigationDestinationState:(unint64_t)a3
{
  if (a3 != 2)
  {
    a3 = a3 == 1;
  }

  [(NavCameraController *)self->_cameraController setNavigationDestination:a3];
}

- (void)_updateDestinationBuildingId
{
  v3 = [(GEOComposedRoute *)self->_route destination];
  v4 = [v3 geoMapItem];
  v9 = [v4 _enhancedPlacement];

  v5 = [v9 buildingIds];

  v6 = [(MKMapView *)self->_mapView _mapLayer];
  if (v5)
  {
    v7 = [v9 buildingIds];
    v8 = [NSSet setWithArray:v7];
    [v6 setSelectedBuildingFeatureIds:v8];
  }

  else
  {
    v7 = +[NSSet set];
    [v6 setSelectedBuildingFeatureIds:v7];
  }
}

- (void)_updateMapViewAndCameraController
{
  navigationCameraMode = self->_navigationCameraMode;
  if (navigationCameraMode - 1 >= 2)
  {
    if (navigationCameraMode == 3)
    {
      driveCameraProvider = self->_driveCameraProvider;
      if (!driveCameraProvider)
      {
        v11 = objc_alloc_init(NavCameraDriveProvider);
        v12 = self->_driveCameraProvider;
        self->_driveCameraProvider = v11;

        v13 = [(NavigationDisplay *)self routeGeniusEntry];
        [(NavCameraDriveProvider *)self->_driveCameraProvider setRouteGeniusEntry:v13];

        driveCameraProvider = self->_driveCameraProvider;
      }

      v14 = driveCameraProvider;
      v9 = 2;
    }

    else
    {
      v14 = 0;
      v9 = 0;
    }
  }

  else
  {
    v4 = +[MNNavigationService sharedService];
    v5 = [v4 nextWaypoint];
    v6 = [v4 route];
    v7 = [v6 waypoints];
    v8 = [v7 lastObject];

    if (!GEOConfigGetBOOL() || v5 == v8)
    {
      if (self->_navigationCameraMode == 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 3;
    }

    v14 = 0;
  }

  [(MKMapView *)self->_mapView _clearGesturesAndAnimations];
  [(NavCameraController *)self->_cameraController setNavCameraMode:v9];
  [(NavCameraController *)self->_cameraController setOverrideNavigationProvider:v14];
}

- (void)_setTracking:(BOOL)a3
{
  if (self->_tracking != a3)
  {
    v3 = a3;
    v5 = sub_100798240();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      tracking = self->_tracking;
      v7 = [(NavigationDisplay *)self mapView];
      v8[0] = 67109634;
      v8[1] = tracking;
      v9 = 1024;
      v10 = v3;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Changing _tracking from %d to %d on %{public}@", v8, 0x18u);
    }

    self->_tracking = v3;
  }
}

- (void)_updateRoadDescription:(id)a3
{
  v4 = a3;
  if (!self->_showsRoadLabel)
  {

    v4 = 0;
  }

  v6 = v4;
  if (![v4 length])
  {

    v6 = 0;
  }

  v5 = [(MKMapView *)self->_mapView _mapLayer];
  [v5 setCurrentLocationText:v6];
}

- (void)setShowsRoadLabel:(BOOL)a3
{
  if (self->_showsRoadLabel != a3)
  {
    self->_showsRoadLabel = a3;
    v5 = [(MNLocation *)self->_matchedLocation roadName];
    [(NavigationDisplay *)self _updateRoadDescription:v5];
  }
}

- (void)clearCache
{
  v2 = [(MKMapView *)self->_mapView _mapLayer];
  [v2 clearScene];
}

- (void)_updateUserAnnotationViewForCurrentTransportTypeAnimated:(BOOL)a3
{
  transportType = self->_transportType;
  if (transportType <= 3)
  {
    [(UserLocationView *)self->_userLocationAnnotationView setMode:qword_1012135C0[transportType] animated:a3];
  }
}

- (void)setTransportType:(int)a3 animated:(BOOL)a4
{
  v4 = a4;
  self->_transportType = a3;
  [(NavigationDisplay *)self _updateCartographicConfiguration];
  if (a3 > 1)
  {
    if (a3 != 3)
    {
      if (a3 != 2)
      {
        goto LABEL_10;
      }

      [(MKMapView *)self->_mapView setShowsTraffic:0];
      [(MKMapView *)self->_mapView _setShowHeadingIndicatorForStepping:1];
      [(MKMapView *)self->_mapView _setShouldAnimatePositionWithRouteMatch:0];
      goto LABEL_8;
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_10;
    }

    [(MKMapView *)self->_mapView setShowsTraffic:0];
    [(MKMapView *)self->_mapView setScaleEnabled:0];
    [(MKMapView *)self->_mapView _setShowHeadingIndicatorForStepping:1];
    [(MKMapView *)self->_mapView _setShouldAnimatePositionWithRouteMatch:0];
    [(MKMapView *)self->_mapView _setClearUserLocationOnLocationReset:0];
LABEL_8:
    v7 = [(MKMapView *)self->_mapView _mapLayer];
    [v7 setDesiredMapMode:0];

    [(MKMapView *)self->_mapView setUserTrackingMode:0 animated:0];
    goto LABEL_10;
  }

  [(MKMapView *)self->_mapView setShowsTraffic:1];
  [(MKMapView *)self->_mapView _setShowHeadingIndicatorForStepping:0];
  [(MKMapView *)self->_mapView _setShouldAnimatePositionWithRouteMatch:1];
  v8 = [(MKMapView *)self->_mapView _mapLayer];
  [v8 setDesiredMapMode:1];

LABEL_10:

  [(NavigationDisplay *)self _updateUserAnnotationViewForCurrentTransportTypeAnimated:v4];
}

- (void)_updateCartographicConfiguration
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  [(NavigationDisplay *)self cartographicConfigurationForTransportType:self->_transportType];
  v3 = [_MKCartographicMapConfiguration alloc];
  v9[0] = v11;
  v9[1] = v12;
  v9[2] = v13;
  v10 = v14;
  v4 = [v3 initWithCartographicConfiguration:v9];
  v5 = [(MKMapView *)self->_mapView preferredConfiguration];
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___MKMapConfigurationHiking])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v4 setShowsHiking:{objc_msgSend(v7, "showsHiking")}];
  v8 = [v7 showsTopographicFeatures];

  [v4 setShowsTopographicFeatures:v8];
  [(MKMapView *)self->_mapView setPreferredConfiguration:v4];
}

- ($F9C4767691F2EDF2F3162F5FE7B1523A)cartographicConfigurationForTransportType:(SEL)a3
{
  *&retstr->var6 = 0;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  _MKCartographicConfigurationDefault();
  retstr->var4 = 0;
  v7 = [(NavigationDisplay *)self chromeViewController];
  v8 = [v7 shouldUseModernMap];

  if (v8)
  {
    v9 = [(NavigationDisplay *)self chromeViewController];
    v10 = [v9 modernMapProjectionType];

    v11 = [(NavigationDisplay *)self chromeViewController];
    v12 = [v11 modernMapTerrainMode];

    v13 = v12;
    result = v12;
    v15 = v10;
  }

  else
  {
    result = 0;
    v15 = 0;
    v13 = 2;
    v12 = 1;
    v10 = 1;
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v16 = 24;
      v17 = 16;
      goto LABEL_14;
    }

    if (a4 != 3)
    {
      return result;
    }

    v15 = v10;
    result = v13;
    v13 = 3;
  }

  else if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }

    v13 = 4;
  }

  else
  {
    v13 = 3;
    v15 = v10;
    result = v12;
  }

  retstr->var2 = v15;
  v16 = 8;
  v17 = 24;
  v10 = result;
LABEL_14:
  *(&retstr->var0 + v17) = v10;
  *(&retstr->var0 + v16) = v13;
  return result;
}

- (void)setRouteGeniusEntry:(id)a3
{
  objc_storeStrong(&self->_routeGeniusEntry, a3);
  v5 = a3;
  [(NavCameraDriveProvider *)self->_driveCameraProvider setRouteGeniusEntry:v5];
}

- (void)updateWithRoute:(id)a3
{
  v5 = a3;
  if (self->_route != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_route, a3);
    [(NavigationDebugAnnotationsProvider *)self->_debugAnnotationsProvider updateWithRoute:v6];
    [(NavigationDisplay *)self _updateMapViewAndCameraController];
    [(NavigationDisplay *)self _updateDestinationBuildingId];
    v5 = v6;
  }
}

- (void)updateWithLocation:(id)a3
{
  objc_storeStrong(&self->_matchedLocation, a3);
  v6 = a3;
  v5 = [v6 roadName];
  [(NavigationDisplay *)self _updateRoadDescription:v5];

  [(NavigationDebugAnnotationsProvider *)self->_debugAnnotationsProvider updateWithLocation:v6];
}

- (void)setUserLocationAnnotationView:(id)a3
{
  v5 = a3;
  if (self->_userLocationAnnotationView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_userLocationAnnotationView, a3);
    [(UserLocationView *)self->_userLocationAnnotationView setCanShowCallout:0];
    [(NavigationDebugAnnotationsProvider *)self->_debugAnnotationsProvider setUserLocationMarkerMode:[(UserLocationView *)v6 mode]];
    [(NavigationDisplay *)self _updateUserAnnotationViewForCurrentTransportTypeAnimated:1];
    v5 = v6;
  }
}

- (void)setMapView:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_mapView != v5)
  {
    v59 = v5;
    location = &self->_mapView;
    [(NavigationDisplay *)self clearAllAnnotations];
    mapView = self->_mapView;
    canSelectPOIs = self->_mapViewFlagsToRestore.canSelectPOIs;
    compassEnabled = self->_mapViewFlagsToRestore.compassEnabled;
    locationPropagationEnabled = self->_mapViewFlagsToRestore.locationPropagationEnabled;
    panWithMomentum = self->_mapViewFlagsToRestore.panWithMomentum;
    rotateEnabled = self->_mapViewFlagsToRestore.rotateEnabled;
    scaleEnabled = self->_mapViewFlagsToRestore.scaleEnabled;
    shouldAnimatePositionWithRouteMatch = self->_mapViewFlagsToRestore.shouldAnimatePositionWithRouteMatch;
    showsUserLocation = self->_mapViewFlagsToRestore.showsUserLocation;
    userTrackingMode = self->_mapViewFlagsToRestore.userTrackingMode;
    zoomEnabled = self->_mapViewFlagsToRestore.zoomEnabled;
    alwaysShowHeadingIndicator = self->_mapViewFlagsToRestore.alwaysShowHeadingIndicator;
    clearUserLocationOnLocationReset = self->_mapViewFlagsToRestore.clearUserLocationOnLocationReset;
    v63[0] = *(&self->_mapViewFlagsToRestore.clearUserLocationOnLocationReset + 1);
    *(v63 + 13) = *&self->_mapViewFlagsToRestore.userTrackingBehavior.idealCenterCoordinateDistance;
    if (mapView)
    {
      v55 = alwaysShowHeadingIndicator;
      v57 = clearUserLocationOnLocationReset;
      v53 = zoomEnabled;
      v51 = userTrackingMode;
      v50 = showsUserLocation;
      v20 = mapView;
      [(MKMapView *)v20 _setCanSelectPOIs:canSelectPOIs];
      [(MKMapView *)v20 setCompassEnabled:compassEnabled];
      [(MKMapView *)v20 _setLocationPropagationEnabled:locationPropagationEnabled];
      [(MKMapView *)v20 _setPanWithMomentum:panWithMomentum];
      [(MKMapView *)v20 setRotateEnabled:rotateEnabled];
      [(MKMapView *)v20 setScaleEnabled:scaleEnabled];
      [(MKMapView *)v20 _setShouldAnimatePositionWithRouteMatch:shouldAnimatePositionWithRouteMatch];
      [(MKMapView *)v20 setShowsUserLocation:v50];
      [(MKMapView *)v20 setUserTrackingMode:v51];
      [(MKMapView *)v20 setZoomEnabled:v53];
      [(MKMapView *)v20 _setAlwaysShowHeadingIndicatorIfSupported:v55];
      [(MKMapView *)v20 _setClearUserLocationOnLocationReset:v57];
      v61 = *(v63 + 5);
      v62 = *(&v63[1] + 5);
      [(MKMapView *)v20 _setUserTrackingBehavior:&v61];
      [(MKMapView *)v20 _setAlwaysShowHeadingIndicatorIfSupported:1];
    }

    objc_storeStrong(location, a3);
    v21 = *location;
    memset(v63, 0, 29);
    if (v21)
    {
      v22 = v21;
      v58 = [v22 _canSelectPOIs];
      v56 = [v22 isCompassEnabled];
      v54 = [v22 _isLocationPropagationEnabled];
      v52 = [v22 _panWithMomentum];
      v23 = [v22 isRotateEnabled];
      v24 = [v22 isScaleEnabled];
      v25 = [v22 _shouldAnimatePositionWithRouteMatch];
      v26 = [v22 showsUserLocation];
      v27 = [v22 userTrackingMode];
      v28 = [v22 isZoomEnabled];
      v29 = [v22 _alwaysShowHeadingIndicator];
      v30 = [v22 _clearUserLocationOnLocationReset];
      [v22 _userTrackingBehavior];

      v31 = v23;
      v32 = v56;
      v33 = v58;
      v34 = v52;
      v35 = v54;
      *(v63 + 5) = v61;
      *(&v63[1] + 5) = v62;
    }

    else
    {
      v30 = 0;
      v29 = 0;
      v28 = 0;
      v27 = 0;
      v26 = 0;
      v25 = 0;
      v24 = 0;
      v31 = 0;
      v34 = 0;
      v35 = 0;
      v32 = 0;
      v33 = 0;
    }

    self->_mapViewFlagsToRestore.canSelectPOIs = v33;
    self->_mapViewFlagsToRestore.compassEnabled = v32;
    self->_mapViewFlagsToRestore.locationPropagationEnabled = v35;
    self->_mapViewFlagsToRestore.panWithMomentum = v34;
    self->_mapViewFlagsToRestore.rotateEnabled = v31;
    self->_mapViewFlagsToRestore.scaleEnabled = v24;
    self->_mapViewFlagsToRestore.shouldAnimatePositionWithRouteMatch = v25;
    self->_mapViewFlagsToRestore.showsUserLocation = v26;
    self->_mapViewFlagsToRestore.userTrackingMode = v27;
    self->_mapViewFlagsToRestore.zoomEnabled = v28;
    self->_mapViewFlagsToRestore.alwaysShowHeadingIndicator = v29;
    self->_mapViewFlagsToRestore.clearUserLocationOnLocationReset = v30;
    *(&self->_mapViewFlagsToRestore.clearUserLocationOnLocationReset + 1) = v63[0];
    *&self->_mapViewFlagsToRestore.userTrackingBehavior.idealCenterCoordinateDistance = *(v63 + 13);
    transportType = self->_transportType;
    v6 = v59;
    if (v59)
    {
      v37 = [(MKMapView *)v59 traitCollection];
      v38 = [v37 userInterfaceIdiom] != 3;
    }

    else
    {
      v38 = 1;
    }

    if (*location)
    {
      v39 = *location;
      [v39 _setCanSelectPOIs:1];
      [v39 setCompassEnabled:0];
      [v39 _setLocationPropagationEnabled:0];
      [v39 _setPanWithMomentum:1];
      [v39 setRotateEnabled:1];
      [v39 setScaleEnabled:0];
      [v39 _setShouldAnimatePositionWithRouteMatch:transportType == 0];
      [v39 setShowsUserLocation:1];
      [v39 setUserTrackingMode:0];
      [v39 setZoomEnabled:v38];
      [v39 _setAlwaysShowHeadingIndicatorIfSupported:0];
      [v39 _setClearUserLocationOnLocationReset:0];
      *(v63 + 1) = *(VKAnnotationTrackingBehaviorDefault + 1);
      *&v63[1] = VKAnnotationTrackingBehaviorDefault[2];
      LOBYTE(v63[0]) = 0;
      [v39 _setUserTrackingBehavior:v63];
      [v39 _setAlwaysShowHeadingIndicatorIfSupported:1];
    }

    [(NavigationDisplay *)self _updateSky];
    if (self->_transportType != 4)
    {
      [(NavigationDisplay *)self _updateCartographicConfiguration];
    }

    v40 = [[NavigationDebugAnnotationsProvider alloc] initWithMapView:self->_mapView];
    debugAnnotationsProvider = self->_debugAnnotationsProvider;
    self->_debugAnnotationsProvider = v40;

    [(NavigationDebugAnnotationsProvider *)self->_debugAnnotationsProvider setUserLocationMarkerMode:[(UserLocationView *)self->_userLocationAnnotationView mode]];
    [(NavigationDebugAnnotationsProvider *)self->_debugAnnotationsProvider updateWithRoute:self->_route];
    v42 = [(MKMapView *)self->_mapView selectedAnnotations];
    v43 = [v42 count];

    if (v43)
    {
      v44 = *location;
      v45 = [*location selectedAnnotations];
      v46 = [v45 firstObject];
      [v44 deselectAnnotation:v46 animated:1];
    }

    v47 = [*location _selectedLabelMarker];

    if (v47)
    {
      [*location _deselectLabelMarkerAnimated:1];
    }

    [(NavCameraController *)self->_cameraController setMapView:self->_mapView];
    v48 = [[MapViewResponder alloc] initWithMapView:self->_mapView];
    mapViewResponder = self->_mapViewResponder;
    self->_mapViewResponder = v48;

    [(MapViewResponder *)self->_mapViewResponder setTarget:self];
  }
}

- (void)setChromeViewController:(id)a3
{
  v4 = a3;
  [(NavigationDisplay *)self _stopObservingChromeIfNeeded];
  objc_storeWeak(&self->_chromeViewController, v4);
  [(NavigationDisplay *)self _startObservingChromeIfNeeded];
  v5 = [v4 mapView];

  [(NavigationDisplay *)self setMapView:v5];
}

- (void)setSky:(int64_t)a3
{
  if (self->_sky != a3)
  {
    self->_sky = a3;
    [(NavigationDisplay *)self _updateSky];
  }
}

- (void)_updateSky
{
  sky = self->_sky;
  v3 = 0.0;
  if (sky <= 2)
  {
    v3 = dbl_1012135A8[sky];
  }

  v4 = [(MKMapView *)self->_mapView _mapLayer];
  [v4 setCanonicalSkyHeight:v3];
}

- (void)dealloc
{
  [(NavigationDisplay *)self _stopObservingChromeIfNeeded];
  v3.receiver = self;
  v3.super_class = NavigationDisplay;
  [(NavigationDisplay *)&v3 dealloc];
}

- (NavigationDisplay)init
{
  v6.receiver = self;
  v6.super_class = NavigationDisplay;
  v2 = [(NavigationDisplay *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NavCameraController);
    cameraController = v2->_cameraController;
    v2->_cameraController = v3;

    v2->_transportType = 4;
    v2->_showsRoadLabel = 1;
  }

  return v2;
}

@end