@interface RouteAnnotationsController
- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRectForRouteRemainingAtLocation:(id)a3;
- (RouteAnnotationsController)init;
- (RouteMarkerFormatterController)routeMarkerFormatterController;
- (VKPolylineGroupOverlay)routesGroupOverlay;
- (id)_routeContextBuilder;
- (void)_clearStaleVehiclePositionAnnotations;
- (void)_continueUpdateTrafficWithInitialTrafficFeatures:(id)a3 sharedTrafficFeatures:(id)a4 routes:(id)a5 includeAlternateRoutes:(BOOL)a6;
- (void)_showRouteTrafficPreferenceChanged;
- (void)_updateAnnotationForVehiclePosition:(id)a3;
- (void)_updateFocusedOverlayInGroupOverlay;
- (void)_updateMapViewRouteContextForced:(BOOL)a3 withFinishedHandler:(id)a4;
- (void)_updateOverlaysInGroupOverlay;
- (void)_updateRouteMarkerForComposedRoute:(id)a3 inContext:(id)a4;
- (void)_updateRouteMarkersInContext:(id)a3;
- (void)_updateRouteOverlayForRouteIndex:(unint64_t)a3;
- (void)_updateSelectedOverlayInGroupOverlay;
- (void)_updateTrafficFeatures;
- (void)_updateTrafficWithInitialTrafficFeatures:(id)a3;
- (void)_updateTransitVehiclePositionAnnotations;
- (void)composedRoute:(id)a3 changedSelectedRideInClusteredSegment:(id)a4 fromIndex:(unint64_t)a5 toIndex:(unint64_t)a6;
- (void)composedRoute:(id)a3 didUpdateTrafficIncidentsOnRoute:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)routeMarkerFormatterController:(id)a3 didUpdateMarkerInfoForRoutes:(id)a4;
- (void)setConfiguration:(id)a3;
- (void)setMapView:(id)a3;
- (void)updateConfigurationWithBlock:(id)a3;
- (void)updateMatchedLocation:(id)a3;
- (void)updateRouteGeniusFamiliarRoutes:(id)a3;
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
  v4 = [(RouteAnnotationsController *)self configuration];
  v5 = [v4 routes];

  v6 = [v5 countByEnumeratingWithState:&v121 objects:v136 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v121 + 1) + 8 * i);
        v11 = [(RouteAnnotationsController *)self configuration];
        if ([v11 alternateRoutesEnabled])
        {
          v12 = 1;
        }

        else
        {
          v13 = [(RouteAnnotationsController *)self configuration];
          v14 = [v13 selectedRoute];
          v12 = v10 == v14;
        }

        if (v12 && v10)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v121 objects:v136 count:16];
    }

    while (v7);
  }

  v15 = [(RouteAnnotationsController *)self routesGroupOverlay];
  v16 = [v15 polylines];
  v17 = [v16 allObjects];

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = v17;
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
        v23 = [v22 composedRoute];
        v24 = [v3 containsObject:v23];

        if (v24)
        {
          v25 = [v22 composedRoute];
          [v3 removeObject:v25];
        }

        else
        {
          v26 = [(MKMapView *)self->_mapView _mapLayer];
          v27 = [v26 focusedLabelsPolyline];

          if (v22 == v27)
          {
            v28 = [(MKMapView *)self->_mapView _mapLayer];
            [v28 setFocusedLabelsPolyline:0];
          }

          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v29 = [v22 composedRoute];
          v30 = [v29 waypoints];

          v31 = [v30 countByEnumeratingWithState:&v113 objects:v134 count:16];
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
                  objc_enumerationMutation(v30);
                }

                v35 = *(*(&v113 + 1) + 8 * j);
                v36 = NSStringFromSelector("styleAttributes");
                [v35 removeObserver:self forKeyPath:v36];
              }

              v32 = [v30 countByEnumeratingWithState:&v113 objects:v134 count:16];
            }

            while (v32);
          }

          v37 = sub_1000421A8();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = [v22 composedRoute];
            v39 = [v38 uniqueRouteID];
            *buf = 134349314;
            v127 = self;
            v128 = 2112;
            v129 = v39;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "[%{public}p] Removing route overlay for %@", buf, 0x16u);
          }

          v25 = [(RouteAnnotationsController *)self routesGroupOverlay];
          [v25 removePolyline:v22];
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
  v40 = [(RouteAnnotationsController *)self configuration];
  v41 = [v40 routes];

  v94 = v41;
  v42 = [v41 countByEnumeratingWithState:&v109 objects:v133 count:16];
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
          v48 = [v47 waypoints];
          v49 = [v48 countByEnumeratingWithState:&v105 objects:v132 count:16];
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
                  objc_enumerationMutation(v48);
                }

                v53 = *(*(&v105 + 1) + 8 * k);
                v54 = NSStringFromSelector("styleAttributes");
                [v53 addObserver:self forKeyPath:v54 options:0 context:off_101931530];
              }

              v50 = [v48 countByEnumeratingWithState:&v105 objects:v132 count:16];
            }

            while (v50);
          }

          v55 = [VKPolylineOverlay alloc];
          v56 = [v47 traffic];
          v57 = [v55 initWithComposedRoute:v98 traffic:v56];

          v58 = sub_1000421A8();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            v59 = [v98 uniqueRouteID];
            v60 = [v98 traffic];
            *buf = v90;
            v127 = self;
            v128 = 2112;
            v129 = v59;
            v130 = 2112;
            v131 = v60;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "[%{public}p] Adding route overlay for %@ | %@", buf, 0x20u);
          }

          v61 = [(RouteAnnotationsController *)self routesGroupOverlay];
          [v61 addPolyline:v57];

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

  v62 = [(RouteAnnotationsController *)self configuration];
  v63 = [v62 originalRouteID];

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v64 = [(RouteAnnotationsController *)self routesGroupOverlay];
  v65 = [v64 polylines];

  v99 = v65;
  v66 = [v65 countByEnumeratingWithState:&v101 objects:v125 count:16];
  v95 = v63;
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
        v71 = [v70 composedRoute];
        v72 = [v71 uniqueRouteID];
        v73 = [v63 isEqual:v72];

        if (v73)
        {
          v74 = [(RouteAnnotationsController *)self configuration];
          v75 = [v74 originalRouteDivergenceCoordinate];

          v76 = [OriginalRouteDivergencePosition alloc];
          v77 = [v70 composedRoute];
          v78 = [(OriginalRouteDivergencePosition *)v76 initWithRouteCoordinate:v75 route:v77];

          v79 = [(MKMapView *)self->_mapView _mapLayer];
          [v79 setSkippedRouteLineSplitAnnotation:v78];

          if (([v70 skipped] & 1) == 0)
          {
            v80 = sub_1000421A8();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
            {
              v81 = [(RouteAnnotationsController *)self configuration];
              [v81 originalRouteDivergenceCoordinate];
              v82 = GEOPolylineCoordinateAsFullString();
              *buf = 134349570;
              v127 = self;
              v128 = 2112;
              v129 = v95;
              v130 = 2112;
              v131 = v82;
              _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "[%{public}p] Marking route %@ as original route | divergence coordinate: [%@]", buf, 0x20u);

              v63 = v95;
            }
          }
        }

        [v70 setSkipped:v73];
      }

      v67 = [v99 countByEnumeratingWithState:&v101 objects:v125 count:16];
    }

    while (v67);
  }

  v83 = [(RouteAnnotationsController *)self configuration];
  if ([v83 selectsPolyline])
  {
    v84 = [(RouteAnnotationsController *)self routesGroupOverlay];
    v85 = [v84 selectedPolyline];
    v86 = [v85 composedRoute];
    v87 = [(RouteAnnotationsController *)self configuration];
    v88 = [v87 selectedRoute];

    v89 = v100;
    if (v86 != v88)
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
        v19 = self;
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
      v19 = self;
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
  v3 = [(RouteAnnotationsController *)self configuration];
  v4 = [v3 selectsPolyline];

  if (v4)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [(RouteAnnotationsController *)self routesGroupOverlay];
    v6 = [v5 polylines];

    v7 = [v6 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v7)
    {
      v8 = *v26;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = [v10 composedRoute];
          v12 = [(RouteAnnotationsController *)self configuration];
          v13 = [v12 selectedRoute];
          v14 = [v11 isEqual:v13];

          if (v14)
          {
            v7 = v10;
            goto LABEL_13;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v25 objects:v35 count:16];
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

  v15 = [(RouteAnnotationsController *)self routesGroupOverlay];
  v16 = [v15 selectedPolyline];

  if (v7 != v16)
  {
    v17 = sub_1000421A8();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v7 composedRoute];
      v19 = [v18 uniqueRouteID];
      v20 = [v7 traffic];
      *buf = 134349570;
      v30 = self;
      v31 = 2112;
      v32 = v19;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}p] Changing selected route overlay to %@ | %@", buf, 0x20u);
    }

    v21 = [(RouteAnnotationsController *)self routesGroupOverlay];
    [v21 setSelectedPolyline:v7];

    v22 = [(RouteAnnotationsController *)self routesGroupOverlay];
    v23 = [v22 selectedPolyline];
    v24 = [(MKMapView *)self->_mapView _mapLayer];
    [v24 setFocusedLabelsPolyline:v23];
  }

  [(RouteAnnotationsController *)self _updateTrafficFeatures];
}

