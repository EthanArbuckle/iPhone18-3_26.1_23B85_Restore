@interface NavigationDisplay
- ($F9C4767691F2EDF2F3162F5FE7B1523A)cartographicConfigurationForTransportType:(SEL)type;
- (BOOL)mapView:(id)view shouldSelectLabelMarker:(id)marker;
- (ChromeViewController)chromeViewController;
- (NavigationDisplay)init;
- (NavigationDisplayDelegate)delegate;
- (id)mapViewCurrentRouteMatch:(id)match;
- (void)_setTracking:(BOOL)tracking;
- (void)_startObservingChromeIfNeeded;
- (void)_stopObservingChromeIfNeeded;
- (void)_updateCartographicConfiguration;
- (void)_updateDestinationBuildingId;
- (void)_updateMapViewAndCameraController;
- (void)_updateRoadDescription:(id)description;
- (void)_updateSky;
- (void)_updateUserAnnotationViewForCurrentTransportTypeAnimated:(BOOL)animated;
- (void)clearCache;
- (void)dealloc;
- (void)didTapMapView:(id)view atPoint:(CGPoint)point;
- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button;
- (void)mapView:(id)view didDeselectLabelMarker:(id)marker;
- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didSelectLabelMarker:(id)marker;
- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection;
- (void)mapView:(id)view didUpdateYaw:(double)yaw;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapViewNavigationCameraDidLeaveDefaultZoom:(id)zoom;
- (void)mapViewNavigationCameraDidReturnToDefaultZoom:(id)zoom;
- (void)mapViewNavigationCameraHasStartedPanning:(id)panning;
- (void)mapViewNavigationCameraHasStoppedPanning:(id)panning;
- (void)pauseCameraMotion;
- (void)setChromeViewController:(id)controller;
- (void)setMapView:(id)view;
- (void)setNavigationDestinationState:(unint64_t)state;
- (void)setRouteGeniusEntry:(id)entry;
- (void)setShowsRoadLabel:(BOOL)label;
- (void)setSky:(int64_t)sky;
- (void)setTransportType:(int)type animated:(BOOL)animated;
- (void)setUserLocationAnnotationView:(id)view;
- (void)startMotion:(BOOL)motion;
- (void)stopCameraMotion;
- (void)updateWithLocation:(id)location;
- (void)updateWithRoute:(id)route;
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

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 mapView:viewCopy regionDidChangeAnimated:animatedCopy];
  }
}

- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView
{
  viewCopy = view;
  annotationViewCopy = annotationView;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 performSelector:a2 withObject:viewCopy withObject:annotationViewCopy];
  }
}

- (void)mapViewNavigationCameraDidReturnToDefaultZoom:(id)zoom
{
  zoomCopy = zoom;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 performSelector:a2 withObject:zoomCopy];
  }
}

- (void)mapViewNavigationCameraDidLeaveDefaultZoom:(id)zoom
{
  zoomCopy = zoom;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 performSelector:a2 withObject:zoomCopy];
  }
}

- (void)mapViewNavigationCameraHasStoppedPanning:(id)panning
{
  panningCopy = panning;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 performSelector:a2 withObject:panningCopy];
  }
}

- (void)mapViewNavigationCameraHasStartedPanning:(id)panning
{
  panningCopy = panning;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 performSelector:a2 withObject:panningCopy];
  }
}

- (void)mapView:(id)view didDeselectLabelMarker:(id)marker
{
  viewCopy = view;
  markerCopy = marker;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 mapView:viewCopy didDeselectLabelMarker:markerCopy];
  }
}

- (void)mapView:(id)view didSelectLabelMarker:(id)marker
{
  viewCopy = view;
  markerCopy = marker;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 mapView:viewCopy didSelectLabelMarker:markerCopy];
  }
}

