@interface NavCameraController
- (NavCameraController)init;
- (NavCameraController)initWithNavigationProvider:(id)provider;
- (unint64_t)_incidentTypeForAlert:(id)alert;
- (void)_restoreStateFromNavigationProvider:(id)provider;
- (void)_updateCameraInfoStylesForRoute:(id)route routeCoordinate:(id)coordinate;
- (void)_updateForCurrentStepIndex;
- (void)_updateState;
- (void)_updateStateForAlternateRoutes;
- (void)_updateStateForSAR;
- (void)_updateStateForTrafficIncident;
- (void)_updateStateForTrafficIncidentCameraStyling;
- (void)_updateStateForVehiclePositions;
- (void)_updateWithNewRoute:(id)route;
- (void)dealloc;
- (void)filterVehiclePositionsForTripsNotInSet:(id)set;
- (void)frameVehiclePositions:(id)positions;
- (void)navigationProvider:(id)provider didChangeNavigationState:(int)state;
- (void)navigationProvider:(id)provider didChangeToNavigating:(BOOL)navigating;
- (void)navigationProvider:(id)provider didUpdateDistanceUntilManeuver:(double)maneuver timeUntilManeuver:(double)untilManeuver forStepIndex:(unint64_t)index;
- (void)navigationProvider:(id)provider didUpdateMatchedLocation:(id)location;
- (void)pauseTracking;
- (void)resetMapViewNavigationState;
- (void)setMapView:(id)view;
- (void)setNavCameraMode:(unint64_t)mode;
- (void)setNavigationDestination:(unint64_t)destination;
- (void)setOverrideNavigationProvider:(id)provider;
- (void)setSearchAlongTheRoutePoints:(id)points;
- (void)setTrafficIncidentAlert:(id)alert;
- (void)stopTracking;
- (void)transitionToTrackingInMapMode:(int64_t)mode animated:(BOOL)animated startLocation:(id)location startHandler:(id)handler;
@end

@implementation NavCameraController

- (void)_updateCameraInfoStylesForRoute:(id)route routeCoordinate:(id)coordinate
{
  routeCopy = route;
  v6 = [NSHashTable hashTableWithOptions:512];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  cameraInfos = [routeCopy cameraInfos];
  v8 = [cameraInfos countByEnumeratingWithState:&v80 objects:v89 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v81;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v81 != v10)
        {
          objc_enumerationMutation(cameraInfos);
        }

        v12 = *(*(&v80 + 1) + 8 * i);
        [v12 routeCoordinateRange];
        if (GEOPolylineCoordinateInRange())
        {
          [v6 addObject:v12];
        }
      }

      v9 = [cameraInfos countByEnumeratingWithState:&v80 objects:v89 count:16];
    }

    while (v9);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  mutableData = [routeCopy mutableData];
  updateableCameraInfos = [mutableData updateableCameraInfos];

  v15 = [updateableCameraInfos countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v77;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v77 != v17)
        {
          objc_enumerationMutation(updateableCameraInfos);
        }

        v19 = *(*(&v76 + 1) + 8 * j);
        [v19 routeCoordinateRange];
        if (GEOPolylineCoordinateInRange())
        {
          [v6 addObject:v19];
        }
      }

      v16 = [updateableCameraInfos countByEnumeratingWithState:&v76 objects:v88 count:16];
    }

    while (v16);
  }

  v56 = routeCopy;

  mapView = [(NavCameraController *)self mapView];
  _mapLayer = [mapView _mapLayer];
  sceneConfiguration = [_mapLayer sceneConfiguration];

  activeCameraInfos = self->_activeCameraInfos;
  p_activeCameraInfos = &self->_activeCameraInfos;
  v25 = [(NSHashTable *)activeCameraInfos copy];
  [v25 minusHashTable:v6];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v25;
  v26 = [obj countByEnumeratingWithState:&v72 objects:v87 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v73;
    do
    {
      for (k = 0; k != v27; k = k + 1)
      {
        if (*v73 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v72 + 1) + 8 * k);
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        styleAttributes = [v30 styleAttributes];
        attributes = [styleAttributes attributes];

        v33 = [attributes countByEnumeratingWithState:&v68 objects:v86 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v69;
          do
          {
            for (m = 0; m != v34; m = m + 1)
            {
              if (*v69 != v35)
              {
                objc_enumerationMutation(attributes);
              }

              [sceneConfiguration removeStyleAttributeKey:{objc_msgSend(*(*(&v68 + 1) + 8 * m), "key")}];
            }

            v34 = [attributes countByEnumeratingWithState:&v68 objects:v86 count:16];
          }

          while (v34);
        }
      }

      v27 = [obj countByEnumeratingWithState:&v72 objects:v87 count:16];
    }

    while (v27);
  }

  v54 = v6;
  v37 = [v6 copy];
  location = p_activeCameraInfos;
  [v37 minusHashTable:*p_activeCameraInfos];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v57 = v37;
  v38 = [v57 countByEnumeratingWithState:&v64 objects:v85 count:16];
  if (v38)
  {
    v39 = v38;
    v59 = *v65;
    do
    {
      for (n = 0; n != v39; n = n + 1)
      {
        if (*v65 != v59)
        {
          objc_enumerationMutation(v57);
        }

        v41 = *(*(&v64 + 1) + 8 * n);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        styleAttributes2 = [v41 styleAttributes];
        attributes2 = [styleAttributes2 attributes];

        v44 = [attributes2 countByEnumeratingWithState:&v60 objects:v84 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v61;
          do
          {
            for (ii = 0; ii != v45; ii = ii + 1)
            {
              if (*v61 != v46)
              {
                objc_enumerationMutation(attributes2);
              }

              v48 = *(*(&v60 + 1) + 8 * ii);
              v49 = [v48 key];
              value = [v48 value];
              routeCoordinateRange = [v41 routeCoordinateRange];
              [sceneConfiguration applyStyleAttributeKeyValue:v49 withValue:value withCoordinateRange:{routeCoordinateRange, v52}];
            }

            v45 = [attributes2 countByEnumeratingWithState:&v60 objects:v84 count:16];
          }

          while (v45);
        }
      }

      v39 = [v57 countByEnumeratingWithState:&v64 objects:v85 count:16];
    }

    while (v39);
  }

  if ([v54 count])
  {
    v53 = v54;
  }

  else
  {
    v53 = 0;
  }

  objc_storeStrong(location, v53);
}