- (void)_updateTrafficFeatures
{
  v3 = [(RouteAnnotationsController *)self configuration];
  v4 = [v3 selectedRoute];

  v5 = sub_1000421A8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 uniqueRouteID];
    *buf = 134349314;
    v17 = self;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Route: %{public}@, Updating traffic features for selected route", buf, 0x16u);
  }

  if (v4 && [v4 transportType] != 1)
  {
    v9 = [(RouteAnnotationsController *)self routeTrafficFeatureCalculator];
    v8 = [v9 cachedTrafficFeaturesForRoute:v4];

    v10 = sub_1000421A8();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v11)
      {
        *buf = 134349056;
        v17 = self;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%{public}p] Using cached traffic features", buf, 0xCu);
      }

      [(RouteAnnotationsController *)self _updateTrafficWithInitialTrafficFeatures:v8];
    }

    else
    {
      if (v11)
      {
        *buf = 134349056;
        v17 = self;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%{public}p] Calculating traffic features", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v12 = [(RouteAnnotationsController *)self routeTrafficFeatureCalculator];
      v13 = &_dispatch_main_q;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100B71880;
      v14[3] = &unk_10163B2F8;
      objc_copyWeak(&v15, buf);
      [v12 getTrafficFeaturesForRoute:v4 completionQueue:&_dispatch_main_q completionHandler:v14];

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
      v17 = self;
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

- (void)composedRoute:(id)a3 didUpdateTrafficIncidentsOnRoute:(id)a4
{
  v6 = a3;
  v28 = a4;
  val = self;
  v7 = [(RouteAnnotationsController *)self routeTrafficFeatureCalculator];
  [v7 clearCachedTrafficFeaturesForRoute:v6];

  v8 = [(RouteAnnotationsController *)self routeTrafficFeatureCalculator];
  v9 = [(RouteAnnotationsController *)self configuration];
  v10 = [v9 routes];
  [v8 clearCachedSharedTrafficFeaturesForRoutes:v10];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = [(RouteAnnotationsController *)self routesGroupOverlay];
  v12 = [v11 polylines];

  v13 = [v12 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v13)
  {
    v14 = *v34;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        v17 = [v16 composedRoute];
        v18 = [v17 uniqueRouteID];
        v19 = [v6 uniqueRouteID];
        v20 = [v18 isEqual:v19];

        if (v20)
        {
          v13 = v16;
          goto LABEL_11;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v33 objects:v43 count:16];
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
    v22 = [v6 uniqueRouteID];
    v23 = [v6 traffic];
    *buf = 134349570;
    v38 = val;
    v39 = 2112;
    v40 = v22;
    v41 = 2112;
    v42 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] Updating traffic for %@ | %@", buf, 0x20u);
  }

  v24 = [v6 traffic];
  [v13 updateTraffic:v24];

  objc_initWeak(buf, val);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100B6FC74;
  v30[3] = &unk_10165FC50;
  objc_copyWeak(&v32, buf);
  v25 = v6;
  v31 = v25;
  [(RouteAnnotationsController *)val _updateMapViewRouteContextForced:1 withFinishedHandler:v30];
  v26 = [v25 _maps_trafficIncidentsOnRoute];
  v27 = [v26 count] == 0;

  if (!v27)
  {
    [(RouteAnnotationsController *)val _updateTrafficFeatures];
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);
}

