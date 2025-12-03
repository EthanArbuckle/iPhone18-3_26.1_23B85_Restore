@interface RoutePlanningMapController
- (ActionCoordination)actionCoordinator;
- (BOOL)updateRouteAnnotationsConfiguration:(id)configuration;
- (MapCameraController)mapCameraController;
- (PersonalizedItemManager)personalizedItemManager;
- (RouteAnnotationsController)routeAnnotationsController;
- (RoutePlanningDataCoordination)dataCoordinator;
- (RoutePlanningMapController)initWithChromeViewController:(id)controller;
- (SearchPinsManager)searchPinsManager;
- (ViewModeControlling)viewModeController;
- (id)_currentVehicleEntries;
- (id)transitVehicleUpdater:(id)updater shouldUpdateVehiclePositionsForTripIDs:(id)ds;
- (void)_didEnterBackground:(id)background;
- (void)_resetUserInteractionState;
- (void)_updateCurrentRouteForVehicleUpdater;
- (void)_updateRouteAnnotationsController;
- (void)_updateSearchPinsManagerIfPossible;
- (void)_updateVehicleManagerIfNeeded;
- (void)_userDidInteractWithMap;
- (void)_willEnterForeground:(id)foreground;
- (void)clearMapState:(BOOL)state;
- (void)composedRoute:(id)route changedSelectedRideInClusteredSegment:(id)segment fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)dealloc;
- (void)didTapMapView:(id)view atPoint:(CGPoint)point;
- (void)personalizedItemManager:(id)manager didChangeItems:(id)items itemGroups:(id)groups;
- (void)poiShapeLoader:(id)loader didLoadStartPOIShape:(id)shape endPOIShapes:(id)shapes;
- (void)restoreOriginalMapViewMode:(BOOL)mode;
- (void)routePlanningDataCoordinator:(id)coordinator didEnable:(BOOL)enable;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRideBookingRideOptionState:(id)state;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRouteCollection:(id)collection;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRoutes:(id)routes;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateTransportType:(int64_t)type;
- (void)saveOriginalMapViewModeAs:(int64_t)as;
- (void)setActionCoordinator:(id)coordinator;
- (void)setDataCoordinator:(id)coordinator;
- (void)setPersonalizedItemManager:(id)manager;
- (void)setSearchPinsManager:(id)manager;
- (void)setSelectCurrentRoute:(BOOL)route;
- (void)transitVehicleUpdater:(id)updater didUpdateVehiclePositions:(id)positions forTripIDs:(id)ds;
- (void)updateCameraIfPossible;
@end

@implementation RoutePlanningMapController

- (SearchPinsManager)searchPinsManager
{
  WeakRetained = objc_loadWeakRetained(&self->_searchPinsManager);

  return WeakRetained;
}

- (PersonalizedItemManager)personalizedItemManager
{
  WeakRetained = objc_loadWeakRetained(&self->_personalizedItemManager);

  return WeakRetained;
}

- (RoutePlanningDataCoordination)dataCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCoordinator);

  return WeakRetained;
}

- (ActionCoordination)actionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);

  return WeakRetained;
}

- (void)personalizedItemManager:(id)manager didChangeItems:(id)items itemGroups:(id)groups
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1009E5648;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)composedRoute:(id)route changedSelectedRideInClusteredSegment:(id)segment fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  routeCopy = route;
  WeakRetained = objc_loadWeakRetained(&self->_currentRouteForVehicleUpdater);

  if (WeakRetained == routeCopy)
  {

    [(RoutePlanningMapController *)self _updateVehicleManagerIfNeeded];
  }
}

- (void)transitVehicleUpdater:(id)updater didUpdateVehiclePositions:(id)positions forTripIDs:(id)ds
{
  allObjects = [positions allObjects];
  lastReceivedVehiclePositions = self->_lastReceivedVehiclePositions;
  self->_lastReceivedVehiclePositions = allObjects;

  [(RoutePlanningMapController *)self _updateRouteAnnotationsController];
}