- (void)_updateForCurrentStepIndex
{
  navigationProvider = [(NavCameraController *)self navigationProvider];
  displayedStepIndex = [navigationProvider displayedStepIndex];

  if (displayedStepIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    navigationProvider2 = [(NavCameraController *)self navigationProvider];
    displayedStepIndex = [navigationProvider2 stepIndex];
  }

  navigationProvider3 = [(NavCameraController *)self navigationProvider];
  route = [navigationProvider3 route];

  v7 = displayedStepIndex >= [route stepsCount];
  v8 = route;
  if (!v7)
  {
    v9 = [route stepAtIndex:displayedStepIndex];
    mapView = [(NavCameraController *)self mapView];
    _mapLayer = [mapView _mapLayer];
    sceneConfiguration = [_mapLayer sceneConfiguration];
    getNextStep = [v9 getNextStep];
    [getNextStep distance];
    [sceneConfiguration setNextStepLength:?];

    mapView2 = [(NavCameraController *)self mapView];
    _mapLayer2 = [mapView2 _mapLayer];
    sceneConfiguration2 = [_mapLayer2 sceneConfiguration];
    [v9 distance];
    [sceneConfiguration2 setCurrentStepLength:?];

    mapView3 = [(NavCameraController *)self mapView];
    _mapLayer3 = [mapView3 _mapLayer];
    sceneConfiguration3 = [_mapLayer3 sceneConfiguration];
    geoStep = [v9 geoStep];
    [sceneConfiguration3 setCurrentManeuverJunctionsCount:{objc_msgSend(geoStep, "junctionElementsCount")}];

    mapView4 = [(NavCameraController *)self mapView];
    _mapLayer4 = [mapView4 _mapLayer];
    sceneConfiguration4 = [_mapLayer4 sceneConfiguration];
    [sceneConfiguration4 setCurrentTransportationType:{objc_msgSend(v9, "transportType")}];

    geoStep2 = [v9 geoStep];
    maneuverType = [geoStep2 maneuverType];

    v26 = [route roadFeatureAtPointIndex:{objc_msgSend(v9, "startRouteCoordinate")}];
    v27 = v26;
    if (v26)
    {
      feature = [v26 feature];
      attributes = [feature attributes];
      self->_currentLineType = [attributes lineType];

      feature2 = [v27 feature];
      attributes2 = [feature2 attributes];
      self->_currentRampType = [attributes2 rampType];

      mapView5 = [(NavCameraController *)self mapView];
      _mapLayer5 = [mapView5 _mapLayer];
      sceneConfiguration5 = [_mapLayer5 sceneConfiguration];
      [sceneConfiguration5 setLineType:self->_currentLineType];

      mapView6 = [(NavCameraController *)self mapView];
      _mapLayer6 = [mapView6 _mapLayer];
      sceneConfiguration6 = [_mapLayer6 sceneConfiguration];
      [sceneConfiguration6 setRampType:self->_currentRampType];

      mapView7 = [(NavCameraController *)self mapView];
      _mapLayer7 = [mapView7 _mapLayer];
      sceneConfiguration7 = [_mapLayer7 sceneConfiguration];
      [sceneConfiguration7 setDistanceToCurrentTrafficSection:self->_distanceToCurrentTrafficSection];

      mapView8 = [(NavCameraController *)self mapView];
      _mapLayer8 = [mapView8 _mapLayer];
      sceneConfiguration8 = [_mapLayer8 sceneConfiguration];
      [sceneConfiguration8 setTrafficColor:self->_currentTrafficColor];

      mapView9 = [(NavCameraController *)self mapView];
      _mapLayer9 = [mapView9 _mapLayer];
      sceneConfiguration9 = [_mapLayer9 sceneConfiguration];
      [sceneConfiguration9 setLaneCount:self->_laneCount];
    }

    transitStep = [v9 transitStep];
    if ([transitStep hasManeuverType])
    {
      maneuverType2 = [transitStep maneuverType];
    }

    else
    {
      maneuverType2 = 0;
    }

    mapView10 = [(NavCameraController *)self mapView];
    _mapLayer10 = [mapView10 _mapLayer];
    sceneConfiguration10 = [_mapLayer10 sceneConfiguration];
    [sceneConfiguration10 setCurrentManeuverType:maneuverType];

    mapView11 = [(NavCameraController *)self mapView];
    _mapLayer11 = [mapView11 _mapLayer];
    sceneConfiguration11 = [_mapLayer11 sceneConfiguration];
    [sceneConfiguration11 setCurrentTransitManeuverType:maneuverType2];

    stepsWithRampCache = [(NavCameraCaches *)self->_navCameraCaches stepsWithRampCache];
    if (stepsWithRampCache)
    {
      v56 = stepsWithRampCache;
      stepsWithRampCache2 = [(NavCameraCaches *)self->_navCameraCaches stepsWithRampCache];
      v58 = [stepsWithRampCache2 count];

      if (displayedStepIndex < v58)
      {
        stepsWithRampCache3 = [(NavCameraCaches *)self->_navCameraCaches stepsWithRampCache];
        v60 = [stepsWithRampCache3 objectAtIndexedSubscript:displayedStepIndex];
        if (([v60 integerValue] & 0x8000000000000000) != 0)
        {
          integerValue = 0;
        }

        else
        {
          stepsWithRampCache4 = [(NavCameraCaches *)self->_navCameraCaches stepsWithRampCache];
          v62 = [stepsWithRampCache4 objectAtIndexedSubscript:displayedStepIndex];
          integerValue = [v62 integerValue];
        }

        mapView12 = [(NavCameraController *)self mapView];
        _mapLayer12 = [mapView12 _mapLayer];
        sceneConfiguration12 = [_mapLayer12 sceneConfiguration];
        [sceneConfiguration12 setNextManeuverRampType:integerValue];
      }
    }

    [(VKNavContext *)self->_navContext setCurrentStepIndex:displayedStepIndex];
    groupedManeuverCounts = [(NavCameraCaches *)self->_navCameraCaches groupedManeuverCounts];
    v68 = [groupedManeuverCounts count];

    if (displayedStepIndex < v68)
    {
      groupedManeuverCounts2 = [(NavCameraCaches *)self->_navCameraCaches groupedManeuverCounts];
      v70 = [groupedManeuverCounts2 objectAtIndexedSubscript:displayedStepIndex];
      unsignedIntegerValue = [v70 unsignedIntegerValue];

      if (unsignedIntegerValue >= 5)
      {
        v72 = 5;
      }

      else
      {
        v72 = unsignedIntegerValue;
      }

      mapView13 = [(NavCameraController *)self mapView];
      _mapLayer13 = [mapView13 _mapLayer];
      sceneConfiguration13 = [_mapLayer13 sceneConfiguration];
      [sceneConfiguration13 setCurrentGroupedManeuverCount:v72];
    }

    v8 = route;
  }
}