- (void)composedRoute:(id)a3 changedSelectedRideInClusteredSegment:(id)a4 fromIndex:(unint64_t)a5 toIndex:(unint64_t)a6
{
  v7 = [a3 uniqueRouteID];
  v8 = [(RouteAnnotationsController *)self configuration];
  v9 = [v8 routes];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100B6FE40;
  v12[3] = &unk_10163B1E8;
  v10 = v7;
  v13 = v10;
  v11 = [v9 indexOfObjectPassingTest:v12];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(RouteAnnotationsController *)self _updateRouteOverlayForRouteIndex:v11];
  }
}

- (void)routeMarkerFormatterController:(id)a3 didUpdateMarkerInfoForRoutes:(id)a4
{
  v5 = a4;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(RouteAnnotationsController *)self _updateRouteMarkerForComposedRoute:*(*(&v10 + 1) + 8 * v9) inContext:0];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)updateMatchedLocation:(id)a3
{
  v4 = a3;
  v5 = [(RouteAnnotationsController *)self configuration];
  v6 = [v5 selectedRoute];

  if (v6)
  {
    if ([v4 state] == 1)
    {
      v7 = [v4 routeMatch];
      v8 = [v7 route];

      if (v8 == v6)
      {
        v9 = [(MKMapView *)self->_mapView _mapLayer];
        v10 = [v4 routeMatch];
        [v9 setRouteUserOffset:{objc_msgSend(v10, "routeCoordinate")}];

        if ([v6 transportType] != 1)
        {
          v11 = [(RouteAnnotationsController *)self routeTrafficFeatureCalculator];
          v12 = [v11 cachedTrafficFeaturesForRoute:v6];

          if (v12)
          {
            v13 = [(RouteAnnotationsController *)self trafficFeaturesUpdater];
            [v13 updateTrafficFeatures:v12 onRoute:v6 forLocation:v4];
          }

          else
          {
            objc_initWeak(&location, self);
            v14 = [(RouteAnnotationsController *)self routeTrafficFeatureCalculator];
            v15 = &_dispatch_main_q;
            v16[0] = _NSConcreteStackBlock;
            v16[1] = 3221225472;
            v16[2] = sub_100B70238;
            v16[3] = &unk_10163B388;
            v17 = v6;
            objc_copyWeak(&v19, &location);
            v18 = v4;
            [v14 getTrafficFeaturesForRoute:v17 completionQueue:&_dispatch_main_q completionHandler:v16];

            objc_destroyWeak(&v19);
            objc_destroyWeak(&location);
          }
        }
      }
    }
  }
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRectForRouteRemainingAtLocation:(id)a3
{
  v4 = a3;
  v5 = [(RouteAnnotationsController *)self configuration];
  v6 = [v5 selectedRoute];

  v7 = [v4 routeMatch];
  v8 = v7;
  if (v7 && ([v7 route], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 == v6))
  {
    v27 = [v8 stepIndex];
    v28 = [v8 routeCoordinate];
    v29 = [v6 steps];
    v30 = [v29 objectAtIndexedSubscript:v27];
    [v6 _maps_boundingRectForStep:v30 fromPoint:v28];
    x = v31;
    y = v32;
    width = v33;
    height = v34;

    while (1)
    {
      ++v27;
      v35 = [v6 steps];
      v36 = [v35 count];

      if (v27 >= v36)
      {
        break;
      }

      v37 = [v6 steps];
      v38 = [v37 objectAtIndexedSubscript:v27];
      [v6 _maps_boundingRectForStep:v38];
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
    [v6 _maps_boundingMapRect];
    x = v10;
    y = v12;
    width = v14;
    height = v16;
  }

  if (v4)
  {
    [v4 coordinate];
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
  v3 = [(RouteAnnotationsController *)self transitVehicleAnnotationsByTripID];
  v4 = [v3 allKeys];
  v5 = [v4 mutableCopy];

  v6 = [(RouteAnnotationsController *)self configuration];
  v7 = [v6 transitVehiclePositions];
  v8 = sub_100021DB0(v7, &stru_10163B360);

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
          v16 = [(RouteAnnotationsController *)self transitVehicleAnnotationsByTripID];
          v17 = [v16 objectForKeyedSubscript:v15];

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

    v18 = [(RouteAnnotationsController *)self transitVehicleAnnotationsByTripID];
    [v18 removeObjectsForKeys:v10];

    [(MKMapView *)self->_mapView removeAnnotations:v9];
  }
}

- (void)_updateAnnotationForVehiclePosition:(id)a3
{
  v9 = a3;
  v4 = [(RouteAnnotationsController *)self transitVehicleAnnotationsByTripID];
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 tripID]);
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    [(TransitVehiclePositionAnnotation *)v6 updateVehiclePosition:v9];
  }

  else
  {
    v6 = [[TransitVehiclePositionAnnotation alloc] initWithVehiclePosition:v9];
    v7 = [(RouteAnnotationsController *)self transitVehicleAnnotationsByTripID];
    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 tripID]);
    [v7 setObject:v6 forKeyedSubscript:v8];

    [(MKMapView *)self->_mapView addAnnotation:v6];
  }
}