- (id)transitVehicleUpdater:(id)updater shouldUpdateVehiclePositionsForTripIDs:(id)ds
{
  dsCopy = ds;
  _currentVehicleEntries = [(RoutePlanningMapController *)self _currentVehicleEntries];
  UInteger = GEOConfigGetUInteger();
  v8 = [NSMutableSet setWithCapacity:UInteger];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  upcomingTripIDs = [_currentVehicleEntries upcomingTripIDs];
  v10 = [upcomingTripIDs countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(upcomingTripIDs);
      }

      v14 = *(*(&v17 + 1) + 8 * v13);
      if ([dsCopy containsObject:v14])
      {
        [v8 addObject:v14];
      }

      if ([v8 count] == UInteger)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [upcomingTripIDs countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v15 = [v8 copy];

  return v15;
}

- (id)_currentVehicleEntries
{
  WeakRetained = objc_loadWeakRetained(&self->_currentRouteForVehicleUpdater);
  if (!WeakRetained)
  {
    goto LABEL_5;
  }

  dataCoordinator = [(RoutePlanningMapController *)self dataCoordinator];
  timing = [dataCoordinator timing];
  departureDate = [timing departureDate];
  if (departureDate)
  {

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  dataCoordinator2 = [(RoutePlanningMapController *)self dataCoordinator];
  timing2 = [dataCoordinator2 timing];
  arrivalDate = [timing2 arrivalDate];

  if (arrivalDate)
  {
    goto LABEL_5;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  segments = [WeakRetained segments];
  v13 = [segments countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v13)
  {
LABEL_26:
    v10 = 0;
    goto LABEL_28;
  }

  v14 = v13;
  v15 = 0;
  v16 = 0;
  v17 = *v22;
  while (2)
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v22 != v17)
      {
        objc_enumerationMutation(segments);
      }

      v19 = *(*(&v21 + 1) + 8 * i);
      if (!(v15 & 1 | ([v19 type] != 5)))
      {
        v20 = sub_1009E5AE0(v19);
        if (v20)
        {
LABEL_27:
          v10 = v20;
          goto LABEL_28;
        }

        v15 = 1;
LABEL_22:
        if (v16)
        {
          goto LABEL_26;
        }

        continue;
      }

      if (!(([v19 type] != 6) | v16 & 1))
      {
        v20 = sub_1009E5AE0(v19);
        if (v20)
        {
          goto LABEL_27;
        }

        v16 = 1;
      }

      if (v15)
      {
        goto LABEL_22;
      }
    }

    v14 = [segments countByEnumeratingWithState:&v21 objects:v25 count:16];
    v10 = 0;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_28:

LABEL_6:

  return v10;
}

- (void)_updateVehicleManagerIfNeeded
{
  _currentVehicleEntries = [(RoutePlanningMapController *)self _currentVehicleEntries];
  v7 = _currentVehicleEntries;
  if (_currentVehicleEntries)
  {
    tripIDs = [_currentVehicleEntries tripIDs];
    v5 = [NSSet setWithArray:tripIDs];
  }

  else
  {
    v5 = +[NSSet set];
  }

  [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater setTripIDs:v5];
  dataCoordinator = [(RoutePlanningMapController *)self dataCoordinator];
  -[GEOTransitVehicleUpdater setActive:](self->_transitVehicleUpdater, "setActive:", [dataCoordinator isEnabled]);

  [(RoutePlanningMapController *)self _updateRouteAnnotationsController];
}

- (void)_updateCurrentRouteForVehicleUpdater
{
  dataCoordinator = [(RoutePlanningMapController *)self dataCoordinator];
  isEnabled = [dataCoordinator isEnabled];

  dataCoordinator2 = [(RoutePlanningMapController *)self dataCoordinator];
  transportType = [dataCoordinator2 transportType];

  obj = 0;
  if (isEnabled && transportType == 3)
  {
    dataCoordinator3 = [(RoutePlanningMapController *)self dataCoordinator];
    routeCollection = [dataCoordinator3 routeCollection];

    obj = [routeCollection currentRoute];
  }

  WeakRetained = objc_loadWeakRetained(&self->_currentRouteForVehicleUpdater);

  v10 = obj;
  if (obj != WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_currentRouteForVehicleUpdater);
    [v11 unregisterObserver:self];

    objc_storeWeak(&self->_currentRouteForVehicleUpdater, obj);
    [obj registerObserver:self];
    [(RoutePlanningMapController *)self _updateVehicleManagerIfNeeded];
    v10 = obj;
  }
}