- (void)_updateWithNewRoute:(id)route
{
  v4 = [NavCameraCaches cachesWithRoute:route context:self->_navContext];
  navCameraCaches = self->_navCameraCaches;
  self->_navCameraCaches = v4;

  [(NavCameraController *)self _updateState];
}

- (void)navigationProvider:(id)provider didUpdateDistanceUntilManeuver:(double)maneuver timeUntilManeuver:(double)untilManeuver forStepIndex:(unint64_t)index
{
  route = [provider route];
  mapView = [(NavCameraController *)self mapView];
  _mapLayer = [mapView _mapLayer];
  sceneConfiguration = [_mapLayer sceneConfiguration];
  [sceneConfiguration setDistanceToCurrentManeuver:maneuver];

  [route remainingDistanceAlongRouteFromStepIndex:index currentStepRemainingDistance:maneuver];
  v13 = v12;
  mapView2 = [(NavCameraController *)self mapView];
  _mapLayer2 = [mapView2 _mapLayer];
  sceneConfiguration2 = [_mapLayer2 sceneConfiguration];
  [sceneConfiguration2 setDistanceToDestination:v13];
}

- (void)navigationProvider:(id)provider didUpdateMatchedLocation:(id)location
{
  providerCopy = provider;
  locationCopy = location;
  objc_storeStrong(&self->_lastLocation, location);
  navigationProvider = [(NavCameraController *)self navigationProvider];
  displayedStepIndex = [navigationProvider displayedStepIndex];

  if (displayedStepIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    navigationProvider2 = [(NavCameraController *)self navigationProvider];
    displayedStepIndex = [navigationProvider2 stepIndex];
  }

  route = [providerCopy route];
  navigationState = [providerCopy navigationState];
  routeMatch = [locationCopy routeMatch];
  routeCoordinate = [routeMatch routeCoordinate];

  v82 = displayedStepIndex;
  v13 = [route stepAtIndex:displayedStepIndex];
  routeMatch2 = [locationCopy routeMatch];

  if (routeMatch2)
  {
    v15 = 0.0;
    if ([locationCopy state] != 1)
    {
      routeMatch3 = [locationCopy routeMatch];
      [routeMatch3 distanceFromRoute];
      v15 = v17;
    }

    routeMatch4 = [locationCopy routeMatch];
    [routeMatch4 locationCoordinate];
    v20 = v19;
    v22 = v21;
    routeMatch5 = [locationCopy routeMatch];
    [route distanceBetweenLocation:objc_msgSend(routeMatch5 nextPointIndex:"routeCoordinate") + 1 toPointIndex:{objc_msgSend(route, "pointCount") - 1, v20, v22}];
    v25 = v24;

    [route distance];
    self->_distanceAlongRoute = v26 - (v15 + v25);
  }

  if (!v13 || ([locationCopy routeMatch], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(route, "distanceBetweenRouteCoordinate:andRouteCoordinate:", objc_msgSend(v27, "routeCoordinate"), objc_msgSend(v13, "endRouteCoordinate")), v29 = v28, v27, v29 >= self->_lockLineRampTypeDistance))
  {
    self->_currentLineType = [locationCopy roadLineType];
    self->_currentRampType = [locationCopy rampType];
  }

  v83 = v13;
  v84 = providerCopy;
  routeMatch6 = [locationCopy routeMatch];
  [(VKNavContext *)self->_navContext setRouteMatch:routeMatch6];

  traffic = [route traffic];
  distanceAlongRoute = self->_distanceAlongRoute;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  routeTrafficColors = [traffic routeTrafficColors];
  v34 = [routeTrafficColors countByEnumeratingWithState:&v85 objects:v89 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v86;
    while (2)
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v86 != v36)
        {
          objc_enumerationMutation(routeTrafficColors);
        }

        v38 = *(*(&v85 + 1) + 8 * i);
        [v38 offsetMeters];
        if (v39 > distanceAlongRoute && [v38 color] < 3)
        {
          [v38 offsetMeters];
          v40 = v41 - distanceAlongRoute;
          goto LABEL_21;
        }
      }

      v35 = [routeTrafficColors countByEnumeratingWithState:&v85 objects:v89 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  v40 = INFINITY;
LABEL_21:

  self->_distanceToCurrentTrafficSection = v40;
  traffic2 = [route traffic];
  v43 = self->_distanceAlongRoute;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  routeTrafficColors2 = [traffic2 routeTrafficColors];
  v45 = [routeTrafficColors2 countByEnumeratingWithState:&v85 objects:v89 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v86;
    color = 4;
LABEL_23:
    v49 = 0;
    while (1)
    {
      if (*v86 != v47)
      {
        objc_enumerationMutation(routeTrafficColors2);
      }

      v50 = *(*(&v85 + 1) + 8 * v49);
      [v50 offsetMeters];
      if (v51 > v43)
      {
        break;
      }

      color = [v50 color];
      if (v46 == ++v49)
      {
        v46 = [routeTrafficColors2 countByEnumeratingWithState:&v85 objects:v89 count:16];
        if (v46)
        {
          goto LABEL_23;
        }

        goto LABEL_29;
      }
    }
  }

  else
  {
LABEL_29:
    color = 4;
  }

  self->_currentTrafficColor = color;
  self->_laneCount = [route laneCountAtRouteCoordinate:routeCoordinate];
  mapView = [(NavCameraController *)self mapView];
  _mapLayer = [mapView _mapLayer];
  sceneConfiguration = [_mapLayer sceneConfiguration];

  [sceneConfiguration setLineType:self->_currentLineType];
  [sceneConfiguration setRampType:self->_currentRampType];
  [locationCopy speed];
  [sceneConfiguration setVehicleSpeed:v55 * 3.6];
  [sceneConfiguration setDistanceToCurrentTrafficSection:self->_distanceToCurrentTrafficSection];
  [sceneConfiguration setTrafficColor:self->_currentTrafficColor];
  [sceneConfiguration setLaneCount:self->_laneCount];
  LODWORD(mapView) = [locationCopy speedLimitIsMPH];
  speedLimit = [locationCopy speedLimit];
  v57 = speedLimit;
  if (mapView)
  {
    v57 = speedLimit * 1.609344;
  }

  [sceneConfiguration setRoadSpeed:v57];
  overrideNavigationProvider = [(NavCameraController *)self overrideNavigationProvider];

  if (overrideNavigationProvider)
  {
    roadName = [locationCopy roadName];
    if ([roadName length])
    {
      roadName2 = [locationCopy roadName];
    }

    else
    {
      roadName2 = 0;
    }

    mapView2 = [(NavCameraController *)self mapView];
    _mapLayer2 = [mapView2 _mapLayer];
    [_mapLayer2 setCurrentLocationText:roadName2];
  }

  [(NavCameraController *)self _updateCameraInfoStylesForRoute:route routeCoordinate:routeCoordinate];
  if (!self->_hasMatchedTiles)
  {
    if (v82 >= [route stepsCount])
    {
      goto LABEL_52;
    }

    v63 = [route roadFeatureAtPointIndex:{objc_msgSend(v83, "maneuverStartRouteCoordinate")}];
    if (v63)
    {
      self->_hasMatchedTiles = 1;
      [(NavCameraCaches *)self->_navCameraCaches recalculateGroupedManeuversCaches];
    }
  }

  if (navigationState == 1)
  {
    self->_isProcedingToRoute = 1;
    [locationCopy coordinate];
    GEOLocationCoordinate2DFromCLLocationCoordinate2D();
    v64 = [route stepAtIndex:0];
    mapView6 = v64;
    if (!v64)
    {
      goto LABEL_51;
    }

    [route pointAtRouteCoordinate:{objc_msgSend(v64, "startRouteCoordinate")}];
    GEOCalculateDistance();
    v67 = v66;
    mapView3 = [(NavCameraController *)self mapView];
    _mapLayer3 = [mapView3 _mapLayer];
    sceneConfiguration2 = [_mapLayer3 sceneConfiguration];
    [sceneConfiguration2 setCurrentStepLength:v67];

    getNextStep = [mapView6 getNextStep];

    if (!getNextStep)
    {
      goto LABEL_51;
    }

    mapView4 = [(NavCameraController *)self mapView];
    _mapLayer4 = [mapView4 _mapLayer];
    sceneConfiguration3 = [_mapLayer4 sceneConfiguration];
    getNextStep2 = [mapView6 getNextStep];
    [getNextStep2 distance];
    [sceneConfiguration3 setNextStepLength:?];

LABEL_50:
LABEL_51:

    goto LABEL_52;
  }

  if (self->_isProcedingToRoute)
  {
    self->_isProcedingToRoute = 0;
    if (v82 < [route stepsCount])
    {
      mapView5 = [(NavCameraController *)self mapView];
      _mapLayer5 = [mapView5 _mapLayer];
      sceneConfiguration4 = [_mapLayer5 sceneConfiguration];
      [v83 distance];
      [sceneConfiguration4 setCurrentStepLength:?];

      getNextStep3 = [v83 getNextStep];

      if (getNextStep3)
      {
        mapView6 = [(NavCameraController *)self mapView];
        mapView4 = [mapView6 _mapLayer];
        _mapLayer4 = [mapView4 sceneConfiguration];
        sceneConfiguration3 = [v83 getNextStep];
        [sceneConfiguration3 distance];
        [_mapLayer4 setNextStepLength:?];
        goto LABEL_50;
      }
    }
  }

LABEL_52:
}

