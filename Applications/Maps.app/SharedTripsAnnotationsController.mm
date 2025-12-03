@interface SharedTripsAnnotationsController
- (BOOL)_shouldBeActive;
- (BOOL)updateRouteAnnotationsConfiguration:(id)configuration;
- (ChromeViewController)chromeViewController;
- (MKMapView)mapView;
- (MapCameraController)mapCameraController;
- (SearchPinsManager)searchPinsManager;
- (SharedTripsAnnotationsController)init;
- (double)_userAnnotationViewImageSideLength;
- (id)_composedRouteToDisplay;
- (id)_waypointSearchResults;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)_attachToMapViewIfNeeded:(BOOL)needed;
- (void)_connectOrDisconnectFromMapView;
- (void)_detachFromMapView;
- (void)_showStartEndPinsAnimated:(BOOL)animated;
- (void)_updateModernMapTokenIfNeeded;
- (void)_updateRouteLines;
- (void)_updateSubscriptions;
- (void)dealloc;
- (void)poiShapeLoader:(id)loader didLoadStartPOIShape:(id)shape endPOIShapes:(id)shapes;
- (void)recenterOnRouteAnimated:(BOOL)animated;
- (void)reload;
- (void)removeFromMapView;
- (void)setActive:(BOOL)active;
- (void)setChromeViewController:(id)controller;
- (void)setMapView:(id)view mapCameraController:(id)controller searchPinsManager:(id)manager animated:(BOOL)animated;
- (void)setSharedTrip:(id)trip;
- (void)sharedTripService:(id)service didRemoveSharedTrip:(id)trip;
- (void)sharedTripService:(id)service didUpdateClosedTrip:(id)trip;
- (void)sharedTripService:(id)service didUpdateDestinationForSharedTrip:(id)trip;
- (void)sharedTripService:(id)service didUpdateETAForSharedTrip:(id)trip;
- (void)sharedTripService:(id)service didUpdateReachedDestinationForSharedTrip:(id)trip;
- (void)sharedTripService:(id)service didUpdateRouteForSharedTrip:(id)trip;
@end

@implementation SharedTripsAnnotationsController

- (SharedTripsAnnotationsController)init
{
  v6.receiver = self;
  v6.super_class = SharedTripsAnnotationsController;
  v2 = [(SharedTripsAnnotationsController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SharedTripsItemSource);
    itemSource = v2->_itemSource;
    v2->_itemSource = v3;
  }

  return v2;
}

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (SearchPinsManager)searchPinsManager
{
  WeakRetained = objc_loadWeakRetained(&self->_searchPinsManager);

  return WeakRetained;
}

- (MapCameraController)mapCameraController
{
  WeakRetained = objc_loadWeakRetained(&self->_mapCameraController);

  return WeakRetained;
}

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (void)setChromeViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_chromeViewController, obj);
    if (obj)
    {
      mapView = [obj mapView];
      mapCameraController = [obj mapCameraController];
      searchPinsManager = [obj searchPinsManager];
      [(SharedTripsAnnotationsController *)self setMapView:mapView mapCameraController:mapCameraController searchPinsManager:searchPinsManager animated:0];
    }

    else
    {
      [(SharedTripsAnnotationsController *)self removeFromMapView];
    }

    v5 = obj;
  }
}

- (void)sharedTripService:(id)service didUpdateReachedDestinationForSharedTrip:(id)trip
{
  tripCopy = trip;
  sharedTrip = [(SharedTripsAnnotationsController *)self sharedTrip];
  groupIdentifier = [sharedTrip groupIdentifier];
  groupIdentifier2 = [tripCopy groupIdentifier];
  v9 = [groupIdentifier isEqualToString:groupIdentifier2];

  if (v9)
  {
    objc_storeStrong(&self->_sharedTrip, trip);
    [(SharedTripsAnnotationsController *)self _updateRouteLines];
    [(SharedTripsAnnotationsController *)self _showStartEndPinsAnimated:1];
  }
}

- (void)sharedTripService:(id)service didUpdateClosedTrip:(id)trip
{
  tripCopy = trip;
  sharedTrip = [(SharedTripsAnnotationsController *)self sharedTrip];
  groupIdentifier = [sharedTrip groupIdentifier];
  groupIdentifier2 = [tripCopy groupIdentifier];
  v9 = [groupIdentifier isEqualToString:groupIdentifier2];

  if (v9)
  {
    objc_storeStrong(&self->_sharedTrip, trip);
    [(SharedTripsAnnotationsController *)self _updateRouteLines];
    [(SharedTripsAnnotationsController *)self _showStartEndPinsAnimated:1];
  }
}