- (void)didTapMapView:(id)view atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  dataCoordinator = [(RoutePlanningMapController *)self dataCoordinator];
  routeCollection = [dataCoordinator routeCollection];

  if ([(RoutePlanningMapController *)self selectsCurrentRoute])
  {
    currentRoute = [routeCollection currentRoute];
  }

  else
  {
    currentRoute = 0;
  }

  routeAnnotationsController = [(RoutePlanningMapController *)self routeAnnotationsController];
  configuration = [routeAnnotationsController configuration];
  alternateRoutesEnabled = [configuration alternateRoutesEnabled];

  if (alternateRoutesEnabled)
  {
    routes = [routeCollection routes];
LABEL_8:
    v14 = routes;
    goto LABEL_9;
  }

  if (currentRoute)
  {
    v47 = currentRoute;
    routes = [NSArray arrayWithObjects:&v47 count:1];
    goto LABEL_8;
  }

  v14 = 0;
LABEL_9:
  v15 = sub_1009E61D4();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v48.x = x;
    v48.y = y;
    v16 = NSStringFromCGPoint(v48);
    selectsCurrentRoute = [(RoutePlanningMapController *)self selectsCurrentRoute];
    v18 = @"YES";
    if (!selectsCurrentRoute)
    {
      v18 = @"NO";
    }

    v19 = v18;
    currentRoute2 = [routeCollection currentRoute];
    uniqueRouteID = [currentRoute2 uniqueRouteID];
    uUIDString = [uniqueRouteID UUIDString];
    v22 = @"YES";
    if (!alternateRoutesEnabled)
    {
      v22 = @"NO";
    }

    v23 = v22;
    *buf = 134350082;
    selfCopy2 = self;
    v39 = 2112;
    v40 = v16;
    v41 = 2112;
    v42 = v19;
    v43 = 2112;
    v44 = uUIDString;
    v45 = 2112;
    v46 = v23;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Did receive map view tap at point %@; selectsCurrentRoute: %@; currentRoute: %@; showingAlternateRoutes: %@", buf, 0x34u);
  }

  v24 = &stru_10162A738;
  v25 = [RouteAnnotationsResponder routeAtPoint:viewCopy inMapView:v14 withRoutes:currentRoute selectedRoute:&stru_10162A738 overlappingRouteSelectorBlock:x, y];

  v26 = sub_1009E61D4();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    uniqueRouteID2 = [v25 uniqueRouteID];
    uUIDString2 = [uniqueRouteID2 UUIDString];
    *buf = 134349314;
    selfCopy2 = self;
    v39 = 2112;
    v40 = uUIDString2;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[%{public}p] Detected user tapped route: %@", buf, 0x16u);
  }

  if (v25)
  {
    dataCoordinator2 = [(RoutePlanningMapController *)self dataCoordinator];
    [dataCoordinator2 updateCurrentRoute:v25];

    WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);
    v31 = objc_opt_respondsToSelector();

    if (v31)
    {
      v32 = objc_loadWeakRetained(&self->_actionCoordinator);
      currentMapViewTargetForAnalytics = [v32 currentMapViewTargetForAnalytics];

      v34 = +[MKMapService sharedService];
      [v34 captureUserAction:3015 onTarget:currentMapViewTargetForAnalytics eventValue:0 routeIndex:{objc_msgSend(v25, "_maps_routeIndex")}];
    }
  }
}