- (void)navigationProvider:(id)provider didChangeNavigationState:(int)state
{
  v4 = *&state;
  mapView = [(NavCameraController *)self mapView];
  _mapLayer = [mapView _mapLayer];
  sceneConfiguration = [_mapLayer sceneConfiguration];
  [sceneConfiguration setNavigationState:v4];
}

- (void)navigationProvider:(id)provider didChangeToNavigating:(BOOL)navigating
{
  route = [provider route];
  [(NavCameraController *)self _updateWithNewRoute:route];
}

- (void)_restoreStateFromNavigationProvider:(id)provider
{
  providerCopy = provider;
  -[NavCameraController navigationProvider:didChangeToNavigating:](self, "navigationProvider:didChangeToNavigating:", providerCopy, [providerCopy isInNavigatingState]);
  -[NavCameraController navigationProvider:didChangeNavigationState:](self, "navigationProvider:didChangeNavigationState:", providerCopy, [providerCopy navigationState]);
  -[NavCameraController navigationProvider:didChangeNavigationDestination:](self, "navigationProvider:didChangeNavigationDestination:", providerCopy, [providerCopy navigationDestination]);
  lastLocation = [providerCopy lastLocation];
  [(NavCameraController *)self navigationProvider:providerCopy didUpdateMatchedLocation:lastLocation];

  route = [providerCopy route];
  [(NavCameraController *)self _updateWithNewRoute:route];

  -[NavCameraController navigationProvider:didUpdateStepIndex:segmentIndex:](self, "navigationProvider:didUpdateStepIndex:segmentIndex:", providerCopy, [providerCopy stepIndex], 0);
  [providerCopy distanceUntilManeuver];
  v8 = v7;
  [providerCopy timeUntilManeuver];
  -[NavCameraController navigationProvider:didUpdateDistanceUntilManeuver:timeUntilManeuver:forStepIndex:](self, "navigationProvider:didUpdateDistanceUntilManeuver:timeUntilManeuver:forStepIndex:", providerCopy, [providerCopy stepIndex], v8, v9);
  alternateRoutes = [providerCopy alternateRoutes];
  alternateRouteTraffics = [providerCopy alternateRouteTraffics];
  [(NavCameraController *)self navigationProvider:providerCopy didUpdateAlternateRoutes:alternateRoutes traffics:alternateRouteTraffics];
}

