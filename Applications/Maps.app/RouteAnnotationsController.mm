@interface RouteAnnotationsController
- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRectForRouteRemainingAtLocation:(id)location;
- (RouteAnnotationsController)init;
- (RouteMarkerFormatterController)routeMarkerFormatterController;
- (VKPolylineGroupOverlay)routesGroupOverlay;
- (id)_routeContextBuilder;
- (void)_clearStaleVehiclePositionAnnotations;
- (void)_continueUpdateTrafficWithInitialTrafficFeatures:(id)features sharedTrafficFeatures:(id)trafficFeatures routes:(id)routes includeAlternateRoutes:(BOOL)alternateRoutes;
- (void)_showRouteTrafficPreferenceChanged;
- (void)_updateAnnotationForVehiclePosition:(id)position;
- (void)_updateFocusedOverlayInGroupOverlay;
- (void)_updateMapViewRouteContextForced:(BOOL)forced withFinishedHandler:(id)handler;
- (void)_updateOverlaysInGroupOverlay;
- (void)_updateRouteMarkerForComposedRoute:(id)route inContext:(id)context;
- (void)_updateRouteMarkersInContext:(id)context;
- (void)_updateRouteOverlayForRouteIndex:(unint64_t)index;
- (void)_updateSelectedOverlayInGroupOverlay;
- (void)_updateTrafficFeatures;
- (void)_updateTrafficWithInitialTrafficFeatures:(id)features;
- (void)_updateTransitVehiclePositionAnnotations;
- (void)composedRoute:(id)route changedSelectedRideInClusteredSegment:(id)segment fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)composedRoute:(id)route didUpdateTrafficIncidentsOnRoute:(id)onRoute;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)routeMarkerFormatterController:(id)controller didUpdateMarkerInfoForRoutes:(id)routes;
- (void)setConfiguration:(id)configuration;
- (void)setMapView:(id)view;
- (void)updateConfigurationWithBlock:(id)block;
- (void)updateMatchedLocation:(id)location;
- (void)updateRouteGeniusFamiliarRoutes:(id)routes;
@end

@implementation RouteAnnotationsController

- (RouteAnnotationsController)init
{
  v19.receiver = self;
  v19.super_class = RouteAnnotationsController;
  v2 = [(RouteAnnotationsController *)&v19 init];
  if (v2)
  {
    v3 = sub_1000421A8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v21 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v4 = objc_alloc_init(RouteAnnotationsConfiguration);
    configuration = v2->_configuration;
    v2->_configuration = v4;

    v6 = objc_alloc_init(RouteTrafficFeatureCalculator);
    routeTrafficFeatureCalculator = v2->_routeTrafficFeatureCalculator;
    v2->_routeTrafficFeatureCalculator = v6;

    v8 = objc_alloc_init(RouteTrafficFeaturesUpdater);
    trafficFeaturesUpdater = v2->_trafficFeaturesUpdater;
    v2->_trafficFeaturesUpdater = v8;

    v10 = +[NSUserDefaults standardUserDefaults];
    [v10 addObserver:v2 forKeyPath:@"__internal__AlwaysShowRouteTraffic" options:0 context:off_101931530];

    v11 = +[TrafficIncidentsSourceManager sharedInstance];
    [v11 addObserver:v2];

    v12 = +[TrafficIncidentsStorageManager sharedInstance];
    [v12 addObserver:v2];

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.Maps.RouteAnnotations.RouteContext", v13);
    routeContextQueue = v2->_routeContextQueue;
    v2->_routeContextQueue = v14;

    v16 = +[NSMutableArray array];
    annotationTextUpdaters = v2->_annotationTextUpdaters;
    v2->_annotationTextUpdaters = v16;
  }

  return v2;
}

- (void)_updateOverlaysInGroupOverlay
{
  v3 = +[NSMutableSet set];
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  configuration = [(RouteAnnotationsController *)self configuration];
  routes = [configuration routes];

  v6 = [routes countByEnumeratingWithState:&v121 objects:v136 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v122;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v122 != v8)
        {
          objc_enumerationMutation(routes);
        }

        v10 = *(*(&v121 + 1) + 8 * i);
        configuration2 = [(RouteAnnotationsController *)self configuration];
        if ([configuration2 alternateRoutesEnabled])
        {
          v12 = 1;
        }

        else
        {
          configuration3 = [(RouteAnnotationsController *)self configuration];
          selectedRoute = [configuration3 selectedRoute];
          v12 = v10 == selectedRoute;
        }

        if (v12 && v10)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [routes countByEnumeratingWithState:&v121 objects:v136 count:16];
    }

    while (v7);
  }

  routesGroupOverlay = [(RouteAnnotationsController *)self routesGroupOverlay];
  polylines = [routesGroupOverlay polylines];
  allObjects = [polylines allObjects];

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = allObjects;
  v18 = [obj countByEnumeratingWithState:&v117 objects:v135 count:16];
  v100 = v3;
  if (v18)
  {
    v19 = v18;
    v20 = *v118;
    v93 = *v118;
    do
    {
      v21 = 0;
      v97 = v19;
      do
      {
        if (*v118 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v117 + 1) + 8 * v21);
        composedRoute = [v22 composedRoute];
        v24 = [v3 containsObject:composedRoute];

        if (v24)
        {
          composedRoute2 = [v22 composedRoute];
          [v3 removeObject:composedRoute2];
        }

        else
        {
          _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
          focusedLabelsPolyline = [_mapLayer focusedLabelsPolyline];

          if (v22 == focusedLabelsPolyline)
          {
            _mapLayer2 = [(MKMapView *)self->_mapView _mapLayer];
            [_mapLayer2 setFocusedLabelsPolyline:0];
          }

          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          composedRoute3 = [v22 composedRoute];
          waypoints = [composedRoute3 waypoints];

          v31 = [waypoints countByEnumeratingWithState:&v113 objects:v134 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v114;
            do
            {
              for (j = 0; j != v32; j = j + 1)
              {
                if (*v114 != v33)
                {
                  objc_enumerationMutation(waypoints);
                }

                v35 = *(*(&v113 + 1) + 8 * j);
                v36 = NSStringFromSelector("styleAttributes");
                [v35 removeObserver:self forKeyPath:v36];
              }

              v32 = [waypoints countByEnumeratingWithState:&v113 objects:v134 count:16];
            }

            while (v32);
          }

          v37 = sub_1000421A8();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            composedRoute4 = [v22 composedRoute];
            uniqueRouteID = [composedRoute4 uniqueRouteID];
            *buf = 134349314;
            selfCopy3 = self;
            v128 = 2112;
            v129 = uniqueRouteID;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "[%{public}p] Removing route overlay for %@", buf, 0x16u);
          }

          composedRoute2 = [(RouteAnnotationsController *)self routesGroupOverlay];
          [composedRoute2 removePolyline:v22];
          v19 = v97;
          v3 = v100;
          v20 = v93;
        }

        v21 = v21 + 1;
      }

      while (v21 != v19);
      v19 = [obj countByEnumeratingWithState:&v117 objects:v135 count:16];
    }

    while (v19);
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  configuration4 = [(RouteAnnotationsController *)self configuration];
  routes2 = [configuration4 routes];

  v94 = routes2;
  v42 = [routes2 countByEnumeratingWithState:&v109 objects:v133 count:16];
  if (v42)
  {
    v44 = v42;
    v45 = *v110;
    *&v43 = 134349570;
    v90 = v43;
    v91 = *v110;
    do
    {
      v46 = 0;
      v92 = v44;
      do
      {
        if (*v110 != v45)
        {
          objc_enumerationMutation(v94);
        }

        v47 = *(*(&v109 + 1) + 8 * v46);
        if ([v3 containsObject:{v47, v90}])
        {
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v98 = v47;
          waypoints2 = [v47 waypoints];
          v49 = [waypoints2 countByEnumeratingWithState:&v105 objects:v132 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v106;
            do
            {
              for (k = 0; k != v50; k = k + 1)
              {
                if (*v106 != v51)
                {
                  objc_enumerationMutation(waypoints2);
                }

                v53 = *(*(&v105 + 1) + 8 * k);
                v54 = NSStringFromSelector("styleAttributes");
                [v53 addObserver:self forKeyPath:v54 options:0 context:off_101931530];
              }

              v50 = [waypoints2 countByEnumeratingWithState:&v105 objects:v132 count:16];
            }

            while (v50);
          }

          v55 = [VKPolylineOverlay alloc];
          traffic = [v47 traffic];
          v57 = [v55 initWithComposedRoute:v98 traffic:traffic];

          v58 = sub_1000421A8();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            uniqueRouteID2 = [v98 uniqueRouteID];
            traffic2 = [v98 traffic];
            *buf = v90;
            selfCopy3 = self;
            v128 = 2112;
            v129 = uniqueRouteID2;
            v130 = 2112;
            v131 = traffic2;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "[%{public}p] Adding route overlay for %@ | %@", buf, 0x20u);
          }

          routesGroupOverlay2 = [(RouteAnnotationsController *)self routesGroupOverlay];
          [routesGroupOverlay2 addPolyline:v57];

          v3 = v100;
          v45 = v91;
          v44 = v92;
        }

        v46 = v46 + 1;
      }

      while (v46 != v44);
      v44 = [v94 countByEnumeratingWithState:&v109 objects:v133 count:16];
    }

    while (v44);
  }

  configuration5 = [(RouteAnnotationsController *)self configuration];
  originalRouteID = [configuration5 originalRouteID];

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  routesGroupOverlay3 = [(RouteAnnotationsController *)self routesGroupOverlay];
  polylines2 = [routesGroupOverlay3 polylines];

  v99 = polylines2;
  v66 = [polylines2 countByEnumeratingWithState:&v101 objects:v125 count:16];
  v95 = originalRouteID;
  if (v66)
  {
    v67 = v66;
    v68 = *v102;
    do
    {
      for (m = 0; m != v67; m = m + 1)
      {
        if (*v102 != v68)
        {
          objc_enumerationMutation(v99);
        }

        v70 = *(*(&v101 + 1) + 8 * m);
        composedRoute5 = [v70 composedRoute];
        uniqueRouteID3 = [composedRoute5 uniqueRouteID];
        v73 = [originalRouteID isEqual:uniqueRouteID3];

        if (v73)
        {
          configuration6 = [(RouteAnnotationsController *)self configuration];
          originalRouteDivergenceCoordinate = [configuration6 originalRouteDivergenceCoordinate];

          v76 = [OriginalRouteDivergencePosition alloc];
          composedRoute6 = [v70 composedRoute];
          v78 = [(OriginalRouteDivergencePosition *)v76 initWithRouteCoordinate:originalRouteDivergenceCoordinate route:composedRoute6];

          _mapLayer3 = [(MKMapView *)self->_mapView _mapLayer];
          [_mapLayer3 setSkippedRouteLineSplitAnnotation:v78];

          if (([v70 skipped] & 1) == 0)
          {
            v80 = sub_1000421A8();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
            {
              configuration7 = [(RouteAnnotationsController *)self configuration];
              [configuration7 originalRouteDivergenceCoordinate];
              v82 = GEOPolylineCoordinateAsFullString();
              *buf = 134349570;
              selfCopy3 = self;
              v128 = 2112;
              v129 = v95;
              v130 = 2112;
              v131 = v82;
              _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "[%{public}p] Marking route %@ as original route | divergence coordinate: [%@]", buf, 0x20u);

              originalRouteID = v95;
            }
          }
        }

        [v70 setSkipped:v73];
      }

      v67 = [v99 countByEnumeratingWithState:&v101 objects:v125 count:16];
    }

    while (v67);
  }

  configuration8 = [(RouteAnnotationsController *)self configuration];
  if ([configuration8 selectsPolyline])
  {
    routesGroupOverlay4 = [(RouteAnnotationsController *)self routesGroupOverlay];
    selectedPolyline = [routesGroupOverlay4 selectedPolyline];
    composedRoute7 = [selectedPolyline composedRoute];
    configuration9 = [(RouteAnnotationsController *)self configuration];
    selectedRoute2 = [configuration9 selectedRoute];

    v89 = v100;
    if (composedRoute7 != selectedRoute2)
    {
      [(RouteAnnotationsController *)self _updateSelectedOverlayInGroupOverlay];
    }
  }

  else
  {

    v89 = v100;
  }
}

