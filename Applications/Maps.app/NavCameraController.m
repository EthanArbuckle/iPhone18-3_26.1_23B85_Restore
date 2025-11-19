@interface NavCameraController
- (NavCameraController)init;
- (NavCameraController)initWithNavigationProvider:(id)a3;
- (unint64_t)_incidentTypeForAlert:(id)a3;
- (void)_restoreStateFromNavigationProvider:(id)a3;
- (void)_updateCameraInfoStylesForRoute:(id)a3 routeCoordinate:(id)a4;
- (void)_updateForCurrentStepIndex;
- (void)_updateState;
- (void)_updateStateForAlternateRoutes;
- (void)_updateStateForSAR;
- (void)_updateStateForTrafficIncident;
- (void)_updateStateForTrafficIncidentCameraStyling;
- (void)_updateStateForVehiclePositions;
- (void)_updateWithNewRoute:(id)a3;
- (void)dealloc;
- (void)filterVehiclePositionsForTripsNotInSet:(id)a3;
- (void)frameVehiclePositions:(id)a3;
- (void)navigationProvider:(id)a3 didChangeNavigationState:(int)a4;
- (void)navigationProvider:(id)a3 didChangeToNavigating:(BOOL)a4;
- (void)navigationProvider:(id)a3 didUpdateDistanceUntilManeuver:(double)a4 timeUntilManeuver:(double)a5 forStepIndex:(unint64_t)a6;
- (void)navigationProvider:(id)a3 didUpdateMatchedLocation:(id)a4;
- (void)pauseTracking;
- (void)resetMapViewNavigationState;
- (void)setMapView:(id)a3;
- (void)setNavCameraMode:(unint64_t)a3;
- (void)setNavigationDestination:(unint64_t)a3;
- (void)setOverrideNavigationProvider:(id)a3;
- (void)setSearchAlongTheRoutePoints:(id)a3;
- (void)setTrafficIncidentAlert:(id)a3;
- (void)stopTracking;
- (void)transitionToTrackingInMapMode:(int64_t)a3 animated:(BOOL)a4 startLocation:(id)a5 startHandler:(id)a6;
@end

@implementation NavCameraController