- (void)setNavigationDestination:(unint64_t)destination
{
  self->_navigationDestination = destination;
  mapView = [(NavCameraController *)self mapView];
  _mapLayer = [mapView _mapLayer];
  sceneConfiguration = [_mapLayer sceneConfiguration];
  [sceneConfiguration setNavigationDestination:destination];
}

- (void)setNavCameraMode:(unint64_t)mode
{
  self->_navCameraMode = mode;
  mapView = [(NavCameraController *)self mapView];
  _mapLayer = [mapView _mapLayer];
  [_mapLayer setNavCameraMode:mode];

  mapView2 = [(NavCameraController *)self mapView];
  _mapLayer2 = [mapView2 _mapLayer];
  sceneConfiguration = [_mapLayer2 sceneConfiguration];
  [sceneConfiguration setNavCameraMode:mode];
}

- (unint64_t)_incidentTypeForAlert:(id)alert
{
  alertCopy = alert;
  v4 = alertCopy;
  if (alertCopy && (v5 = [alertCopy alertType], v5 <= 7))
  {
    v6 = qword_101215058[v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateStateForAlternateRoutes
{
  navigationProvider = [(NavCameraController *)self navigationProvider];
  route = [navigationProvider route];

  selfCopy = self;
  navigationProvider2 = [(NavCameraController *)self navigationProvider];
  alternateRoutes = [navigationProvider2 alternateRoutes];

  if ([alternateRoutes count])
  {
    v7 = sub_1009EDDAC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v47 = [alternateRoutes count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Will pass %lu alternate routes to frame", buf, 0xCu);
    }

    v8 = objc_alloc_init(MNRouteDivergenceFinder);
    v9 = *GEOPolylineCoordinateInvalid;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v34 = alternateRoutes;
    obj = alternateRoutes;
    v10 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v42;
      v39 = v9;
      v36 = *v42;
      v37 = v8;
      do
      {
        v13 = 0;
        v38 = v11;
        do
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v41 + 1) + 8 * v13);
          v15 = [v8 findFirstUniqueRangeBetweenRoute:route andRoute:v14];
          if ([v15 count] == 2)
          {
            v16 = [v15 objectAtIndexedSubscript:0];
            uniqueRanges = [v16 uniqueRanges];
            if ([uniqueRanges count])
            {
              v18 = v9;
              v19 = route;
              v20 = [v15 objectAtIndexedSubscript:1];
              uniqueRanges2 = [v20 uniqueRanges];
              v22 = [uniqueRanges2 count];

              if (v22)
              {
                v23 = [v15 objectAtIndexedSubscript:1];
                uniqueRanges3 = [v23 uniqueRanges];
                v25 = [uniqueRanges3 coordinateRangeAtIndex:0];
                v27 = v26;

                [(VKNavContext *)selfCopy->_navContext addRouteToFrame:v14 divergenceCoord:v25 convergenceCoord:v27];
                v28 = [v15 objectAtIndexedSubscript:0];
                uniqueRanges4 = [v28 uniqueRanges];
                v30 = [uniqueRanges4 coordinateRangeAtIndex:0];
                v32 = v31;

                v33 = v39;
                v9 = v18;
                if ((GEOPolylineCoordinateIsInvalid() & 1) != 0 || GEOPolylineCoordinateIsABeforeB())
                {
                  v33 = v30;
                }

                v39 = v33;
                route = v19;
                v8 = v37;
                v11 = v38;
                if ((GEOPolylineCoordinateIsInvalid() & 1) != 0 || GEOPolylineCoordinateIsABeforeB())
                {
                  v9 = v32;
                }

                v12 = v36;
              }

              else
              {
                route = v19;
                v12 = v36;
                v8 = v37;
                v9 = v18;
                v11 = v38;
              }
            }

            else
            {
            }
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v11);
    }

    else
    {
      v39 = v9;
    }

    [(VKNavContext *)selfCopy->_navContext addRouteToFrame:route divergenceCoord:v39 convergenceCoord:v9];
    alternateRoutes = v34;
  }
}

- (void)_updateStateForVehiclePositions
{
  vehiclePositionPoints = [(NavCameraController *)self vehiclePositionPoints];
  v4 = [vehiclePositionPoints count];

  if (v4)
  {
    v5 = sub_1009EDDAC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      vehiclePositionPoints2 = [(NavCameraController *)self vehiclePositionPoints];
      *buf = 134217984;
      v21 = [vehiclePositionPoints2 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Will pass %lu vehicle position points to frame", buf, 0xCu);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    vehiclePositionPoints3 = [(NavCameraController *)self vehiclePositionPoints];
    v8 = [vehiclePositionPoints3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(vehiclePositionPoints3);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          [v12 MKCoordinateValue];
          v14 = v13;
          [v12 MKCoordinateValue];
          [(VKNavContext *)self->_navContext addPointToFrame:3 ofType:v14];
        }

        v9 = [vehiclePositionPoints3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (void)_updateStateForSAR
{
  searchAlongTheRoutePoints = [(NavCameraController *)self searchAlongTheRoutePoints];
  v4 = [searchAlongTheRoutePoints count];

  if (v4)
  {
    v5 = sub_1009EDDAC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      searchAlongTheRoutePoints2 = [(NavCameraController *)self searchAlongTheRoutePoints];
      *buf = 134217984;
      v27 = [searchAlongTheRoutePoints2 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Will pass %lu SAR points to frame", buf, 0xCu);
    }

    mapView = [(NavCameraController *)self mapView];
    _mapLayer = [mapView _mapLayer];
    sceneConfiguration = [_mapLayer sceneConfiguration];
    [sceneConfiguration setSearchAlongTheRoute:1];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    searchAlongTheRoutePoints3 = [(NavCameraController *)self searchAlongTheRoutePoints];
    v11 = [searchAlongTheRoutePoints3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(searchAlongTheRoutePoints3);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          [v15 MKCoordinateValue];
          v17 = v16;
          [v15 MKCoordinateValue];
          [(VKNavContext *)self->_navContext addPointToFrame:2 ofType:v17];
        }

        v12 = [searchAlongTheRoutePoints3 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }
  }

  else
  {
    mapView2 = [(NavCameraController *)self mapView];
    _mapLayer2 = [mapView2 _mapLayer];
    sceneConfiguration2 = [_mapLayer2 sceneConfiguration];
    [sceneConfiguration2 setSearchAlongTheRoute:0];
  }
}

- (void)_updateStateForTrafficIncidentCameraStyling
{
  trafficIncidentAlert = [(NavCameraController *)self trafficIncidentAlert];
  cameraInput = [trafficIncidentAlert cameraInput];

  mapView = [(NavCameraController *)self mapView];
  _mapLayer = [mapView _mapLayer];
  sceneConfiguration = [_mapLayer sceneConfiguration];

  if ([cameraInput hasCameraStyling])
  {
    v8 = sub_1009EDDAC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      cameraStyling = [cameraInput cameraStyling];
      *buf = 138412290;
      v49 = cameraStyling;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will apply incident cameraInput styleAttribute %@", buf, 0xCu);
    }

    navigationProvider = [(NavCameraController *)self navigationProvider];
    route = [navigationProvider route];

    v12 = [[GEORouteMatcher alloc] initWithRoute:route auditToken:0];
    cameraStyling2 = [cameraInput cameraStyling];
    trafficIncidentAlertCameraStyles = self->_trafficIncidentAlertCameraStyles;
    self->_trafficIncidentAlertCameraStyles = cameraStyling2;

    [(MNLocation *)self->_lastLocation coordinate];
    GEOLocationCoordinate2DFromCLLocationCoordinate2D();
    v15 = [v12 closestRouteCoordinateForLocationCoordinate:?];
    endRouteCoordinate = [route endRouteCoordinate];
    if (GEOPolylineCoordinateIsInvalid())
    {
      v17 = GEOPolylineCoordinateInvalid[0];
      v18 = GEOPolylineCoordinateInvalid[1];
    }

    else
    {
      v18 = *(&v15 + 1) - floorf(*(&v15 + 1));
      LODWORD(v17) = vcvtms_u32_f32(*(&v15 + 1)) + v15;
    }

    if (GEOPolylineCoordinateIsInvalid())
    {
      v26 = GEOPolylineCoordinateInvalid[0];
      v27 = GEOPolylineCoordinateInvalid[1];
    }

    else
    {
      v27 = *(&endRouteCoordinate + 1) - floorf(*(&endRouteCoordinate + 1));
      LODWORD(v26) = vcvtms_u32_f32(*(&endRouteCoordinate + 1)) + endRouteCoordinate;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v37 = cameraInput;
    cameraStyling3 = [cameraInput cameraStyling];
    attributes = [cameraStyling3 attributes];

    v30 = [attributes countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = LODWORD(v17) | (LODWORD(v18) << 32);
      v33 = LODWORD(v26) | (LODWORD(v27) << 32);
      v34 = *v43;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v43 != v34)
          {
            objc_enumerationMutation(attributes);
          }

          [sceneConfiguration applyStyleAttributeKeyValue:objc_msgSend(*(*(&v42 + 1) + 8 * i) withValue:"key") withCoordinateRange:{objc_msgSend(*(*(&v42 + 1) + 8 * i), "value"), v32, v33}];
        }

        v31 = [attributes countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v31);
    }

    cameraInput = v37;
LABEL_29:

    goto LABEL_30;
  }

  if (self->_trafficIncidentAlertCameraStyles)
  {
    v19 = sub_1009EDDAC();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = self->_trafficIncidentAlertCameraStyles;
      *buf = 138412290;
      v49 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Will remove incident cameraInput styleAttribute %@", buf, 0xCu);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    attributes2 = [(GEOStyleAttributes *)self->_trafficIncidentAlertCameraStyles attributes];
    v22 = [attributes2 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v39;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v39 != v24)
          {
            objc_enumerationMutation(attributes2);
          }

          [sceneConfiguration removeStyleAttributeKey:{objc_msgSend(*(*(&v38 + 1) + 8 * j), "key")}];
        }

        v23 = [attributes2 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v23);
    }

    route = self->_trafficIncidentAlertCameraStyles;
    self->_trafficIncidentAlertCameraStyles = 0;
    goto LABEL_29;
  }

LABEL_30:
}

- (void)_updateStateForTrafficIncident
{
  trafficIncidentAlert = [(NavCameraController *)self trafficIncidentAlert];

  if (trafficIncidentAlert)
  {
    navigationProvider = [(NavCameraController *)self navigationProvider];
    route = [navigationProvider route];

    trafficIncidentAlert2 = [(NavCameraController *)self trafficIncidentAlert];
    cameraInput = [trafficIncidentAlert2 cameraInput];

    v8 = [[GEORouteMatcher alloc] initWithRoute:route auditToken:0];
    v9 = sub_1009EDDAC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      eventPositions = [cameraInput eventPositions];
      *buf = 138412290;
      v24 = eventPositions;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Will pass incident cameraInput to frame positions %@", buf, 0xCu);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    eventPositions2 = [cameraInput eventPositions];
    v12 = [eventPositions2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(eventPositions2);
          }

          [*(*(&v18 + 1) + 8 * v15) coordinate];
          [route pointAtRouteCoordinate:{objc_msgSend(v8, "closestRouteCoordinateForLocationCoordinate:")}];
          if (fabs(v17) <= 180.0 && v16 >= -90.0 && v16 <= 90.0)
          {
            [(VKNavContext *)self->_navContext addPointToFrame:1 ofType:?];
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [eventPositions2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }
}

- (void)_updateState
{
  [(VKNavContext *)self->_navContext clearPointsToFrame];
  [(VKNavContext *)self->_navContext clearAdditionalRoutesToFrame];
  navigationProvider = [(NavCameraController *)self navigationProvider];
  route = [navigationProvider route];

  navigationProvider2 = [(NavCameraController *)self navigationProvider];
  displayedStepIndex = [navigationProvider2 displayedStepIndex];

  if (displayedStepIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    navigationProvider3 = [(NavCameraController *)self navigationProvider];
    displayedStepIndex = [navigationProvider3 stepIndex];
  }

  route2 = [(VKNavContext *)self->_navContext route];

  if (route2 != route)
  {
    v9 = sub_1009EDDAC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      v12 = displayedStepIndex;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Will update with new route stepIndex %lu", &v11, 0xCu);
    }

    [(VKNavContext *)self->_navContext updateWithNewRoute:route currentStepIndex:displayedStepIndex];
  }

  [(NavCameraController *)self _updateStateForTrafficIncident];
  [(NavCameraController *)self _updateStateForTrafficIncidentCameraStyling];
  trafficIncidentAlert = [(NavCameraController *)self trafficIncidentAlert];

  if (!trafficIncidentAlert)
  {
    [(NavCameraController *)self _updateStateForSAR];
    [(NavCameraController *)self _updateStateForVehiclePositions];
    [(NavCameraController *)self _updateStateForAlternateRoutes];
  }
}

- (void)filterVehiclePositionsForTripsNotInSet:(id)set
{
  setCopy = set;
  vehiclePositions = [(NavCameraController *)self vehiclePositions];
  v6 = [vehiclePositions mutableCopy];

  if ([v6 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    selfCopy = self;
    vehiclePositions2 = [(NavCameraController *)self vehiclePositions];
    v8 = [vehiclePositions2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(vehiclePositions2);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 tripID]);
          v14 = [setCopy containsObject:v13];

          if ((v14 & 1) == 0)
          {
            [v6 removeObject:v12];
          }
        }

        v9 = [vehiclePositions2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    self = selfCopy;
  }

  [(NavCameraController *)self frameVehiclePositions:v6];
}

- (void)frameVehiclePositions:(id)positions
{
  positionsCopy = positions;
  v6 = self->_vehiclePositions;
  v7 = positionsCopy;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_vehiclePositions, positions);
      v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = v7;
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          v14 = 0;
          do
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v16 + 1) + 8 * v14) coordinate];
            v15 = [NSValue valueWithMKCoordinate:?];
            [v9 addObject:v15];

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }

      if (![(NSArray *)self->_vehiclePositionPoints isEqualToArray:v9])
      {
        objc_storeStrong(&self->_vehiclePositionPoints, v9);
        [(NavCameraController *)self _updateState];
      }
    }
  }
}

