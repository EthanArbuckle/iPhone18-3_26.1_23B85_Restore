@interface CarClusterNavigationController
- (BOOL)smartGuidanceActive;
- (BOOL)updateManeuverIndex:(unint64_t)a3 distanceToManeuver:(double)a4;
- (BOOL)updateManeuverIndices:(id)a3 distanceToManeuver:(double)a4;
- (BOOL)updateRemainingDistance:(double)a3;
- (BOOL)updateRemainingTime:(double)a3;
- (BOOL)updateRouteGuidanceState:(unsigned __int16)a3;
- (CarClusterNavigationController)initWithAccessory:(id)a3 component:(id)a4;
- (id)_destinationTimeZoneOffsetMinutes;
- (int)_roadClassAtLocation:(id)a3;
- (void)_updateRemainingTimeIfNeededWithDisplayFormatter:(id)a3 remainingSeconds:(double)a4;
- (void)_updateSecondaryManeuversIfNecessaryForGuidanceEvent:(id)a3 maneuver:(id)a4;
- (void)dealloc;
- (void)etaDisplayFormatter:(id)a3 didUpdateDisplayETA:(id)a4;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didChangeNavigationState:(int)a4;
- (void)navigationService:(id)a3 didFailWithError:(id)a4;
- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5;
- (void)navigationService:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5;
- (void)navigationService:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6;
- (void)navigationService:(id)a3 didUpdateDistanceUntilSign:(double)a4 timeUntilSign:(double)a5 forStepIndex:(unint64_t)a6;
- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4;
- (void)navigationService:(id)a3 didUpdateProceedToRouteDistance:(double)a4 displayString:(id)a5 closestStepIndex:(unint64_t)a6;
- (void)navigationService:(id)a3 displayManeuverAlertForAnnouncementStage:(unint64_t)a4;
- (void)navigationService:(id)a3 displayPrimaryStep:(id)a4 instructions:(id)a5 shieldType:(int)a6 shieldText:(id)a7 drivingSide:(int)a8 maneuverStepIndex:(unint64_t)a9 isSynthetic:(BOOL)a10;
- (void)navigationService:(id)a3 displaySecondaryStep:(id)a4 instructions:(id)a5 shieldType:(int)a6 shieldText:(id)a7 drivingSide:(int)a8;
- (void)navigationService:(id)a3 hideLaneDirectionsForId:(id)a4;
- (void)navigationService:(id)a3 showLaneDirections:(id)a4;
- (void)navigationService:(id)a3 updateSignsWithInfo:(id)a4;
- (void)navigationService:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationServiceDidCancelReroute:(id)a3;
- (void)navigationServiceDidHideSecondaryStep:(id)a3;
- (void)navigationServiceEndGuidanceUpdate:(id)a3;
- (void)navigationServiceWillReroute:(id)a3;
- (void)sendLaneGuidance;
- (void)sendLaneGuidanceUpdate:(id)a3;
- (void)sendManeuverUpdate:(id)a3;
- (void)sendManeuvers;
- (void)sendRouteGuidance;
- (void)setCurrentRoute:(id)a3;
- (void)setRouteGuidanceBeingShownInApp:(BOOL)a3;
@end

@implementation CarClusterNavigationController

