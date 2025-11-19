@interface RoutePlanningMapController
- (ActionCoordination)actionCoordinator;
- (BOOL)updateRouteAnnotationsConfiguration:(id)a3;
- (MapCameraController)mapCameraController;
- (PersonalizedItemManager)personalizedItemManager;
- (RouteAnnotationsController)routeAnnotationsController;
- (RoutePlanningDataCoordination)dataCoordinator;
- (RoutePlanningMapController)initWithChromeViewController:(id)a3;
- (SearchPinsManager)searchPinsManager;
- (ViewModeControlling)viewModeController;
- (id)_currentVehicleEntries;
- (id)transitVehicleUpdater:(id)a3 shouldUpdateVehiclePositionsForTripIDs:(id)a4;
- (void)_didEnterBackground:(id)a3;
- (void)_resetUserInteractionState;
- (void)_updateCurrentRouteForVehicleUpdater;
- (void)_updateRouteAnnotationsController;
- (void)_updateSearchPinsManagerIfPossible;
- (void)_updateVehicleManagerIfNeeded;
- (void)_userDidInteractWithMap;
- (void)_willEnterForeground:(id)a3;
- (void)clearMapState:(BOOL)a3;
- (void)composedRoute:(id)a3 changedSelectedRideInClusteredSegment:(id)a4 fromIndex:(unint64_t)a5 toIndex:(unint64_t)a6;
- (void)dealloc;
- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4;
- (void)personalizedItemManager:(id)a3 didChangeItems:(id)a4 itemGroups:(id)a5;
- (void)poiShapeLoader:(id)a3 didLoadStartPOIShape:(id)a4 endPOIShapes:(id)a5;
- (void)restoreOriginalMapViewMode:(BOOL)a3;
- (void)routePlanningDataCoordinator:(id)a3 didEnable:(BOOL)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateRideBookingRideOptionState:(id)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateRouteCollection:(id)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateRoutes:(id)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateTransportType:(int64_t)a4;
- (void)saveOriginalMapViewModeAs:(int64_t)a3;
- (void)setActionCoordinator:(id)a3;
- (void)setDataCoordinator:(id)a3;
- (void)setPersonalizedItemManager:(id)a3;
- (void)setSearchPinsManager:(id)a3;
- (void)setSelectCurrentRoute:(BOOL)a3;
- (void)transitVehicleUpdater:(id)a3 didUpdateVehiclePositions:(id)a4 forTripIDs:(id)a5;
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

- (void)personalizedItemManager:(id)a3 didChangeItems:(id)a4 itemGroups:(id)a5
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1009E5648;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)composedRoute:(id)a3 changedSelectedRideInClusteredSegment:(id)a4 fromIndex:(unint64_t)a5 toIndex:(unint64_t)a6
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_currentRouteForVehicleUpdater);

  if (WeakRetained == v7)
  {

    [(RoutePlanningMapController *)self _updateVehicleManagerIfNeeded];
  }
}

- (void)transitVehicleUpdater:(id)a3 didUpdateVehiclePositions:(id)a4 forTripIDs:(id)a5
{
  v6 = [a4 allObjects];
  lastReceivedVehiclePositions = self->_lastReceivedVehiclePositions;
  self->_lastReceivedVehiclePositions = v6;

  [(RoutePlanningMapController *)self _updateRouteAnnotationsController];
}