- (void)sharedTripService:(id)service didRemoveSharedTrip:(id)trip
{
  tripCopy = trip;
  sharedTrip = [(SharedTripsAnnotationsController *)self sharedTrip];
  groupIdentifier = [sharedTrip groupIdentifier];
  groupIdentifier2 = [tripCopy groupIdentifier];

  LODWORD(tripCopy) = [groupIdentifier isEqualToString:groupIdentifier2];
  if (tripCopy)
  {

    [(SharedTripsAnnotationsController *)self setSharedTrip:0];
  }
}

- (void)sharedTripService:(id)service didUpdateDestinationForSharedTrip:(id)trip
{
  tripCopy = trip;
  sharedTrip = [(SharedTripsAnnotationsController *)self sharedTrip];
  groupIdentifier = [sharedTrip groupIdentifier];
  groupIdentifier2 = [tripCopy groupIdentifier];
  v9 = [groupIdentifier isEqualToString:groupIdentifier2];

  if (v9)
  {
    objc_storeStrong(&self->_sharedTrip, trip);
    [(SharedTripsAnnotationsController *)self _showStartEndPinsAnimated:1];
  }
}

- (void)sharedTripService:(id)service didUpdateETAForSharedTrip:(id)trip
{
  tripCopy = trip;
  sharedTrip = [(SharedTripsAnnotationsController *)self sharedTrip];
  groupIdentifier = [sharedTrip groupIdentifier];
  groupIdentifier2 = [tripCopy groupIdentifier];
  v9 = [groupIdentifier isEqualToString:groupIdentifier2];

  if (v9)
  {
    objc_storeStrong(&self->_sharedTrip, trip);
    [(SharedTripsAnnotationsController *)self _showStartEndPinsAnimated:1];
  }
}

- (void)sharedTripService:(id)service didUpdateRouteForSharedTrip:(id)trip
{
  tripCopy = trip;
  sharedTrip = [(SharedTripsAnnotationsController *)self sharedTrip];
  groupIdentifier = [sharedTrip groupIdentifier];
  groupIdentifier2 = [tripCopy groupIdentifier];
  v8 = [groupIdentifier isEqualToString:groupIdentifier2];

  if (v8)
  {
    v9 = [tripCopy copy];
    sharedTrip = self->_sharedTrip;
    self->_sharedTrip = v9;

    [(SharedTripsAnnotationsController *)self _updateRouteLines];
    [(SharedTripsAnnotationsController *)self _showStartEndPinsAnimated:1];
  }
}