- (void)_updateRemainingTimeIfNeededWithDisplayFormatter:(id)a3 remainingSeconds:(double)a4
{
  v6 = a3;
  v7 = [(CarClusterNavigationController *)self etaDisplayFormatter];

  if (v7 == v6)
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100E5C974;
    block[3] = &unk_10165FBC0;
    objc_copyWeak(v9, &location);
    v9[1] = *&a4;
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

- (void)etaDisplayFormatter:(id)a3 didUpdateDisplayETA:(id)a4
{
  v6 = a3;
  -[CarClusterNavigationController _updateRemainingTimeIfNeededWithDisplayFormatter:remainingSeconds:](self, "_updateRemainingTimeIfNeededWithDisplayFormatter:remainingSeconds:", v6, [a4 displayRemainingMinutesToEndOfLeg] * 60.0);
}

- (void)navigationServiceDidCancelReroute:(id)a3
{
  v4 = [a3 route];
  [(CarClusterNavigationController *)self setCurrentRoute:v4];

  v5 = +[MNNavigationService sharedService];
  v6 = +[CarClusterUpdate _accNavRouteGuidanceStateForGEONavigationState:](CarClusterUpdate, "_accNavRouteGuidanceStateForGEONavigationState:", [v5 navigationState]);

  if ([(CarClusterNavigationController *)self updateRouteGuidanceState:v6])
  {

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5
{
  v6 = a4;
  [(CarClusterNavigationController *)self updateRouteGuidanceState:0];
  [(CarClusterNavigationController *)self sendRouteGuidance];
  [(CarClusterNavigationController *)self setCurrentRoute:v6];

  v7 = +[MNNavigationService sharedService];
  v8 = +[CarClusterUpdate _accNavRouteGuidanceStateForGEONavigationState:](CarClusterUpdate, "_accNavRouteGuidanceStateForGEONavigationState:", [v7 navigationState]);

  if ([(CarClusterNavigationController *)self updateRouteGuidanceState:v8])
  {

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationServiceWillReroute:(id)a3
{
  if ([(CarClusterNavigationController *)self updateRouteGuidanceState:5])
  {

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationService:(id)a3 hideLaneDirectionsForId:(id)a4
{
  v5 = [(CarClusterNavigationController *)self latestLaneGuidanceInfo:a3];

  if (v5)
  {
    [(CarClusterNavigationController *)self setLatestLaneGuidanceInfo:0];
    v6 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [v6 setLaneGuidanceCurrentIndex:0];

    v7 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [v7 setLaneGuidanceShowing:0];

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationService:(id)a3 showLaneDirections:(id)a4
{
  v12 = a4;
  v5 = [(CarClusterNavigationController *)self latestLaneGuidanceInfo];
  v6 = [v5 uniqueID];
  v7 = [v12 uniqueID];
  v8 = [MNComparison isValue:v6 equalTo:v7];

  if ((v8 & 1) == 0)
  {
    [(CarClusterNavigationController *)self setLatestLaneGuidanceInfo:v12];
    v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 composedGuidanceEventIndex]);
    v10 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [v10 setLaneGuidanceCurrentIndex:v9];

    v11 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [v11 setLaneGuidanceShowing:1];

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationService:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5
{
  v9 = a4;
  v7 = [a3 route];
  v8 = [v7 isLegIndexOfLastLeg:{objc_msgSend(v9, "legIndex")}];

  if (v8 && [v9 isInArrivalState] && -[CarClusterNavigationController updateRouteGuidanceState:](self, "updateRouteGuidanceState:", 2))
  {
    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationServiceDidHideSecondaryStep:(id)a3
{
  [(CarClusterNavigationController *)self sendManeuvers];
  v4 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  v5 = [v4 routeGuidanceManeuverCurrentList];
  v6 = [v5 count];

  if (v6 == 2)
  {
    v7 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    v8 = [v7 routeGuidanceManeuverCurrentList];
    v9 = [v8 firstObject];
    v12 = v9;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
    v11 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [v11 setRouteGuidanceManeuverCurrentList:v10];

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationService:(id)a3 displaySecondaryStep:(id)a4 instructions:(id)a5 shieldType:(int)a6 shieldText:(id)a7 drivingSide:(int)a8
{
  [(CarClusterNavigationController *)self sendManeuvers:a3];
  v22 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  v9 = [v22 routeGuidanceManeuverCurrentList];
  if ([v9 count] == 1)
  {
    v10 = [(CarClusterNavigationController *)self component];
    v11 = [v10 guidanceManeuverCapacity];

    if (v11 >= 2)
    {
      v12 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      v13 = [v12 routeGuidanceManeuverCurrentList];
      v14 = [v13 firstObject];
      v15 = [v14 unsignedIntegerValue];

      v16 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      v17 = [v16 routeGuidanceManeuverCurrentList];
      v18 = [v17 firstObject];
      v23[0] = v18;
      v19 = [NSNumber numberWithUnsignedInteger:v15 + 1];
      v23[1] = v19;
      v20 = [NSArray arrayWithObjects:v23 count:2];
      v21 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [v21 setRouteGuidanceManeuverCurrentList:v20];

      [(CarClusterNavigationController *)self sendRouteGuidance];
    }
  }

  else
  {
  }
}

- (void)navigationService:(id)a3 displayManeuverAlertForAnnouncementStage:(unint64_t)a4
{
  v6 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  [v6 updateNavAnnouncementStage:a4];

  [(CarClusterNavigationController *)self sendRouteGuidance];
}

- (void)navigationService:(id)a3 displayPrimaryStep:(id)a4 instructions:(id)a5 shieldType:(int)a6 shieldText:(id)a7 drivingSide:(int)a8 maneuverStepIndex:(unint64_t)a9 isSynthetic:(BOOL)a10
{
  if (-[CarClusterNavigationController updateManeuverIndex:distanceToManeuver:](self, "updateManeuverIndex:distanceToManeuver:", a9, [a4 distance]))
  {
    [(CarClusterNavigationController *)self sendManeuvers];

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationService:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6
{
  v17 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v17 routeID];
  v12 = [v10 route];

  v13 = [v12 uniqueRouteID];
  v14 = [v11 isEqual:v13];

  if (v14)
  {
    v15 = [v17 displayRemainingMinutesToEndOfLeg] * 60.0;
    v16 = [(CarClusterNavigationController *)self etaDisplayFormatter];
    [v16 setRemainingTimeToEndOfLeg:v15];

    [v9 distanceRemainingToEndOfLeg];
    if ([(CarClusterNavigationController *)self updateRemainingDistance:?])
    {
      [(CarClusterNavigationController *)self sendRouteGuidance];
    }
  }
}

- (void)navigationService:(id)a3 didUpdateDistanceUntilSign:(double)a4 timeUntilSign:(double)a5 forStepIndex:(unint64_t)a6
{
  v9 = [(CarClusterNavigationController *)self currentRoute:a3];

  if (v9)
  {
    v10 = [(CarClusterNavigationController *)self updateManeuverIndex:a6 distanceToManeuver:a4];
    v11 = [(CarClusterNavigationController *)self updateRouteGuidanceState:1];
    if ((v10 & 1) != 0 || v11)
    {
      [(CarClusterNavigationController *)self sendManeuvers];

      [(CarClusterNavigationController *)self sendRouteGuidance];
    }
  }
}

- (void)navigationService:(id)a3 didUpdateProceedToRouteDistance:(double)a4 displayString:(id)a5 closestStepIndex:(unint64_t)a6
{
  if (a6 <= 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = a6;
  }

  if ([(CarClusterNavigationController *)self updateManeuverIndex:v7 distanceToManeuver:a5, a4])
  {
    [(CarClusterNavigationController *)self sendManeuvers];

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationServiceEndGuidanceUpdate:(id)a3
{
  if (![(CarClusterNavigationController *)self smartGuidanceActive])
  {
    return;
  }

  v18 = objc_opt_new();
  v4 = [(CarClusterNavigationController *)self latestSignInfo];
  v5 = [v4 primarySign];

  if (v5)
  {
    v6 = [(CarClusterNavigationController *)self latestSignInfo];
    v7 = [v6 primarySign];
    v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 composedGuidanceEventIndex]);
    [v18 addObject:v8];
  }

  v9 = [(CarClusterNavigationController *)self latestSignInfo];
  v10 = [v9 secondarySign];
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v10;
  v12 = [(CarClusterNavigationController *)self component];
  v13 = [v12 guidanceManeuverCapacity];

  if (v13 >= 2)
  {
    v9 = [(CarClusterNavigationController *)self latestSignInfo];
    v14 = [v9 secondarySign];
    v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v14 composedGuidanceEventIndex]);
    [v18 addObject:v15];

LABEL_7:
  }

  v16 = [(CarClusterNavigationController *)self latestSignInfo];
  [v16 primaryDistance_SIRI_USE_ONLY];
  v17 = [(CarClusterNavigationController *)self updateManeuverIndices:v18 distanceToManeuver:?];

  if (v17)
  {
    [(CarClusterNavigationController *)self sendManeuvers];
    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationService:(id)a3 updateSignsWithInfo:(id)a4
{
  v5 = a4;
  if ([(CarClusterNavigationController *)self smartGuidanceActive])
  {
    [(CarClusterNavigationController *)self setLatestSignInfo:v5];
  }
}

- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4
{
  v10 = a4;
  if ([v10 locationUnreliable])
  {
    v5 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [v5 setCurrentRoadName:&stru_1016631F0];

    if (![(CarClusterNavigationController *)self smartGuidanceActive])
    {
      goto LABEL_7;
    }

    v6 = 9;
  }

  else
  {
    v7 = [v10 roadName];
    v8 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [v8 setCurrentRoadName:v7];

    if (![(CarClusterNavigationController *)self smartGuidanceActive])
    {
      goto LABEL_7;
    }

    v6 = [(CarClusterNavigationController *)self _roadClassAtLocation:v10];
  }

  v9 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  [v9 setManeuverRoadClass:v6];

LABEL_7:
  [(CarClusterNavigationController *)self sendRouteGuidance];
}

- (void)navigationService:(id)a3 didChangeNavigationState:(int)a4
{
  if ([(CarClusterNavigationController *)self updateRouteGuidanceState:[CarClusterUpdate _accNavRouteGuidanceStateForGEONavigationState:*&a4]])
  {

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationService:(id)a3 didFailWithError:(id)a4
{
  if ([(CarClusterNavigationController *)self updateRouteGuidanceState:0, a4])
  {

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v7 = a3;
  if (a5)
  {
    if (a5 == 4)
    {
      v12 = v7;
      v8 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      v9 = v8;
      v10 = 1;
    }

    else
    {
      if (a5 != 5)
      {
        goto LABEL_9;
      }

      v12 = v7;
      v8 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      v9 = v8;
      v10 = 0;
    }

    [v8 setBeingShownInApp:v10];
  }

  else
  {
    v12 = v7;
    [(CarClusterNavigationController *)self updateRouteGuidanceState:0];
    v11 = [(CarClusterNavigationController *)self etaDisplayFormatter];
    [v11 setDelegate:0];

    [(CarClusterNavigationController *)self setEtaDisplayFormatter:0];
    [(CarClusterNavigationController *)self setCurrentRoute:0];
  }

  [(CarClusterNavigationController *)self sendRouteGuidance];
  v7 = v12;
LABEL_9:
}

- (void)navigationService:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v11 = a3;
  if (MNNavigationServiceStateChangedToNavigating())
  {
    v7 = [v11 route];

    if (v7)
    {
      v8 = [v11 route];
      [(CarClusterNavigationController *)self setCurrentRoute:v8];

      v9 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      v10 = [v9 routeGuidanceState];

      if (!v10)
      {
        [(CarClusterNavigationController *)self updateRouteGuidanceState:3];
      }

      goto LABEL_7;
    }
  }

  if (!a5 && [(CarClusterNavigationController *)self updateRouteGuidanceState:0])
  {
LABEL_7:
    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (int)_roadClassAtLocation:(id)a3
{
  v8 = 0;
  v9 = 9;
  v4 = [a3 routeMatch];
  v5 = [v4 routeCoordinate];

  v6 = [(CarClusterNavigationController *)self currentRoute];
  [v6 getFormOfWay:&v8 roadClass:&v9 at:v5];

  return v9;
}

- (void)_updateSecondaryManeuversIfNecessaryForGuidanceEvent:(id)a3 maneuver:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a3 stepIndex]);
    v7 = [(CarClusterNavigationController *)self indexedSteps];
    v8 = [v7 objectForKeyedSubscript:v20];

    if (!v8)
    {
      v9 = objc_opt_new();
      v10 = [(CarClusterNavigationController *)self indexedSteps];
      [v10 setObject:v9 forKeyedSubscript:v20];
    }

    v11 = [(CarClusterNavigationController *)self indexedSteps];
    v12 = [v11 objectForKeyedSubscript:v20];
    [v12 addObject:v6];

    v13 = [(CarClusterNavigationController *)self indexedSteps];
    v14 = [v13 objectForKeyedSubscript:v20];
    [v14 sortUsingComparator:&stru_1016563F8];

    v15 = [(CarClusterNavigationController *)self indexedSteps];
    v16 = [v15 objectForKeyedSubscript:v20];
    v17 = [v16 count];

    if (v17 >= 2)
    {
      v18 = [(CarClusterNavigationController *)self indexedSteps];
      v19 = [v18 objectForKeyedSubscript:v20];
      [v19 enumerateObjectsUsingBlock:&stru_101656438];
    }
  }
}

- (void)sendManeuvers
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(CarClusterNavigationController *)self currentACCNavManeuvers];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(CarClusterNavigationController *)self setCurrentACCNavManeuvers:v6];

    v7 = objc_opt_new();
    [(CarClusterNavigationController *)self setIndexedSteps:v7];
  }

  v8 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
  v9 = [v8 valueForKey:@"index"];

  v10 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
  v11 = [v10 firstObject];

  v12 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  v13 = [v12 firstIndex_RouteGuidanceManeuverCurrentList];

  if (v13 != -1)
  {
    v14 = [v11 index];
    v15 = [v14 unsignedIntegerValue];
    v16 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    if (v15 == [v16 firstIndex_RouteGuidanceManeuverCurrentList])
    {
      v17 = v11;
LABEL_8:

      v11 = v17;
    }

    else
    {
      while (1)
      {
        v18 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
        v19 = [v18 count];

        if (!v19)
        {
          break;
        }

        v20 = [v11 index];
        [v3 addObject:v20];

        v21 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
        [v21 removeObjectAtIndex:0];

        v22 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
        v17 = [v22 firstObject];

        v14 = [v17 index];
        v23 = [v14 unsignedIntegerValue];
        v16 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
        v11 = v17;
        if (v23 == [v16 firstIndex_RouteGuidanceManeuverCurrentList])
        {
          goto LABEL_8;
        }
      }
    }
  }

  v24 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
  v25 = [v24 lastObject];

  if (v25)
  {
    v26 = [v25 index];
    v27 = [v26 unsignedIntegerValue] + 1;
  }

  else
  {
    v26 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    v27 = [v26 firstIndex_RouteGuidanceManeuverCurrentList];
  }

  v28 = [(CarClusterNavigationController *)self smartGuidanceActive];
  v29 = [(CarClusterNavigationController *)self currentRoute];
  v30 = v29;
  v61 = v3;
  v59 = v25;
  if (v28)
  {
    [v29 composedGuidanceEvents];
  }

  else
  {
    [v29 steps];
  }
  v31 = ;
  v60 = v9;

  v32 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
  v33 = [v32 count];
  v34 = [(CarClusterNavigationController *)self component];
  if (v33 >= [v34 guidanceManeuverCapacity])
  {
LABEL_23:
  }

  else
  {
    while (1)
    {
      v35 = [v31 count];

      if (v35 <= v27)
      {
        break;
      }

      if ([(CarClusterNavigationController *)self smartGuidanceActive])
      {
        v36 = [v31 objectAtIndexedSubscript:v27];
        v37 = [(CarClusterNavigationController *)self currentRoute];
        v38 = [v37 steps];
        v39 = [v38 objectAtIndexedSubscript:{objc_msgSend(v36, "stepIndex")}];

        v40 = [(CarClusterNavigationController *)self component];
        v41 = [CarClusterUpdateManeuverInfo maneuverUpdateWithGuidanceEvent:v36 routeStep:v39 component:v40];

        v42 = [NSNumber numberWithUnsignedInteger:v27];
        [v41 setIndex:v42];

        [(CarClusterNavigationController *)self _updateSecondaryManeuversIfNecessaryForGuidanceEvent:v36 maneuver:v41];
      }

      else
      {
        v36 = [v31 objectAtIndexedSubscript:v27];
        v39 = [(CarClusterNavigationController *)self component];
        v41 = [CarClusterUpdateManeuverInfo maneuverUpdateWithStep:v36 component:v39];
      }

      if (v41)
      {
        v43 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
        [v43 addObject:v41];
      }

      ++v27;

      v32 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
      v44 = [v32 count];
      v34 = [(CarClusterNavigationController *)self component];
      if (v44 >= [v34 guidanceManeuverCapacity])
      {
        goto LABEL_23;
      }
    }
  }

  v45 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
  v58 = [v45 valueForKey:@"index"];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v46 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
  v47 = [v46 countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v63;
    do
    {
      for (i = 0; i != v48; i = i + 1)
      {
        if (*v63 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = *(*(&v62 + 1) + 8 * i);
        if (([v51 hasBeenSent] & 1) == 0)
        {
          if ([v51 isSecondary])
          {
            [v51 setDistanceBetweenManeuver:0];
            [v51 setDistanceBetweenManeuverDisplayString:0];
            [v51 setDistanceBetweenManeuverDisplayUnits:0xFFFFLL];
          }

          [v51 setHasBeenSent:1];
          v52 = [v51 index];
          [v4 addObject:v52];

          [(CarClusterNavigationController *)self sendManeuverUpdate:v51];
        }
      }

      v48 = [v46 countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v48);
  }

  v53 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    v54 = [v60 componentsJoinedByString:{@", "}];
    v55 = [v61 componentsJoinedByString:{@", "}];
    v56 = [v58 componentsJoinedByString:{@", "}];
    v57 = [v4 componentsJoinedByString:{@", "}];
    *buf = 138413058;
    v67 = v54;
    v68 = 2112;
    v69 = v55;
    v70 = 2112;
    v71 = v56;
    v72 = 2112;
    v73 = v57;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "current=[%@] removed=[%@] newCurrent=[%@] sent=[%@]", buf, 0x2Au);
  }
}

- (void)sendLaneGuidance
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(CarClusterNavigationController *)self setCurrentACCNavLaneGuidances:v6];

    v7 = objc_opt_new();
    [(CarClusterNavigationController *)self setCurrentACCNavLaneGuidanceIndexes:v7];
  }

  v8 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
  v59 = [v8 valueForKey:@"index"];

  v9 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
  v10 = [v9 firstObject];

  v11 = [v10 index];
  if (v11)
  {
    v12 = v11;
    v13 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    v14 = [v13 laneGuidanceCurrentIndex];

    if (v14)
    {
      while (1)
      {
        v15 = [v10 index];
        v16 = [v15 unsignedIntegerValue];
        v17 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
        v18 = [v17 laneGuidanceCurrentIndex];
        v19 = [v18 unsignedIntegerValue];

        if (v16 == v19)
        {
          break;
        }

        v20 = [v10 index];
        [v3 addObject:v20];

        v21 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
        [v21 removeObjectAtIndex:0];

        v22 = [(CarClusterNavigationController *)self currentACCNavLaneGuidanceIndexes];
        v23 = [v10 index];
        [v22 removeObject:v23];

        v24 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
        v25 = [v24 firstObject];

        v10 = v25;
      }
    }
  }

  v26 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
  v27 = [v26 lastObject];

  v28 = [v27 index];
  v29 = [v28 unsignedIntegerValue];

  v60 = v3;
  v57 = v27;
  if ([(CarClusterNavigationController *)self smartGuidanceActive])
  {
    v30 = [(CarClusterNavigationController *)self currentRoute];
    v31 = [v30 composedGuidanceEvents];
  }

  else
  {
    v31 = 0;
  }

  v32 = [(CarClusterNavigationController *)self component];
  v33 = [v32 laneGuidanceCapacity];

  v34 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
  if ([v34 count] >= v33)
  {
LABEL_16:
  }

  else
  {
    v35 = v29 + 1;
    while (1)
    {
      v36 = [v31 count];

      if (v36 <= v35)
      {
        break;
      }

      v37 = [v31 objectAtIndexedSubscript:v35];
      v38 = [(CarClusterNavigationController *)self component];
      v39 = [CarClusterUpdateLaneGuidance laneGuidanceUpdateWithComposedGuidanceEvent:v37 component:v38];

      v40 = [NSNumber numberWithUnsignedInteger:v35];
      [v39 setIndex:v40];

      if (v39)
      {
        v41 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
        [v41 addObject:v39];

        v42 = [(CarClusterNavigationController *)self currentACCNavLaneGuidanceIndexes];
        v43 = [v39 index];
        [v42 addObject:v43];
      }

      v34 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
      ++v35;
      if ([v34 count] >= v33)
      {
        goto LABEL_16;
      }
    }
  }

  v44 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
  v61 = [v44 valueForKey:@"index"];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v45 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
  v46 = [v45 countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v63;
    do
    {
      for (i = 0; i != v47; i = i + 1)
      {
        if (*v63 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v62 + 1) + 8 * i);
        if (([v50 hasBeenSent] & 1) == 0)
        {
          [v50 setHasBeenSent:1];
          v51 = [v50 index];
          [v4 addObject:v51];

          [(CarClusterNavigationController *)self sendLaneGuidanceUpdate:v50];
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v47);
  }

  v52 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    v53 = [v59 componentsJoinedByString:{@", "}];
    v54 = [v60 componentsJoinedByString:{@", "}];
    v55 = [v61 componentsJoinedByString:{@", "}];
    v56 = [v4 componentsJoinedByString:{@", "}];
    *buf = 138413058;
    v67 = v53;
    v68 = 2112;
    v69 = v54;
    v70 = 2112;
    v71 = v55;
    v72 = 2112;
    v73 = v56;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "current=[%@] removed=[%@] newCurrent=[%@] sent=[%@]", buf, 0x2Au);
  }
}

- (void)sendLaneGuidanceUpdate:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(CarClusterNavigationController *)self accessory];
    v7 = [v6 accessoryUID];
    v8 = [(CarClusterNavigationController *)self component];
    v9 = [v8 identifier];
    v10 = [v4 logFormat];
    v11 = [v4 accNavFormat];
    *buf = 138413058;
    v18 = v7;
    v19 = 2048;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "accessory=%@ component=%ld \nupdate=%@ \naccNavFormat=%@", buf, 0x2Au);
  }

  v12 = [(CarClusterNavigationController *)self accessory];
  v13 = [ACCNavigationInfoBuilder accNavigationLaneGuidanceInfoFrom:v4];
  v14 = [(CarClusterNavigationController *)self component];
  v16 = v14;
  v15 = [NSArray arrayWithObjects:&v16 count:1];
  [v12 updateLaneGuidanceInfo:v13 componentList:v15];
}

- (void)sendManeuverUpdate:(id)a3
{
  v4 = a3;
  v5 = [(CarClusterNavigationController *)self currentACCNavLaneGuidanceIndexes];
  v6 = [v4 index];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [v4 index];
    [v4 setLinkedLaneGuidanceInfo:v8];
  }

  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [(CarClusterNavigationController *)self accessory];
    v11 = [v10 accessoryUID];
    v12 = [(CarClusterNavigationController *)self component];
    v13 = [v12 identifier];
    v14 = [v4 logFormat];
    v15 = [v4 accNavFormat];
    *buf = 138413058;
    v22 = v11;
    v23 = 2048;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "accessory=%@ component=%ld \nupdate=%@ \naccNavFormat=%@", buf, 0x2Au);
  }

  v16 = [(CarClusterNavigationController *)self accessory];
  v17 = [ACCNavigationInfoBuilder accNavigationManeuverUpdateInfoFrom:v4];
  v18 = [(CarClusterNavigationController *)self component];
  v20 = v18;
  v19 = [NSArray arrayWithObjects:&v20 count:1];
  [v16 updateManeuverInfo:v17 componentList:v19];
}