- (VKPolylineGroupOverlay)routesGroupOverlay
{
  routesGroupOverlay = self->_routesGroupOverlay;
  if (!routesGroupOverlay)
  {
    v4 = objc_alloc_init(VKPolylineGroupOverlay);
    v5 = self->_routesGroupOverlay;
    self->_routesGroupOverlay = v4;

    v6 = +[NSUserDefaults standardUserDefaults];
    -[VKPolylineGroupOverlay setShowTraffic:](self->_routesGroupOverlay, "setShowTraffic:", [v6 BOOLForKey:@"__internal__AlwaysShowRouteTraffic"]);

    [(MKMapView *)self->_mapView _addPersistentVectorOverlay:self->_routesGroupOverlay];
    mapView = self->_mapView;
    v8 = sub_1000421A8();
    v9 = v8;
    if (mapView)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = self->_routesGroupOverlay;
        v11 = self->_mapView;
        v18 = 134349568;
        selfCopy2 = self;
        v20 = 2048;
        v21 = v10;
        v22 = 2048;
        v23 = v11;
        v12 = "[%{public}p] Created a new routes group overlay %p and map view: %p";
        v13 = v9;
        v14 = OS_LOG_TYPE_INFO;
        v15 = 32;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v13, v14, v12, &v18, v15);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = self->_routesGroupOverlay;
      v18 = 134349312;
      selfCopy2 = self;
      v20 = 2048;
      v21 = v16;
      v12 = "[%{public}p] Created a new routes group overlay %p but we had no map; this overlay will not be rendered anywhere";
      v13 = v9;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
      goto LABEL_7;
    }

    routesGroupOverlay = self->_routesGroupOverlay;
  }

  return routesGroupOverlay;
}

- (void)_updateSelectedOverlayInGroupOverlay
{
  configuration = [(RouteAnnotationsController *)self configuration];
  selectsPolyline = [configuration selectsPolyline];

  if (selectsPolyline)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    routesGroupOverlay = [(RouteAnnotationsController *)self routesGroupOverlay];
    polylines = [routesGroupOverlay polylines];

    v7 = [polylines countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v7)
    {
      v8 = *v26;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(polylines);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          composedRoute = [v10 composedRoute];
          configuration2 = [(RouteAnnotationsController *)self configuration];
          selectedRoute = [configuration2 selectedRoute];
          v14 = [composedRoute isEqual:selectedRoute];

          if (v14)
          {
            v7 = v10;
            goto LABEL_13;
          }
        }

        v7 = [polylines countByEnumeratingWithState:&v25 objects:v35 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v7 = 0;
  }

  routesGroupOverlay2 = [(RouteAnnotationsController *)self routesGroupOverlay];
  selectedPolyline = [routesGroupOverlay2 selectedPolyline];

  if (v7 != selectedPolyline)
  {
    v17 = sub_1000421A8();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      composedRoute2 = [v7 composedRoute];
      uniqueRouteID = [composedRoute2 uniqueRouteID];
      traffic = [v7 traffic];
      *buf = 134349570;
      selfCopy = self;
      v31 = 2112;
      v32 = uniqueRouteID;
      v33 = 2112;
      v34 = traffic;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}p] Changing selected route overlay to %@ | %@", buf, 0x20u);
    }

    routesGroupOverlay3 = [(RouteAnnotationsController *)self routesGroupOverlay];
    [routesGroupOverlay3 setSelectedPolyline:v7];

    routesGroupOverlay4 = [(RouteAnnotationsController *)self routesGroupOverlay];
    selectedPolyline2 = [routesGroupOverlay4 selectedPolyline];
    _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
    [_mapLayer setFocusedLabelsPolyline:selectedPolyline2];
  }

  [(RouteAnnotationsController *)self _updateTrafficFeatures];
}

- (void)_updateTrafficFeatures
{
  configuration = [(RouteAnnotationsController *)self configuration];
  selectedRoute = [configuration selectedRoute];

  v5 = sub_1000421A8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uniqueRouteID = [selectedRoute uniqueRouteID];
    *buf = 134349314;
    selfCopy4 = self;
    v18 = 2114;
    v19 = uniqueRouteID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Route: %{public}@, Updating traffic features for selected route", buf, 0x16u);
  }

  if (selectedRoute && [selectedRoute transportType] != 1)
  {
    routeTrafficFeatureCalculator = [(RouteAnnotationsController *)self routeTrafficFeatureCalculator];
    v8 = [routeTrafficFeatureCalculator cachedTrafficFeaturesForRoute:selectedRoute];

    v10 = sub_1000421A8();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v11)
      {
        *buf = 134349056;
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%{public}p] Using cached traffic features", buf, 0xCu);
      }

      [(RouteAnnotationsController *)self _updateTrafficWithInitialTrafficFeatures:v8];
    }

    else
    {
      if (v11)
      {
        *buf = 134349056;
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%{public}p] Calculating traffic features", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      routeTrafficFeatureCalculator2 = [(RouteAnnotationsController *)self routeTrafficFeatureCalculator];
      v13 = &_dispatch_main_q;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100B71880;
      v14[3] = &unk_10163B2F8;
      objc_copyWeak(&v15, buf);
      [routeTrafficFeatureCalculator2 getTrafficFeaturesForRoute:selectedRoute completionQueue:&_dispatch_main_q completionHandler:v14];

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
      v8 = 0;
    }
  }

  else
  {
    v7 = sub_1000421A8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Composed route does not exist or is transit; removing traffic features", buf, 0xCu);
    }

    v8 = +[NSArray array];
    [(RouteAnnotationsController *)self _updateTrafficWithInitialTrafficFeatures:v8];
  }
}

