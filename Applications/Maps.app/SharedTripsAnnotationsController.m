@interface SharedTripsAnnotationsController
- (BOOL)_shouldBeActive;
- (BOOL)updateRouteAnnotationsConfiguration:(id)a3;
- (ChromeViewController)chromeViewController;
- (MKMapView)mapView;
- (MapCameraController)mapCameraController;
- (SearchPinsManager)searchPinsManager;
- (SharedTripsAnnotationsController)init;
- (double)_userAnnotationViewImageSideLength;
- (id)_composedRouteToDisplay;
- (id)_waypointSearchResults;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (void)_attachToMapViewIfNeeded:(BOOL)a3;
- (void)_connectOrDisconnectFromMapView;
- (void)_detachFromMapView;
- (void)_showStartEndPinsAnimated:(BOOL)a3;
- (void)_updateModernMapTokenIfNeeded;
- (void)_updateRouteLines;
- (void)_updateSubscriptions;
- (void)dealloc;
- (void)poiShapeLoader:(id)a3 didLoadStartPOIShape:(id)a4 endPOIShapes:(id)a5;
- (void)recenterOnRouteAnimated:(BOOL)a3;
- (void)reload;
- (void)removeFromMapView;
- (void)setActive:(BOOL)a3;
- (void)setChromeViewController:(id)a3;
- (void)setMapView:(id)a3 mapCameraController:(id)a4 searchPinsManager:(id)a5 animated:(BOOL)a6;
- (void)setSharedTrip:(id)a3;
- (void)sharedTripService:(id)a3 didRemoveSharedTrip:(id)a4;
- (void)sharedTripService:(id)a3 didUpdateClosedTrip:(id)a4;
- (void)sharedTripService:(id)a3 didUpdateDestinationForSharedTrip:(id)a4;
- (void)sharedTripService:(id)a3 didUpdateETAForSharedTrip:(id)a4;
- (void)sharedTripService:(id)a3 didUpdateReachedDestinationForSharedTrip:(id)a4;
- (void)sharedTripService:(id)a3 didUpdateRouteForSharedTrip:(id)a4;
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

- (void)setChromeViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_chromeViewController, obj);
    if (obj)
    {
      v6 = [obj mapView];
      v7 = [obj mapCameraController];
      v8 = [obj searchPinsManager];
      [(SharedTripsAnnotationsController *)self setMapView:v6 mapCameraController:v7 searchPinsManager:v8 animated:0];
    }

    else
    {
      [(SharedTripsAnnotationsController *)self removeFromMapView];
    }

    v5 = obj;
  }
}

- (void)sharedTripService:(id)a3 didUpdateReachedDestinationForSharedTrip:(id)a4
{
  v10 = a4;
  v6 = [(SharedTripsAnnotationsController *)self sharedTrip];
  v7 = [v6 groupIdentifier];
  v8 = [v10 groupIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    objc_storeStrong(&self->_sharedTrip, a4);
    [(SharedTripsAnnotationsController *)self _updateRouteLines];
    [(SharedTripsAnnotationsController *)self _showStartEndPinsAnimated:1];
  }
}

- (void)sharedTripService:(id)a3 didUpdateClosedTrip:(id)a4
{
  v10 = a4;
  v6 = [(SharedTripsAnnotationsController *)self sharedTrip];
  v7 = [v6 groupIdentifier];
  v8 = [v10 groupIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    objc_storeStrong(&self->_sharedTrip, a4);
    [(SharedTripsAnnotationsController *)self _updateRouteLines];
    [(SharedTripsAnnotationsController *)self _showStartEndPinsAnimated:1];
  }
}

- (void)sharedTripService:(id)a3 didRemoveSharedTrip:(id)a4
{
  v5 = a4;
  v6 = [(SharedTripsAnnotationsController *)self sharedTrip];
  v7 = [v6 groupIdentifier];
  v8 = [v5 groupIdentifier];

  LODWORD(v5) = [v7 isEqualToString:v8];
  if (v5)
  {

    [(SharedTripsAnnotationsController *)self setSharedTrip:0];
  }
}