- (void)sendRouteGuidance
{
  v3 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(CarClusterNavigationController *)self accessory];
    v6 = [v5 accessoryUID];
    v7 = [(CarClusterNavigationController *)self component];
    v8 = [v7 identifier];
    v9 = [v3 logFormat];
    v10 = [v3 accNavFormat];
    *buf = 138413058;
    v17 = v6;
    v18 = 2048;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "accessory=%@ component=%ld \nupdate=%@ \naccNavFormat=%@", buf, 0x2Au);
  }

  v11 = [(CarClusterNavigationController *)self accessory];
  v12 = [ACCNavigationInfoBuilder accNavigationRouteGuidanceUpdateInfoFrom:v3];
  v13 = [(CarClusterNavigationController *)self component];
  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [v11 updateRouteGuidanceInfo:v12 componentList:v14];
}

- (BOOL)updateRouteGuidanceState:(unsigned __int16)a3
{
  v3 = a3;
  if (a3 == 1)
  {
    v5 = [(CarClusterNavigationController *)self currentRoute];

    if (!v5)
    {
      return 0;
    }
  }

  v6 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  v7 = [v6 routeGuidanceState];

  if (v7 == v3)
  {
    return 0;
  }

  v9 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  [v9 setRouteGuidanceState:v3];

  v10 = v3 - 3;
  if (v3 >= 3)
  {
    v11 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [v11 setCurrentRoadName:&stru_1016631F0];

    if (v3 == 5)
    {
      [(CarClusterNavigationController *)self setCurrentRoute:0];
    }

    v12 = [(CarClusterNavigationController *)self currentRoute];

    if (!v12)
    {
      v13 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [v13 setRouteGuidanceManeuverCount:&off_1016EA040];

      v14 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [v14 setRouteGuidanceManeuverCurrentList:&off_1016EDAC0];

      v15 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [v15 setManeuverState:3];

      v16 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [v16 setLaneGuidanceShowing:0];

      v17 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [v17 setLaneGuidanceTotalCount:&off_1016EA058];

      v18 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [v18 setLaneGuidanceCurrentIndex:&off_1016EA058];

      v19 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [v19 setDestinationTimeZoneOffsetMinutes:&off_1016EA058];

      v20 = objc_opt_new();
      v21 = [(CarClusterNavigationController *)self component];
      [v20 setComponent:v21];

      v22 = &stru_1016631F0;
      [v20 setAfterManeuverRoadName:&stru_1016631F0];
      [v20 setManeuverType:0];
      if (v10 <= 3u)
      {
        v23 = off_1016564B8[v10];
        v24 = +[NSBundle mainBundle];
        v22 = [v24 localizedStringForKey:v23 value:@"localized string not found" table:0];
      }

      [v20 setManeuverDescription:v22];
      [v20 setIndex:&off_1016EA058];
      [(CarClusterNavigationController *)self sendManeuverUpdate:v20];
    }
  }

  return 1;
}