- (void)_updateRouteOverlayForRouteIndex:(unint64_t)a3
{
  v5 = [(RouteAnnotationsController *)self configuration];
  v6 = [v5 routes];
  v7 = [v6 count];

  if (v7 > a3)
  {
    v8 = [(RouteAnnotationsController *)self configuration];
    v9 = [v8 routes];
    v10 = [v9 objectAtIndexedSubscript:a3];

    v11 = sub_1000421A8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v10 uniqueRouteID];
      v13 = [(RouteAnnotationsController *)self configuration];
      v14 = [v13 selectedRouteIndex];
      v15 = @"NO";
      if (v14 == a3)
      {
        v15 = @"YES";
      }

      v16 = v15;
      *buf = 134350082;
      v69 = self;
      v70 = 2114;
      v71 = v12;
      v72 = 2114;
      v73 = v16;
      v74 = 2080;
      v75 = "[RouteAnnotationsController _updateRouteOverlayForRouteIndex:]";
      v76 = 2048;
      v77 = a3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Route: %{public}@ (isSelected: %{public}@), %s %lu", buf, 0x34u);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v17 = [(RouteAnnotationsController *)self routesGroupOverlay];
    v18 = [v17 polylines];

    v19 = [v18 countByEnumeratingWithState:&v61 objects:v67 count:16];
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
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v61 + 1) + 8 * v22);
        v24 = [v23 composedRoute];
        v25 = [v24 isEqual:v10];

        if (v25)
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [v18 countByEnumeratingWithState:&v61 objects:v67 count:16];
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

      v51 = a3;
      v52 = v27;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v28 = [v27 composedRoute];
      v29 = [v28 waypoints];

      v30 = [v29 countByEnumeratingWithState:&v57 objects:v66 count:16];
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
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v57 + 1) + 8 * i);
            v35 = NSStringFromSelector("styleAttributes");
            [v34 removeObserver:self forKeyPath:v35];
          }

          v31 = [v29 countByEnumeratingWithState:&v57 objects:v66 count:16];
        }

        while (v31);
      }

      v36 = [(RouteAnnotationsController *)self routesGroupOverlay];
      [v36 removePolyline:v52];

      [(MKMapView *)self->_mapView _clearRouteContext];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v37 = [v10 waypoints];
      v38 = [v37 countByEnumeratingWithState:&v53 objects:v65 count:16];
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
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v53 + 1) + 8 * j);
            v43 = NSStringFromSelector("styleAttributes");
            [v42 addObserver:self forKeyPath:v43 options:0 context:off_101931530];
          }

          v39 = [v37 countByEnumeratingWithState:&v53 objects:v65 count:16];
        }

        while (v39);
      }

      v44 = [VKPolylineOverlay alloc];
      v45 = [v10 traffic];
      v46 = [v44 initWithComposedRoute:v10 traffic:v45];

      v47 = [(RouteAnnotationsController *)self routesGroupOverlay];
      [v47 addPolyline:v46];

      v48 = [(RouteAnnotationsController *)self configuration];
      if ([v48 selectedRouteIndex] == v51)
      {
        v49 = [(RouteAnnotationsController *)self configuration];
        v50 = [v49 selectsPolyline];

        v26 = v52;
        if (v50)
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
      v26 = v18;
    }

LABEL_36:
  }
}

- (void)updateRouteGeniusFamiliarRoutes:(id)a3
{
  v4 = a3;
  v5 = sub_1000421A8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Updating the Route context for Familiar routes", v7, 2u);
  }

  v6 = [(RouteAnnotationsController *)self routeMarkerFormatterController];
  [v6 setSuggestionEntry:v4];

  [(RouteAnnotationsController *)self _updateMapViewRouteContextForced:1 withFinishedHandler:0];
}

- (void)_updateTransitVehiclePositionAnnotations
{
  v3 = [(RouteAnnotationsController *)self configuration];
  v4 = [v3 transitVehiclePositions];

  if ([v4 count])
  {
    v5 = [(RouteAnnotationsController *)self transitVehicleAnnotationsByTripID];

    if (!v5)
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
  v9 = v4;
  v10 = self;
  v7 = v4;
  [UIView animateWithDuration:v8 animations:0.3];
}

- (void)_continueUpdateTrafficWithInitialTrafficFeatures:(id)a3 sharedTrafficFeatures:(id)a4 routes:(id)a5 includeAlternateRoutes:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v49 = v10;
  v50 = [[NSMutableOrderedSet alloc] initWithArray:v10];
  if (v11 && v6)
  {
    [v50 addObjectsFromArray:v11];
  }

  v48 = self;
  v13 = [(RouteAnnotationsController *)self configuration];
  v56 = [v13 selectedRoute];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v61 objects:v78 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v62;
    v52 = v6;
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
        if (v6 || v18 == v56)
        {
          v55 = v17;
          v19 = [v18 _maps_trafficIncidentsOnRoute];
          v20 = [v19 copy];

          v21 = [v20 mutableCopy];
          v22 = +[TrafficIncidentsStorageManager sharedInstance];
          v23 = [v22 removedTrafficIncidentFeaturesIds];

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
                [v29 setIsOnSelectedRoute:v18 == v56];
                v30 = [v29 uniqueString];
                v31 = [v23 containsObject:v30];

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

          LOBYTE(v6) = v52;
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
    v34 = [v33 isIncidentReportingEnabled];

    v35 = v49;
    v36 = v47;
    if (!v34)
    {
      goto LABEL_31;
    }

    v37 = +[TrafficIncidentsSourceManager sharedInstance];
    v32 = [v37 cachedVKTrafficIncidentFeatureItemsForSelectedRoute:v56];

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
    v40 = [(MKMapView *)v48->_mapView _mapLayer];
    v41 = [(MKMapView *)v48->_mapView window];
    v42 = objc_opt_class();
    v43 = [(MKMapView *)v48->_mapView window];
    *buf = 134350339;
    v66 = v48;
    v67 = 2048;
    v68 = v39;
    v69 = 2113;
    v70 = v50;
    v71 = 2048;
    v72 = v40;
    v73 = 2112;
    v74 = v42;
    v75 = 2048;
    v76 = v43;
    v35 = v49;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "[%{public}p] Updating traffic features with %lu final features: %{private}@ on map view: %p with window: <%@: %p>", buf, 0x3Eu);
  }

  v44 = [(MKMapView *)v48->_mapView _mapLayer];
  v45 = [v50 array];
  v46 = [(RouteAnnotationsController *)v48 configuration];
  [v44 setExternalTrafficFeatures:v45 areRouteTrafficFeaturesActive:{objc_msgSend(v46, "routeTrafficFeaturesActive")}];
}