- (id)_routeContextBuilder
{
  routeContextBuilder = self->_routeContextBuilder;
  if (!routeContextBuilder)
  {
    v4 = objc_alloc_init(MKRouteContextBuilder);
    v5 = self->_routeContextBuilder;
    self->_routeContextBuilder = v4;

    routeContextBuilder = self->_routeContextBuilder;
  }

  return routeContextBuilder;
}

- (void)composedRoute:(id)route didUpdateTrafficIncidentsOnRoute:(id)onRoute
{
  routeCopy = route;
  onRouteCopy = onRoute;
  val = self;
  routeTrafficFeatureCalculator = [(RouteAnnotationsController *)self routeTrafficFeatureCalculator];
  [routeTrafficFeatureCalculator clearCachedTrafficFeaturesForRoute:routeCopy];

  routeTrafficFeatureCalculator2 = [(RouteAnnotationsController *)self routeTrafficFeatureCalculator];
  configuration = [(RouteAnnotationsController *)self configuration];
  routes = [configuration routes];
  [routeTrafficFeatureCalculator2 clearCachedSharedTrafficFeaturesForRoutes:routes];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  routesGroupOverlay = [(RouteAnnotationsController *)self routesGroupOverlay];
  polylines = [routesGroupOverlay polylines];

  v13 = [polylines countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v13)
  {
    v14 = *v34;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(polylines);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        composedRoute = [v16 composedRoute];
        uniqueRouteID = [composedRoute uniqueRouteID];
        uniqueRouteID2 = [routeCopy uniqueRouteID];
        v20 = [uniqueRouteID isEqual:uniqueRouteID2];

        if (v20)
        {
          v13 = v16;
          goto LABEL_11;
        }
      }

      v13 = [polylines countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v21 = sub_1000421A8();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    uniqueRouteID3 = [routeCopy uniqueRouteID];
    traffic = [routeCopy traffic];
    *buf = 134349570;
    v38 = val;
    v39 = 2112;
    v40 = uniqueRouteID3;
    v41 = 2112;
    v42 = traffic;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] Updating traffic for %@ | %@", buf, 0x20u);
  }

  traffic2 = [routeCopy traffic];
  [v13 updateTraffic:traffic2];

  objc_initWeak(buf, val);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100B6FC74;
  v30[3] = &unk_10165FC50;
  objc_copyWeak(&v32, buf);
  v25 = routeCopy;
  v31 = v25;
  [(RouteAnnotationsController *)val _updateMapViewRouteContextForced:1 withFinishedHandler:v30];
  _maps_trafficIncidentsOnRoute = [v25 _maps_trafficIncidentsOnRoute];
  v27 = [_maps_trafficIncidentsOnRoute count] == 0;

  if (!v27)
  {
    [(RouteAnnotationsController *)val _updateTrafficFeatures];
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);
}

- (void)composedRoute:(id)route changedSelectedRideInClusteredSegment:(id)segment fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  uniqueRouteID = [route uniqueRouteID];
  configuration = [(RouteAnnotationsController *)self configuration];
  routes = [configuration routes];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100B6FE40;
  v12[3] = &unk_10163B1E8;
  v10 = uniqueRouteID;
  v13 = v10;
  v11 = [routes indexOfObjectPassingTest:v12];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(RouteAnnotationsController *)self _updateRouteOverlayForRouteIndex:v11];
  }
}