- (BOOL)updateRemainingDistance:(double)a3
{
  v5 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  v6 = [v5 distanceRemaining];
  [v6 doubleValue];
  v8 = v7 != a3 && a3 >= 0.0;

  if (v8)
  {
    v9 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [v9 updateRemainingDistance:a3];
  }

  return v8;
}

- (BOOL)updateRemainingTime:(double)a3
{
  if (a3 < 0.0)
  {
    return 0;
  }

  v5 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  v6 = [v5 routeGuidanceState];

  if (!v6)
  {
    return 0;
  }

  v7 = [(CarClusterNavigationController *)self etaDisplayFormatter];
  [v7 displayRemainingTimeToEndOfLeg];
  v9 = v8;

  v10 = [(CarClusterNavigationController *)self etaDisplayFormatter];
  v11 = [v10 displayETAToEndOfLeg];
  [v11 timeIntervalSince1970];
  v13 = v12;

  v14 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  v15 = [v14 timeRemainingToDestination];
  [v15 doubleValue];
  v17 = v16;

  v18 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  v19 = [v18 estimatedTimeOfArrival];
  [v19 doubleValue];
  v21 = v20;

  if (v9 == v17 && v13 == v21)
  {
    return 0;
  }

  v22 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  [v22 updateRemainingTime:v9 estimatedTimeOfArrival:v13];

  return 1;
}