- (BOOL)mapView:(id)view shouldSelectLabelMarker:(id)marker
{
  viewCopy = view;
  markerCopy = marker;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = [v10 mapView:viewCopy shouldSelectLabelMarker:markerCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection
{
  viewCopy = view;
  if (gesture <= 1)
  {
    if (!gesture)
    {
      v24 = viewCopy;
      v13 = 1001;
      goto LABEL_34;
    }

    if (direction == 1)
    {
      v13 = 1043;
      if (type > 3)
      {
        v24 = viewCopy;
        if (type == 5)
        {
          v14 = 1049;
        }

        else
        {
          v14 = 1043;
        }

        if (type == 4)
        {
          v15 = 1047;
        }

        else
        {
          v15 = v14;
        }

        if ((type - 6) >= 2)
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
        switch(type)
        {
          case 0:
            goto LABEL_49;
          case 2:
            v24 = viewCopy;
            v13 = 1045;
            break;
          case 3:
            goto LABEL_49;
          default:
            v24 = viewCopy;
            break;
        }
      }

LABEL_34:
      v17 = +[MKMapService sharedService];
      mapRegion = [v24 mapRegion];
      [v24 _zoomLevel];
      v20 = v19;
      mapView = [(NavigationDisplay *)self mapView];
      mapType = [mapView mapType];
      v23 = 1;
      if (mapType <= 2)
      {
        switch(mapType)
        {
          case 0:
LABEL_48:
            [v17 captureUserAction:v13 onTarget:505 eventValue:0 mapRegion:mapRegion zoomLevel:v23 mapType:v20];

            viewCopy = v24;
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
        if (mapType <= 101)
        {
          if (mapType != 3)
          {
            if (mapType != 4)
            {
              goto LABEL_47;
            }

            goto LABEL_42;
          }

LABEL_46:
          v23 = 2;
          goto LABEL_48;
        }

        if (mapType == 102)
        {
          goto LABEL_48;
        }

        if (mapType == 104)
        {
          v23 = 4;
          goto LABEL_48;
        }
      }

LABEL_47:
      v23 = 0;
      goto LABEL_48;
    }

    if (type > 3)
    {
      v24 = viewCopy;
      if (type == 5)
      {
        v16 = 1050;
      }

      else
      {
        v16 = 1044;
      }

      if (type == 4)
      {
        v16 = 1048;
      }

      if ((type - 6) >= 2)
      {
        v13 = v16;
      }

      else
      {
        v13 = 1003;
      }

      goto LABEL_34;
    }

    if (type && type != 2)
    {
      v24 = viewCopy;
      if (type == 3)
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

- (id)mapViewCurrentRouteMatch:(id)match
{
  if ([(MNLocation *)self->_matchedLocation state]== 1)
  {
    routeMatch = [(MNLocation *)self->_matchedLocation routeMatch];
  }

  else
  {
    routeMatch = 0;
  }

  return routeMatch;
}

- (void)didTapMapView:(id)view atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didTapMapView:viewCopy atPoint:{x, y}];
}

- (void)mapView:(id)view didUpdateYaw:(double)yaw
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 mapView:viewCopy didUpdateYaw:yaw];
  }
}

- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 navigationDisplay:self didChangeUserTrackingMode:mode];
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