- (id)transitVehicleUpdater:(id)a3 shouldUpdateVehiclePositionsForTripIDs:(id)a4
{
  v5 = a4;
  v6 = [(RoutePlanningMapController *)self _currentVehicleEntries];
  UInteger = GEOConfigGetUInteger();
  v8 = [NSMutableSet setWithCapacity:UInteger];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v6 upcomingTripIDs];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v17 + 1) + 8 * v13);
      if ([v5 containsObject:v14])
      {
        [v8 addObject:v14];
      }

      if ([v8 count] == UInteger)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

  v4 = [(RoutePlanningMapController *)self dataCoordinator];
  v5 = [v4 timing];
  v6 = [v5 departureDate];
  if (v6)
  {

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v7 = [(RoutePlanningMapController *)self dataCoordinator];
  v8 = [v7 timing];
  v9 = [v8 arrivalDate];

  if (v9)
  {
    goto LABEL_5;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [WeakRetained segments];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        objc_enumerationMutation(v12);
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

    v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
  v3 = [(RoutePlanningMapController *)self _currentVehicleEntries];
  v7 = v3;
  if (v3)
  {
    v4 = [v3 tripIDs];
    v5 = [NSSet setWithArray:v4];
  }

  else
  {
    v5 = +[NSSet set];
  }

  [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater setTripIDs:v5];
  v6 = [(RoutePlanningMapController *)self dataCoordinator];
  -[GEOTransitVehicleUpdater setActive:](self->_transitVehicleUpdater, "setActive:", [v6 isEnabled]);

  [(RoutePlanningMapController *)self _updateRouteAnnotationsController];
}

- (void)_updateCurrentRouteForVehicleUpdater
{
  v3 = [(RoutePlanningMapController *)self dataCoordinator];
  v4 = [v3 isEnabled];

  v5 = [(RoutePlanningMapController *)self dataCoordinator];
  v6 = [v5 transportType];

  obj = 0;
  if (v4 && v6 == 3)
  {
    v7 = [(RoutePlanningMapController *)self dataCoordinator];
    v8 = [v7 routeCollection];

    obj = [v8 currentRoute];
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

- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(RoutePlanningMapController *)self dataCoordinator];
  v36 = [v8 routeCollection];

  if ([(RoutePlanningMapController *)self selectsCurrentRoute])
  {
    v9 = [v36 currentRoute];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(RoutePlanningMapController *)self routeAnnotationsController];
  v11 = [v10 configuration];
  v12 = [v11 alternateRoutesEnabled];

  if (v12)
  {
    v13 = [v36 routes];
LABEL_8:
    v14 = v13;
    goto LABEL_9;
  }

  if (v9)
  {
    v47 = v9;
    v13 = [NSArray arrayWithObjects:&v47 count:1];
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
    v17 = [(RoutePlanningMapController *)self selectsCurrentRoute];
    v18 = @"YES";
    if (!v17)
    {
      v18 = @"NO";
    }

    v19 = v18;
    v35 = [v36 currentRoute];
    v20 = [v35 uniqueRouteID];
    v21 = [v20 UUIDString];
    v22 = @"YES";
    if (!v12)
    {
      v22 = @"NO";
    }

    v23 = v22;
    *buf = 134350082;
    v38 = self;
    v39 = 2112;
    v40 = v16;
    v41 = 2112;
    v42 = v19;
    v43 = 2112;
    v44 = v21;
    v45 = 2112;
    v46 = v23;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Did receive map view tap at point %@; selectsCurrentRoute: %@; currentRoute: %@; showingAlternateRoutes: %@", buf, 0x34u);
  }

  v24 = &stru_10162A738;
  v25 = [RouteAnnotationsResponder routeAtPoint:v7 inMapView:v14 withRoutes:v9 selectedRoute:&stru_10162A738 overlappingRouteSelectorBlock:x, y];

  v26 = sub_1009E61D4();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = [v25 uniqueRouteID];
    v28 = [v27 UUIDString];
    *buf = 134349314;
    v38 = self;
    v39 = 2112;
    v40 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[%{public}p] Detected user tapped route: %@", buf, 0x16u);
  }

  if (v25)
  {
    v29 = [(RoutePlanningMapController *)self dataCoordinator];
    [v29 updateCurrentRoute:v25];

    WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);
    v31 = objc_opt_respondsToSelector();

    if (v31)
    {
      v32 = objc_loadWeakRetained(&self->_actionCoordinator);
      v33 = [v32 currentMapViewTargetForAnalytics];

      v34 = +[MKMapService sharedService];
      [v34 captureUserAction:3015 onTarget:v33 eventValue:0 routeIndex:{objc_msgSend(v25, "_maps_routeIndex")}];
    }
  }
}