- (void)setSearchAlongTheRoutePoints:(id)points
{
  pointsCopy = points;
  v6 = self->_searchAlongTheRoutePoints;
  v7 = pointsCopy;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_searchAlongTheRoutePoints, points);
      [(NavCameraController *)self _updateState];
      v7 = v9;
    }
  }
}

- (void)setTrafficIncidentAlert:(id)alert
{
  alertCopy = alert;
  alertID = [(MNTrafficIncidentAlert *)self->_trafficIncidentAlert alertID];
  alertID2 = [alertCopy alertID];
  v7 = alertID;
  v8 = alertID2;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      objc_storeStrong(&self->_trafficIncidentAlert, alert);
      [(NavCameraController *)self _updateState];
    }
  }
}

- (void)resetMapViewNavigationState
{
  _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
  [_mapLayer setNavContext:0];

  _mapLayer2 = [(MKMapView *)self->_mapView _mapLayer];
  sceneConfiguration = [_mapLayer2 sceneConfiguration];
  [sceneConfiguration resetState];
}

- (void)pauseTracking
{
  _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
  [_mapLayer pauseTracking];
}

- (void)stopTracking
{
  _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
  [_mapLayer stopTracking];
}

- (void)transitionToTrackingInMapMode:(int64_t)mode animated:(BOOL)animated startLocation:(id)location startHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  if (location)
  {
    locationCopy = location;
    [locationCopy coordinate];
    [locationCopy coordinate];
    VKLocationCoordinate2DMake();
    v12 = v11;
    v14 = v13;
    [locationCopy course];
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
    v12 = -180.0;
    v14 = -180.0;
  }

  _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
  [_mapLayer transitionToTracking:animatedCopy mapMode:mode startLocation:handlerCopy startCourse:v12 pounceCompletionHandler:{v14, v16}];
}