- (void)updateCameraIfPossible
{
  actionCoordinator = [(RoutePlanningMapController *)self actionCoordinator];
  isPresentingAddStopSearchResults = [actionCoordinator isPresentingAddStopSearchResults];

  if (!isPresentingAddStopSearchResults)
  {
    dataCoordinator = [(RoutePlanningMapController *)self dataCoordinator];
    if (![dataCoordinator isEnabled])
    {
      goto LABEL_45;
    }

    if (self->_userInteractedWithMap)
    {
      if (self->_loggedFirstCameraSuppress)
      {
        mapCameraController = sub_1009E61D4();
        if (os_log_type_enabled(mapCameraController, OS_LOG_TYPE_DEBUG))
        {
          selfCopy = self;
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          if (objc_opt_respondsToSelector())
          {
            v10 = [(RoutePlanningMapController *)selfCopy performSelector:"accessibilityIdentifier"];
            v11 = v10;
            if (v10 && ![v10 isEqualToString:v9])
            {
              selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

              goto LABEL_13;
            }
          }

          selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_13:

          *buf = 138543362;
          selfCopy4 = selfCopy;
          v13 = mapCameraController;
          v14 = OS_LOG_TYPE_DEBUG;
LABEL_26:
          _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}@] Will suppress camera update, user has interacted with map since last update", buf, 0xCu);
        }

LABEL_44:

        goto LABEL_45;
      }

      self->_loggedFirstCameraSuppress = 1;
      mapCameraController = sub_1009E61D4();
      if (!os_log_type_enabled(mapCameraController, OS_LOG_TYPE_INFO))
      {
        goto LABEL_44;
      }

      selfCopy2 = self;
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      if (objc_opt_respondsToSelector())
      {
        v27 = [(RoutePlanningMapController *)selfCopy2 performSelector:"accessibilityIdentifier"];
        v28 = v27;
        if (v27 && ![v27 isEqualToString:v26])
        {
          selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v26, selfCopy2, v28];

          goto LABEL_25;
        }
      }

      selfCopy = [NSString stringWithFormat:@"%@<%p>", v26, selfCopy2];