- (void)_updateTrafficWithInitialTrafficFeatures:(id)a3
{
  v4 = a3;
  v5 = sub_1000421A8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349571;
    v20 = self;
    v21 = 2048;
    v22 = [v4 count];
    v23 = 2113;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating traffic features with %lu initial features: %{private}@", buf, 0x20u);
  }

  v6 = [(RouteAnnotationsController *)self configuration];
  v7 = [v6 alternateRoutesEnabled];

  v8 = [(RouteAnnotationsController *)self configuration];
  v9 = [v8 routes];

  if (!v7)
  {
    goto LABEL_7;
  }

  v10 = [(RouteAnnotationsController *)self routeTrafficFeatureCalculator];
  v11 = [v10 cachedSharedTrafficFeaturesForRoutes:v9];

  if (v11)
  {
LABEL_8:
    [(RouteAnnotationsController *)self _continueUpdateTrafficWithInitialTrafficFeatures:v4 sharedTrafficFeatures:v11 routes:v9 includeAlternateRoutes:v7];

    goto LABEL_9;
  }

  if (!GEOConfigGetBOOL())
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  objc_initWeak(buf, self);
  v12 = [(RouteAnnotationsController *)self routeTrafficFeatureCalculator];
  v13 = &_dispatch_main_q;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100B71814;
  v14[3] = &unk_10163B320;
  objc_copyWeak(&v17, buf);
  v15 = v4;
  v16 = v9;
  v18 = v7;
  [v12 getSharedTrafficFeaturesForRoutes:v16 completionQueue:&_dispatch_main_q completionHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
LABEL_9:
}