- (void)_updateCameraInfoStylesForRoute:(id)a3 routeCoordinate:(id)a4
{
  v5 = a3;
  v6 = [NSHashTable hashTableWithOptions:512];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v7 = [v5 cameraInfos];
  v8 = [v7 countByEnumeratingWithState:&v80 objects:v89 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v80 + 1) + 8 * i);
        [v12 routeCoordinateRange];
        if (GEOPolylineCoordinateInRange())
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v80 objects:v89 count:16];
    }

    while (v9);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v13 = [v5 mutableData];
  v14 = [v13 updateableCameraInfos];

  v15 = [v14 countByEnumeratingWithState:&v76 objects:v88 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v76 + 1) + 8 * j);
        [v19 routeCoordinateRange];
        if (GEOPolylineCoordinateInRange())
        {
          [v6 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v76 objects:v88 count:16];
    }

    while (v16);
  }

  v56 = v5;

  v20 = [(NavCameraController *)self mapView];
  v21 = [v20 _mapLayer];
  v22 = [v21 sceneConfiguration];

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
        v31 = [v30 styleAttributes];
        v32 = [v31 attributes];

        v33 = [v32 countByEnumeratingWithState:&v68 objects:v86 count:16];
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
                objc_enumerationMutation(v32);
              }

              [v22 removeStyleAttributeKey:{objc_msgSend(*(*(&v68 + 1) + 8 * m), "key")}];
            }

            v34 = [v32 countByEnumeratingWithState:&v68 objects:v86 count:16];
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
        v42 = [v41 styleAttributes];
        v43 = [v42 attributes];

        v44 = [v43 countByEnumeratingWithState:&v60 objects:v84 count:16];
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
                objc_enumerationMutation(v43);
              }

              v48 = *(*(&v60 + 1) + 8 * ii);
              v49 = [v48 key];
              v50 = [v48 value];
              v51 = [v41 routeCoordinateRange];
              [v22 applyStyleAttributeKeyValue:v49 withValue:v50 withCoordinateRange:{v51, v52}];
            }

            v45 = [v43 countByEnumeratingWithState:&v60 objects:v84 count:16];
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
  v3 = [(NavCameraController *)self navigationProvider];
  v4 = [v3 displayedStepIndex];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(NavCameraController *)self navigationProvider];
    v4 = [v5 stepIndex];
  }

  v6 = [(NavCameraController *)self navigationProvider];
  v76 = [v6 route];

  v7 = v4 >= [v76 stepsCount];
  v8 = v76;
  if (!v7)
  {
    v9 = [v76 stepAtIndex:v4];
    v10 = [(NavCameraController *)self mapView];
    v11 = [v10 _mapLayer];
    v12 = [v11 sceneConfiguration];
    v13 = [v9 getNextStep];
    [v13 distance];
    [v12 setNextStepLength:?];

    v14 = [(NavCameraController *)self mapView];
    v15 = [v14 _mapLayer];
    v16 = [v15 sceneConfiguration];
    [v9 distance];
    [v16 setCurrentStepLength:?];

    v17 = [(NavCameraController *)self mapView];
    v18 = [v17 _mapLayer];
    v19 = [v18 sceneConfiguration];
    v20 = [v9 geoStep];
    [v19 setCurrentManeuverJunctionsCount:{objc_msgSend(v20, "junctionElementsCount")}];

    v21 = [(NavCameraController *)self mapView];
    v22 = [v21 _mapLayer];
    v23 = [v22 sceneConfiguration];
    [v23 setCurrentTransportationType:{objc_msgSend(v9, "transportType")}];

    v24 = [v9 geoStep];
    v25 = [v24 maneuverType];

    v26 = [v76 roadFeatureAtPointIndex:{objc_msgSend(v9, "startRouteCoordinate")}];
    v27 = v26;
    if (v26)
    {
      v28 = [v26 feature];
      v29 = [v28 attributes];
      self->_currentLineType = [v29 lineType];

      v30 = [v27 feature];
      v31 = [v30 attributes];
      self->_currentRampType = [v31 rampType];

      v32 = [(NavCameraController *)self mapView];
      v33 = [v32 _mapLayer];
      v34 = [v33 sceneConfiguration];
      [v34 setLineType:self->_currentLineType];

      v35 = [(NavCameraController *)self mapView];
      v36 = [v35 _mapLayer];
      v37 = [v36 sceneConfiguration];
      [v37 setRampType:self->_currentRampType];

      v38 = [(NavCameraController *)self mapView];
      v39 = [v38 _mapLayer];
      v40 = [v39 sceneConfiguration];
      [v40 setDistanceToCurrentTrafficSection:self->_distanceToCurrentTrafficSection];

      v41 = [(NavCameraController *)self mapView];
      v42 = [v41 _mapLayer];
      v43 = [v42 sceneConfiguration];
      [v43 setTrafficColor:self->_currentTrafficColor];

      v44 = [(NavCameraController *)self mapView];
      v45 = [v44 _mapLayer];
      v46 = [v45 sceneConfiguration];
      [v46 setLaneCount:self->_laneCount];
    }

    v47 = [v9 transitStep];
    if ([v47 hasManeuverType])
    {
      v48 = [v47 maneuverType];
    }

    else
    {
      v48 = 0;
    }

    v49 = [(NavCameraController *)self mapView];
    v50 = [v49 _mapLayer];
    v51 = [v50 sceneConfiguration];
    [v51 setCurrentManeuverType:v25];

    v52 = [(NavCameraController *)self mapView];
    v53 = [v52 _mapLayer];
    v54 = [v53 sceneConfiguration];
    [v54 setCurrentTransitManeuverType:v48];

    v55 = [(NavCameraCaches *)self->_navCameraCaches stepsWithRampCache];
    if (v55)
    {
      v56 = v55;
      v57 = [(NavCameraCaches *)self->_navCameraCaches stepsWithRampCache];
      v58 = [v57 count];

      if (v4 < v58)
      {
        v59 = [(NavCameraCaches *)self->_navCameraCaches stepsWithRampCache];
        v60 = [v59 objectAtIndexedSubscript:v4];
        if (([v60 integerValue] & 0x8000000000000000) != 0)
        {
          v63 = 0;
        }

        else
        {
          v61 = [(NavCameraCaches *)self->_navCameraCaches stepsWithRampCache];
          v62 = [v61 objectAtIndexedSubscript:v4];
          v63 = [v62 integerValue];
        }

        v64 = [(NavCameraController *)self mapView];
        v65 = [v64 _mapLayer];
        v66 = [v65 sceneConfiguration];
        [v66 setNextManeuverRampType:v63];
      }
    }

    [(VKNavContext *)self->_navContext setCurrentStepIndex:v4];
    v67 = [(NavCameraCaches *)self->_navCameraCaches groupedManeuverCounts];
    v68 = [v67 count];

    if (v4 < v68)
    {
      v69 = [(NavCameraCaches *)self->_navCameraCaches groupedManeuverCounts];
      v70 = [v69 objectAtIndexedSubscript:v4];
      v71 = [v70 unsignedIntegerValue];

      if (v71 >= 5)
      {
        v72 = 5;
      }

      else
      {
        v72 = v71;
      }

      v73 = [(NavCameraController *)self mapView];
      v74 = [v73 _mapLayer];
      v75 = [v74 sceneConfiguration];
      [v75 setCurrentGroupedManeuverCount:v72];
    }

    v8 = v76;
  }
}