LABEL_25:

      *buf = 138543362;
      selfCopy4 = selfCopy;
      v13 = mapCameraController;
      v14 = OS_LOG_TYPE_INFO;
      goto LABEL_26;
    }

    [dataCoordinator currentRouteDisplayedMapRect];
    v19 = v18;
    v20 = v15;
    if (v18 != MKMapRectNull.origin.x || v15 != MKMapRectNull.origin.y)
    {
      v22 = v16;
      v23 = v17;
      mapCameraController = [(RoutePlanningMapController *)self mapCameraController];
      [mapCameraController frameMapRect:!UIAccessibilityIsReduceMotionEnabled() animated:0 completion:v19, v20, v22, v23];
      goto LABEL_44;
    }

    mapCameraController = [dataCoordinator routeCollection];
    routes = [mapCameraController routes];
    if ([dataCoordinator transportType]== 3)
    {
      currentRoute = [mapCameraController currentRoute];

      if (currentRoute)
      {
        currentRoute2 = [mapCameraController currentRoute];
        v52 = currentRoute2;
        v32 = [NSArray arrayWithObjects:&v52 count:1];

        routes = v32;
      }
    }

    if ([routes count])
    {
      mapCameraController2 = [(RoutePlanningMapController *)self mapCameraController];
      [mapCameraController2 frameRoutes:routes includeCompassInset:1 animated:!UIAccessibilityIsReduceMotionEnabled() completion:0];
LABEL_43:

      goto LABEL_44;
    }

    mapCameraController2 = [(RoutePlanningMapController *)self searchPinsManager];
    startPOIShapeIfLoaded = [mapCameraController2 startPOIShapeIfLoaded];
    endPOIShapesIfLoaded = [mapCameraController2 endPOIShapesIfLoaded];
    v36 = endPOIShapesIfLoaded;
    if (startPOIShapeIfLoaded && [endPOIShapesIfLoaded count])
    {
      mapCameraController3 = [(RoutePlanningMapController *)self mapCameraController];
      [mapCameraController3 frameApproximateRouteFromStartPOIShape:startPOIShapeIfLoaded toEndPOIShapes:v36 animated:!UIAccessibilityIsReduceMotionEnabled() completion:0];
LABEL_42:

      goto LABEL_43;
    }

    mapCameraController3 = sub_1009E61D4();
    if (!os_log_type_enabled(mapCameraController3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_42;
    }

    selfCopy3 = self;
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    if (objc_opt_respondsToSelector())
    {
      v41 = [(RoutePlanningMapController *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v42 = v41;
      if (v41 && ![v41 isEqualToString:v40])
      {
        v44 = [NSString stringWithFormat:@"%@<%p, %@>", v40, selfCopy3, v42];
        v45 = v42;
        selfCopy3 = v44;

        goto LABEL_41;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v40, selfCopy3];
LABEL_41:

    *buf = 138543874;
    selfCopy4 = selfCopy3;
    v48 = 2112;
    v49 = startPOIShapeIfLoaded;
    v50 = 2112;
    v51 = v36;
    _os_log_impl(&_mh_execute_header, mapCameraController3, OS_LOG_TYPE_INFO, "[%{public}@] Skipping waypoint based framing due to startPOIShape: %@, endPOIShapes: %@", buf, 0x20u);

    goto LABEL_42;
  }

  dataCoordinator = sub_1009E61D4();
  if (os_log_type_enabled(dataCoordinator, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy4 = self;
    _os_log_impl(&_mh_execute_header, dataCoordinator, OS_LOG_TYPE_INFO, "[%{public}p] Presenting Search results for adding a stop. Ignore route framing.", buf, 0xCu);
  }

LABEL_45:
}

- (void)_didEnterBackground:(id)background
{
  object = [background object];
  searchPinsManager = [(RoutePlanningMapController *)self searchPinsManager];
  mapView = [searchPinsManager mapView];
  window = [mapView window];
  windowScene = [window windowScene];

  if (object == windowScene)
  {
    [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater setActive:0];
  }
}

- (void)_willEnterForeground:(id)foreground
{
  object = [foreground object];
  searchPinsManager = [(RoutePlanningMapController *)self searchPinsManager];
  mapView = [searchPinsManager mapView];
  window = [mapView window];
  windowScene = [window windowScene];

  if (object == windowScene)
  {
    [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater setActive:1];
  }
}

- (BOOL)updateRouteAnnotationsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  dataCoordinator = [(RoutePlanningMapController *)self dataCoordinator];
  routeCollection = [dataCoordinator routeCollection];

  dataCoordinator2 = [(RoutePlanningMapController *)self dataCoordinator];
  transportType = [dataCoordinator2 transportType];

  if (transportType == 4 || !routeCollection)
  {
    [configurationCopy clear];
    goto LABEL_20;
  }

  v30 = transportType;
  v31 = routeCollection;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  routes = [routeCollection routes];
  v10 = [routes countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(routes);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        searchPinsManager = [(RoutePlanningMapController *)self searchPinsManager];
        routeStartEndItemSource = [searchPinsManager routeStartEndItemSource];
        personalizedItemManager = [(RoutePlanningMapController *)self personalizedItemManager];
        [v14 updateWaypointStyleAttributesWithItemSource:routeStartEndItemSource personalizedItemManager:personalizedItemManager];
      }

      v11 = [routes countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  routeCollection = v31;
  routes2 = [v31 routes];
  routes3 = [configurationCopy routes];
  v20 = routes3;
  if (routes2 == routes3)
  {

    v24 = v30;
    goto LABEL_15;
  }

  routes4 = [v31 routes];
  routes5 = [configurationCopy routes];
  v23 = [routes4 isEqualToArray:routes5];

  v24 = v30;
  if ((v23 & 1) == 0)
  {
    routes2 = [v31 routes];
    [configurationCopy setRoutes:routes2];
LABEL_15:
  }

  selectsCurrentRoute = [(RoutePlanningMapController *)self selectsCurrentRoute];
  if (v24 == 3)
  {
    v26 = 1;
  }

  else
  {
    v26 = selectsCurrentRoute;
  }

  v27 = v24 != 3;
  [configurationCopy setSelectPolyline:v26];
  [configurationCopy setSelectedRouteIndex:{objc_msgSend(v31, "currentRouteIndex")}];
  [configurationCopy setRouteTrafficFeaturesActive:1];
  [configurationCopy setAlternateRoutesEnabled:v27];
  [configurationCopy setStyle:v27];
  [configurationCopy setTransitVehiclePositions:self->_lastReceivedVehiclePositions];
  tripIDs = [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater tripIDs];
  [configurationCopy filterTransitVehiclePositionsForTripsNotInSet:tripIDs];

LABEL_20:
  return 1;
}

- (void)_updateRouteAnnotationsController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setNeedsUpdateComponent:@"routeAnnotations" animated:1];
  }

  else
  {
    actionCoordinator = [(RoutePlanningMapController *)self actionCoordinator];
    [actionCoordinator updateRouteAnnotations];
  }
}