- (void)startMotion:(BOOL)motion
{
  motionCopy = motion;
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

  _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
  [_mapLayer setDesiredMapMode:v7];

  v9 = self->_matchedLocation;
  if (v9)
  {
    v10 = v9;
  }

  else if (!-[MKMapView hasUserLocation](self->_mapView, "hasUserLocation") || (v11 = [MNLocation alloc], -[MKMapView userLocation](self->_mapView, "userLocation"), v12 = objc_claimAutoreleasedReturnValue(), [v12 location], v13 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v11, "initWithRawLocation:", v13), v13, v12, (v10 = v23) == 0))
  {
    v14 = +[MNNavigationService sharedService];
    originalOrigin = [v14 originalOrigin];

    if (originalOrigin)
    {
      v16 = [CLLocation alloc];
      latLng = [originalOrigin latLng];
      [latLng lat];
      v19 = v18;
      latLng2 = [originalOrigin latLng];
      [latLng2 lng];
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
  [(NavCameraController *)self->_cameraController transitionToTrackingInMapMode:v7 animated:motionCopy startLocation:v10 startHandler:0];
}

- (void)setNavigationDestinationState:(unint64_t)state
{
  if (state != 2)
  {
    state = state == 1;
  }

  [(NavCameraController *)self->_cameraController setNavigationDestination:state];
}

- (void)_updateDestinationBuildingId
{
  destination = [(GEOComposedRoute *)self->_route destination];
  geoMapItem = [destination geoMapItem];
  _enhancedPlacement = [geoMapItem _enhancedPlacement];

  buildingIds = [_enhancedPlacement buildingIds];

  _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
  if (buildingIds)
  {
    buildingIds2 = [_enhancedPlacement buildingIds];
    v8 = [NSSet setWithArray:buildingIds2];
    [_mapLayer setSelectedBuildingFeatureIds:v8];
  }

  else
  {
    buildingIds2 = +[NSSet set];
    [_mapLayer setSelectedBuildingFeatureIds:buildingIds2];
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

        routeGeniusEntry = [(NavigationDisplay *)self routeGeniusEntry];
        [(NavCameraDriveProvider *)self->_driveCameraProvider setRouteGeniusEntry:routeGeniusEntry];

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
    nextWaypoint = [v4 nextWaypoint];
    route = [v4 route];
    waypoints = [route waypoints];
    lastObject = [waypoints lastObject];

    if (!GEOConfigGetBOOL() || nextWaypoint == lastObject)
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

- (void)_setTracking:(BOOL)tracking
{
  if (self->_tracking != tracking)
  {
    trackingCopy = tracking;
    v5 = sub_100798240();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      tracking = self->_tracking;
      mapView = [(NavigationDisplay *)self mapView];
      v8[0] = 67109634;
      v8[1] = tracking;
      v9 = 1024;
      v10 = trackingCopy;
      v11 = 2114;
      v12 = mapView;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Changing _tracking from %d to %d on %{public}@", v8, 0x18u);
    }

    self->_tracking = trackingCopy;
  }
}

- (void)_updateRoadDescription:(id)description
{
  descriptionCopy = description;
  if (!self->_showsRoadLabel)
  {

    descriptionCopy = 0;
  }

  v6 = descriptionCopy;
  if (![descriptionCopy length])
  {

    v6 = 0;
  }

  _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
  [_mapLayer setCurrentLocationText:v6];
}

- (void)setShowsRoadLabel:(BOOL)label
{
  if (self->_showsRoadLabel != label)
  {
    self->_showsRoadLabel = label;
    roadName = [(MNLocation *)self->_matchedLocation roadName];
    [(NavigationDisplay *)self _updateRoadDescription:roadName];
  }
}

- (void)clearCache
{
  _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
  [_mapLayer clearScene];
}

- (void)_updateUserAnnotationViewForCurrentTransportTypeAnimated:(BOOL)animated
{
  transportType = self->_transportType;
  if (transportType <= 3)
  {
    [(UserLocationView *)self->_userLocationAnnotationView setMode:qword_1012135C0[transportType] animated:animated];
  }
}

- (void)setTransportType:(int)type animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_transportType = type;
  [(NavigationDisplay *)self _updateCartographicConfiguration];
  if (type > 1)
  {
    if (type != 3)
    {
      if (type != 2)
      {
        goto LABEL_10;
      }

      [(MKMapView *)self->_mapView setShowsTraffic:0];
      [(MKMapView *)self->_mapView _setShowHeadingIndicatorForStepping:1];
      [(MKMapView *)self->_mapView _setShouldAnimatePositionWithRouteMatch:0];
      goto LABEL_8;
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      goto LABEL_10;
    }

    [(MKMapView *)self->_mapView setShowsTraffic:0];
    [(MKMapView *)self->_mapView setScaleEnabled:0];
    [(MKMapView *)self->_mapView _setShowHeadingIndicatorForStepping:1];
    [(MKMapView *)self->_mapView _setShouldAnimatePositionWithRouteMatch:0];
    [(MKMapView *)self->_mapView _setClearUserLocationOnLocationReset:0];
LABEL_8:
    _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
    [_mapLayer setDesiredMapMode:0];

    [(MKMapView *)self->_mapView setUserTrackingMode:0 animated:0];
    goto LABEL_10;
  }

  [(MKMapView *)self->_mapView setShowsTraffic:1];
  [(MKMapView *)self->_mapView _setShowHeadingIndicatorForStepping:0];
  [(MKMapView *)self->_mapView _setShouldAnimatePositionWithRouteMatch:1];
  _mapLayer2 = [(MKMapView *)self->_mapView _mapLayer];
  [_mapLayer2 setDesiredMapMode:1];

LABEL_10:

  [(NavigationDisplay *)self _updateUserAnnotationViewForCurrentTransportTypeAnimated:animatedCopy];
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
  preferredConfiguration = [(MKMapView *)self->_mapView preferredConfiguration];
  if ([preferredConfiguration conformsToProtocol:&OBJC_PROTOCOL___MKMapConfigurationHiking])
  {
    v6 = preferredConfiguration;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v4 setShowsHiking:{objc_msgSend(v7, "showsHiking")}];
  showsTopographicFeatures = [v7 showsTopographicFeatures];

  [v4 setShowsTopographicFeatures:showsTopographicFeatures];
  [(MKMapView *)self->_mapView setPreferredConfiguration:v4];
}

- ($F9C4767691F2EDF2F3162F5FE7B1523A)cartographicConfigurationForTransportType:(SEL)type
{
  *&retstr->var6 = 0;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  _MKCartographicConfigurationDefault();
  retstr->var4 = 0;
  chromeViewController = [(NavigationDisplay *)self chromeViewController];
  shouldUseModernMap = [chromeViewController shouldUseModernMap];

  if (shouldUseModernMap)
  {
    chromeViewController2 = [(NavigationDisplay *)self chromeViewController];
    modernMapProjectionType = [chromeViewController2 modernMapProjectionType];

    chromeViewController3 = [(NavigationDisplay *)self chromeViewController];
    modernMapTerrainMode = [chromeViewController3 modernMapTerrainMode];

    v13 = modernMapTerrainMode;
    result = modernMapTerrainMode;
    v15 = modernMapProjectionType;
  }

  else
  {
    result = 0;
    v15 = 0;
    v13 = 2;
    modernMapTerrainMode = 1;
    modernMapProjectionType = 1;
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

    v15 = modernMapProjectionType;
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
    v15 = modernMapProjectionType;
    result = modernMapTerrainMode;
  }

  retstr->var2 = v15;
  v16 = 8;
  v17 = 24;
  modernMapProjectionType = result;
LABEL_14:
  *(&retstr->var0 + v17) = modernMapProjectionType;
  *(&retstr->var0 + v16) = v13;
  return result;
}

- (void)setRouteGeniusEntry:(id)entry
{
  objc_storeStrong(&self->_routeGeniusEntry, entry);
  entryCopy = entry;
  [(NavCameraDriveProvider *)self->_driveCameraProvider setRouteGeniusEntry:entryCopy];
}

- (void)updateWithRoute:(id)route
{
  routeCopy = route;
  if (self->_route != routeCopy)
  {
    v6 = routeCopy;
    objc_storeStrong(&self->_route, route);
    [(NavigationDebugAnnotationsProvider *)self->_debugAnnotationsProvider updateWithRoute:v6];
    [(NavigationDisplay *)self _updateMapViewAndCameraController];
    [(NavigationDisplay *)self _updateDestinationBuildingId];
    routeCopy = v6;
  }
}

- (void)updateWithLocation:(id)location
{
  objc_storeStrong(&self->_matchedLocation, location);
  locationCopy = location;
  roadName = [locationCopy roadName];
  [(NavigationDisplay *)self _updateRoadDescription:roadName];

  [(NavigationDebugAnnotationsProvider *)self->_debugAnnotationsProvider updateWithLocation:locationCopy];
}

- (void)setUserLocationAnnotationView:(id)view
{
  viewCopy = view;
  if (self->_userLocationAnnotationView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_userLocationAnnotationView, view);
    [(UserLocationView *)self->_userLocationAnnotationView setCanShowCallout:0];
    [(NavigationDebugAnnotationsProvider *)self->_debugAnnotationsProvider setUserLocationMarkerMode:[(UserLocationView *)v6 mode]];
    [(NavigationDisplay *)self _updateUserAnnotationViewForCurrentTransportTypeAnimated:1];
    viewCopy = v6;
  }
}