- (id)_destinationTimeZoneOffsetMinutes
{
  v2 = [(GEOComposedRoute *)self->_currentRoute destination];
  v3 = [v2 timezone];

  v4 = +[NSDate date];
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 secondsFromGMTForDate:v4] / 60);

  return v5;
}

- (BOOL)updateManeuverIndices:(id)a3 distanceToManeuver:(double)a4
{
  v6 = a3;
  v7 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  v8 = [v7 routeGuidanceManeuverCurrentList];
  if (v8)
  {
    v9 = v8;
    v10 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    v11 = [v10 routeGuidanceManeuverCurrentList];
    v12 = [MNComparison isValue:v11 equalTo:v6];

    if (v12)
    {
      v13 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v14 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  [v14 setRouteGuidanceManeuverCurrentList:v6];

  v13 = 1;
LABEL_6:
  v15 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  v16 = [v15 distanceRemainingToNextManeuver];
  [v16 doubleValue];
  v18 = v17;

  if (v18 != a4)
  {
    v19 = [NSNumber numberWithDouble:a4];
    v20 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [v20 setDistanceRemainingToNextManeuver:v19];

    v27 = 0;
    v26 = 0;
    [CarClusterUpdateRouteGuidance getStringValue:&v26 displayUnits:&v27 forRemainingDistance:a4];
    v21 = v26;
    v22 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [v22 setDistanceRemainingToNextManeuverDisplayString:v21];

    v23 = v27;
    v24 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [v24 setDistanceRemainingToNextManeuverDisplayUnits:v23];

    v13 = 1;
  }

  return v13;
}

- (BOOL)updateManeuverIndex:(unint64_t)a3 distanceToManeuver:(double)a4
{
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];
  LOBYTE(self) = [(CarClusterNavigationController *)self updateManeuverIndices:v7 distanceToManeuver:a4];

  return self;
}

- (void)setCurrentRoute:(id)a3
{
  v5 = a3;
  if (self->_currentRoute != v5)
  {
    v35 = v5;
    objc_storeStrong(&self->_currentRoute, a3);
    [(CarClusterNavigationController *)self setCurrentACCNavManeuvers:0];
    [(CarClusterNavigationController *)self setCurrentACCNavLaneGuidances:0];
    [(CarClusterNavigationController *)self setEtaDisplayFormatter:0];
    [(CarClusterNavigationController *)self setIndexedSteps:0];
    if (v35)
    {
      v6 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      v7 = [v6 routeGuidanceState];

      if (!v7)
      {
        [(CarClusterNavigationController *)self updateRouteGuidanceState:3];
      }

      v8 = [MNETADisplayFormatter alloc];
      v9 = +[MNNavigationService sharedService];
      v10 = [v9 upcomingStop];
      v11 = [v10 timezone];
      v12 = [v8 initWithTimeZone:v11];
      [(CarClusterNavigationController *)self setEtaDisplayFormatter:v12];

      v13 = [(CarClusterNavigationController *)self etaDisplayFormatter];
      [v13 setDelegate:self];

      v14 = [(CarClusterNavigationController *)self smartGuidanceActive];
      v15 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [v15 setSmartGuidanceActive:v14];

      v16 = [(GEOComposedRoute *)v35 composedGuidanceEventsWithSignGuidance];
      v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v16 count]);
      v18 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [v18 setRouteGuidanceManeuverCount:v17];

      v19 = [(GEOComposedRoute *)v35 composedGuidanceEvents];
      v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 count]);
      v21 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [v21 setLaneGuidanceTotalCount:v20];

      v22 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [v22 setLaneGuidanceShowing:0];

      v23 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [v23 setLaneGuidanceCurrentIndex:0];

      v24 = [(CarClusterNavigationController *)self _destinationTimeZoneOffsetMinutes];
      v25 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [v25 setDestinationTimeZoneOffsetMinutes:v24];

      v26 = +[MNNavigationService sharedService];
      v27 = [v26 displayETAInfoForRoute:v35];

      v28 = [v27 displayRemainingMinutesToEndOfLeg];
      v29 = [(CarClusterNavigationController *)self etaDisplayFormatter];
      [v29 setRemainingTimeToEndOfLeg:v28];

      v30 = +[MNNavigationService sharedService];
      v31 = [v30 remainingDistanceInfoForRoute:v35];

      [v31 distanceRemainingToEndOfLeg];
      [(CarClusterNavigationController *)self updateRemainingDistance:?];
      v32 = +[MNNavigationService sharedService];
      v33 = [v32 destinationName];
      v34 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [v34 setDestinationName:v33];
    }

    [(CarClusterNavigationController *)self sendLaneGuidance];
    [(CarClusterNavigationController *)self sendManeuvers];
    [(CarClusterNavigationController *)self sendRouteGuidance];
    v5 = v35;
  }
}