- (void)updateCameraIfPossible
{
  v3 = [(RoutePlanningMapController *)self actionCoordinator];
  v4 = [v3 isPresentingAddStopSearchResults];

  if (!v4)
  {
    v5 = [(RoutePlanningMapController *)self dataCoordinator];
    if (![v5 isEnabled])
    {
      goto LABEL_45;
    }

    if (self->_userInteractedWithMap)
    {
      if (self->_loggedFirstCameraSuppress)
      {
        v6 = sub_1009E61D4();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = self;
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          if (objc_opt_respondsToSelector())
          {
            v10 = [(RoutePlanningMapController *)v7 performSelector:"accessibilityIdentifier"];
            v11 = v10;
            if (v10 && ![v10 isEqualToString:v9])
            {
              v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

              goto LABEL_13;
            }
          }

          v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_13:

          *buf = 138543362;
          v47 = v12;
          v13 = v6;
          v14 = OS_LOG_TYPE_DEBUG;
LABEL_26:
          _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}@] Will suppress camera update, user has interacted with map since last update", buf, 0xCu);
        }

LABEL_44:

        goto LABEL_45;
      }

      self->_loggedFirstCameraSuppress = 1;
      v6 = sub_1009E61D4();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_44;
      }

      v24 = self;
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      if (objc_opt_respondsToSelector())
      {
        v27 = [(RoutePlanningMapController *)v24 performSelector:"accessibilityIdentifier"];
        v28 = v27;
        if (v27 && ![v27 isEqualToString:v26])
        {
          v12 = [NSString stringWithFormat:@"%@<%p, %@>", v26, v24, v28];

          goto LABEL_25;
        }
      }

      v12 = [NSString stringWithFormat:@"%@<%p>", v26, v24];
LABEL_25:

      *buf = 138543362;
      v47 = v12;
      v13 = v6;
      v14 = OS_LOG_TYPE_INFO;
      goto LABEL_26;
    }

    [v5 currentRouteDisplayedMapRect];
    v19 = v18;
    v20 = v15;
    if (v18 != MKMapRectNull.origin.x || v15 != MKMapRectNull.origin.y)
    {
      v22 = v16;
      v23 = v17;
      v6 = [(RoutePlanningMapController *)self mapCameraController];
      [v6 frameMapRect:!UIAccessibilityIsReduceMotionEnabled() animated:0 completion:v19, v20, v22, v23];
      goto LABEL_44;
    }

    v6 = [v5 routeCollection];
    v29 = [v6 routes];
    if ([v5 transportType]== 3)
    {
      v30 = [v6 currentRoute];

      if (v30)
      {
        v31 = [v6 currentRoute];
        v52 = v31;
        v32 = [NSArray arrayWithObjects:&v52 count:1];

        v29 = v32;
      }
    }

    if ([v29 count])
    {
      v33 = [(RoutePlanningMapController *)self mapCameraController];
      [v33 frameRoutes:v29 includeCompassInset:1 animated:!UIAccessibilityIsReduceMotionEnabled() completion:0];
LABEL_43:

      goto LABEL_44;
    }

    v33 = [(RoutePlanningMapController *)self searchPinsManager];
    v34 = [v33 startPOIShapeIfLoaded];
    v35 = [v33 endPOIShapesIfLoaded];
    v36 = v35;
    if (v34 && [v35 count])
    {
      v37 = [(RoutePlanningMapController *)self mapCameraController];
      [v37 frameApproximateRouteFromStartPOIShape:v34 toEndPOIShapes:v36 animated:!UIAccessibilityIsReduceMotionEnabled() completion:0];
LABEL_42:

      goto LABEL_43;
    }

    v37 = sub_1009E61D4();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      goto LABEL_42;
    }

    v38 = self;
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    if (objc_opt_respondsToSelector())
    {
      v41 = [(RoutePlanningMapController *)v38 performSelector:"accessibilityIdentifier"];
      v42 = v41;
      if (v41 && ![v41 isEqualToString:v40])
      {
        v44 = [NSString stringWithFormat:@"%@<%p, %@>", v40, v38, v42];
        v45 = v42;
        v43 = v44;

        goto LABEL_41;
      }
    }

    v43 = [NSString stringWithFormat:@"%@<%p>", v40, v38];
LABEL_41:

    *buf = 138543874;
    v47 = v43;
    v48 = 2112;
    v49 = v34;
    v50 = 2112;
    v51 = v36;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "[%{public}@] Skipping waypoint based framing due to startPOIShape: %@, endPOIShapes: %@", buf, 0x20u);

    goto LABEL_42;
  }

  v5 = sub_1009E61D4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v47 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Presenting Search results for adding a stop. Ignore route framing.", buf, 0xCu);
  }