- (void)setMapView:(id)view
{
  viewCopy = view;
  v6 = viewCopy;
  if (self->_mapView != viewCopy)
  {
    v59 = viewCopy;
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

    objc_storeStrong(location, view);
    v21 = *location;
    memset(v63, 0, 29);
    if (v21)
    {
      v22 = v21;
      _canSelectPOIs = [v22 _canSelectPOIs];
      isCompassEnabled = [v22 isCompassEnabled];
      _isLocationPropagationEnabled = [v22 _isLocationPropagationEnabled];
      _panWithMomentum = [v22 _panWithMomentum];
      isRotateEnabled = [v22 isRotateEnabled];
      isScaleEnabled = [v22 isScaleEnabled];
      _shouldAnimatePositionWithRouteMatch = [v22 _shouldAnimatePositionWithRouteMatch];
      showsUserLocation = [v22 showsUserLocation];
      userTrackingMode = [v22 userTrackingMode];
      isZoomEnabled = [v22 isZoomEnabled];
      _alwaysShowHeadingIndicator = [v22 _alwaysShowHeadingIndicator];
      _clearUserLocationOnLocationReset = [v22 _clearUserLocationOnLocationReset];
      [v22 _userTrackingBehavior];

      v31 = isRotateEnabled;
      v32 = isCompassEnabled;
      v33 = _canSelectPOIs;
      v34 = _panWithMomentum;
      v35 = _isLocationPropagationEnabled;
      *(v63 + 5) = v61;
      *(&v63[1] + 5) = v62;
    }

    else
    {
      _clearUserLocationOnLocationReset = 0;
      _alwaysShowHeadingIndicator = 0;
      isZoomEnabled = 0;
      userTrackingMode = 0;
      showsUserLocation = 0;
      _shouldAnimatePositionWithRouteMatch = 0;
      isScaleEnabled = 0;
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
    self->_mapViewFlagsToRestore.scaleEnabled = isScaleEnabled;
    self->_mapViewFlagsToRestore.shouldAnimatePositionWithRouteMatch = _shouldAnimatePositionWithRouteMatch;
    self->_mapViewFlagsToRestore.showsUserLocation = showsUserLocation;
    self->_mapViewFlagsToRestore.userTrackingMode = userTrackingMode;
    self->_mapViewFlagsToRestore.zoomEnabled = isZoomEnabled;
    self->_mapViewFlagsToRestore.alwaysShowHeadingIndicator = _alwaysShowHeadingIndicator;
    self->_mapViewFlagsToRestore.clearUserLocationOnLocationReset = _clearUserLocationOnLocationReset;
    *(&self->_mapViewFlagsToRestore.clearUserLocationOnLocationReset + 1) = v63[0];
    *&self->_mapViewFlagsToRestore.userTrackingBehavior.idealCenterCoordinateDistance = *(v63 + 13);
    transportType = self->_transportType;
    v6 = v59;
    if (v59)
    {
      traitCollection = [(MKMapView *)v59 traitCollection];
      v38 = [traitCollection userInterfaceIdiom] != 3;
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
    selectedAnnotations = [(MKMapView *)self->_mapView selectedAnnotations];
    v43 = [selectedAnnotations count];

    if (v43)
    {
      v44 = *location;
      selectedAnnotations2 = [*location selectedAnnotations];
      firstObject = [selectedAnnotations2 firstObject];
      [v44 deselectAnnotation:firstObject animated:1];
    }

    _selectedLabelMarker = [*location _selectedLabelMarker];

    if (_selectedLabelMarker)
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

- (void)setChromeViewController:(id)controller
{
  controllerCopy = controller;
  [(NavigationDisplay *)self _stopObservingChromeIfNeeded];
  objc_storeWeak(&self->_chromeViewController, controllerCopy);
  [(NavigationDisplay *)self _startObservingChromeIfNeeded];
  mapView = [controllerCopy mapView];

  [(NavigationDisplay *)self setMapView:mapView];
}

- (void)setSky:(int64_t)sky
{
  if (self->_sky != sky)
  {
    self->_sky = sky;
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

  _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
  [_mapLayer setCanonicalSkyHeight:v3];
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