- (void)_updateSearchPinsManagerIfPossible
{
  dataCoordinator = [(RoutePlanningMapController *)self dataCoordinator];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1009E6F20;
  v23 = sub_1009E6F30;
  v24 = 0;
  v4 = objc_alloc_init(NSMutableArray);
  resolvedWaypointSet = [dataCoordinator resolvedWaypointSet];
  waypointsOrNull = [resolvedWaypointSet waypointsOrNull];

  waypointRequests = [dataCoordinator waypointRequests];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1009E6F38;
  v15[3] = &unk_101631668;
  v8 = waypointsOrNull;
  v16 = v8;
  v18 = &v19;
  v9 = v4;
  v17 = v9;
  [waypointRequests enumerateObjectsUsingBlock:v15];

  searchPinsManager = [(RoutePlanningMapController *)self searchPinsManager];
  routeCollection = [dataCoordinator routeCollection];
  v12 = [routeCollection count] != 0;

  [searchPinsManager setDisableEndPins:v12];
  [searchPinsManager setDisableStartPin:v12];
  v13 = v20[5];
  v14 = [v9 copy];
  [searchPinsManager setStartPin:v13 endPins:v14];

  _Block_object_dispose(&v19, 8);
}

- (void)poiShapeLoader:(id)loader didLoadStartPOIShape:(id)shape endPOIShapes:(id)shapes
{
  v8 = [(RoutePlanningMapController *)self actionCoordinator:loader];
  if (([v8 isRoutePlanningPresented] & 1) == 0)
  {
LABEL_4:

    return;
  }

  actionCoordinator = [(RoutePlanningMapController *)self actionCoordinator];
  if (actionCoordinator)
  {

    goto LABEL_4;
  }

  mapCameraController = [(RoutePlanningMapController *)self mapCameraController];

  if (mapCameraController)
  {

    [(RoutePlanningMapController *)self updateCameraIfPossible];
  }
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRoutes:(id)routes
{
  v5 = [(RoutePlanningMapController *)self dataCoordinator:coordinator];
  routeCollection = [v5 routeCollection];

  currentRoute = [routeCollection currentRoute];
  WeakRetained = objc_loadWeakRetained(&self->_currentRouteForVehicleUpdater);

  if (WeakRetained == currentRoute)
  {
    [(RoutePlanningMapController *)self _updateVehicleManagerIfNeeded];
  }
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRideBookingRideOptionState:(id)state
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/UI/RoutePlanningMapController.m");
    v6 = [[NSString alloc] initWithFormat:@"Observing, but not doing anything"];
    v7 = 136315394;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", &v7, 0x16u);
  }
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRouteCollection:(id)collection
{
  collectionCopy = collection;
  previousRouteCollection = [(RoutePlanningMapController *)self previousRouteCollection];
  if (!previousRouteCollection)
  {
    goto LABEL_6;
  }

  v6 = previousRouteCollection;
  currentRoute = [collectionCopy currentRoute];
  transportType = [currentRoute transportType];
  previousRouteCollection2 = [(RoutePlanningMapController *)self previousRouteCollection];
  currentRoute2 = [previousRouteCollection2 currentRoute];
  if (transportType != [currentRoute2 transportType])
  {

LABEL_6:
    [(RoutePlanningMapController *)self setPreviousRouteCollection:collectionCopy];
    goto LABEL_7;
  }

  currentRouteIndex = [collectionCopy currentRouteIndex];
  previousRouteCollection3 = [(RoutePlanningMapController *)self previousRouteCollection];
  currentRouteIndex2 = [previousRouteCollection3 currentRouteIndex];

  [(RoutePlanningMapController *)self setPreviousRouteCollection:collectionCopy];
  if (currentRouteIndex != currentRouteIndex2)
  {
LABEL_7:
    [(RoutePlanningMapController *)self _resetUserInteractionState];
  }

  [(RoutePlanningMapController *)self _updateRouteAnnotationsController];
  [(RoutePlanningMapController *)self _updateSearchPinsManagerIfPossible];
  [(RoutePlanningMapController *)self _updateCurrentRouteForVehicleUpdater];
  [(RoutePlanningMapController *)self updateCameraIfPossible];
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateTransportType:(int64_t)type
{
  [(RoutePlanningMapController *)self _resetUserInteractionState];
  viewModeController = [(RoutePlanningMapController *)self viewModeController];
  displayedViewMode = [viewModeController displayedViewMode];

  if (!type)
  {
    p_transportType = &self->_transportType;
    if (((displayedViewMode - 1) & 0xFFFFFFFFFFFFFFFALL) == 0)
    {
      goto LABEL_32;
    }

    v8 = 1;
    goto LABEL_21;
  }

  if (displayedViewMode <= 7)
  {
    if (((1 << displayedViewMode) & 0x67) != 0)
    {
      v8 = type != 3;
      p_transportType = &self->_transportType;
      if (((displayedViewMode - 1) & 0xFFFFFFFFFFFFFFFALL) == 0)
      {
        if (type == 3)
        {
          goto LABEL_40;
        }

LABEL_32:
        *p_transportType = type;
        goto LABEL_43;
      }

      goto LABEL_21;
    }

    if (displayedViewMode == 3)
    {
      v10 = type == 3;
      goto LABEL_17;
    }

    if (displayedViewMode == 7)
    {
      v10 = type == 1 || type == 4;
LABEL_17:
      v8 = v10;
      p_transportType = &self->_transportType;
      goto LABEL_21;
    }
  }

  p_transportType = &self->_transportType;
  if (((displayedViewMode - 1) & 0xFFFFFFFFFFFFFFFALL) == 0)
  {
    goto LABEL_33;
  }

  v8 = 0;
LABEL_21:
  v11 = *p_transportType;
  v14 = type != 1 && v11 != 0 || v11 == type;
  if (v8 && v14)
  {
    goto LABEL_32;
  }

LABEL_33:
  typeCopy = 7;
  if (type > 2)
  {
    if (type != 3)
    {
      if (type != 5)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

LABEL_40:
    typeCopy = type;
    goto LABEL_41;
  }

  if (!type)
  {
    goto LABEL_40;
  }

  if (type == 2)
  {
LABEL_39:
    typeCopy = 0;
  }

LABEL_41:
  *p_transportType = type;
  if (typeCopy != displayedViewMode)
  {
    viewModeController2 = [(RoutePlanningMapController *)self viewModeController];
    [viewModeController2 updateViewMode:typeCopy animated:!UIAccessibilityIsReduceMotionEnabled()];
  }

LABEL_43:

  [(RoutePlanningMapController *)self _updateRouteAnnotationsController];
}

- (void)routePlanningDataCoordinator:(id)coordinator didEnable:(BOOL)enable
{
  [(RoutePlanningMapController *)self _resetUserInteractionState:coordinator];

  [(RoutePlanningMapController *)self _updateCurrentRouteForVehicleUpdater];
}

- (void)_resetUserInteractionState
{
  if (self->_userInteractedWithMap)
  {
    v3 = sub_1009E61D4();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      *&self->_userInteractedWithMap = 0;
      return;
    }

    selfCopy = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(RoutePlanningMapController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

    *buf = 138543362;
    v11 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Clearing user interacted state, will allow camera updates", buf, 0xCu);

    goto LABEL_9;
  }
}

- (void)_userDidInteractWithMap
{
  if (!self->_userInteractedWithMap)
  {
    v3 = sub_1009E61D4();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      self->_userInteractedWithMap = 1;
      return;
    }

    selfCopy = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(RoutePlanningMapController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

    *buf = 138543362;
    v11 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] User started interacting with map, will suppress camera updates", buf, 0xCu);

    goto LABEL_9;
  }
}

- (void)saveOriginalMapViewModeAs:(int64_t)as
{
  v4 = [NSNumber numberWithInteger:as];
  originalViewMode = self->_originalViewMode;
  self->_originalViewMode = v4;
}

- (void)restoreOriginalMapViewMode:(BOOL)mode
{
  modeCopy = mode;
  originalViewMode = [(RoutePlanningMapController *)self originalViewMode];

  if (originalViewMode)
  {
    viewModeController = [(RoutePlanningMapController *)self viewModeController];
    displayedViewMode = [viewModeController displayedViewMode];
    originalViewMode2 = [(RoutePlanningMapController *)self originalViewMode];
    integerValue = [originalViewMode2 integerValue];

    if (displayedViewMode != integerValue)
    {
      viewModeController2 = [(RoutePlanningMapController *)self viewModeController];
      originalViewMode3 = [(RoutePlanningMapController *)self originalViewMode];
      [viewModeController2 updateViewMode:objc_msgSend(originalViewMode3 animated:{"integerValue"), modeCopy}];
    }

    [(RoutePlanningMapController *)self setOriginalViewMode:0];
  }
}

- (void)clearMapState:(BOOL)state
{
  v4 = +[NSSet set];
  [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater setTripIDs:v4];

  self->_transportType = 0;
  [(RoutePlanningMapController *)self _updateRouteAnnotationsController];
  actionCoordinator = [(RoutePlanningMapController *)self actionCoordinator];
  searchPinsManager = [actionCoordinator searchPinsManager];
  [searchPinsManager clearDirectionsPins];
}

- (void)setSelectCurrentRoute:(BOOL)route
{
  if (self->_selectCurrentRoute != route)
  {
    self->_selectCurrentRoute = route;
    [(RoutePlanningMapController *)self _updateRouteAnnotationsController];
  }
}

- (void)setPersonalizedItemManager:(id)manager
{
  obj = manager;
  WeakRetained = objc_loadWeakRetained(&self->_personalizedItemManager);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_personalizedItemManager);
    [v5 removeObserver:self];

    v6 = objc_storeWeak(&self->_personalizedItemManager, obj);
    [obj addObserver:self];
  }
}