- (void)routeMarkerFormatterController:(id)controller didUpdateMarkerInfoForRoutes:(id)routes
{
  routesCopy = routes;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [routesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(routesCopy);
        }

        [(RouteAnnotationsController *)self _updateRouteMarkerForComposedRoute:*(*(&v10 + 1) + 8 * v9) inContext:0];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [routesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (RouteMarkerFormatterController)routeMarkerFormatterController
{
  routeMarkerFormatterController = self->_routeMarkerFormatterController;
  if (!routeMarkerFormatterController)
  {
    v4 = [[RouteMarkerFormatterController alloc] initWithDelegate:self];
    v5 = self->_routeMarkerFormatterController;
    self->_routeMarkerFormatterController = v4;

    routeMarkerFormatterController = self->_routeMarkerFormatterController;
  }

  return routeMarkerFormatterController;
}

- (void)updateMatchedLocation:(id)location
{
  locationCopy = location;
  configuration = [(RouteAnnotationsController *)self configuration];
  selectedRoute = [configuration selectedRoute];

  if (selectedRoute)
  {
    if ([locationCopy state] == 1)
    {
      routeMatch = [locationCopy routeMatch];
      route = [routeMatch route];

      if (route == selectedRoute)
      {
        _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
        routeMatch2 = [locationCopy routeMatch];
        [_mapLayer setRouteUserOffset:{objc_msgSend(routeMatch2, "routeCoordinate")}];

        if ([selectedRoute transportType] != 1)
        {
          routeTrafficFeatureCalculator = [(RouteAnnotationsController *)self routeTrafficFeatureCalculator];
          v12 = [routeTrafficFeatureCalculator cachedTrafficFeaturesForRoute:selectedRoute];

          if (v12)
          {
            trafficFeaturesUpdater = [(RouteAnnotationsController *)self trafficFeaturesUpdater];
            [trafficFeaturesUpdater updateTrafficFeatures:v12 onRoute:selectedRoute forLocation:locationCopy];
          }

          else
          {
            objc_initWeak(&location, self);
            routeTrafficFeatureCalculator2 = [(RouteAnnotationsController *)self routeTrafficFeatureCalculator];
            v15 = &_dispatch_main_q;
            v16[0] = _NSConcreteStackBlock;
            v16[1] = 3221225472;
            v16[2] = sub_100B70238;
            v16[3] = &unk_10163B388;
            v17 = selectedRoute;
            objc_copyWeak(&v19, &location);
            v18 = locationCopy;
            [routeTrafficFeatureCalculator2 getTrafficFeaturesForRoute:v17 completionQueue:&_dispatch_main_q completionHandler:v16];

            objc_destroyWeak(&v19);
            objc_destroyWeak(&location);
          }
        }
      }
    }
  }
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRectForRouteRemainingAtLocation:(id)location
{
  locationCopy = location;
  configuration = [(RouteAnnotationsController *)self configuration];
  selectedRoute = [configuration selectedRoute];

  routeMatch = [locationCopy routeMatch];
  v8 = routeMatch;
  if (routeMatch && ([routeMatch route], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 == selectedRoute))
  {
    stepIndex = [v8 stepIndex];
    routeCoordinate = [v8 routeCoordinate];
    steps = [selectedRoute steps];
    v30 = [steps objectAtIndexedSubscript:stepIndex];
    [selectedRoute _maps_boundingRectForStep:v30 fromPoint:routeCoordinate];
    x = v31;
    y = v32;
    width = v33;
    height = v34;

    while (1)
    {
      ++stepIndex;
      steps2 = [selectedRoute steps];
      v36 = [steps2 count];

      if (stepIndex >= v36)
      {
        break;
      }

      steps3 = [selectedRoute steps];
      v38 = [steps3 objectAtIndexedSubscript:stepIndex];
      [selectedRoute _maps_boundingRectForStep:v38];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      v53.origin.x = v40;
      v53.origin.y = v42;
      v53.size.width = v44;
      v53.size.height = v46;
      v51 = MKMapRectUnion(v50, v53);
      x = v51.origin.x;
      y = v51.origin.y;
      width = v51.size.width;
      height = v51.size.height;
    }
  }

  else
  {
    [selectedRoute _maps_boundingMapRect];
    x = v10;
    y = v12;
    width = v14;
    height = v16;
  }

  if (locationCopy)
  {
    [locationCopy coordinate];
    v18 = MKMapPointForCoordinate(v47);
    v19 = v18.x;
    v20 = v18.y;
    if (x == MKMapRectNull.origin.x && y == MKMapRectNull.origin.y || width == 0.0 || height == 0.0)
    {
      MKCoordinateForMapPoint(v18);
      MKMapRectMakeWithRadialDistance();
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v49 = MKMapRectUnion(v48, *&v19);
    }

    x = v49.origin.x;
    y = v49.origin.y;
    width = v49.size.width;
    height = v49.size.height;
  }

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.var1.var1 = v26;
  result.var1.var0 = v25;
  result.var0.var1 = v24;
  result.var0.var0 = v23;
  return result;
}

- (void)_clearStaleVehiclePositionAnnotations
{
  transitVehicleAnnotationsByTripID = [(RouteAnnotationsController *)self transitVehicleAnnotationsByTripID];
  allKeys = [transitVehicleAnnotationsByTripID allKeys];
  v5 = [allKeys mutableCopy];

  configuration = [(RouteAnnotationsController *)self configuration];
  transitVehiclePositions = [configuration transitVehiclePositions];
  v8 = sub_100021DB0(transitVehiclePositions, &stru_10163B360);

  [v5 removeObjectsInArray:v8];
  if ([v5 count])
  {
    v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * v14);
          transitVehicleAnnotationsByTripID2 = [(RouteAnnotationsController *)self transitVehicleAnnotationsByTripID];
          v17 = [transitVehicleAnnotationsByTripID2 objectForKeyedSubscript:v15];

          if (v17)
          {
            [v9 addObject:v17];
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    transitVehicleAnnotationsByTripID3 = [(RouteAnnotationsController *)self transitVehicleAnnotationsByTripID];
    [transitVehicleAnnotationsByTripID3 removeObjectsForKeys:v10];

    [(MKMapView *)self->_mapView removeAnnotations:v9];
  }
}

- (void)_updateAnnotationForVehiclePosition:(id)position
{
  positionCopy = position;
  transitVehicleAnnotationsByTripID = [(RouteAnnotationsController *)self transitVehicleAnnotationsByTripID];
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [positionCopy tripID]);
  v6 = [transitVehicleAnnotationsByTripID objectForKeyedSubscript:v5];

  if (v6)
  {
    [(TransitVehiclePositionAnnotation *)v6 updateVehiclePosition:positionCopy];
  }

  else
  {
    v6 = [[TransitVehiclePositionAnnotation alloc] initWithVehiclePosition:positionCopy];
    transitVehicleAnnotationsByTripID2 = [(RouteAnnotationsController *)self transitVehicleAnnotationsByTripID];
    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [positionCopy tripID]);
    [transitVehicleAnnotationsByTripID2 setObject:v6 forKeyedSubscript:v8];

    [(MKMapView *)self->_mapView addAnnotation:v6];
  }
}

- (void)_updateRouteOverlayForRouteIndex:(unint64_t)index
{
  configuration = [(RouteAnnotationsController *)self configuration];
  routes = [configuration routes];
  v7 = [routes count];

  if (v7 > index)
  {
    configuration2 = [(RouteAnnotationsController *)self configuration];
    routes2 = [configuration2 routes];
    v10 = [routes2 objectAtIndexedSubscript:index];

    v11 = sub_1000421A8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      uniqueRouteID = [v10 uniqueRouteID];
      configuration3 = [(RouteAnnotationsController *)self configuration];
      selectedRouteIndex = [configuration3 selectedRouteIndex];
      v15 = @"NO";
      if (selectedRouteIndex == index)
      {
        v15 = @"YES";
      }

      v16 = v15;
      *buf = 134350082;
      selfCopy = self;
      v70 = 2114;
      v71 = uniqueRouteID;
      v72 = 2114;
      v73 = v16;
      v74 = 2080;
      v75 = "[RouteAnnotationsController _updateRouteOverlayForRouteIndex:]";
      v76 = 2048;
      indexCopy = index;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Route: %{public}@ (isSelected: %{public}@), %s %lu", buf, 0x34u);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    routesGroupOverlay = [(RouteAnnotationsController *)self routesGroupOverlay];
    polylines = [routesGroupOverlay polylines];

    v19 = [polylines countByEnumeratingWithState:&v61 objects:v67 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v62;
LABEL_8:
      v22 = 0;
      while (1)
      {
        if (*v62 != v21)
        {
          objc_enumerationMutation(polylines);
        }

        v23 = *(*(&v61 + 1) + 8 * v22);
        composedRoute = [v23 composedRoute];
        v25 = [composedRoute isEqual:v10];

        if (v25)
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [polylines countByEnumeratingWithState:&v61 objects:v67 count:16];
          if (v20)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }

      v27 = v23;

      if (!v27)
      {
        goto LABEL_36;
      }

      indexCopy2 = index;
      v52 = v27;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      composedRoute2 = [v27 composedRoute];
      waypoints = [composedRoute2 waypoints];

      v30 = [waypoints countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v58;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v58 != v32)
            {
              objc_enumerationMutation(waypoints);
            }

            v34 = *(*(&v57 + 1) + 8 * i);
            v35 = NSStringFromSelector("styleAttributes");
            [v34 removeObserver:self forKeyPath:v35];
          }

          v31 = [waypoints countByEnumeratingWithState:&v57 objects:v66 count:16];
        }

        while (v31);
      }

      routesGroupOverlay2 = [(RouteAnnotationsController *)self routesGroupOverlay];
      [routesGroupOverlay2 removePolyline:v52];

      [(MKMapView *)self->_mapView _clearRouteContext];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      waypoints2 = [v10 waypoints];
      v38 = [waypoints2 countByEnumeratingWithState:&v53 objects:v65 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v54;
        do
        {
          for (j = 0; j != v39; j = j + 1)
          {
            if (*v54 != v40)
            {
              objc_enumerationMutation(waypoints2);
            }

            v42 = *(*(&v53 + 1) + 8 * j);
            v43 = NSStringFromSelector("styleAttributes");
            [v42 addObserver:self forKeyPath:v43 options:0 context:off_101931530];
          }

          v39 = [waypoints2 countByEnumeratingWithState:&v53 objects:v65 count:16];
        }

        while (v39);
      }

      v44 = [VKPolylineOverlay alloc];
      traffic = [v10 traffic];
      v46 = [v44 initWithComposedRoute:v10 traffic:traffic];

      routesGroupOverlay3 = [(RouteAnnotationsController *)self routesGroupOverlay];
      [routesGroupOverlay3 addPolyline:v46];

      configuration4 = [(RouteAnnotationsController *)self configuration];
      if ([configuration4 selectedRouteIndex] == indexCopy2)
      {
        configuration5 = [(RouteAnnotationsController *)self configuration];
        selectsPolyline = [configuration5 selectsPolyline];

        v26 = v52;
        if (selectsPolyline)
        {
          [(RouteAnnotationsController *)self _updateSelectedOverlayInGroupOverlay];
        }
      }

      else
      {

        v26 = v52;
      }

      [(RouteAnnotationsController *)self _updateMapViewRouteContextForced:0 withFinishedHandler:0];
      [(RouteAnnotationsController *)self _updateTrafficFeatures];
    }

    else
    {
LABEL_14:
      v26 = polylines;
    }

LABEL_36:
  }
}

- (void)updateRouteGeniusFamiliarRoutes:(id)routes
{
  routesCopy = routes;
  v5 = sub_1000421A8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Updating the Route context for Familiar routes", v7, 2u);
  }

  routeMarkerFormatterController = [(RouteAnnotationsController *)self routeMarkerFormatterController];
  [routeMarkerFormatterController setSuggestionEntry:routesCopy];

  [(RouteAnnotationsController *)self _updateMapViewRouteContextForced:1 withFinishedHandler:0];
}

- (void)_updateTransitVehiclePositionAnnotations
{
  configuration = [(RouteAnnotationsController *)self configuration];
  transitVehiclePositions = [configuration transitVehiclePositions];

  if ([transitVehiclePositions count])
  {
    transitVehicleAnnotationsByTripID = [(RouteAnnotationsController *)self transitVehicleAnnotationsByTripID];

    if (!transitVehicleAnnotationsByTripID)
    {
      v6 = [[NSMutableDictionary alloc] initWithCapacity:1];
      [(RouteAnnotationsController *)self setTransitVehicleAnnotationsByTripID:v6];
    }
  }

  [(RouteAnnotationsController *)self _clearStaleVehiclePositionAnnotations];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100B70FC4;
  v8[3] = &unk_101661A90;
  v9 = transitVehiclePositions;
  selfCopy = self;
  v7 = transitVehiclePositions;
  [UIView animateWithDuration:v8 animations:0.3];
}