- (BOOL)smartGuidanceActive
{
  v2 = [(GEOComposedRoute *)self->_currentRoute composedGuidanceEvents];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)setRouteGuidanceBeingShownInApp:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  [v5 setBeingShownInApp:v3];

  [(CarClusterNavigationController *)self sendRouteGuidance];
}

- (void)dealloc
{
  v3 = +[MNNavigationService sharedService];
  [v3 unregisterObserver:self];

  etaDisplayFormatter = self->_etaDisplayFormatter;
  if (etaDisplayFormatter)
  {
    [(MNETADisplayFormatter *)etaDisplayFormatter setDelegate:0];
  }

  v5.receiver = self;
  v5.super_class = CarClusterNavigationController;
  [(CarClusterNavigationController *)&v5 dealloc];
}

- (CarClusterNavigationController)initWithAccessory:(id)a3 component:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CarClusterNavigationController;
  v9 = [(CarClusterNavigationController *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessory, a3);
    objc_storeStrong(&v10->_component, a4);
    v11 = objc_alloc_init(CarClusterUpdateRouteGuidance);
    currentACCNavRouteGuidance = v10->_currentACCNavRouteGuidance;
    v10->_currentACCNavRouteGuidance = v11;

    [(CarClusterUpdate *)v10->_currentACCNavRouteGuidance setComponent:v8];
    v13 = +[MNNavigationService sharedService];
    [v13 registerObserver:v10];
  }

  return v10;
}

@end