- (void)_updateWithNewRoute:(id)a3
{
  v4 = [NavCameraCaches cachesWithRoute:a3 context:self->_navContext];
  navCameraCaches = self->_navCameraCaches;
  self->_navCameraCaches = v4;

  [(NavCameraController *)self _updateState];
}

- (void)navigationProvider:(id)a3 didUpdateDistanceUntilManeuver:(double)a4 timeUntilManeuver:(double)a5 forStepIndex:(unint64_t)a6
{
  v17 = [a3 route];
  v9 = [(NavCameraController *)self mapView];
  v10 = [v9 _mapLayer];
  v11 = [v10 sceneConfiguration];
  [v11 setDistanceToCurrentManeuver:a4];

  [v17 remainingDistanceAlongRouteFromStepIndex:a6 currentStepRemainingDistance:a4];
  v13 = v12;
  v14 = [(NavCameraController *)self mapView];
  v15 = [v14 _mapLayer];
  v16 = [v15 sceneConfiguration];
  [v16 setDistanceToDestination:v13];
}

- (void)navigationProvider:(id)a3 didUpdateMatchedLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_storeStrong(&self->_lastLocation, a4);
  v8 = [(NavCameraController *)self navigationProvider];
  v9 = [v8 displayedStepIndex];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(NavCameraController *)self navigationProvider];
    v9 = [v10 stepIndex];
  }

  v11 = [v6 route];
  v80 = [v6 navigationState];
  v12 = [v7 routeMatch];
  v81 = [v12 routeCoordinate];

  v82 = v9;
  v13 = [v11 stepAtIndex:v9];
  v14 = [v7 routeMatch];

  if (v14)
  {
    v15 = 0.0;
    if ([v7 state] != 1)
    {
      v16 = [v7 routeMatch];
      [v16 distanceFromRoute];
      v15 = v17;
    }

    v18 = [v7 routeMatch];
    [v18 locationCoordinate];
    v20 = v19;
    v22 = v21;
    v23 = [v7 routeMatch];
    [v11 distanceBetweenLocation:objc_msgSend(v23 nextPointIndex:"routeCoordinate") + 1 toPointIndex:{objc_msgSend(v11, "pointCount") - 1, v20, v22}];
    v25 = v24;

    [v11 distance];
    self->_distanceAlongRoute = v26 - (v15 + v25);
  }

  if (!v13 || ([v7 routeMatch], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "distanceBetweenRouteCoordinate:andRouteCoordinate:", objc_msgSend(v27, "routeCoordinate"), objc_msgSend(v13, "endRouteCoordinate")), v29 = v28, v27, v29 >= self->_lockLineRampTypeDistance))
  {
    self->_currentLineType = [v7 roadLineType];
    self->_currentRampType = [v7 rampType];
  }

  v83 = v13;
  v84 = v6;
  v30 = [v7 routeMatch];
  [(VKNavContext *)self->_navContext setRouteMatch:v30];

  v31 = [v11 traffic];
  distanceAlongRoute = self->_distanceAlongRoute;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v33 = [v31 routeTrafficColors];
  v34 = [v33 countByEnumeratingWithState:&v85 objects:v89 count:16];
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
          objc_enumerationMutation(v33);
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

      v35 = [v33 countByEnumeratingWithState:&v85 objects:v89 count:16];
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
  v42 = [v11 traffic];
  v43 = self->_distanceAlongRoute;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v44 = [v42 routeTrafficColors];
  v45 = [v44 countByEnumeratingWithState:&v85 objects:v89 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v86;
    v48 = 4;
LABEL_23:
    v49 = 0;
    while (1)
    {
      if (*v86 != v47)
      {
        objc_enumerationMutation(v44);
      }

      v50 = *(*(&v85 + 1) + 8 * v49);
      [v50 offsetMeters];
      if (v51 > v43)
      {
        break;
      }

      v48 = [v50 color];
      if (v46 == ++v49)
      {
        v46 = [v44 countByEnumeratingWithState:&v85 objects:v89 count:16];
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
    v48 = 4;
  }

  self->_currentTrafficColor = v48;
  self->_laneCount = [v11 laneCountAtRouteCoordinate:v81];
  v52 = [(NavCameraController *)self mapView];
  v53 = [v52 _mapLayer];
  v54 = [v53 sceneConfiguration];

  [v54 setLineType:self->_currentLineType];
  [v54 setRampType:self->_currentRampType];
  [v7 speed];
  [v54 setVehicleSpeed:v55 * 3.6];
  [v54 setDistanceToCurrentTrafficSection:self->_distanceToCurrentTrafficSection];
  [v54 setTrafficColor:self->_currentTrafficColor];
  [v54 setLaneCount:self->_laneCount];
  LODWORD(v52) = [v7 speedLimitIsMPH];
  v56 = [v7 speedLimit];
  v57 = v56;
  if (v52)
  {
    v57 = v56 * 1.609344;
  }

  [v54 setRoadSpeed:v57];
  v58 = [(NavCameraController *)self overrideNavigationProvider];

  if (v58)
  {
    v59 = [v7 roadName];
    if ([v59 length])
    {
      v60 = [v7 roadName];
    }

    else
    {
      v60 = 0;
    }

    v61 = [(NavCameraController *)self mapView];
    v62 = [v61 _mapLayer];
    [v62 setCurrentLocationText:v60];
  }

  [(NavCameraController *)self _updateCameraInfoStylesForRoute:v11 routeCoordinate:v81];
  if (!self->_hasMatchedTiles)
  {
    if (v82 >= [v11 stepsCount])
    {
      goto LABEL_52;
    }

    v63 = [v11 roadFeatureAtPointIndex:{objc_msgSend(v83, "maneuverStartRouteCoordinate")}];
    if (v63)
    {
      self->_hasMatchedTiles = 1;
      [(NavCameraCaches *)self->_navCameraCaches recalculateGroupedManeuversCaches];
    }
  }

  if (v80 == 1)
  {
    self->_isProcedingToRoute = 1;
    [v7 coordinate];
    GEOLocationCoordinate2DFromCLLocationCoordinate2D();
    v64 = [v11 stepAtIndex:0];
    v65 = v64;
    if (!v64)
    {
      goto LABEL_51;
    }

    [v11 pointAtRouteCoordinate:{objc_msgSend(v64, "startRouteCoordinate")}];
    GEOCalculateDistance();
    v67 = v66;
    v68 = [(NavCameraController *)self mapView];
    v69 = [v68 _mapLayer];
    v70 = [v69 sceneConfiguration];
    [v70 setCurrentStepLength:v67];

    v71 = [v65 getNextStep];

    if (!v71)
    {
      goto LABEL_51;
    }

    v72 = [(NavCameraController *)self mapView];
    v73 = [v72 _mapLayer];
    v74 = [v73 sceneConfiguration];
    v75 = [v65 getNextStep];
    [v75 distance];
    [v74 setNextStepLength:?];

LABEL_50:
LABEL_51:

    goto LABEL_52;
  }

  if (self->_isProcedingToRoute)
  {
    self->_isProcedingToRoute = 0;
    if (v82 < [v11 stepsCount])
    {
      v76 = [(NavCameraController *)self mapView];
      v77 = [v76 _mapLayer];
      v78 = [v77 sceneConfiguration];
      [v83 distance];
      [v78 setCurrentStepLength:?];

      v79 = [v83 getNextStep];

      if (v79)
      {
        v65 = [(NavCameraController *)self mapView];
        v72 = [v65 _mapLayer];
        v73 = [v72 sceneConfiguration];
        v74 = [v83 getNextStep];
        [v74 distance];
        [v73 setNextStepLength:?];
        goto LABEL_50;
      }
    }
  }

LABEL_52:
}

- (void)navigationProvider:(id)a3 didChangeNavigationState:(int)a4
{
  v4 = *&a4;
  v7 = [(NavCameraController *)self mapView];
  v5 = [v7 _mapLayer];
  v6 = [v5 sceneConfiguration];
  [v6 setNavigationState:v4];
}

- (void)navigationProvider:(id)a3 didChangeToNavigating:(BOOL)a4
{
  v5 = [a3 route];
  [(NavCameraController *)self _updateWithNewRoute:v5];
}

- (void)_restoreStateFromNavigationProvider:(id)a3
{
  v4 = a3;
  -[NavCameraController navigationProvider:didChangeToNavigating:](self, "navigationProvider:didChangeToNavigating:", v4, [v4 isInNavigatingState]);
  -[NavCameraController navigationProvider:didChangeNavigationState:](self, "navigationProvider:didChangeNavigationState:", v4, [v4 navigationState]);
  -[NavCameraController navigationProvider:didChangeNavigationDestination:](self, "navigationProvider:didChangeNavigationDestination:", v4, [v4 navigationDestination]);
  v5 = [v4 lastLocation];
  [(NavCameraController *)self navigationProvider:v4 didUpdateMatchedLocation:v5];

  v6 = [v4 route];
  [(NavCameraController *)self _updateWithNewRoute:v6];

  -[NavCameraController navigationProvider:didUpdateStepIndex:segmentIndex:](self, "navigationProvider:didUpdateStepIndex:segmentIndex:", v4, [v4 stepIndex], 0);
  [v4 distanceUntilManeuver];
  v8 = v7;
  [v4 timeUntilManeuver];
  -[NavCameraController navigationProvider:didUpdateDistanceUntilManeuver:timeUntilManeuver:forStepIndex:](self, "navigationProvider:didUpdateDistanceUntilManeuver:timeUntilManeuver:forStepIndex:", v4, [v4 stepIndex], v8, v9);
  v11 = [v4 alternateRoutes];
  v10 = [v4 alternateRouteTraffics];
  [(NavCameraController *)self navigationProvider:v4 didUpdateAlternateRoutes:v11 traffics:v10];
}

- (void)setNavigationDestination:(unint64_t)a3
{
  self->_navigationDestination = a3;
  v6 = [(NavCameraController *)self mapView];
  v4 = [v6 _mapLayer];
  v5 = [v4 sceneConfiguration];
  [v5 setNavigationDestination:a3];
}

- (void)setNavCameraMode:(unint64_t)a3
{
  self->_navCameraMode = a3;
  v5 = [(NavCameraController *)self mapView];
  v6 = [v5 _mapLayer];
  [v6 setNavCameraMode:a3];

  v9 = [(NavCameraController *)self mapView];
  v7 = [v9 _mapLayer];
  v8 = [v7 sceneConfiguration];
  [v8 setNavCameraMode:a3];
}

- (unint64_t)_incidentTypeForAlert:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && (v5 = [v3 alertType], v5 <= 7))
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
  v3 = [(NavCameraController *)self navigationProvider];
  v4 = [v3 route];

  v35 = self;
  v5 = [(NavCameraController *)self navigationProvider];
  v6 = [v5 alternateRoutes];

  if ([v6 count])
  {
    v7 = sub_1009EDDAC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v47 = [v6 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Will pass %lu alternate routes to frame", buf, 0xCu);
    }

    v8 = objc_alloc_init(MNRouteDivergenceFinder);
    v9 = *GEOPolylineCoordinateInvalid;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v34 = v6;
    obj = v6;
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
          v15 = [v8 findFirstUniqueRangeBetweenRoute:v4 andRoute:v14];
          if ([v15 count] == 2)
          {
            v16 = [v15 objectAtIndexedSubscript:0];
            v17 = [v16 uniqueRanges];
            if ([v17 count])
            {
              v18 = v9;
              v19 = v4;
              v20 = [v15 objectAtIndexedSubscript:1];
              v21 = [v20 uniqueRanges];
              v22 = [v21 count];

              if (v22)
              {
                v23 = [v15 objectAtIndexedSubscript:1];
                v24 = [v23 uniqueRanges];
                v25 = [v24 coordinateRangeAtIndex:0];
                v27 = v26;

                [(VKNavContext *)v35->_navContext addRouteToFrame:v14 divergenceCoord:v25 convergenceCoord:v27];
                v28 = [v15 objectAtIndexedSubscript:0];
                v29 = [v28 uniqueRanges];
                v30 = [v29 coordinateRangeAtIndex:0];
                v32 = v31;

                v33 = v39;
                v9 = v18;
                if ((GEOPolylineCoordinateIsInvalid() & 1) != 0 || GEOPolylineCoordinateIsABeforeB())
                {
                  v33 = v30;
                }

                v39 = v33;
                v4 = v19;
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
                v4 = v19;
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

    [(VKNavContext *)v35->_navContext addRouteToFrame:v4 divergenceCoord:v39 convergenceCoord:v9];
    v6 = v34;
  }
}

- (void)_updateStateForVehiclePositions
{
  v3 = [(NavCameraController *)self vehiclePositionPoints];
  v4 = [v3 count];

  if (v4)
  {
    v5 = sub_1009EDDAC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(NavCameraController *)self vehiclePositionPoints];
      *buf = 134217984;
      v21 = [v6 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Will pass %lu vehicle position points to frame", buf, 0xCu);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(NavCameraController *)self vehiclePositionPoints];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          [v12 MKCoordinateValue];
          v14 = v13;
          [v12 MKCoordinateValue];
          [(VKNavContext *)self->_navContext addPointToFrame:3 ofType:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (void)_updateStateForSAR
{
  v3 = [(NavCameraController *)self searchAlongTheRoutePoints];
  v4 = [v3 count];

  if (v4)
  {
    v5 = sub_1009EDDAC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(NavCameraController *)self searchAlongTheRoutePoints];
      *buf = 134217984;
      v27 = [v6 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Will pass %lu SAR points to frame", buf, 0xCu);
    }

    v7 = [(NavCameraController *)self mapView];
    v8 = [v7 _mapLayer];
    v9 = [v8 sceneConfiguration];
    [v9 setSearchAlongTheRoute:1];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [(NavCameraController *)self searchAlongTheRoutePoints];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          [v15 MKCoordinateValue];
          v17 = v16;
          [v15 MKCoordinateValue];
          [(VKNavContext *)self->_navContext addPointToFrame:2 ofType:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v20 = [(NavCameraController *)self mapView];
    v18 = [v20 _mapLayer];
    v19 = [v18 sceneConfiguration];
    [v19 setSearchAlongTheRoute:0];
  }
}

- (void)_updateStateForTrafficIncidentCameraStyling
{
  v3 = [(NavCameraController *)self trafficIncidentAlert];
  v4 = [v3 cameraInput];

  v5 = [(NavCameraController *)self mapView];
  v6 = [v5 _mapLayer];
  v7 = [v6 sceneConfiguration];

  if ([v4 hasCameraStyling])
  {
    v8 = sub_1009EDDAC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v4 cameraStyling];
      *buf = 138412290;
      v49 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will apply incident cameraInput styleAttribute %@", buf, 0xCu);
    }

    v10 = [(NavCameraController *)self navigationProvider];
    v11 = [v10 route];

    v12 = [[GEORouteMatcher alloc] initWithRoute:v11 auditToken:0];
    v13 = [v4 cameraStyling];
    trafficIncidentAlertCameraStyles = self->_trafficIncidentAlertCameraStyles;
    self->_trafficIncidentAlertCameraStyles = v13;

    [(MNLocation *)self->_lastLocation coordinate];
    GEOLocationCoordinate2DFromCLLocationCoordinate2D();
    v15 = [v12 closestRouteCoordinateForLocationCoordinate:?];
    v16 = [v11 endRouteCoordinate];
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
      v27 = *(&v16 + 1) - floorf(*(&v16 + 1));
      LODWORD(v26) = vcvtms_u32_f32(*(&v16 + 1)) + v16;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v37 = v4;
    v28 = [v4 cameraStyling];
    v29 = [v28 attributes];

    v30 = [v29 countByEnumeratingWithState:&v42 objects:v47 count:16];
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
            objc_enumerationMutation(v29);
          }

          [v7 applyStyleAttributeKeyValue:objc_msgSend(*(*(&v42 + 1) + 8 * i) withValue:"key") withCoordinateRange:{objc_msgSend(*(*(&v42 + 1) + 8 * i), "value"), v32, v33}];
        }

        v31 = [v29 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v31);
    }

    v4 = v37;
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
    v21 = [(GEOStyleAttributes *)self->_trafficIncidentAlertCameraStyles attributes];
    v22 = [v21 countByEnumeratingWithState:&v38 objects:v46 count:16];
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
            objc_enumerationMutation(v21);
          }

          [v7 removeStyleAttributeKey:{objc_msgSend(*(*(&v38 + 1) + 8 * j), "key")}];
        }

        v23 = [v21 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v23);
    }

    v11 = self->_trafficIncidentAlertCameraStyles;
    self->_trafficIncidentAlertCameraStyles = 0;
    goto LABEL_29;
  }