- (void)_continueUpdateTrafficWithInitialTrafficFeatures:(id)features sharedTrafficFeatures:(id)trafficFeatures routes:(id)routes includeAlternateRoutes:(BOOL)alternateRoutes
{
  alternateRoutesCopy = alternateRoutes;
  featuresCopy = features;
  trafficFeaturesCopy = trafficFeatures;
  routesCopy = routes;
  v49 = featuresCopy;
  v50 = [[NSMutableOrderedSet alloc] initWithArray:featuresCopy];
  if (trafficFeaturesCopy && alternateRoutesCopy)
  {
    [v50 addObjectsFromArray:trafficFeaturesCopy];
  }

  selfCopy = self;
  configuration = [(RouteAnnotationsController *)self configuration];
  selectedRoute = [configuration selectedRoute];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = routesCopy;
  v14 = [obj countByEnumeratingWithState:&v61 objects:v78 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v62;
    v52 = alternateRoutesCopy;
    v51 = *v62;
    do
    {
      v17 = 0;
      v53 = v15;
      do
      {
        if (*v62 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v61 + 1) + 8 * v17);
        if (alternateRoutesCopy || v18 == selectedRoute)
        {
          v55 = v17;
          _maps_trafficIncidentsOnRoute = [v18 _maps_trafficIncidentsOnRoute];
          v20 = [_maps_trafficIncidentsOnRoute copy];

          v21 = [v20 mutableCopy];
          v22 = +[TrafficIncidentsStorageManager sharedInstance];
          removedTrafficIncidentFeaturesIds = [v22 removedTrafficIncidentFeaturesIds];

          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v24 = v20;
          v25 = [v24 countByEnumeratingWithState:&v57 objects:v77 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v58;
            do
            {
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v58 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v57 + 1) + 8 * i);
                [v29 setIsOnSelectedRoute:v18 == selectedRoute];
                uniqueString = [v29 uniqueString];
                v31 = [removedTrafficIncidentFeaturesIds containsObject:uniqueString];

                if (v31)
                {
                  [v21 removeObject:v29];
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v57 objects:v77 count:16];
            }

            while (v26);
          }

          if ([v21 count])
          {
            [v50 addObjectsFromArray:v21];
          }

          LOBYTE(alternateRoutesCopy) = v52;
          v16 = v51;
          v15 = v53;
          v17 = v55;
        }

        v17 = v17 + 1;
      }

      while (v17 != v15);
      v15 = [obj countByEnumeratingWithState:&v61 objects:v78 count:16];
    }

    while (v15);
  }

  v32 = +[MNNavigationService sharedService];
  [v32 state];
  if (MNNavigationServiceStateIsNavigating())
  {
    v33 = +[TrafficIncidentLayoutManager sharedInstance];
    isIncidentReportingEnabled = [v33 isIncidentReportingEnabled];

    v35 = v49;
    v36 = v47;
    if (!isIncidentReportingEnabled)
    {
      goto LABEL_31;
    }

    v37 = +[TrafficIncidentsSourceManager sharedInstance];
    v32 = [v37 cachedVKTrafficIncidentFeatureItemsForSelectedRoute:selectedRoute];

    if ([v32 count])
    {
      [v50 addObjectsFromArray:v32];
    }
  }

  else
  {
    v35 = v49;
    v36 = v47;
  }

LABEL_31:
  v38 = sub_1000421A8();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = [v50 count];
    _mapLayer = [(MKMapView *)selfCopy->_mapView _mapLayer];
    window = [(MKMapView *)selfCopy->_mapView window];
    v42 = objc_opt_class();
    window2 = [(MKMapView *)selfCopy->_mapView window];
    *buf = 134350339;
    v66 = selfCopy;
    v67 = 2048;
    v68 = v39;
    v69 = 2113;
    v70 = v50;
    v71 = 2048;
    v72 = _mapLayer;
    v73 = 2112;
    v74 = v42;
    v75 = 2048;
    v76 = window2;
    v35 = v49;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "[%{public}p] Updating traffic features with %lu final features: %{private}@ on map view: %p with window: <%@: %p>", buf, 0x3Eu);
  }

  _mapLayer2 = [(MKMapView *)selfCopy->_mapView _mapLayer];
  array = [v50 array];
  configuration2 = [(RouteAnnotationsController *)selfCopy configuration];
  [_mapLayer2 setExternalTrafficFeatures:array areRouteTrafficFeaturesActive:{objc_msgSend(configuration2, "routeTrafficFeaturesActive")}];
}

- (void)_updateTrafficWithInitialTrafficFeatures:(id)features
{
  featuresCopy = features;
  v5 = sub_1000421A8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349571;
    selfCopy = self;
    v21 = 2048;
    v22 = [featuresCopy count];
    v23 = 2113;
    v24 = featuresCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating traffic features with %lu initial features: %{private}@", buf, 0x20u);
  }

  configuration = [(RouteAnnotationsController *)self configuration];
  alternateRoutesEnabled = [configuration alternateRoutesEnabled];

  configuration2 = [(RouteAnnotationsController *)self configuration];
  routes = [configuration2 routes];

  if (!alternateRoutesEnabled)
  {
    goto LABEL_7;
  }

  routeTrafficFeatureCalculator = [(RouteAnnotationsController *)self routeTrafficFeatureCalculator];
  v11 = [routeTrafficFeatureCalculator cachedSharedTrafficFeaturesForRoutes:routes];

  if (v11)
  {
LABEL_8:
    [(RouteAnnotationsController *)self _continueUpdateTrafficWithInitialTrafficFeatures:featuresCopy sharedTrafficFeatures:v11 routes:routes includeAlternateRoutes:alternateRoutesEnabled];

    goto LABEL_9;
  }

  if (!GEOConfigGetBOOL())
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  objc_initWeak(buf, self);
  routeTrafficFeatureCalculator2 = [(RouteAnnotationsController *)self routeTrafficFeatureCalculator];
  v13 = &_dispatch_main_q;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100B71814;
  v14[3] = &unk_10163B320;
  objc_copyWeak(&v17, buf);
  v15 = featuresCopy;
  v16 = routes;
  v18 = alternateRoutesEnabled;
  [routeTrafficFeatureCalculator2 getSharedTrafficFeaturesForRoutes:v16 completionQueue:&_dispatch_main_q completionHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
LABEL_9:
}

- (void)_updateRouteMarkerForComposedRoute:(id)route inContext:(id)context
{
  routeCopy = route;
  contextCopy = context;
  if (!contextCopy)
  {
    contextCopy = self->_mapView;
  }

  configuration = [(RouteAnnotationsController *)self configuration];
  routeMarkerOptions = [configuration routeMarkerOptions];

  configuration2 = [(RouteAnnotationsController *)self configuration];
  v11 = ([configuration2 routeMarkerOptions] >> 1) & 1;

  configuration3 = [(RouteAnnotationsController *)self configuration];
  selectedRoute = [configuration3 selectedRoute];

  v40 = selectedRoute;
  v14 = (selectedRoute == routeCopy) & routeMarkerOptions;
  if (selectedRoute == routeCopy)
  {
    v15 = 0;
  }

  else
  {
    v15 = v11;
  }

  v16 = v14 | v15;
  if ((v14 | v15) == 1)
  {
    routeMarkerFormatterController = [(RouteAnnotationsController *)self routeMarkerFormatterController];
    v18 = [routeMarkerFormatterController markerInfoForRoute:routeCopy];
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_1000421A8();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    uniqueRouteID = [routeCopy uniqueRouteID];
    v21 = @"NO";
    if (selectedRoute == routeCopy)
    {
      v21 = @"YES";
    }

    v22 = v21;
    *buf = 134349826;
    selfCopy2 = self;
    v43 = 2114;
    v44 = uniqueRouteID;
    v45 = 2114;
    v46 = v22;
    v47 = 2114;
    v48 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}p] Route: %{public}@ (isSelected: %{public}@), Setting route info: %{public}@", buf, 0x2Au);
  }

  styleAttributes = [v18 styleAttributes];
  if ([routeCopy isFamiliarRoute] && !styleAttributes)
  {
    styleAttributes = objc_alloc_init(GEOStyleAttributes);
    v24 = objc_alloc_init(GEOStyleAttribute);
    [v24 setKey:65618];
    [v24 setValue:55];
    [styleAttributes addAttribute:v24];
  }

  routeDescription = [v18 routeDescription];
  -[MKMapView _setRouteContextAnnotationText:etaType:tollCurrency:advisoryStyleAttributes:forRoute:](contextCopy, "_setRouteContextAnnotationText:etaType:tollCurrency:advisoryStyleAttributes:forRoute:", routeDescription, [v18 etaType], objc_msgSend(v18, "tollCurrency"), styleAttributes, routeCopy);

  -[MKMapView _setAlternateRouteContextAnnotationETAComparison:forRoute:](contextCopy, "_setAlternateRouteContextAnnotationETAComparison:forRoute:", [v18 etaComparison], routeCopy);
  if (v16)
  {
    legs = [routeCopy legs];
    if ([legs count] < 2)
    {
      v28 = 0;
    }

    else
    {
      routeMarkerFormatterController2 = [(RouteAnnotationsController *)self routeMarkerFormatterController];
      v28 = [routeMarkerFormatterController2 markerInfosForLegsInRoute:routeCopy];
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = sub_100021DB0(v28, &stru_10163B2D0);
  v30 = sub_1000421A8();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    uniqueRouteID2 = [routeCopy uniqueRouteID];
    v32 = @"NO";
    if (selectedRoute == routeCopy)
    {
      v32 = @"YES";
    }

    v33 = v32;
    *buf = 134349826;
    selfCopy2 = self;
    v43 = 2114;
    v44 = uniqueRouteID2;
    v45 = 2114;
    v46 = v33;
    v47 = 2114;
    v48 = v28;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[%{public}p] Route: %{public}@ (isSelected: %{public}@), Setting leg infos: %{public}@", buf, 0x2Au);
  }

  if ([v29 count])
  {
    v34 = v29;
  }

  else
  {
    v34 = 0;
  }

  [(MKMapView *)contextCopy _setRouteContextAnnotationTexts:v34 forLegsInRoute:routeCopy];
  configuration4 = [(RouteAnnotationsController *)self configuration];
  focusedRoute = [configuration4 focusedRoute];
  if (focusedRoute)
  {
    configuration5 = [(RouteAnnotationsController *)self configuration];
    focusedRoute2 = [configuration5 focusedRoute];
    v39 = focusedRoute2 == routeCopy;
  }

  else
  {
    v39 = 0;
  }

  [(MKMapView *)contextCopy _setRouteContextAnnotationFocus:v39 forRoute:routeCopy];
}