- (void)_updateRouteMarkerForComposedRoute:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v7 = self->_mapView;
  }

  v8 = [(RouteAnnotationsController *)self configuration];
  v9 = [v8 routeMarkerOptions];

  v10 = [(RouteAnnotationsController *)self configuration];
  v11 = ([v10 routeMarkerOptions] >> 1) & 1;

  v12 = [(RouteAnnotationsController *)self configuration];
  v13 = [v12 selectedRoute];

  v40 = v13;
  v14 = (v13 == v6) & v9;
  if (v13 == v6)
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
    v17 = [(RouteAnnotationsController *)self routeMarkerFormatterController];
    v18 = [v17 markerInfoForRoute:v6];
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_1000421A8();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v6 uniqueRouteID];
    v21 = @"NO";
    if (v13 == v6)
    {
      v21 = @"YES";
    }

    v22 = v21;
    *buf = 134349826;
    v42 = self;
    v43 = 2114;
    v44 = v20;
    v45 = 2114;
    v46 = v22;
    v47 = 2114;
    v48 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}p] Route: %{public}@ (isSelected: %{public}@), Setting route info: %{public}@", buf, 0x2Au);
  }

  v23 = [v18 styleAttributes];
  if ([v6 isFamiliarRoute] && !v23)
  {
    v23 = objc_alloc_init(GEOStyleAttributes);
    v24 = objc_alloc_init(GEOStyleAttribute);
    [v24 setKey:65618];
    [v24 setValue:55];
    [v23 addAttribute:v24];
  }

  v25 = [v18 routeDescription];
  -[MKMapView _setRouteContextAnnotationText:etaType:tollCurrency:advisoryStyleAttributes:forRoute:](v7, "_setRouteContextAnnotationText:etaType:tollCurrency:advisoryStyleAttributes:forRoute:", v25, [v18 etaType], objc_msgSend(v18, "tollCurrency"), v23, v6);

  -[MKMapView _setAlternateRouteContextAnnotationETAComparison:forRoute:](v7, "_setAlternateRouteContextAnnotationETAComparison:forRoute:", [v18 etaComparison], v6);
  if (v16)
  {
    v26 = [v6 legs];
    if ([v26 count] < 2)
    {
      v28 = 0;
    }

    else
    {
      v27 = [(RouteAnnotationsController *)self routeMarkerFormatterController];
      v28 = [v27 markerInfosForLegsInRoute:v6];
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
    v31 = [v6 uniqueRouteID];
    v32 = @"NO";
    if (v13 == v6)
    {
      v32 = @"YES";
    }

    v33 = v32;
    *buf = 134349826;
    v42 = self;
    v43 = 2114;
    v44 = v31;
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

  [(MKMapView *)v7 _setRouteContextAnnotationTexts:v34 forLegsInRoute:v6];
  v35 = [(RouteAnnotationsController *)self configuration];
  v36 = [v35 focusedRoute];
  if (v36)
  {
    v37 = [(RouteAnnotationsController *)self configuration];
    v38 = [v37 focusedRoute];
    v39 = v38 == v6;
  }

  else
  {
    v39 = 0;
  }

  [(MKMapView *)v7 _setRouteContextAnnotationFocus:v39 forRoute:v6];
}

- (void)_updateRouteMarkersInContext:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(RouteAnnotationsController *)self configuration];
  v6 = [v5 routes];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        [(RouteAnnotationsController *)self _updateRouteMarkerForComposedRoute:*(*(&v11 + 1) + 8 * v10) inContext:v4];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_updateMapViewRouteContextForced:(BOOL)a3 withFinishedHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = sub_1000421A8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    v72 = self;
    v73 = 1024;
    LODWORD(v74) = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Updating route context forced: %d", buf, 0x12u);
  }

  v8 = [(RouteAnnotationsController *)self routesGroupOverlay];
  v9 = [v8 polylines];
  v10 = [v9 count];

  if (v10)
  {
    v11 = sub_1000421A8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(RouteAnnotationsController *)self routesGroupOverlay];
      v13 = [v12 polylines];
      v14 = [v13 count];
      *buf = 134349312;
      v72 = self;
      v73 = 2048;
      v74 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] We currently have %lu polylines", buf, 0x16u);
    }

    v15 = [(RouteAnnotationsController *)self routesGroupOverlay];
    v16 = [v15 polylines];
    v17 = [v16 allObjects];
    v18 = sub_100021DB0(v17, &stru_10163B1C0);

    v19 = [(RouteAnnotationsController *)self configuration];
    v20 = [v19 selectedRoute];

    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100B727C8;
    v69[3] = &unk_10163B1E8;
    v21 = v20;
    v70 = v21;
    if ([v18 indexOfObjectPassingTest:v69] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = sub_1000421A8();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [(RouteAnnotationsController *)self configuration];
        v24 = [v23 selectedRoute];
        v25 = [v24 uniqueRouteID];
        v26 = [v25 UUIDString];
        sub_100021DB0(v18, &stru_10163B228);
        v27 = v55 = v18;
        *buf = 134349570;
        v72 = self;
        v73 = 2112;
        v74 = v26;
        v75 = 2112;
        v76 = v27;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%{public}p] Currently selected route (%@) is not part of the polylines drawn on the map (%@)", buf, 0x20u);

        v18 = v55;
      }

      if (v6)
      {
        v6[2](v6, 0);
      }
    }

    else
    {
      [(NSMutableArray *)self->_annotationTextUpdaters removeAllObjects];
      v38 = [(RouteAnnotationsController *)self configuration];
      v39 = [v38 routes];

      v40 = [(RouteAnnotationsController *)self configuration];
      v41 = [v40 selectedRouteIndex];

      if (v4 || [(MKMapView *)self->_mapView _shouldUpdateSelectedRouteFromRoutes:v39 selectedRouteIndex:v41])
      {
        v42 = sub_1000421A8();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = sub_100021DB0(v39, &stru_10163B248);
          *buf = 134349570;
          v72 = self;
          v73 = 2112;
          v74 = v43;
          v75 = 2048;
          v76 = v41;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "[%{public}p] Initiating route context update for routes: %@ with selected index: %lu", buf, 0x20u);
        }

        v44 = [(RouteAnnotationsController *)self configuration];
        v45 = [v44 currentNavigationWaypoint];

        v46 = [(RouteAnnotationsController *)self configuration];
        v47 = [v46 proximityToCurrentNavigationWaypoint];

        objc_initWeak(buf, self);
        routeContextQueue = self->_routeContextQueue;
        v63[0] = _NSConcreteStackBlock;
        v63[1] = 3221225472;
        v63[2] = sub_100B727D4;
        v63[3] = &unk_10163B270;
        objc_copyWeak(v67, buf);
        v49 = v39;
        v67[1] = v41;
        v64 = v49;
        v65 = v45;
        v68 = v47;
        v66 = v6;
        v50 = v45;
        dispatch_async(routeContextQueue, v63);

        objc_destroyWeak(v67);
        objc_destroyWeak(buf);
      }

      else
      {
        v53 = sub_1000421A8();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = sub_100021DB0(v39, &stru_10163B290);
          *buf = 134349570;
          v72 = self;
          v73 = 2112;
          v74 = v54;
          v75 = 2048;
          v76 = v41;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "[%{public}p] NOT initiating route context update for routes: %@ with selected index: %lu", buf, 0x20u);
        }

        if (v6)
        {
          v6[2](v6, 0);
        }
      }
    }
  }

  else
  {
    v28 = [(RouteAnnotationsController *)self configuration];
    v29 = [v28 anchorPoints];
    v30 = [v29 count];

    if (v30)
    {
      v31 = [(RouteAnnotationsController *)self configuration];
      v32 = [v31 anchorPoints];

      v33 = sub_1000421A8();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = [v32 count];
        *buf = 134349312;
        v72 = self;
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
      v60 = v32;
      v61 = v6;
      v36 = v32;
      dispatch_async(v35, block);

      v37 = &v62;
    }

    else
    {
      v51 = sub_1000421A8();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v72 = self;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "[%{public}p] No polylines currently detected", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v52 = self->_routeContextQueue;
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_100B72DD8;
      v56[3] = &unk_101660648;
      objc_copyWeak(&v58, buf);
      v57 = v6;
      dispatch_async(v52, v56);

      v37 = &v58;
    }

    objc_destroyWeak(v37);
    objc_destroyWeak(buf);
  }
}