LABEL_30:
}

- (void)_updateStateForTrafficIncident
{
  v3 = [(NavCameraController *)self trafficIncidentAlert];

  if (v3)
  {
    v4 = [(NavCameraController *)self navigationProvider];
    v5 = [v4 route];

    v6 = [(NavCameraController *)self trafficIncidentAlert];
    v7 = [v6 cameraInput];

    v8 = [[GEORouteMatcher alloc] initWithRoute:v5 auditToken:0];
    v9 = sub_1009EDDAC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v7 eventPositions];
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Will pass incident cameraInput to frame positions %@", buf, 0xCu);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [v7 eventPositions];
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v11);
          }

          [*(*(&v18 + 1) + 8 * v15) coordinate];
          [v5 pointAtRouteCoordinate:{objc_msgSend(v8, "closestRouteCoordinateForLocationCoordinate:")}];
          if (fabs(v17) <= 180.0 && v16 >= -90.0 && v16 <= 90.0)
          {
            [(VKNavContext *)self->_navContext addPointToFrame:1 ofType:?];
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }
}

- (void)_updateState
{
  [(VKNavContext *)self->_navContext clearPointsToFrame];
  [(VKNavContext *)self->_navContext clearAdditionalRoutesToFrame];
  v3 = [(NavCameraController *)self navigationProvider];
  v4 = [v3 route];

  v5 = [(NavCameraController *)self navigationProvider];
  v6 = [v5 displayedStepIndex];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(NavCameraController *)self navigationProvider];
    v6 = [v7 stepIndex];
  }

  v8 = [(VKNavContext *)self->_navContext route];

  if (v8 != v4)
  {
    v9 = sub_1009EDDAC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Will update with new route stepIndex %lu", &v11, 0xCu);
    }

    [(VKNavContext *)self->_navContext updateWithNewRoute:v4 currentStepIndex:v6];
  }

  [(NavCameraController *)self _updateStateForTrafficIncident];
  [(NavCameraController *)self _updateStateForTrafficIncidentCameraStyling];
  v10 = [(NavCameraController *)self trafficIncidentAlert];

  if (!v10)
  {
    [(NavCameraController *)self _updateStateForSAR];
    [(NavCameraController *)self _updateStateForVehiclePositions];
    [(NavCameraController *)self _updateStateForAlternateRoutes];
  }
}