- (void)setSearchPinsManager:(id)manager
{
  obj = manager;
  WeakRetained = objc_loadWeakRetained(&self->_searchPinsManager);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_searchPinsManager);
    [v6 unregisterPOIShapeLoadingObserver:self];

    objc_storeWeak(&self->_searchPinsManager, obj);
    [obj registerPOIShapeLoadingObserver:self];
    mapView = [obj mapView];
    window = [mapView window];
    windowScene = [window windowScene];

    if ([windowScene activationState])
    {
      v10 = [windowScene activationState] == 1;
    }

    else
    {
      v10 = 1;
    }

    [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater setActive:v10];

    v5 = obj;
  }
}

- (ViewModeControlling)viewModeController
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_viewModeController);
  }

  v6 = v5;

  return v6;
}

- (RouteAnnotationsController)routeAnnotationsController
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_actionCoordinator);
    routeAnnotationsController = [v4 routeAnnotationsController];
  }

  else
  {
    routeAnnotationsController = objc_loadWeakRetained(&self->_routeAnnotationsController);
  }

  return routeAnnotationsController;
}

- (MapCameraController)mapCameraController
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_actionCoordinator);
    mapCameraController = [v4 mapCameraController];
  }

  else
  {
    mapCameraController = objc_loadWeakRetained(&self->_mapCameraController);
  }

  return mapCameraController;
}