- (void)_updateFocusedOverlayInGroupOverlay
{
  v3 = [(RouteAnnotationsController *)self configuration];
  v4 = [v3 focusedRoute];

  if (v4)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(RouteAnnotationsController *)self routesGroupOverlay];
    v6 = [v5 polylines];

    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [v10 composedRoute];
          v12 = [(RouteAnnotationsController *)self configuration];
          v13 = [v12 focusedRoute];
          v14 = [v11 isEqual:v13];

          if (v14)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v15 = [(RouteAnnotationsController *)self routesGroupOverlay];
    v16 = [v15 focusedPolyline];

    if (v7 != v16)
    {
      v17 = [(RouteAnnotationsController *)self routesGroupOverlay];
      [v17 setFocusedPolyline:v7];
    }

    [(RouteAnnotationsController *)self _updateTrafficFeatures];
  }

  else
  {
    v18 = [(RouteAnnotationsController *)self routesGroupOverlay];
    [v18 setFocusedPolyline:0];
  }
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  if (self->_configuration == v4)
  {
    goto LABEL_78;
  }

  v5 = sub_1000421A8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v94 = self;
    v95 = 2112;
    v96 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating configuration: %@", buf, 0x16u);
  }

  v77 = v4;

  v6 = self->_configuration;
  v7 = [(RouteAnnotationsConfiguration *)v4 copy];
  configuration = self->_configuration;
  self->_configuration = v7;

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v9 = [(RouteAnnotationsConfiguration *)v6 routes];
  v10 = [v9 countByEnumeratingWithState:&v87 objects:v92 count:16];
  if (v10)
  {
    v11 = *v88;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v88 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v87 + 1) + 8 * i);
        [v13 unregisterObserver:self];
        [v13 _maps_removeTrafficIncidentsObserver:self];
      }

      v10 = [v9 countByEnumeratingWithState:&v87 objects:v92 count:16];
    }

    while (v10);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v14 = [(RouteAnnotationsConfiguration *)self->_configuration routes];
  v15 = [v14 countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (v15)
  {
    v16 = *v84;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v84 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v83 + 1) + 8 * j);
        if (![(RouteAnnotationsConfiguration *)self->_configuration alternateRoutesEnabled])
        {
          v19 = [(RouteAnnotationsConfiguration *)self->_configuration selectedRoute];
          v20 = v18 == v19;

          if (!v20)
          {
            continue;
          }
        }

        [v18 registerObserver:self];
        [v18 _maps_addTrafficIncidentsObserver:self];
      }

      v15 = [v14 countByEnumeratingWithState:&v83 objects:v91 count:16];
    }

    while (v15);
  }

  v21 = [(RouteAnnotationsConfiguration *)v6 routes];
  v22 = [(RouteAnnotationsConfiguration *)self->_configuration routes];
  v23 = v21 != v22;
  if (v21 != v22)
  {
    v24 = [(RouteAnnotationsConfiguration *)v6 routes];
    v25 = [(RouteAnnotationsConfiguration *)self->_configuration routes];
    v26 = [v24 isEqualToArray:v25];

    if (v26)
    {
      v23 = 0;
      goto LABEL_26;
    }

    v21 = [(RouteAnnotationsConfiguration *)self->_configuration routes];
    v22 = sub_100021DB0(v21, &stru_10163B158);
    v27 = [(RouteAnnotationsController *)self routeMarkerFormatterController];
    [v27 setRoutes:v22];
  }