- (void)setMapView:(id)view
{
  viewCopy = view;
  mapView = self->_mapView;
  if (mapView != viewCopy)
  {
    v20 = viewCopy;
    if (!viewCopy)
    {
      _mapLayer = [(MKMapView *)mapView _mapLayer];
      sceneConfiguration = [_mapLayer sceneConfiguration];
      [sceneConfiguration setCurrentTransportationType:4];

      _mapLayer2 = [(MKMapView *)self->_mapView _mapLayer];
      sceneConfiguration2 = [_mapLayer2 sceneConfiguration];
      [sceneConfiguration2 setNavigationState:0];
    }

    objc_storeStrong(&self->_mapView, view);
    activeCameraInfos = self->_activeCameraInfos;
    self->_activeCameraInfos = 0;

    _mapLayer3 = [(MKMapView *)self->_mapView _mapLayer];
    [_mapLayer3 setNavContext:self->_navContext];

    _mapLayer4 = [(MKMapView *)self->_mapView _mapLayer];
    [_mapLayer4 setNavCameraMode:{-[NavCameraController navCameraMode](self, "navCameraMode")}];

    _mapLayer5 = [(MKMapView *)self->_mapView _mapLayer];
    sceneConfiguration3 = [_mapLayer5 sceneConfiguration];
    [sceneConfiguration3 setNavCameraMode:{-[NavCameraController navCameraMode](self, "navCameraMode")}];

    _mapLayer6 = [(MKMapView *)self->_mapView _mapLayer];
    sceneConfiguration4 = [_mapLayer6 sceneConfiguration];
    [sceneConfiguration4 setNavigationDestination:{-[NavCameraController navigationDestination](self, "navigationDestination")}];

    viewCopy = v20;
    if (v20)
    {
      navigationProvider = [(NavCameraController *)self navigationProvider];

      viewCopy = v20;
      if (navigationProvider)
      {
        navigationProvider2 = [(NavCameraController *)self navigationProvider];
        [(NavCameraController *)self _restoreStateFromNavigationProvider:navigationProvider2];

        viewCopy = v20;
      }
    }
  }
}