- (void)sharedTripService:(id)a3 didUpdateDestinationForSharedTrip:(id)a4
{
  v10 = a4;
  v6 = [(SharedTripsAnnotationsController *)self sharedTrip];
  v7 = [v6 groupIdentifier];
  v8 = [v10 groupIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    objc_storeStrong(&self->_sharedTrip, a4);
    [(SharedTripsAnnotationsController *)self _showStartEndPinsAnimated:1];
  }
}

- (void)sharedTripService:(id)a3 didUpdateETAForSharedTrip:(id)a4
{
  v10 = a4;
  v6 = [(SharedTripsAnnotationsController *)self sharedTrip];
  v7 = [v6 groupIdentifier];
  v8 = [v10 groupIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    objc_storeStrong(&self->_sharedTrip, a4);
    [(SharedTripsAnnotationsController *)self _showStartEndPinsAnimated:1];
  }
}

- (void)sharedTripService:(id)a3 didUpdateRouteForSharedTrip:(id)a4
{
  v11 = a4;
  v5 = [(SharedTripsAnnotationsController *)self sharedTrip];
  v6 = [v5 groupIdentifier];
  v7 = [v11 groupIdentifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [v11 copy];
    sharedTrip = self->_sharedTrip;
    self->_sharedTrip = v9;

    [(SharedTripsAnnotationsController *)self _updateRouteLines];
    [(SharedTripsAnnotationsController *)self _showStartEndPinsAnimated:1];
  }
}