- (void)setDataCoordinator:(id)coordinator
{
  obj = coordinator;
  WeakRetained = objc_loadWeakRetained(&self->_dataCoordinator);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_dataCoordinator);
    [v5 removeObserver:self];

    v6 = objc_storeWeak(&self->_dataCoordinator, obj);
    [obj addObserver:self];

    v7 = objc_loadWeakRetained(&self->_dataCoordinator);
    [v7 setupDataForObserver:self];
  }
}

- (void)setActionCoordinator:(id)coordinator
{
  obj = coordinator;
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_actionCoordinator, obj);
    searchPinsManager = [obj searchPinsManager];
    [(RoutePlanningMapController *)self setSearchPinsManager:searchPinsManager];
  }
}

- (void)dealloc
{
  [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater setActive:0];
  transitVehicleUpdater = self->_transitVehicleUpdater;
  self->_transitVehicleUpdater = 0;

  v4.receiver = self;
  v4.super_class = RoutePlanningMapController;
  [(RoutePlanningMapController *)&v4 dealloc];
}

- (RoutePlanningMapController)initWithChromeViewController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = RoutePlanningMapController;
  v5 = [(RoutePlanningMapController *)&v12 init];
  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"_willEnterForeground:" name:UISceneWillEnterForegroundNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v5 selector:"_didEnterBackground:" name:UISceneDidEnterBackgroundNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v5 selector:"_chromeViewControllerDidUpdateMapInsets:" name:@"ChromeViewControllerDidUpdateMapInsetsNotification" object:controllerCopy];

    v5->_transportType = 0;
    v9 = [[GEOTransitVehicleUpdater alloc] initWithDelegate:v5];
    transitVehicleUpdater = v5->_transitVehicleUpdater;
    v5->_transitVehicleUpdater = v9;

    [controllerCopy registerAdditionalMapViewDelegate:v5];
    objc_storeWeak(&v5->_chromeViewController, controllerCopy);
  }

  return v5;
}

@end