- (void)_updateRouteMarkersInContext:(id)context
{
  contextCopy = context;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  configuration = [(RouteAnnotationsController *)self configuration];
  routes = [configuration routes];

  v7 = [routes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(routes);
        }

        [(RouteAnnotationsController *)self _updateRouteMarkerForComposedRoute:*(*(&v11 + 1) + 8 * v10) inContext:contextCopy];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [routes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_updateMapViewRouteContextForced:(BOOL)forced withFinishedHandler:(id)handler
{
  forcedCopy = forced;
  handlerCopy = handler;
  v7 = sub_1000421A8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    selfCopy7 = self;
    v73 = 1024;
    LODWORD(v74) = forcedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Updating route context forced: %d", buf, 0x12u);
  }

  routesGroupOverlay = [(RouteAnnotationsController *)self routesGroupOverlay];
  polylines = [routesGroupOverlay polylines];
  v10 = [polylines count];

  if (v10)
  {
    v11 = sub_1000421A8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      routesGroupOverlay2 = [(RouteAnnotationsController *)self routesGroupOverlay];
      polylines2 = [routesGroupOverlay2 polylines];
      v14 = [polylines2 count];
      *buf = 134349312;
      selfCopy7 = self;
      v73 = 2048;
      v74 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] We currently have %lu polylines", buf, 0x16u);
    }

    routesGroupOverlay3 = [(RouteAnnotationsController *)self routesGroupOverlay];
    polylines3 = [routesGroupOverlay3 polylines];
    allObjects = [polylines3 allObjects];
    v18 = sub_100021DB0(allObjects, &stru_10163B1C0);

    configuration = [(RouteAnnotationsController *)self configuration];
    selectedRoute = [configuration selectedRoute];

    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100B727C8;
    v69[3] = &unk_10163B1E8;
    v21 = selectedRoute;
    v70 = v21;
    if ([v18 indexOfObjectPassingTest:v69] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = sub_1000421A8();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        configuration2 = [(RouteAnnotationsController *)self configuration];
        selectedRoute2 = [configuration2 selectedRoute];
        uniqueRouteID = [selectedRoute2 uniqueRouteID];
        uUIDString = [uniqueRouteID UUIDString];
        sub_100021DB0(v18, &stru_10163B228);
        v27 = v55 = v18;
        *buf = 134349570;
        selfCopy7 = self;
        v73 = 2112;
        v74 = uUIDString;
        v75 = 2112;
        v76 = v27;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%{public}p] Currently selected route (%@) is not part of the polylines drawn on the map (%@)", buf, 0x20u);

        v18 = v55;
      }

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, 0);
      }
    }

    else
    {
      [(NSMutableArray *)self->_annotationTextUpdaters removeAllObjects];
      configuration3 = [(RouteAnnotationsController *)self configuration];
      routes = [configuration3 routes];

      configuration4 = [(RouteAnnotationsController *)self configuration];
      selectedRouteIndex = [configuration4 selectedRouteIndex];

      if (forcedCopy || [(MKMapView *)self->_mapView _shouldUpdateSelectedRouteFromRoutes:routes selectedRouteIndex:selectedRouteIndex])
      {
        v42 = sub_1000421A8();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = sub_100021DB0(routes, &stru_10163B248);
          *buf = 134349570;
          selfCopy7 = self;
          v73 = 2112;
          v74 = v43;
          v75 = 2048;
          v76 = selectedRouteIndex;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "[%{public}p] Initiating route context update for routes: %@ with selected index: %lu", buf, 0x20u);
        }

        configuration5 = [(RouteAnnotationsController *)self configuration];
        currentNavigationWaypoint = [configuration5 currentNavigationWaypoint];

        configuration6 = [(RouteAnnotationsController *)self configuration];
        proximityToCurrentNavigationWaypoint = [configuration6 proximityToCurrentNavigationWaypoint];

        objc_initWeak(buf, self);
        routeContextQueue = self->_routeContextQueue;
        v63[0] = _NSConcreteStackBlock;
        v63[1] = 3221225472;
        v63[2] = sub_100B727D4;
        v63[3] = &unk_10163B270;
        objc_copyWeak(v67, buf);
        v49 = routes;
        v67[1] = selectedRouteIndex;
        v64 = v49;
        v65 = currentNavigationWaypoint;
        v68 = proximityToCurrentNavigationWaypoint;
        v66 = handlerCopy;
        v50 = currentNavigationWaypoint;
        dispatch_async(routeContextQueue, v63);

        objc_destroyWeak(v67);
        objc_destroyWeak(buf);
      }

      else
      {
        v53 = sub_1000421A8();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = sub_100021DB0(routes, &stru_10163B290);
          *buf = 134349570;
          selfCopy7 = self;
          v73 = 2112;
          v74 = v54;
          v75 = 2048;
          v76 = selectedRouteIndex;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "[%{public}p] NOT initiating route context update for routes: %@ with selected index: %lu", buf, 0x20u);
        }

        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, 0);
        }
      }
    }
  }

  else
  {
    configuration7 = [(RouteAnnotationsController *)self configuration];
    anchorPoints = [configuration7 anchorPoints];
    v30 = [anchorPoints count];

    if (v30)
    {
      configuration8 = [(RouteAnnotationsController *)self configuration];
      anchorPoints2 = [configuration8 anchorPoints];

      v33 = sub_1000421A8();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = [anchorPoints2 count];
        *buf = 134349312;
        selfCopy7 = self;
        v73 = 1024;
        LODWORD(v74) = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "[%{public}p] No polylines currently detected, but found %d anchor points", buf, 0x12u);
      }

      objc_initWeak(buf, self);
      v35 = self->_routeContextQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100B72CD4;
      block[3] = &unk_10165DEA0;
      objc_copyWeak(&v62, buf);
      v60 = anchorPoints2;
      v61 = handlerCopy;
      v36 = anchorPoints2;
      dispatch_async(v35, block);

      v37 = &v62;
    }

    else
    {
      v51 = sub_1000421A8();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        selfCopy7 = self;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "[%{public}p] No polylines currently detected", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v52 = self->_routeContextQueue;
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_100B72DD8;
      v56[3] = &unk_101660648;
      objc_copyWeak(&v58, buf);
      v57 = handlerCopy;
      dispatch_async(v52, v56);

      v37 = &v58;
    }

    objc_destroyWeak(v37);
    objc_destroyWeak(buf);
  }
}