- (void)_updateModernMapTokenIfNeeded
{
  v3 = [(SharedTripsAnnotationsController *)self chromeViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [(SharedTripsAnnotationsController *)self sharedTrip];
    v7 = [v6 routeInfo];
    if (v7)
    {
      v8 = v7;
      v9 = [(SharedTripsAnnotationsController *)self sharedTrip];
      v10 = [v9 routeInfo];
      v11 = [v10 routingPathLegsCount];

      if (!v11)
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

  v2 = [(SharedTripsAnnotationsController *)self sharedTrip];
  v3 = v2 != 0;

  return v3;
}

- (void)poiShapeLoader:(id)a3 didLoadStartPOIShape:(id)a4 endPOIShapes:(id)a5
{
  if ([(SharedTripsAnnotationsController *)self automaticallyRecenters:a3])
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

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userAnnotationView = self->_userAnnotationView;
    if (userAnnotationView)
    {
      [(SharedTripContactAnnotationView *)userAnnotationView setAnnotation:v5];
    }

    else
    {
      v8 = [SharedTripContactAnnotationView alloc];
      [(SharedTripsAnnotationsController *)self _userAnnotationViewImageSideLength];
      v9 = [(SharedTripContactAnnotationView *)v8 initWithAnnotation:v5 reuseIdentifier:@"UserAnnotation" imageSideLength:?];
      v10 = self->_userAnnotationView;
      self->_userAnnotationView = v9;

      [(SharedTripContactAnnotationView *)self->_userAnnotationView setTranslatesAutoresizingMaskIntoConstraints:0];
      v11 = [(SharedTripContactAnnotationView *)self->_userAnnotationView widthAnchor];
      [(SharedTripsAnnotationsController *)self _userAnnotationViewImageSideLength];
      v12 = [v11 constraintEqualToConstant:?];
      v17[0] = v12;
      v13 = [(SharedTripContactAnnotationView *)self->_userAnnotationView heightAnchor];
      [(SharedTripsAnnotationsController *)self _userAnnotationViewImageSideLength];
      v14 = [v13 constraintEqualToConstant:?];
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

- (void)_showStartEndPinsAnimated:(BOOL)a3
{
  v3 = a3;
  v19 = [(SharedTripsAnnotationsController *)self sharedTrip];
  itemSource = self->_itemSource;
  v6 = [(SharedTripsAnnotationsController *)self _waypointSearchResults];
  [(RouteStartEndItemSource *)itemSource setStartLocation:0 endLocations:v6];

  if ([(SharedTripsAnnotationsController *)self shouldShowRoute])
  {
    v7 = [v19 lastLocation];
    if ((![v19 hasClosed] || objc_msgSend(v19, "closed") != 1) && v7 && objc_msgSend(v7, "hasCoordinate"))
    {
      userAnnotation = self->_userAnnotation;
      v9 = v19;
      if (!userAnnotation)
      {
        v10 = objc_alloc_init(SharedTripUserAnnotation);
        v11 = self->_userAnnotation;
        self->_userAnnotation = v10;

        v12 = [(SharedTripsAnnotationsController *)self mapView];
        [v12 addAnnotation:self->_userAnnotation];

        v9 = v19;
        userAnnotation = self->_userAnnotation;
      }

      [(SharedTripUserAnnotation *)userAnnotation setState:v9];
      v13 = [v7 coordinate];
      [v13 lat];
      v15 = v14;
      [v13 lng];
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

      v18 = [(SharedTripsAnnotationsController *)self mapView];
      [v18 removeAnnotation:self->_userAnnotation];

      v13 = self->_userAnnotation;
      self->_userAnnotation = 0;
    }

    goto LABEL_12;
  }

LABEL_13:
  if ([(SharedTripsAnnotationsController *)self automaticallyRecenters])
  {
    [(SharedTripsAnnotationsController *)self recenterOnRouteAnimated:v3];
  }
}

- (id)_waypointSearchResults
{
  v2 = [(SharedTripsAnnotationsController *)self sharedTrip];
  v3 = v2;
  if (v2 && ![v2 waypointInfosCount])
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
    v4 = [v3 currentWaypointIndex];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 waypointInfos];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100D42598;
  v11[3] = &unk_101651D58;
  v11[4] = v4;
  v6 = sub_100021DB0(v5, v11);

  return v6;
}

- (BOOL)updateRouteAnnotationsConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(SharedTripsAnnotationsController *)self _composedRouteToDisplay];
  [v4 setStyle:0];
  if (v5)
  {
    v9 = v5;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
    [v4 setRoutes:v6];

    v7 = 0;
  }

  else
  {
    [v4 setRoutes:&__NSArray0__struct];
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [v4 setRouteTrafficFeaturesActive:1];
  [v4 setSelectedRouteIndex:v7];

  return 1;
}

- (void)_updateRouteLines
{
  [(SharedTripsAnnotationsController *)self _updateModernMapTokenIfNeeded];
  v5 = [(SharedTripsAnnotationsController *)self _composedRouteToDisplay];
  if (v5)
  {
    v3 = 0;
  }

  else
  {
    v3 = 4095;
  }

  [(RouteStartEndItemSource *)self->_itemSource setVisibilityMask:v3];
  v4 = [(SharedTripsAnnotationsController *)self chromeViewController];
  [v4 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (id)_composedRouteToDisplay
{
  v3 = [(SharedTripsAnnotationsController *)self sharedTrip];
  if ([v3 hasClosed])
  {
    v4 = [v3 closed] ^ 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = 0;
  if (v3 && v4)
  {
    if (-[SharedTripsAnnotationsController shouldShowRoute](self, "shouldShowRoute") && ([v3 composedRoute], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v5 = [v3 composedRoute];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)recenterOnRouteAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SharedTripsAnnotationsController *)self sharedTrip];
  if (!v5)
  {
    goto LABEL_26;
  }

  y = MKMapRectNull.origin.y;
  width = MKMapRectNull.size.width;
  height = MKMapRectNull.size.height;
  v45 = v5;
  v9 = [v5 hasClosed];
  v10 = v45;
  if (!v9 || (v11 = [v45 closed], v10 = v45, (v11 & 1) == 0))
  {
    v14 = [v10 composedRoute];
    if (v14 && [(SharedTripsAnnotationsController *)self shouldShowRoute])
    {
      v15 = [v14 boundingMapRegion];
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

    v24 = [v45 etaInfo];
    v25 = v24;
    if (v24 && [v24 hasLatitude] && objc_msgSend(v25, "hasLongitude") && -[SharedTripsAnnotationsController shouldShowRoute](self, "shouldShowRoute"))
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
  v34 = [v45 destinationWaypointMapItem];
  if (v34)
  {
    v35 = [[MKMapItem alloc] initWithGeoMapItem:v34 isPlaceHolderPlace:0];
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
    v44 = [(SharedTripsAnnotationsController *)self mapCameraController];
    [v44 frameMapRect:v3 animated:0 completion:{v40, v41, v42, v43}];
  }

  v5 = v45;
LABEL_26:
}

- (void)reload
{
  [(SharedTripsAnnotationsController *)self _updateRouteLines];

  [(SharedTripsAnnotationsController *)self _showStartEndPinsAnimated:1];
}

- (void)_updateSubscriptions
{
  v3 = [(SharedTripsAnnotationsController *)self _shouldBeActive];
  v4 = [(SharedTripsAnnotationsController *)self sharedTrip];
  v9 = [v4 groupIdentifier];

  v5 = [(SharedTripsAnnotationsController *)self chromeViewController];
  v6 = [v5 _maps_uiScene];

  v7 = 0;
  subscriptionToken = self->_subscriptionToken;
  if (v3 && v9 && v6)
  {
    if (subscriptionToken)
    {
      goto LABEL_7;
    }

    v7 = [[SharedTripSceneAwareSubscription alloc] initWithTripIdentifier:v9 scene:v6];
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

    v7 = [(SharedTripsAnnotationsController *)self mapView];
    [v7 removeAnnotation:self->_userAnnotation];

    v8 = [(SharedTripsAnnotationsController *)self searchPinsManager];
    [v8 unregisterPOIShapeLoadingObserver:self];
  }
}

- (void)_attachToMapViewIfNeeded:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  if (WeakRetained)
  {
    sharedTrip = self->_sharedTrip;

    if (sharedTrip)
    {
      self->_attachedToMapView = 1;
      v7 = [(SharedTripsAnnotationsController *)self mapView];
      v8 = [v7 camera];
      v9 = [v8 copy];

      [v9 setPitch:0.0];
      [v9 setHeading:0.0];
      v10 = [(SharedTripsAnnotationsController *)self mapView];
      [v10 setCamera:v9 animated:v3];

      v11 = [(SharedTripsAnnotationsController *)self mapView];
      [v11 setShowsTraffic:1];

      v12 = [(SharedTripsAnnotationsController *)self mapView];
      v13 = v12;
      if (v12)
      {
        [v12 _cartographicConfiguration];
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
      v15 = [(SharedTripsAnnotationsController *)self mapView];
      v16 = v15;
      if (v15)
      {
        [v15 _cartographicConfiguration];
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
      v17 = [(SharedTripsAnnotationsController *)self mapView];
      v20[0] = xmmword_1011F07A0;
      v20[1] = v23;
      v20[2] = v24;
      v21 = v25;
      [v17 _setCartographicConfiguration:v20];

      v18 = [(SharedTripsAnnotationsController *)self searchPinsManager];
      [v18 registerPOIShapeLoadingObserver:self];

      [(SharedTripsAnnotationsController *)self _updateRouteLines];
      [(SharedTripsAnnotationsController *)self _showStartEndPinsAnimated:v3];
      v19 = +[MSPSharedTripService sharedInstance];
      [v19 addReceivingObserver:self];
    }
  }
}

- (void)setMapView:(id)a3 mapCameraController:(id)a4 searchPinsManager:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  objc_storeWeak(&self->_mapView, v12);
  objc_storeWeak(&self->_mapCameraController, v11);

  objc_storeWeak(&self->_searchPinsManager, v10);
  v13 = [v12 traitCollection];

  self->_idiom = [v13 userInterfaceIdiom];

  [(SharedTripsAnnotationsController *)self _attachToMapViewIfNeeded:v6];
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    [(SharedTripsAnnotationsController *)self _updateSubscriptions];
  }
}

- (void)setSharedTrip:(id)a3
{
  v5 = a3;
  if (self->_sharedTrip != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_sharedTrip, a3);
    subscriptionToken = self->_subscriptionToken;
    self->_subscriptionToken = 0;

    self->_automaticallyRecenter = 1;
    [(SharedTripsAnnotationsController *)self _connectOrDisconnectFromMapView];
    [(SharedTripsAnnotationsController *)self _updateSubscriptions];
    [(SharedTripsAnnotationsController *)self reload];
    v5 = v7;
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