LABEL_45:
}

- (void)_didEnterBackground:(id)a3
{
  v8 = [a3 object];
  v4 = [(RoutePlanningMapController *)self searchPinsManager];
  v5 = [v4 mapView];
  v6 = [v5 window];
  v7 = [v6 windowScene];

  if (v8 == v7)
  {
    [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater setActive:0];
  }
}

- (void)_willEnterForeground:(id)a3
{
  v8 = [a3 object];
  v4 = [(RoutePlanningMapController *)self searchPinsManager];
  v5 = [v4 mapView];
  v6 = [v5 window];
  v7 = [v6 windowScene];

  if (v8 == v7)
  {
    [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater setActive:1];
  }
}

- (BOOL)updateRouteAnnotationsConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningMapController *)self dataCoordinator];
  v6 = [v5 routeCollection];

  v7 = [(RoutePlanningMapController *)self dataCoordinator];
  v8 = [v7 transportType];

  if (v8 == 4 || !v6)
  {
    [v4 clear];
    goto LABEL_20;
  }

  v30 = v8;
  v31 = v6;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = [v6 routes];
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = [(RoutePlanningMapController *)self searchPinsManager];
        v16 = [v15 routeStartEndItemSource];
        v17 = [(RoutePlanningMapController *)self personalizedItemManager];
        [v14 updateWaypointStyleAttributesWithItemSource:v16 personalizedItemManager:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  v6 = v31;
  v18 = [v31 routes];
  v19 = [v4 routes];
  v20 = v19;
  if (v18 == v19)
  {

    v24 = v30;
    goto LABEL_15;
  }

  v21 = [v31 routes];
  v22 = [v4 routes];
  v23 = [v21 isEqualToArray:v22];

  v24 = v30;
  if ((v23 & 1) == 0)
  {
    v18 = [v31 routes];
    [v4 setRoutes:v18];
LABEL_15:
  }

  v25 = [(RoutePlanningMapController *)self selectsCurrentRoute];
  if (v24 == 3)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  v27 = v24 != 3;
  [v4 setSelectPolyline:v26];
  [v4 setSelectedRouteIndex:{objc_msgSend(v31, "currentRouteIndex")}];
  [v4 setRouteTrafficFeaturesActive:1];
  [v4 setAlternateRoutesEnabled:v27];
  [v4 setStyle:v27];
  [v4 setTransitVehiclePositions:self->_lastReceivedVehiclePositions];
  v28 = [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater tripIDs];
  [v4 filterTransitVehiclePositionsForTripsNotInSet:v28];

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
    v4 = [(RoutePlanningMapController *)self actionCoordinator];
    [v4 updateRouteAnnotations];
  }
}

- (void)_updateSearchPinsManagerIfPossible
{
  v3 = [(RoutePlanningMapController *)self dataCoordinator];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1009E6F20;
  v23 = sub_1009E6F30;
  v24 = 0;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [v3 resolvedWaypointSet];
  v6 = [v5 waypointsOrNull];

  v7 = [v3 waypointRequests];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1009E6F38;
  v15[3] = &unk_101631668;
  v8 = v6;
  v16 = v8;
  v18 = &v19;
  v9 = v4;
  v17 = v9;
  [v7 enumerateObjectsUsingBlock:v15];

  v10 = [(RoutePlanningMapController *)self searchPinsManager];
  v11 = [v3 routeCollection];
  v12 = [v11 count] != 0;

  [v10 setDisableEndPins:v12];
  [v10 setDisableStartPin:v12];
  v13 = v20[5];
  v14 = [v9 copy];
  [v10 setStartPin:v13 endPins:v14];

  _Block_object_dispose(&v19, 8);
}