LABEL_26:
  v28 = [(RouteAnnotationsConfiguration *)v6 selectedRouteIndex];
  v29 = [(RouteAnnotationsConfiguration *)self->_configuration selectedRouteIndex];
  v30 = self->_configuration;
  if (v28 == v29 && (v6 == 0) != (v30 != 0))
  {
    HIDWORD(v74) = 0;
    v78 = v23;
  }

  else
  {
    v31 = [(RouteAnnotationsConfiguration *)v30 selectedRouteIndex];
    v32 = [(RouteAnnotationsController *)self routeMarkerFormatterController];
    [v32 setSelectedRouteIndex:v31];

    v78 = v23 | ![(RouteAnnotationsConfiguration *)v6 alternateRoutesEnabled];
    v23 = 1;
    HIDWORD(v74) = 1;
  }

  v33 = [(RouteAnnotationsConfiguration *)v6 focusedRouteIndex];
  v34 = v33 != [(RouteAnnotationsConfiguration *)self->_configuration focusedRouteIndex]|| v23;
  v76 = v34;
  v35 = [(RouteAnnotationsConfiguration *)v6 alternateRoutesEnabled];
  v75 = v23;
  v36 = v76;
  if (v35 != [(RouteAnnotationsConfiguration *)self->_configuration alternateRoutesEnabled])
  {
    v75 = 1;
    v36 = 1;
    v78 = 1;
  }

  v37 = [(RouteAnnotationsConfiguration *)v6 selectsPolyline];
  if (v37 == [(RouteAnnotationsConfiguration *)self->_configuration selectsPolyline])
  {
    if ([(RouteAnnotationsConfiguration *)self->_configuration selectsPolyline])
    {
      v38 = [(RouteAnnotationsController *)self routesGroupOverlay];
      v39 = [v38 selectedPolyline];
      LODWORD(v74) = v39 == 0;
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

  v40 = [(RouteAnnotationsConfiguration *)v6 originalRouteID];
  v41 = [(RouteAnnotationsConfiguration *)self->_configuration originalRouteID];
  if (v40 | v41)
  {
    v78 |= [v40 isEqual:v41] ^ 1;
  }

  v73 = [(RouteAnnotationsConfiguration *)v6 routeTrafficFeaturesActive];
  v72 = [(RouteAnnotationsConfiguration *)self->_configuration routeTrafficFeaturesActive];
  v42 = [(RouteAnnotationsConfiguration *)v6 routeMarkerOptions];
  v43 = v42 != [(RouteAnnotationsConfiguration *)self->_configuration routeMarkerOptions];
  v44 = [(RouteAnnotationsConfiguration *)v6 style];
  if (v44 == [(RouteAnnotationsConfiguration *)self->_configuration style])
  {
    v45 = v43 | v36;
  }

  else
  {
    v46 = [(RouteAnnotationsConfiguration *)self->_configuration style];
    v47 = [(RouteAnnotationsController *)self routeMarkerFormatterController];
    [v47 setFormattingStyle:v46];

    v45 = 1;
  }

  v48 = [(RouteAnnotationsConfiguration *)v6 selectedRouteCustomText];
  v49 = [(RouteAnnotationsConfiguration *)self->_configuration selectedRouteCustomText];
  v50 = v48;
  v51 = v49;
  if (v50 | v51)
  {
    v52 = v51;
    v53 = [v50 isEqual:v51];

    if ((v53 & 1) == 0)
    {
      v54 = [(RouteAnnotationsConfiguration *)self->_configuration selectedRouteCustomText];
      v55 = [(RouteAnnotationsController *)self routeMarkerFormatterController];
      [v55 setSelectedRouteCustomText:v54];

      v45 = 1;
    }
  }

  v56 = [(RouteAnnotationsConfiguration *)v6 transitVehiclePositions];
  v57 = [(RouteAnnotationsConfiguration *)self->_configuration transitVehiclePositions];
  if (v56 | v57)
  {
    v58 = [v56 isEqual:v57] ^ 1;
  }

  else
  {
    v58 = 0;
  }

  v59 = [(RouteAnnotationsConfiguration *)v6 anchorPoints];
  if ([v59 count] > 1)
  {
    v61 = 2;
  }

  else
  {
    v60 = [(RouteAnnotationsConfiguration *)v6 anchorPoints];
    v61 = [v60 count];
  }

  v62 = [(RouteAnnotationsConfiguration *)self->_configuration anchorPoints];
  if ([v62 count] > 1)
  {
    v64 = 2;
  }

  else
  {
    v63 = [(RouteAnnotationsConfiguration *)self->_configuration anchorPoints];
    v64 = [v63 count];
  }

  if (v61 != v64)
  {
    v65 = [(RouteAnnotationsConfiguration *)v6 anchorPoints];
    v66 = [(RouteAnnotationsConfiguration *)self->_configuration anchorPoints];
    v67 = [v65 isEqual:v66];

    v36 |= v67 ^ 1;
  }

  v68 = [(RouteAnnotationsConfiguration *)v6 proximityToCurrentNavigationWaypoint];
  if (v68 == [(RouteAnnotationsConfiguration *)self->_configuration proximityToCurrentNavigationWaypoint])
  {
    v69 = [(RouteAnnotationsConfiguration *)v6 currentNavigationWaypoint];
    v70 = [(RouteAnnotationsConfiguration *)self->_configuration currentNavigationWaypoint];
    if (v69 | v70)
    {
      v71 = [v69 isEqual:v70] ^ 1;
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

  if (v75 | v73 ^ v72)
  {
    [(RouteAnnotationsController *)self _updateTrafficFeatures];
  }

  if (v58)
  {
    [(RouteAnnotationsController *)self _updateTransitVehiclePositionAnnotations];
  }

  v4 = v77;
LABEL_78:
}

- (void)updateConfigurationWithBlock:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(RouteAnnotationsController *)self configuration];
    v6 = [v5 mutableCopy];

    v4[2](v4, v6);
    [(RouteAnnotationsController *)self setConfiguration:v6];
  }
}

- (void)_showRouteTrafficPreferenceChanged
{
  v5 = +[NSUserDefaults standardUserDefaults];
  v3 = [v5 BOOLForKey:@"__internal__AlwaysShowRouteTraffic"];
  v4 = [(RouteAnnotationsController *)self routesGroupOverlay];
  [v4 setShowTraffic:v3];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_101931530 == a6)
  {
    if ([v10 isEqualToString:@"__internal__AlwaysShowRouteTraffic"])
    {
      [(RouteAnnotationsController *)self _showRouteTrafficPreferenceChanged];
    }

    else
    {
      v13 = NSStringFromSelector("styleAttributes");
      v14 = [v10 isEqualToString:v13];

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
        [(RouteAnnotationsController *)&v15 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6, self, RouteAnnotationsController];
      }
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = RouteAnnotationsController;
    [(RouteAnnotationsController *)&v19 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6, v15.receiver, v15.super_class];
  }
}

- (void)setMapView:(id)a3
{
  v20 = a3;
  location = &self->_mapView;
  if (self->_mapView != v20)
  {
    v4 = sub_1000421A8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134349312;
      v36 = self;
      v37 = 2048;
      v38 = v20;
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
            v8 = [v7 composedRoute];
            v9 = [v8 waypoints];

            v10 = [v9 countByEnumeratingWithState:&v27 objects:v41 count:16];
            if (v10)
            {
              v11 = *v28;
              do
              {
                for (j = 0; j != v10; j = j + 1)
                {
                  if (*v28 != v11)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v13 = *(*(&v27 + 1) + 8 * j);
                  v14 = NSStringFromSelector("styleAttributes");
                  [v13 removeObserver:self forKeyPath:v14];
                }

                v10 = [v9 countByEnumeratingWithState:&v27 objects:v41 count:16];
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
        v36 = self;
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
    objc_storeStrong(location, a3);
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
    v34 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 removeObserver:self forKeyPath:@"__internal__AlwaysShowRouteTraffic"];

  v5 = +[TrafficIncidentsSourceManager sharedInstance];
  [v5 removeObserver:self];

  v6 = +[TrafficIncidentsStorageManager sharedInstance];
  [v6 removeObserver:self];

  v7 = [(VKPolylineGroupOverlay *)self->_routesGroupOverlay polylines];
  v8 = [v7 allObjects];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v8;
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
        v11 = [v10 composedRoute];
        v12 = [v11 waypoints];

        v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v23 + 1) + 8 * j);
              v18 = NSStringFromSelector("styleAttributes");
              [v17 removeObserver:self forKeyPath:v18];
            }

            v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
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