- (void)_updateFocusedOverlayInGroupOverlay
{
  configuration = [(RouteAnnotationsController *)self configuration];
  focusedRoute = [configuration focusedRoute];

  if (focusedRoute)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    routesGroupOverlay = [(RouteAnnotationsController *)self routesGroupOverlay];
    polylines = [routesGroupOverlay polylines];

    v7 = [polylines countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(polylines);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          composedRoute = [v10 composedRoute];
          configuration2 = [(RouteAnnotationsController *)self configuration];
          focusedRoute2 = [configuration2 focusedRoute];
          v14 = [composedRoute isEqual:focusedRoute2];

          if (v14)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [polylines countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    routesGroupOverlay2 = [(RouteAnnotationsController *)self routesGroupOverlay];
    focusedPolyline = [routesGroupOverlay2 focusedPolyline];

    if (v7 != focusedPolyline)
    {
      routesGroupOverlay3 = [(RouteAnnotationsController *)self routesGroupOverlay];
      [routesGroupOverlay3 setFocusedPolyline:v7];
    }

    [(RouteAnnotationsController *)self _updateTrafficFeatures];
  }

  else
  {
    routesGroupOverlay4 = [(RouteAnnotationsController *)self routesGroupOverlay];
    [routesGroupOverlay4 setFocusedPolyline:0];
  }
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_configuration == configurationCopy)
  {
    goto LABEL_78;
  }

  v5 = sub_1000421A8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    selfCopy = self;
    v95 = 2112;
    v96 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating configuration: %@", buf, 0x16u);
  }

  v77 = configurationCopy;

  v6 = self->_configuration;
  v7 = [(RouteAnnotationsConfiguration *)configurationCopy copy];
  configuration = self->_configuration;
  self->_configuration = v7;

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  routes = [(RouteAnnotationsConfiguration *)v6 routes];
  v10 = [routes countByEnumeratingWithState:&v87 objects:v92 count:16];
  if (v10)
  {
    v11 = *v88;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v88 != v11)
        {
          objc_enumerationMutation(routes);
        }

        v13 = *(*(&v87 + 1) + 8 * i);
        [v13 unregisterObserver:self];
        [v13 _maps_removeTrafficIncidentsObserver:self];
      }

      v10 = [routes countByEnumeratingWithState:&v87 objects:v92 count:16];
    }

    while (v10);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  routes2 = [(RouteAnnotationsConfiguration *)self->_configuration routes];
  v15 = [routes2 countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (v15)
  {
    v16 = *v84;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v84 != v16)
        {
          objc_enumerationMutation(routes2);
        }

        v18 = *(*(&v83 + 1) + 8 * j);
        if (![(RouteAnnotationsConfiguration *)self->_configuration alternateRoutesEnabled])
        {
          selectedRoute = [(RouteAnnotationsConfiguration *)self->_configuration selectedRoute];
          v20 = v18 == selectedRoute;

          if (!v20)
          {
            continue;
          }
        }

        [v18 registerObserver:self];
        [v18 _maps_addTrafficIncidentsObserver:self];
      }

      v15 = [routes2 countByEnumeratingWithState:&v83 objects:v91 count:16];
    }

    while (v15);
  }

  routes3 = [(RouteAnnotationsConfiguration *)v6 routes];
  routes4 = [(RouteAnnotationsConfiguration *)self->_configuration routes];
  v23 = routes3 != routes4;
  if (routes3 != routes4)
  {
    routes5 = [(RouteAnnotationsConfiguration *)v6 routes];
    routes6 = [(RouteAnnotationsConfiguration *)self->_configuration routes];
    v26 = [routes5 isEqualToArray:routes6];

    if (v26)
    {
      v23 = 0;
      goto LABEL_26;
    }

    routes3 = [(RouteAnnotationsConfiguration *)self->_configuration routes];
    routes4 = sub_100021DB0(routes3, &stru_10163B158);
    routeMarkerFormatterController = [(RouteAnnotationsController *)self routeMarkerFormatterController];
    [routeMarkerFormatterController setRoutes:routes4];
  }

LABEL_26:
  selectedRouteIndex = [(RouteAnnotationsConfiguration *)v6 selectedRouteIndex];
  selectedRouteIndex2 = [(RouteAnnotationsConfiguration *)self->_configuration selectedRouteIndex];
  v30 = self->_configuration;
  if (selectedRouteIndex == selectedRouteIndex2 && (v6 == 0) != (v30 != 0))
  {
    HIDWORD(v74) = 0;
    v78 = v23;
  }

  else
  {
    selectedRouteIndex3 = [(RouteAnnotationsConfiguration *)v30 selectedRouteIndex];
    routeMarkerFormatterController2 = [(RouteAnnotationsController *)self routeMarkerFormatterController];
    [routeMarkerFormatterController2 setSelectedRouteIndex:selectedRouteIndex3];

    v78 = v23 | ![(RouteAnnotationsConfiguration *)v6 alternateRoutesEnabled];
    v23 = 1;
    HIDWORD(v74) = 1;
  }

  focusedRouteIndex = [(RouteAnnotationsConfiguration *)v6 focusedRouteIndex];
  v34 = focusedRouteIndex != [(RouteAnnotationsConfiguration *)self->_configuration focusedRouteIndex]|| v23;
  v76 = v34;
  alternateRoutesEnabled = [(RouteAnnotationsConfiguration *)v6 alternateRoutesEnabled];
  v75 = v23;
  v36 = v76;
  if (alternateRoutesEnabled != [(RouteAnnotationsConfiguration *)self->_configuration alternateRoutesEnabled])
  {
    v75 = 1;
    v36 = 1;
    v78 = 1;
  }

  selectsPolyline = [(RouteAnnotationsConfiguration *)v6 selectsPolyline];
  if (selectsPolyline == [(RouteAnnotationsConfiguration *)self->_configuration selectsPolyline])
  {
    if ([(RouteAnnotationsConfiguration *)self->_configuration selectsPolyline])
    {
      routesGroupOverlay = [(RouteAnnotationsController *)self routesGroupOverlay];
      selectedPolyline = [routesGroupOverlay selectedPolyline];
      LODWORD(v74) = selectedPolyline == 0;
    }

    else
    {
      LODWORD(v74) = 0;
    }
  }

  else
  {
    LODWORD(v74) = 1;
  }

  originalRouteID = [(RouteAnnotationsConfiguration *)v6 originalRouteID];
  originalRouteID2 = [(RouteAnnotationsConfiguration *)self->_configuration originalRouteID];
  if (originalRouteID | originalRouteID2)
  {
    v78 |= [originalRouteID isEqual:originalRouteID2] ^ 1;
  }

  routeTrafficFeaturesActive = [(RouteAnnotationsConfiguration *)v6 routeTrafficFeaturesActive];
  routeTrafficFeaturesActive2 = [(RouteAnnotationsConfiguration *)self->_configuration routeTrafficFeaturesActive];
  routeMarkerOptions = [(RouteAnnotationsConfiguration *)v6 routeMarkerOptions];
  v43 = routeMarkerOptions != [(RouteAnnotationsConfiguration *)self->_configuration routeMarkerOptions];
  style = [(RouteAnnotationsConfiguration *)v6 style];
  if (style == [(RouteAnnotationsConfiguration *)self->_configuration style])
  {
    v45 = v43 | v36;
  }

  else
  {
    style2 = [(RouteAnnotationsConfiguration *)self->_configuration style];
    routeMarkerFormatterController3 = [(RouteAnnotationsController *)self routeMarkerFormatterController];
    [routeMarkerFormatterController3 setFormattingStyle:style2];

    v45 = 1;
  }

  selectedRouteCustomText = [(RouteAnnotationsConfiguration *)v6 selectedRouteCustomText];
  selectedRouteCustomText2 = [(RouteAnnotationsConfiguration *)self->_configuration selectedRouteCustomText];
  v50 = selectedRouteCustomText;
  v51 = selectedRouteCustomText2;
  if (v50 | v51)
  {
    v52 = v51;
    v53 = [v50 isEqual:v51];

    if ((v53 & 1) == 0)
    {
      selectedRouteCustomText3 = [(RouteAnnotationsConfiguration *)self->_configuration selectedRouteCustomText];
      routeMarkerFormatterController4 = [(RouteAnnotationsController *)self routeMarkerFormatterController];
      [routeMarkerFormatterController4 setSelectedRouteCustomText:selectedRouteCustomText3];

      v45 = 1;
    }
  }

  transitVehiclePositions = [(RouteAnnotationsConfiguration *)v6 transitVehiclePositions];
  transitVehiclePositions2 = [(RouteAnnotationsConfiguration *)self->_configuration transitVehiclePositions];
  if (transitVehiclePositions | transitVehiclePositions2)
  {
    v58 = [transitVehiclePositions isEqual:transitVehiclePositions2] ^ 1;
  }

  else
  {
    v58 = 0;
  }

  anchorPoints = [(RouteAnnotationsConfiguration *)v6 anchorPoints];
  if ([anchorPoints count] > 1)
  {
    v61 = 2;
  }

  else
  {
    anchorPoints2 = [(RouteAnnotationsConfiguration *)v6 anchorPoints];
    v61 = [anchorPoints2 count];
  }

  anchorPoints3 = [(RouteAnnotationsConfiguration *)self->_configuration anchorPoints];
  if ([anchorPoints3 count] > 1)
  {
    v64 = 2;
  }

  else
  {
    anchorPoints4 = [(RouteAnnotationsConfiguration *)self->_configuration anchorPoints];
    v64 = [anchorPoints4 count];
  }

  if (v61 != v64)
  {
    anchorPoints5 = [(RouteAnnotationsConfiguration *)v6 anchorPoints];
    anchorPoints6 = [(RouteAnnotationsConfiguration *)self->_configuration anchorPoints];
    v67 = [anchorPoints5 isEqual:anchorPoints6];

    v36 |= v67 ^ 1;
  }

  proximityToCurrentNavigationWaypoint = [(RouteAnnotationsConfiguration *)v6 proximityToCurrentNavigationWaypoint];
  if (proximityToCurrentNavigationWaypoint == [(RouteAnnotationsConfiguration *)self->_configuration proximityToCurrentNavigationWaypoint])
  {
    currentNavigationWaypoint = [(RouteAnnotationsConfiguration *)v6 currentNavigationWaypoint];
    currentNavigationWaypoint2 = [(RouteAnnotationsConfiguration *)self->_configuration currentNavigationWaypoint];
    if (currentNavigationWaypoint | currentNavigationWaypoint2)
    {
      v71 = [currentNavigationWaypoint isEqual:currentNavigationWaypoint2] ^ 1;
    }

    else
    {
      v71 = 0;
    }
  }

  else
  {
    v71 = 1;
  }

  if (v78)
  {
    [(RouteAnnotationsController *)self _updateOverlaysInGroupOverlay];
  }

  if (v74)
  {
    [(RouteAnnotationsController *)self _updateSelectedOverlayInGroupOverlay];
  }

  if (v76)
  {
    [(RouteAnnotationsController *)self _updateFocusedOverlayInGroupOverlay];
  }

  if ((v71 | v36))
  {
    objc_initWeak(buf, self);
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_100B73D48;
    v79[3] = &unk_10163B180;
    objc_copyWeak(&v80, buf);
    v81 = v45 & 1;
    v82 = v23;
    [(RouteAnnotationsController *)self _updateMapViewRouteContextForced:v71 withFinishedHandler:v79];
    objc_destroyWeak(&v80);
    objc_destroyWeak(buf);
  }

  if (v75 | routeTrafficFeaturesActive ^ routeTrafficFeaturesActive2)
  {
    [(RouteAnnotationsController *)self _updateTrafficFeatures];
  }

  if (v58)
  {
    [(RouteAnnotationsController *)self _updateTransitVehiclePositionAnnotations];
  }

  configurationCopy = v77;