- (void)_updateModernMapTokenIfNeeded
{
  chromeViewController = [(SharedTripsAnnotationsController *)self chromeViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = chromeViewController;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    sharedTrip = [(SharedTripsAnnotationsController *)self sharedTrip];
    routeInfo = [sharedTrip routeInfo];
    if (routeInfo)
    {
      v8 = routeInfo;
      sharedTrip2 = [(SharedTripsAnnotationsController *)self sharedTrip];
      routeInfo2 = [sharedTrip2 routeInfo];
      routingPathLegsCount = [routeInfo2 routingPathLegsCount];

      if (!routingPathLegsCount)
      {
        if (!self->_modernMapToken)
        {
          v12 = sub_1000946AC();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Acquiring map type suppression token to display trip from older client", buf, 2u);
          }

          v13 = [v5 acquireModernMapTokenForReason:2];
          modernMapToken = self->_modernMapToken;
          self->_modernMapToken = v13;
LABEL_16:

          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  if (self->_modernMapToken)
  {
    v15 = sub_1000946AC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Releasing map type suppression token", v16, 2u);
    }

    modernMapToken = self->_modernMapToken;
    self->_modernMapToken = 0;
    goto LABEL_16;
  }

LABEL_17:
}

- (BOOL)_shouldBeActive
{
  if (!self->_attachedToMapView)
  {
    return 0;
  }

  sharedTrip = [(SharedTripsAnnotationsController *)self sharedTrip];
  v3 = sharedTrip != 0;

  return v3;
}

- (void)poiShapeLoader:(id)loader didLoadStartPOIShape:(id)shape endPOIShapes:(id)shapes
{
  if ([(SharedTripsAnnotationsController *)self automaticallyRecenters:loader])
  {

    [(SharedTripsAnnotationsController *)self recenterOnRouteAnimated:1];
  }
}

- (double)_userAnnotationViewImageSideLength
{
  result = 40.0;
  if (self->_idiom == 3)
  {
    return 34.0;
  }

  return result;
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userAnnotationView = self->_userAnnotationView;
    if (userAnnotationView)
    {
      [(SharedTripContactAnnotationView *)userAnnotationView setAnnotation:annotationCopy];
    }

    else
    {
      v8 = [SharedTripContactAnnotationView alloc];
      [(SharedTripsAnnotationsController *)self _userAnnotationViewImageSideLength];
      v9 = [(SharedTripContactAnnotationView *)v8 initWithAnnotation:annotationCopy reuseIdentifier:@"UserAnnotation" imageSideLength:?];
      v10 = self->_userAnnotationView;
      self->_userAnnotationView = v9;

      [(SharedTripContactAnnotationView *)self->_userAnnotationView setTranslatesAutoresizingMaskIntoConstraints:0];
      widthAnchor = [(SharedTripContactAnnotationView *)self->_userAnnotationView widthAnchor];
      [(SharedTripsAnnotationsController *)self _userAnnotationViewImageSideLength];
      v12 = [widthAnchor constraintEqualToConstant:?];
      v17[0] = v12;
      heightAnchor = [(SharedTripContactAnnotationView *)self->_userAnnotationView heightAnchor];
      [(SharedTripsAnnotationsController *)self _userAnnotationViewImageSideLength];
      v14 = [heightAnchor constraintEqualToConstant:?];
      v17[1] = v14;
      v15 = [NSArray arrayWithObjects:v17 count:2];
      [NSLayoutConstraint activateConstraints:v15];
    }

    v7 = self->_userAnnotationView;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_showStartEndPinsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  sharedTrip = [(SharedTripsAnnotationsController *)self sharedTrip];
  itemSource = self->_itemSource;
  _waypointSearchResults = [(SharedTripsAnnotationsController *)self _waypointSearchResults];
  [(RouteStartEndItemSource *)itemSource setStartLocation:0 endLocations:_waypointSearchResults];

  if ([(SharedTripsAnnotationsController *)self shouldShowRoute])
  {
    lastLocation = [sharedTrip lastLocation];
    if ((![sharedTrip hasClosed] || objc_msgSend(sharedTrip, "closed") != 1) && lastLocation && objc_msgSend(lastLocation, "hasCoordinate"))
    {
      userAnnotation = self->_userAnnotation;
      v9 = sharedTrip;
      if (!userAnnotation)
      {
        v10 = objc_alloc_init(SharedTripUserAnnotation);
        v11 = self->_userAnnotation;
        self->_userAnnotation = v10;

        mapView = [(SharedTripsAnnotationsController *)self mapView];
        [mapView addAnnotation:self->_userAnnotation];

        v9 = sharedTrip;
        userAnnotation = self->_userAnnotation;
      }

      [(SharedTripUserAnnotation *)userAnnotation setState:v9];
      coordinate = [lastLocation coordinate];
      [coordinate lat];
      v15 = v14;
      [coordinate lng];
      v17 = CLLocationCoordinate2DMake(v15, v16);
      [(SharedTripUserAnnotation *)self->_userAnnotation setCoordinate:v17.latitude, v17.longitude];
    }

    else
    {
      if (!self->_userAnnotation)
      {
LABEL_12:

        goto LABEL_13;
      }

      mapView2 = [(SharedTripsAnnotationsController *)self mapView];
      [mapView2 removeAnnotation:self->_userAnnotation];

      coordinate = self->_userAnnotation;
      self->_userAnnotation = 0;
    }

    goto LABEL_12;
  }

LABEL_13:
  if ([(SharedTripsAnnotationsController *)self automaticallyRecenters])
  {
    [(SharedTripsAnnotationsController *)self recenterOnRouteAnimated:animatedCopy];
  }
}

- (id)_waypointSearchResults
{
  sharedTrip = [(SharedTripsAnnotationsController *)self sharedTrip];
  v3 = sharedTrip;
  if (sharedTrip && ![sharedTrip waypointInfosCount])
  {
    v8 = sub_10006D178();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v13 = "[SharedTripsAnnotationsController _waypointSearchResults]";
      v14 = 2080;
      v15 = "SharedTripsAnnotationsController.m";
      v16 = 1024;
      v17 = 288;
      v18 = 2080;
      v19 = "!trip || trip.waypointInfosCount > 0";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if ([v3 hasCurrentWaypointIndex])
  {
    currentWaypointIndex = [v3 currentWaypointIndex];
  }

  else
  {
    currentWaypointIndex = 0;
  }

  waypointInfos = [v3 waypointInfos];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100D42598;
  v11[3] = &unk_101651D58;
  v11[4] = currentWaypointIndex;
  v6 = sub_100021DB0(waypointInfos, v11);

  return v6;
}

- (BOOL)updateRouteAnnotationsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _composedRouteToDisplay = [(SharedTripsAnnotationsController *)self _composedRouteToDisplay];
  [configurationCopy setStyle:0];
  if (_composedRouteToDisplay)
  {
    v9 = _composedRouteToDisplay;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
    [configurationCopy setRoutes:v6];

    v7 = 0;
  }

  else
  {
    [configurationCopy setRoutes:&__NSArray0__struct];
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [configurationCopy setRouteTrafficFeaturesActive:1];
  [configurationCopy setSelectedRouteIndex:v7];

  return 1;
}

- (void)_updateRouteLines
{
  [(SharedTripsAnnotationsController *)self _updateModernMapTokenIfNeeded];
  _composedRouteToDisplay = [(SharedTripsAnnotationsController *)self _composedRouteToDisplay];
  if (_composedRouteToDisplay)
  {
    v3 = 0;
  }

  else
  {
    v3 = 4095;
  }

  [(RouteStartEndItemSource *)self->_itemSource setVisibilityMask:v3];
  chromeViewController = [(SharedTripsAnnotationsController *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (id)_composedRouteToDisplay
{
  sharedTrip = [(SharedTripsAnnotationsController *)self sharedTrip];
  if ([sharedTrip hasClosed])
  {
    v4 = [sharedTrip closed] ^ 1;
  }

  else
  {
    v4 = 1;
  }

  composedRoute = 0;
  if (sharedTrip && v4)
  {
    if (-[SharedTripsAnnotationsController shouldShowRoute](self, "shouldShowRoute") && ([sharedTrip composedRoute], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      composedRoute = [sharedTrip composedRoute];
    }

    else
    {
      composedRoute = 0;
    }
  }

  return composedRoute;
}

- (void)recenterOnRouteAnimated:(BOOL)animated
{
  animatedCopy = animated;
  sharedTrip = [(SharedTripsAnnotationsController *)self sharedTrip];
  if (!sharedTrip)
  {
    goto LABEL_26;
  }

  y = MKMapRectNull.origin.y;
  width = MKMapRectNull.size.width;
  height = MKMapRectNull.size.height;
  v45 = sharedTrip;
  hasClosed = [sharedTrip hasClosed];
  v10 = v45;
  if (!hasClosed || (v11 = [v45 closed], v10 = v45, (v11 & 1) == 0))
  {
    composedRoute = [v10 composedRoute];
    if (composedRoute && [(SharedTripsAnnotationsController *)self shouldShowRoute])
    {
      boundingMapRegion = [composedRoute boundingMapRegion];
      GEOMapRectForMapRegion();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v48.origin.x = MKMapRectNull.origin.x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v56.origin.x = v17;
      v56.origin.y = v19;
      v56.size.width = v21;
      v56.size.height = v23;
      v49 = MKMapRectUnion(v48, v56);
      x = v49.origin.x;
      v12 = v49.origin.y;
      width = v49.size.width;
      height = v49.size.height;
    }

    else
    {
      v12 = y;
      x = MKMapRectNull.origin.x;
    }

    etaInfo = [v45 etaInfo];
    v25 = etaInfo;
    if (etaInfo && [etaInfo hasLatitude] && objc_msgSend(v25, "hasLongitude") && -[SharedTripsAnnotationsController shouldShowRoute](self, "shouldShowRoute"))
    {
      [v25 latitude];
      v27 = v26;
      [v25 longitude];
      CLLocationCoordinate2DMake(v27, v28);
    }

    else
    {
      userAnnotation = self->_userAnnotation;
      if (!userAnnotation)
      {
        goto LABEL_18;
      }

      [(SharedTripUserAnnotation *)userAnnotation coordinate];
      if (!CLLocationCoordinate2DIsValid(v47))
      {
        goto LABEL_18;
      }

      [(SharedTripUserAnnotation *)self->_userAnnotation coordinate];
    }

    MKMapRectMakeWithRadialDistance();
    v57.origin.x = v30;
    v57.origin.y = v31;
    v57.size.width = v32;
    v57.size.height = v33;
    v50.origin.x = x;
    v50.origin.y = v12;
    v50.size.width = width;
    v50.size.height = height;
    v51 = MKMapRectUnion(v50, v57);
    x = v51.origin.x;
    v12 = v51.origin.y;
    width = v51.size.width;
    height = v51.size.height;
LABEL_18:

    goto LABEL_19;
  }

  v12 = y;
  x = MKMapRectNull.origin.x;
LABEL_19:
  destinationWaypointMapItem = [v45 destinationWaypointMapItem];
  if (destinationWaypointMapItem)
  {
    v35 = [[MKMapItem alloc] initWithGeoMapItem:destinationWaypointMapItem isPlaceHolderPlace:0];
    [v35 _coordinate];
    MKMapRectMakeWithRadialDistance();
    v58.origin.x = v36;
    v58.origin.y = v37;
    v58.size.width = v38;
    v58.size.height = v39;
    v52.origin.x = x;
    v52.origin.y = v12;
    v52.size.width = width;
    v52.size.height = height;
    v53 = MKMapRectUnion(v52, v58);
    x = v53.origin.x;
    v12 = v53.origin.y;
    width = v53.size.width;
    height = v53.size.height;
  }

  if ((x != MKMapRectNull.origin.x || v12 != y) && width != 0.0 && height != 0.0)
  {
    v54.origin.x = x;
    v54.origin.y = v12;
    v54.size.width = width;
    v54.size.height = height;
    v55 = MKMapRectInset(v54, width * -0.100000001, height * -0.100000001);
    v40 = v55.origin.x;
    v41 = v55.origin.y;
    v42 = v55.size.width;
    v43 = v55.size.height;
    mapCameraController = [(SharedTripsAnnotationsController *)self mapCameraController];
    [mapCameraController frameMapRect:animatedCopy animated:0 completion:{v40, v41, v42, v43}];
  }

  sharedTrip = v45;
LABEL_26:
}

- (void)reload
{
  [(SharedTripsAnnotationsController *)self _updateRouteLines];

  [(SharedTripsAnnotationsController *)self _showStartEndPinsAnimated:1];
}

- (void)_updateSubscriptions
{
  _shouldBeActive = [(SharedTripsAnnotationsController *)self _shouldBeActive];
  sharedTrip = [(SharedTripsAnnotationsController *)self sharedTrip];
  groupIdentifier = [sharedTrip groupIdentifier];

  chromeViewController = [(SharedTripsAnnotationsController *)self chromeViewController];
  _maps_uiScene = [chromeViewController _maps_uiScene];

  v7 = 0;
  subscriptionToken = self->_subscriptionToken;
  if (_shouldBeActive && groupIdentifier && _maps_uiScene)
  {
    if (subscriptionToken)
    {
      goto LABEL_7;
    }

    v7 = [[SharedTripSceneAwareSubscription alloc] initWithTripIdentifier:groupIdentifier scene:_maps_uiScene];
    subscriptionToken = self->_subscriptionToken;
  }

  self->_subscriptionToken = v7;

LABEL_7:
}

- (void)_connectOrDisconnectFromMapView
{
  sharedTrip = self->_sharedTrip;
  if (self->_attachedToMapView)
  {
    if (!sharedTrip)
    {
      [(SharedTripsAnnotationsController *)self _detachFromMapView];
    }
  }

  else if (sharedTrip)
  {
    [(SharedTripsAnnotationsController *)self _attachToMapViewIfNeeded:1];
  }
}

- (void)removeFromMapView
{
  [(SharedTripsAnnotationsController *)self _detachFromMapView];
  objc_storeWeak(&self->_mapView, 0);
  objc_storeWeak(&self->_mapCameraController, 0);

  objc_storeWeak(&self->_searchPinsManager, 0);
}

- (void)_detachFromMapView
{
  if (self->_attachedToMapView)
  {
    v10 = v2;
    v11 = v3;
    self->_attachedToMapView = 0;
    v5 = +[MSPSharedTripService sharedInstance];
    [v5 removeReceivingObserver:self];

    v6 = [(SharedTripsAnnotationsController *)self mapView:self->_oldMapConfiguration.style];
    [v6 _setCartographicConfiguration:&v9];

    mapView = [(SharedTripsAnnotationsController *)self mapView];
    [mapView removeAnnotation:self->_userAnnotation];

    searchPinsManager = [(SharedTripsAnnotationsController *)self searchPinsManager];
    [searchPinsManager unregisterPOIShapeLoadingObserver:self];
  }
}

- (void)_attachToMapViewIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  if (WeakRetained)
  {
    sharedTrip = self->_sharedTrip;

    if (sharedTrip)
    {
      self->_attachedToMapView = 1;
      mapView = [(SharedTripsAnnotationsController *)self mapView];
      camera = [mapView camera];
      v9 = [camera copy];

      [v9 setPitch:0.0];
      [v9 setHeading:0.0];
      mapView2 = [(SharedTripsAnnotationsController *)self mapView];
      [mapView2 setCamera:v9 animated:neededCopy];

      mapView3 = [(SharedTripsAnnotationsController *)self mapView];
      [mapView3 setShowsTraffic:1];

      mapView4 = [(SharedTripsAnnotationsController *)self mapView];
      v13 = mapView4;
      if (mapView4)
      {
        [mapView4 _cartographicConfiguration];
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
      }

      v14 = v27;
      *&self->_oldMapConfiguration.style = v26;
      *&self->_oldMapConfiguration.projection = v14;
      *&self->_oldMapConfiguration.mapkitUsage = v28;
      *&self->_oldMapConfiguration.gridOnly = v29;

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      mapView5 = [(SharedTripsAnnotationsController *)self mapView];
      v16 = mapView5;
      if (mapView5)
      {
        [mapView5 _cartographicConfiguration];
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
      }

      v26 = xmmword_1011F07A0;
      *&v28 = 0;
      v25 = v29;
      v22 = xmmword_1011F07A0;
      v23 = v27;
      v24 = v28;
      mapView6 = [(SharedTripsAnnotationsController *)self mapView];
      v20[0] = xmmword_1011F07A0;
      v20[1] = v23;
      v20[2] = v24;
      v21 = v25;
      [mapView6 _setCartographicConfiguration:v20];

      searchPinsManager = [(SharedTripsAnnotationsController *)self searchPinsManager];
      [searchPinsManager registerPOIShapeLoadingObserver:self];

      [(SharedTripsAnnotationsController *)self _updateRouteLines];
      [(SharedTripsAnnotationsController *)self _showStartEndPinsAnimated:neededCopy];
      v19 = +[MSPSharedTripService sharedInstance];
      [v19 addReceivingObserver:self];
    }
  }
}

- (void)setMapView:(id)view mapCameraController:(id)controller searchPinsManager:(id)manager animated:(BOOL)animated
{
  animatedCopy = animated;
  managerCopy = manager;
  controllerCopy = controller;
  viewCopy = view;
  objc_storeWeak(&self->_mapView, viewCopy);
  objc_storeWeak(&self->_mapCameraController, controllerCopy);

  objc_storeWeak(&self->_searchPinsManager, managerCopy);
  traitCollection = [viewCopy traitCollection];

  self->_idiom = [traitCollection userInterfaceIdiom];

  [(SharedTripsAnnotationsController *)self _attachToMapViewIfNeeded:animatedCopy];
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    [(SharedTripsAnnotationsController *)self _updateSubscriptions];
  }
}

- (void)setSharedTrip:(id)trip
{
  tripCopy = trip;
  if (self->_sharedTrip != tripCopy)
  {
    v7 = tripCopy;
    objc_storeStrong(&self->_sharedTrip, trip);
    subscriptionToken = self->_subscriptionToken;
    self->_subscriptionToken = 0;

    self->_automaticallyRecenter = 1;
    [(SharedTripsAnnotationsController *)self _connectOrDisconnectFromMapView];
    [(SharedTripsAnnotationsController *)self _updateSubscriptions];
    [(SharedTripsAnnotationsController *)self reload];
    tripCopy = v7;
  }
}

- (void)dealloc
{
  [(SharedTripsAnnotationsController *)self removeFromMapView];
  v3.receiver = self;
  v3.super_class = SharedTripsAnnotationsController;
  [(SharedTripsAnnotationsController *)&v3 dealloc];
}

@end