- (void)poiShapeLoader:(id)a3 didLoadStartPOIShape:(id)a4 endPOIShapes:(id)a5
{
  v8 = [(RoutePlanningMapController *)self actionCoordinator:a3];
  if (([v8 isRoutePlanningPresented] & 1) == 0)
  {
LABEL_4:

    return;
  }

  v6 = [(RoutePlanningMapController *)self actionCoordinator];
  if (v6)
  {

    goto LABEL_4;
  }

  v7 = [(RoutePlanningMapController *)self mapCameraController];

  if (v7)
  {

    [(RoutePlanningMapController *)self updateCameraIfPossible];
  }
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateRoutes:(id)a4
{
  v5 = [(RoutePlanningMapController *)self dataCoordinator:a3];
  v8 = [v5 routeCollection];

  v6 = [v8 currentRoute];
  WeakRetained = objc_loadWeakRetained(&self->_currentRouteForVehicleUpdater);

  if (WeakRetained == v6)
  {
    [(RoutePlanningMapController *)self _updateVehicleManagerIfNeeded];
  }
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateRideBookingRideOptionState:(id)a4
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

- (void)routePlanningDataCoordinator:(id)a3 didUpdateRouteCollection:(id)a4
{
  v14 = a4;
  v5 = [(RoutePlanningMapController *)self previousRouteCollection];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v14 currentRoute];
  v8 = [v7 transportType];
  v9 = [(RoutePlanningMapController *)self previousRouteCollection];
  v10 = [v9 currentRoute];
  if (v8 != [v10 transportType])
  {

LABEL_6:
    [(RoutePlanningMapController *)self setPreviousRouteCollection:v14];
    goto LABEL_7;
  }

  v11 = [v14 currentRouteIndex];
  v12 = [(RoutePlanningMapController *)self previousRouteCollection];
  v13 = [v12 currentRouteIndex];

  [(RoutePlanningMapController *)self setPreviousRouteCollection:v14];
  if (v11 != v13)
  {
LABEL_7:
    [(RoutePlanningMapController *)self _resetUserInteractionState];
  }

  [(RoutePlanningMapController *)self _updateRouteAnnotationsController];
  [(RoutePlanningMapController *)self _updateSearchPinsManagerIfPossible];
  [(RoutePlanningMapController *)self _updateCurrentRouteForVehicleUpdater];
  [(RoutePlanningMapController *)self updateCameraIfPossible];
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateTransportType:(int64_t)a4
{
  [(RoutePlanningMapController *)self _resetUserInteractionState];
  v6 = [(RoutePlanningMapController *)self viewModeController];
  v7 = [v6 displayedViewMode];

  if (!a4)
  {
    p_transportType = &self->_transportType;
    if (((v7 - 1) & 0xFFFFFFFFFFFFFFFALL) == 0)
    {
      goto LABEL_32;
    }

    v8 = 1;
    goto LABEL_21;
  }

  if (v7 <= 7)
  {
    if (((1 << v7) & 0x67) != 0)
    {
      v8 = a4 != 3;
      p_transportType = &self->_transportType;
      if (((v7 - 1) & 0xFFFFFFFFFFFFFFFALL) == 0)
      {
        if (a4 == 3)
        {
          goto LABEL_40;
        }

LABEL_32:
        *p_transportType = a4;
        goto LABEL_43;
      }

      goto LABEL_21;
    }

    if (v7 == 3)
    {
      v10 = a4 == 3;
      goto LABEL_17;
    }

    if (v7 == 7)
    {
      v10 = a4 == 1 || a4 == 4;
LABEL_17:
      v8 = v10;
      p_transportType = &self->_transportType;
      goto LABEL_21;
    }
  }

  p_transportType = &self->_transportType;
  if (((v7 - 1) & 0xFFFFFFFFFFFFFFFALL) == 0)
  {
    goto LABEL_33;
  }

  v8 = 0;
LABEL_21:
  v11 = *p_transportType;
  v14 = a4 != 1 && v11 != 0 || v11 == a4;
  if (v8 && v14)
  {
    goto LABEL_32;
  }

LABEL_33:
  v15 = 7;
  if (a4 > 2)
  {
    if (a4 != 3)
    {
      if (a4 != 5)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

LABEL_40:
    v15 = a4;
    goto LABEL_41;
  }

  if (!a4)
  {
    goto LABEL_40;
  }

  if (a4 == 2)
  {
LABEL_39:
    v15 = 0;
  }

LABEL_41:
  *p_transportType = a4;
  if (v15 != v7)
  {
    v16 = [(RoutePlanningMapController *)self viewModeController];
    [v16 updateViewMode:v15 animated:!UIAccessibilityIsReduceMotionEnabled()];
  }

LABEL_43:

  [(RoutePlanningMapController *)self _updateRouteAnnotationsController];
}

- (void)routePlanningDataCoordinator:(id)a3 didEnable:(BOOL)a4
{
  [(RoutePlanningMapController *)self _resetUserInteractionState:a3];

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

    v4 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(RoutePlanningMapController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

    *buf = 138543362;
    v11 = v9;
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

    v4 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(RoutePlanningMapController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

    *buf = 138543362;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] User started interacting with map, will suppress camera updates", buf, 0xCu);

    goto LABEL_9;
  }
}

- (void)saveOriginalMapViewModeAs:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  originalViewMode = self->_originalViewMode;
  self->_originalViewMode = v4;
}

- (void)restoreOriginalMapViewMode:(BOOL)a3
{
  v3 = a3;
  v5 = [(RoutePlanningMapController *)self originalViewMode];

  if (v5)
  {
    v6 = [(RoutePlanningMapController *)self viewModeController];
    v7 = [v6 displayedViewMode];
    v8 = [(RoutePlanningMapController *)self originalViewMode];
    v9 = [v8 integerValue];

    if (v7 != v9)
    {
      v10 = [(RoutePlanningMapController *)self viewModeController];
      v11 = [(RoutePlanningMapController *)self originalViewMode];
      [v10 updateViewMode:objc_msgSend(v11 animated:{"integerValue"), v3}];
    }

    [(RoutePlanningMapController *)self setOriginalViewMode:0];
  }
}

- (void)clearMapState:(BOOL)a3
{
  v4 = +[NSSet set];
  [(GEOTransitVehicleUpdater *)self->_transitVehicleUpdater setTripIDs:v4];

  self->_transportType = 0;
  [(RoutePlanningMapController *)self _updateRouteAnnotationsController];
  v6 = [(RoutePlanningMapController *)self actionCoordinator];
  v5 = [v6 searchPinsManager];
  [v5 clearDirectionsPins];
}

- (void)setSelectCurrentRoute:(BOOL)a3
{
  if (self->_selectCurrentRoute != a3)
  {
    self->_selectCurrentRoute = a3;
    [(RoutePlanningMapController *)self _updateRouteAnnotationsController];
  }
}

- (void)setPersonalizedItemManager:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_personalizedItemManager);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_personalizedItemManager);
    [v5 removeObserver:self];

    v6 = objc_storeWeak(&self->_personalizedItemManager, obj);
    [obj addObserver:self];
  }
}