- (void)filterVehiclePositionsForTripsNotInSet:(id)a3
{
  v4 = a3;
  v5 = [(NavCameraController *)self vehiclePositions];
  v6 = [v5 mutableCopy];

  if ([v6 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = self;
    v7 = [(NavCameraController *)self vehiclePositions];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 tripID]);
          v14 = [v4 containsObject:v13];

          if ((v14 & 1) == 0)
          {
            [v6 removeObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    self = v15;
  }

  [(NavCameraController *)self frameVehiclePositions:v6];
}

- (void)frameVehiclePositions:(id)a3
{
  v5 = a3;
  v6 = self->_vehiclePositions;
  v7 = v5;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_vehiclePositions, a3);
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

- (void)setSearchAlongTheRoutePoints:(id)a3
{
  v5 = a3;
  v6 = self->_searchAlongTheRoutePoints;
  v7 = v5;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_searchAlongTheRoutePoints, a3);
      [(NavCameraController *)self _updateState];
      v7 = v9;
    }
  }
}

- (void)setTrafficIncidentAlert:(id)a3
{
  v11 = a3;
  v5 = [(MNTrafficIncidentAlert *)self->_trafficIncidentAlert alertID];
  v6 = [v11 alertID];
  v7 = v5;
  v8 = v6;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      objc_storeStrong(&self->_trafficIncidentAlert, a3);
      [(NavCameraController *)self _updateState];
    }
  }
}