LABEL_78:
}

- (void)updateConfigurationWithBlock:(id)block
{
  if (block)
  {
    blockCopy = block;
    configuration = [(RouteAnnotationsController *)self configuration];
    v6 = [configuration mutableCopy];

    blockCopy[2](blockCopy, v6);
    [(RouteAnnotationsController *)self setConfiguration:v6];
  }
}

- (void)_showRouteTrafficPreferenceChanged
{
  v5 = +[NSUserDefaults standardUserDefaults];
  v3 = [v5 BOOLForKey:@"__internal__AlwaysShowRouteTraffic"];
  routesGroupOverlay = [(RouteAnnotationsController *)self routesGroupOverlay];
  [routesGroupOverlay setShowTraffic:v3];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_101931530 == context)
  {
    if ([pathCopy isEqualToString:@"__internal__AlwaysShowRouteTraffic"])
    {
      [(RouteAnnotationsController *)self _showRouteTrafficPreferenceChanged];
    }

    else
    {
      v13 = NSStringFromSelector("styleAttributes");
      v14 = [pathCopy isEqualToString:v13];

      if (v14)
      {
        objc_initWeak(&location, self);
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100B74090;
        v16[3] = &unk_1016619A8;
        objc_copyWeak(&v17, &location);
        [(RouteAnnotationsController *)self _updateMapViewRouteContextForced:1 withFinishedHandler:v16];
        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }

      else
      {
        [(RouteAnnotationsController *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context, self, RouteAnnotationsController];
      }
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = RouteAnnotationsController;
    [(RouteAnnotationsController *)&v19 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context, v15.receiver, v15.super_class];
  }
}

- (void)setMapView:(id)view
{
  viewCopy = view;
  location = &self->_mapView;
  if (self->_mapView != viewCopy)
  {
    v4 = sub_1000421A8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134349312;
      selfCopy2 = self;
      v37 = 2048;
      v38 = viewCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Setting map view: %p", buf, 0x16u);
    }

    routesGroupOverlay = self->_routesGroupOverlay;
    if (routesGroupOverlay)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = [(VKPolylineGroupOverlay *)routesGroupOverlay polylines];
      v24 = [obj countByEnumeratingWithState:&v31 objects:v42 count:16];
      if (v24)
      {
        v23 = *v32;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v32 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v7 = *(*(&v31 + 1) + 8 * i);
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            composedRoute = [v7 composedRoute];
            waypoints = [composedRoute waypoints];

            v10 = [waypoints countByEnumeratingWithState:&v27 objects:v41 count:16];
            if (v10)
            {
              v11 = *v28;
              do
              {
                for (j = 0; j != v10; j = j + 1)
                {
                  if (*v28 != v11)
                  {
                    objc_enumerationMutation(waypoints);
                  }

                  v13 = *(*(&v27 + 1) + 8 * j);
                  v14 = NSStringFromSelector("styleAttributes");
                  [v13 removeObserver:self forKeyPath:v14];
                }

                v10 = [waypoints countByEnumeratingWithState:&v27 objects:v41 count:16];
              }

              while (v10);
            }
          }

          v24 = [obj countByEnumeratingWithState:&v31 objects:v42 count:16];
        }

        while (v24);
      }

      v15 = sub_1000421A8();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = self->_routesGroupOverlay;
        mapView = self->_mapView;
        *buf = 134349568;
        selfCopy2 = self;
        v37 = 2048;
        v38 = v16;
        v39 = 2048;
        v40 = mapView;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Removing existing routes group overlay: %p from map view: %p", buf, 0x20u);
      }

      [(MKMapView *)self->_mapView _removePersistentVectorOverlay:self->_routesGroupOverlay];
      v18 = self->_routesGroupOverlay;
      self->_routesGroupOverlay = 0;
    }

    [*location _clearRouteContext];
    objc_storeStrong(location, view);
    if (*location)
    {
      [(RouteAnnotationsController *)self _updateOverlaysInGroupOverlay];
      [(RouteAnnotationsController *)self _updateSelectedOverlayInGroupOverlay];
      objc_initWeak(buf, self);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100B74524;
      v25[3] = &unk_1016619A8;
      objc_copyWeak(&v26, buf);
      [(RouteAnnotationsController *)self _updateMapViewRouteContextForced:0 withFinishedHandler:v25];
      [(RouteAnnotationsController *)self _updateTrafficFeatures];
      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }
  }
}

- (void)dealloc
{
  v3 = sub_1000421A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 removeObserver:self forKeyPath:@"__internal__AlwaysShowRouteTraffic"];

  v5 = +[TrafficIncidentsSourceManager sharedInstance];
  [v5 removeObserver:self];

  v6 = +[TrafficIncidentsStorageManager sharedInstance];
  [v6 removeObserver:self];

  polylines = [(VKPolylineGroupOverlay *)self->_routesGroupOverlay polylines];
  allObjects = [polylines allObjects];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = allObjects;
  v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v20 = *v28;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        composedRoute = [v10 composedRoute];
        waypoints = [composedRoute waypoints];

        v13 = [waypoints countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v24;
          do
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(waypoints);
              }

              v17 = *(*(&v23 + 1) + 8 * j);
              v18 = NSStringFromSelector("styleAttributes");
              [v17 removeObserver:self forKeyPath:v18];
            }

            v14 = [waypoints countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v14);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  v22.receiver = self;
  v22.super_class = RouteAnnotationsController;
  [(RouteAnnotationsController *)&v22 dealloc];
}

@end