- (void)setSearchPinsManager:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_searchPinsManager);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_searchPinsManager);
    [v6 unregisterPOIShapeLoadingObserver:self];

    objc_storeWeak(&self->_searchPinsManager, obj);
    [obj registerPOIShapeLoadingObserver:self];
    v7 = [obj mapView];
    v8 = [v7 window];
    v9 = [v8 windowScene];

    if ([v9 activationState])
    {
      v10 = [v9 activationState] == 1;
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
    v5 = [v4 routeAnnotationsController];
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_routeAnnotationsController);
  }

  return v5;
}

- (MapCameraController)mapCameraController
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_actionCoordinator);
    v5 = [v4 mapCameraController];
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_mapCameraController);
  }

  return v5;
}

- (void)setDataCoordinator:(id)a3
{
  obj = a3;
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

- (void)setActionCoordinator:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_actionCoordinator, obj);
    v5 = [obj searchPinsManager];
    [(RoutePlanningMapController *)self setSearchPinsManager:v5];
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

- (RoutePlanningMapController)initWithChromeViewController:(id)a3
{
  v4 = a3;
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
    [v8 addObserver:v5 selector:"_chromeViewControllerDidUpdateMapInsets:" name:@"ChromeViewControllerDidUpdateMapInsetsNotification" object:v4];

    v5->_transportType = 0;
    v9 = [[GEOTransitVehicleUpdater alloc] initWithDelegate:v5];
    transitVehicleUpdater = v5->_transitVehicleUpdater;
    v5->_transitVehicleUpdater = v9;

    [v4 registerAdditionalMapViewDelegate:v5];
    objc_storeWeak(&v5->_chromeViewController, v4);
  }

  return v5;
}

@end