- (void)resetMapViewNavigationState
{
  v3 = [(MKMapView *)self->_mapView _mapLayer];
  [v3 setNavContext:0];

  v5 = [(MKMapView *)self->_mapView _mapLayer];
  v4 = [v5 sceneConfiguration];
  [v4 resetState];
}

- (void)pauseTracking
{
  v2 = [(MKMapView *)self->_mapView _mapLayer];
  [v2 pauseTracking];
}

- (void)stopTracking
{
  v2 = [(MKMapView *)self->_mapView _mapLayer];
  [v2 stopTracking];
}

- (void)transitionToTrackingInMapMode:(int64_t)a3 animated:(BOOL)a4 startLocation:(id)a5 startHandler:(id)a6
{
  v7 = a4;
  v18 = a6;
  if (a5)
  {
    v10 = a5;
    [v10 coordinate];
    [v10 coordinate];
    VKLocationCoordinate2DMake();
    v12 = v11;
    v14 = v13;
    [v10 course];
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
    v12 = -180.0;
    v14 = -180.0;
  }

  v17 = [(MKMapView *)self->_mapView _mapLayer];
  [v17 transitionToTracking:v7 mapMode:a3 startLocation:v18 startCourse:v12 pounceCompletionHandler:{v14, v16}];
}

- (void)setMapView:(id)a3
{
  v5 = a3;
  mapView = self->_mapView;
  if (mapView != v5)
  {
    v20 = v5;
    if (!v5)
    {
      v7 = [(MKMapView *)mapView _mapLayer];
      v8 = [v7 sceneConfiguration];
      [v8 setCurrentTransportationType:4];

      v9 = [(MKMapView *)self->_mapView _mapLayer];
      v10 = [v9 sceneConfiguration];
      [v10 setNavigationState:0];
    }

    objc_storeStrong(&self->_mapView, a3);
    activeCameraInfos = self->_activeCameraInfos;
    self->_activeCameraInfos = 0;

    v12 = [(MKMapView *)self->_mapView _mapLayer];
    [v12 setNavContext:self->_navContext];

    v13 = [(MKMapView *)self->_mapView _mapLayer];
    [v13 setNavCameraMode:{-[NavCameraController navCameraMode](self, "navCameraMode")}];

    v14 = [(MKMapView *)self->_mapView _mapLayer];
    v15 = [v14 sceneConfiguration];
    [v15 setNavCameraMode:{-[NavCameraController navCameraMode](self, "navCameraMode")}];

    v16 = [(MKMapView *)self->_mapView _mapLayer];
    v17 = [v16 sceneConfiguration];
    [v17 setNavigationDestination:{-[NavCameraController navigationDestination](self, "navigationDestination")}];

    v5 = v20;
    if (v20)
    {
      v18 = [(NavCameraController *)self navigationProvider];

      v5 = v20;
      if (v18)
      {
        v19 = [(NavCameraController *)self navigationProvider];
        [(NavCameraController *)self _restoreStateFromNavigationProvider:v19];

        v5 = v20;
      }
    }
  }
}

- (void)setOverrideNavigationProvider:(id)a3
{
  v5 = a3;
  p_overrideNavigationProvider = &self->_overrideNavigationProvider;
  overrideNavigationProvider = self->_overrideNavigationProvider;
  if (overrideNavigationProvider != v5)
  {
    v12 = v5;
    if (overrideNavigationProvider)
    {
      [(NavCameraNavigationProviding *)overrideNavigationProvider setDelegate:0];
      v8 = *p_overrideNavigationProvider;
      *p_overrideNavigationProvider = 0;
    }

    objc_storeStrong(&self->_overrideNavigationProvider, a3);
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
    v5 = v12;
  }
}

- (void)dealloc
{
  GEOConfigRemoveBlockListener();
  v3.receiver = self;
  v3.super_class = NavCameraController;
  [(NavCameraController *)&v3 dealloc];
}

- (NavCameraController)initWithNavigationProvider:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(v6 + 15, a3);
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