- (void)setOverrideNavigationProvider:(id)provider
{
  providerCopy = provider;
  p_overrideNavigationProvider = &self->_overrideNavigationProvider;
  overrideNavigationProvider = self->_overrideNavigationProvider;
  if (overrideNavigationProvider != providerCopy)
  {
    v12 = providerCopy;
    if (overrideNavigationProvider)
    {
      [(NavCameraNavigationProviding *)overrideNavigationProvider setDelegate:0];
      v8 = *p_overrideNavigationProvider;
      *p_overrideNavigationProvider = 0;
    }

    objc_storeStrong(&self->_overrideNavigationProvider, provider);
    p_navigationProvider = &self->_navigationProvider;
    [(NavCameraNavigationProviding *)self->_navigationProvider setDelegate:0];
    if (v12)
    {
      v10 = v12;
      originalNavigationProvider = *p_navigationProvider;
      *p_navigationProvider = v10;
    }

    else
    {
      objc_storeStrong(&self->_navigationProvider, self->_originalNavigationProvider);
      originalNavigationProvider = self->_originalNavigationProvider;
      self->_originalNavigationProvider = 0;
    }

    [(NavCameraController *)self _restoreStateFromNavigationProvider:self->_navigationProvider];
    [(NavCameraNavigationProviding *)self->_navigationProvider setDelegate:self];
    providerCopy = v12;
  }
}

- (void)dealloc
{
  GEOConfigRemoveBlockListener();
  v3.receiver = self;
  v3.super_class = NavCameraController;
  [(NavCameraController *)&v3 dealloc];
}

- (NavCameraController)initWithNavigationProvider:(id)provider
{
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = NavCameraController;
  v6 = [(NavCameraController *)&v18 init];
  if (v6)
  {
    v7 = objc_alloc_init(VKNavContext);
    v8 = *(v6 + 1);
    *(v6 + 1) = v7;

    *(v6 + 22) = 0;
    v6[16] = 0;
    *(v6 + 12) = 0;
    *(v6 + 20) = 0;
    v6[28] = 0;
    v9 = objc_alloc_init(NavCameraCaches);
    v10 = *(v6 + 4);
    *(v6 + 4) = v9;

    *(v6 + 5) = 0;
    *(v6 + 7) = 0x7FF0000000000000;
    *(v6 + 8) = 4;
    objc_storeStrong(v6 + 15, provider);
    [*(v6 + 15) setDelegate:v6];
    objc_initWeak(&location, v6);
    GEOConfigGetDouble();
    *(v6 + 11) = v11;
    v12 = &_dispatch_main_q;
    objc_copyWeak(&v16, &location);
    v13 = _GEOConfigAddBlockListenerForKey();
    v14 = *(v6 + 12);
    *(v6 + 12) = v13;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (NavCameraController)init
{
  v3 = objc_alloc_init(NavCameraNavigationServiceProvider);
  v4 = [(NavCameraController *)self initWithNavigationProvider:v3];

  return v4;
}

@end