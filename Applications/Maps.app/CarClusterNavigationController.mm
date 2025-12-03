@interface CarClusterNavigationController
- (BOOL)smartGuidanceActive;
- (BOOL)updateManeuverIndex:(unint64_t)index distanceToManeuver:(double)maneuver;
- (BOOL)updateManeuverIndices:(id)indices distanceToManeuver:(double)maneuver;
- (BOOL)updateRemainingDistance:(double)distance;
- (BOOL)updateRemainingTime:(double)time;
- (BOOL)updateRouteGuidanceState:(unsigned __int16)state;
- (CarClusterNavigationController)initWithAccessory:(id)accessory component:(id)component;
- (id)_destinationTimeZoneOffsetMinutes;
- (int)_roadClassAtLocation:(id)location;
- (void)_updateRemainingTimeIfNeededWithDisplayFormatter:(id)formatter remainingSeconds:(double)seconds;
- (void)_updateSecondaryManeuversIfNecessaryForGuidanceEvent:(id)event maneuver:(id)maneuver;
- (void)dealloc;
- (void)etaDisplayFormatter:(id)formatter didUpdateDisplayETA:(id)a;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didChangeNavigationState:(int)state;
- (void)navigationService:(id)service didFailWithError:(id)error;
- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason;
- (void)navigationService:(id)service didUpdateArrivalInfo:(id)info previousState:(int64_t)state;
- (void)navigationService:(id)service didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info;
- (void)navigationService:(id)service didUpdateDistanceUntilSign:(double)sign timeUntilSign:(double)untilSign forStepIndex:(unint64_t)index;
- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location;
- (void)navigationService:(id)service didUpdateProceedToRouteDistance:(double)distance displayString:(id)string closestStepIndex:(unint64_t)index;
- (void)navigationService:(id)service displayManeuverAlertForAnnouncementStage:(unint64_t)stage;
- (void)navigationService:(id)service displayPrimaryStep:(id)step instructions:(id)instructions shieldType:(int)type shieldText:(id)text drivingSide:(int)side maneuverStepIndex:(unint64_t)index isSynthetic:(BOOL)self0;
- (void)navigationService:(id)service displaySecondaryStep:(id)step instructions:(id)instructions shieldType:(int)type shieldText:(id)text drivingSide:(int)side;
- (void)navigationService:(id)service hideLaneDirectionsForId:(id)id;
- (void)navigationService:(id)service showLaneDirections:(id)directions;
- (void)navigationService:(id)service updateSignsWithInfo:(id)info;
- (void)navigationService:(id)service willChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationServiceDidCancelReroute:(id)reroute;
- (void)navigationServiceDidHideSecondaryStep:(id)step;
- (void)navigationServiceEndGuidanceUpdate:(id)update;
- (void)navigationServiceWillReroute:(id)reroute;
- (void)sendLaneGuidance;
- (void)sendLaneGuidanceUpdate:(id)update;
- (void)sendManeuverUpdate:(id)update;
- (void)sendManeuvers;
- (void)sendRouteGuidance;
- (void)setCurrentRoute:(id)route;
- (void)setRouteGuidanceBeingShownInApp:(BOOL)app;
@end

@implementation CarClusterNavigationController

- (void)_updateRemainingTimeIfNeededWithDisplayFormatter:(id)formatter remainingSeconds:(double)seconds
{
  formatterCopy = formatter;
  etaDisplayFormatter = [(CarClusterNavigationController *)self etaDisplayFormatter];

  if (etaDisplayFormatter == formatterCopy)
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100E5C974;
    block[3] = &unk_10165FBC0;
    objc_copyWeak(v9, &location);
    v9[1] = *&seconds;
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

- (void)etaDisplayFormatter:(id)formatter didUpdateDisplayETA:(id)a
{
  formatterCopy = formatter;
  -[CarClusterNavigationController _updateRemainingTimeIfNeededWithDisplayFormatter:remainingSeconds:](self, "_updateRemainingTimeIfNeededWithDisplayFormatter:remainingSeconds:", formatterCopy, [a displayRemainingMinutesToEndOfLeg] * 60.0);
}

- (void)navigationServiceDidCancelReroute:(id)reroute
{
  route = [reroute route];
  [(CarClusterNavigationController *)self setCurrentRoute:route];

  v5 = +[MNNavigationService sharedService];
  v6 = +[CarClusterUpdate _accNavRouteGuidanceStateForGEONavigationState:](CarClusterUpdate, "_accNavRouteGuidanceStateForGEONavigationState:", [v5 navigationState]);

  if ([(CarClusterNavigationController *)self updateRouteGuidanceState:v6])
  {

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason
{
  rerouteCopy = reroute;
  [(CarClusterNavigationController *)self updateRouteGuidanceState:0];
  [(CarClusterNavigationController *)self sendRouteGuidance];
  [(CarClusterNavigationController *)self setCurrentRoute:rerouteCopy];

  v7 = +[MNNavigationService sharedService];
  v8 = +[CarClusterUpdate _accNavRouteGuidanceStateForGEONavigationState:](CarClusterUpdate, "_accNavRouteGuidanceStateForGEONavigationState:", [v7 navigationState]);

  if ([(CarClusterNavigationController *)self updateRouteGuidanceState:v8])
  {

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationServiceWillReroute:(id)reroute
{
  if ([(CarClusterNavigationController *)self updateRouteGuidanceState:5])
  {

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationService:(id)service hideLaneDirectionsForId:(id)id
{
  v5 = [(CarClusterNavigationController *)self latestLaneGuidanceInfo:service];

  if (v5)
  {
    [(CarClusterNavigationController *)self setLatestLaneGuidanceInfo:0];
    currentACCNavRouteGuidance = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [currentACCNavRouteGuidance setLaneGuidanceCurrentIndex:0];

    currentACCNavRouteGuidance2 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [currentACCNavRouteGuidance2 setLaneGuidanceShowing:0];

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationService:(id)service showLaneDirections:(id)directions
{
  directionsCopy = directions;
  latestLaneGuidanceInfo = [(CarClusterNavigationController *)self latestLaneGuidanceInfo];
  uniqueID = [latestLaneGuidanceInfo uniqueID];
  uniqueID2 = [directionsCopy uniqueID];
  v8 = [MNComparison isValue:uniqueID equalTo:uniqueID2];

  if ((v8 & 1) == 0)
  {
    [(CarClusterNavigationController *)self setLatestLaneGuidanceInfo:directionsCopy];
    v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [directionsCopy composedGuidanceEventIndex]);
    currentACCNavRouteGuidance = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [currentACCNavRouteGuidance setLaneGuidanceCurrentIndex:v9];

    currentACCNavRouteGuidance2 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [currentACCNavRouteGuidance2 setLaneGuidanceShowing:1];

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationService:(id)service didUpdateArrivalInfo:(id)info previousState:(int64_t)state
{
  infoCopy = info;
  route = [service route];
  v8 = [route isLegIndexOfLastLeg:{objc_msgSend(infoCopy, "legIndex")}];

  if (v8 && [infoCopy isInArrivalState] && -[CarClusterNavigationController updateRouteGuidanceState:](self, "updateRouteGuidanceState:", 2))
  {
    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationServiceDidHideSecondaryStep:(id)step
{
  [(CarClusterNavigationController *)self sendManeuvers];
  currentACCNavRouteGuidance = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  routeGuidanceManeuverCurrentList = [currentACCNavRouteGuidance routeGuidanceManeuverCurrentList];
  v6 = [routeGuidanceManeuverCurrentList count];

  if (v6 == 2)
  {
    currentACCNavRouteGuidance2 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    routeGuidanceManeuverCurrentList2 = [currentACCNavRouteGuidance2 routeGuidanceManeuverCurrentList];
    firstObject = [routeGuidanceManeuverCurrentList2 firstObject];
    v12 = firstObject;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
    currentACCNavRouteGuidance3 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [currentACCNavRouteGuidance3 setRouteGuidanceManeuverCurrentList:v10];

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationService:(id)service displaySecondaryStep:(id)step instructions:(id)instructions shieldType:(int)type shieldText:(id)text drivingSide:(int)side
{
  [(CarClusterNavigationController *)self sendManeuvers:service];
  currentACCNavRouteGuidance = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  routeGuidanceManeuverCurrentList = [currentACCNavRouteGuidance routeGuidanceManeuverCurrentList];
  if ([routeGuidanceManeuverCurrentList count] == 1)
  {
    component = [(CarClusterNavigationController *)self component];
    guidanceManeuverCapacity = [component guidanceManeuverCapacity];

    if (guidanceManeuverCapacity >= 2)
    {
      currentACCNavRouteGuidance2 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      routeGuidanceManeuverCurrentList2 = [currentACCNavRouteGuidance2 routeGuidanceManeuverCurrentList];
      firstObject = [routeGuidanceManeuverCurrentList2 firstObject];
      unsignedIntegerValue = [firstObject unsignedIntegerValue];

      currentACCNavRouteGuidance3 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      routeGuidanceManeuverCurrentList3 = [currentACCNavRouteGuidance3 routeGuidanceManeuverCurrentList];
      firstObject2 = [routeGuidanceManeuverCurrentList3 firstObject];
      v23[0] = firstObject2;
      v19 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue + 1];
      v23[1] = v19;
      v20 = [NSArray arrayWithObjects:v23 count:2];
      currentACCNavRouteGuidance4 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [currentACCNavRouteGuidance4 setRouteGuidanceManeuverCurrentList:v20];

      [(CarClusterNavigationController *)self sendRouteGuidance];
    }
  }

  else
  {
  }
}

- (void)navigationService:(id)service displayManeuverAlertForAnnouncementStage:(unint64_t)stage
{
  currentACCNavRouteGuidance = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  [currentACCNavRouteGuidance updateNavAnnouncementStage:stage];

  [(CarClusterNavigationController *)self sendRouteGuidance];
}

- (void)navigationService:(id)service displayPrimaryStep:(id)step instructions:(id)instructions shieldType:(int)type shieldText:(id)text drivingSide:(int)side maneuverStepIndex:(unint64_t)index isSynthetic:(BOOL)self0
{
  if (-[CarClusterNavigationController updateManeuverIndex:distanceToManeuver:](self, "updateManeuverIndex:distanceToManeuver:", index, [step distance]))
  {
    [(CarClusterNavigationController *)self sendManeuvers];

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationService:(id)service didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info
{
  aCopy = a;
  distanceCopy = distance;
  serviceCopy = service;
  routeID = [aCopy routeID];
  route = [serviceCopy route];

  uniqueRouteID = [route uniqueRouteID];
  v14 = [routeID isEqual:uniqueRouteID];

  if (v14)
  {
    v15 = [aCopy displayRemainingMinutesToEndOfLeg] * 60.0;
    etaDisplayFormatter = [(CarClusterNavigationController *)self etaDisplayFormatter];
    [etaDisplayFormatter setRemainingTimeToEndOfLeg:v15];

    [distanceCopy distanceRemainingToEndOfLeg];
    if ([(CarClusterNavigationController *)self updateRemainingDistance:?])
    {
      [(CarClusterNavigationController *)self sendRouteGuidance];
    }
  }
}

- (void)navigationService:(id)service didUpdateDistanceUntilSign:(double)sign timeUntilSign:(double)untilSign forStepIndex:(unint64_t)index
{
  v9 = [(CarClusterNavigationController *)self currentRoute:service];

  if (v9)
  {
    v10 = [(CarClusterNavigationController *)self updateManeuverIndex:index distanceToManeuver:sign];
    v11 = [(CarClusterNavigationController *)self updateRouteGuidanceState:1];
    if ((v10 & 1) != 0 || v11)
    {
      [(CarClusterNavigationController *)self sendManeuvers];

      [(CarClusterNavigationController *)self sendRouteGuidance];
    }
  }
}

- (void)navigationService:(id)service didUpdateProceedToRouteDistance:(double)distance displayString:(id)string closestStepIndex:(unint64_t)index
{
  if (index <= 1)
  {
    indexCopy = 0;
  }

  else
  {
    indexCopy = index;
  }

  if ([(CarClusterNavigationController *)self updateManeuverIndex:indexCopy distanceToManeuver:string, distance])
  {
    [(CarClusterNavigationController *)self sendManeuvers];

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationServiceEndGuidanceUpdate:(id)update
{
  if (![(CarClusterNavigationController *)self smartGuidanceActive])
  {
    return;
  }

  v18 = objc_opt_new();
  latestSignInfo = [(CarClusterNavigationController *)self latestSignInfo];
  primarySign = [latestSignInfo primarySign];

  if (primarySign)
  {
    latestSignInfo2 = [(CarClusterNavigationController *)self latestSignInfo];
    primarySign2 = [latestSignInfo2 primarySign];
    v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [primarySign2 composedGuidanceEventIndex]);
    [v18 addObject:v8];
  }

  latestSignInfo3 = [(CarClusterNavigationController *)self latestSignInfo];
  secondarySign = [latestSignInfo3 secondarySign];
  if (!secondarySign)
  {
    goto LABEL_7;
  }

  v11 = secondarySign;
  component = [(CarClusterNavigationController *)self component];
  guidanceManeuverCapacity = [component guidanceManeuverCapacity];

  if (guidanceManeuverCapacity >= 2)
  {
    latestSignInfo3 = [(CarClusterNavigationController *)self latestSignInfo];
    secondarySign2 = [latestSignInfo3 secondarySign];
    v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [secondarySign2 composedGuidanceEventIndex]);
    [v18 addObject:v15];

LABEL_7:
  }

  latestSignInfo4 = [(CarClusterNavigationController *)self latestSignInfo];
  [latestSignInfo4 primaryDistance_SIRI_USE_ONLY];
  v17 = [(CarClusterNavigationController *)self updateManeuverIndices:v18 distanceToManeuver:?];

  if (v17)
  {
    [(CarClusterNavigationController *)self sendManeuvers];
    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationService:(id)service updateSignsWithInfo:(id)info
{
  infoCopy = info;
  if ([(CarClusterNavigationController *)self smartGuidanceActive])
  {
    [(CarClusterNavigationController *)self setLatestSignInfo:infoCopy];
  }
}

- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location
{
  locationCopy = location;
  if ([locationCopy locationUnreliable])
  {
    currentACCNavRouteGuidance = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [currentACCNavRouteGuidance setCurrentRoadName:&stru_1016631F0];

    if (![(CarClusterNavigationController *)self smartGuidanceActive])
    {
      goto LABEL_7;
    }

    v6 = 9;
  }

  else
  {
    roadName = [locationCopy roadName];
    currentACCNavRouteGuidance2 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [currentACCNavRouteGuidance2 setCurrentRoadName:roadName];

    if (![(CarClusterNavigationController *)self smartGuidanceActive])
    {
      goto LABEL_7;
    }

    v6 = [(CarClusterNavigationController *)self _roadClassAtLocation:locationCopy];
  }

  currentACCNavRouteGuidance3 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  [currentACCNavRouteGuidance3 setManeuverRoadClass:v6];

LABEL_7:
  [(CarClusterNavigationController *)self sendRouteGuidance];
}

- (void)navigationService:(id)service didChangeNavigationState:(int)state
{
  if ([(CarClusterNavigationController *)self updateRouteGuidanceState:[CarClusterUpdate _accNavRouteGuidanceStateForGEONavigationState:*&state]])
  {

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationService:(id)service didFailWithError:(id)error
{
  if ([(CarClusterNavigationController *)self updateRouteGuidanceState:0, error])
  {

    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  if (toState)
  {
    if (toState == 4)
    {
      v12 = serviceCopy;
      currentACCNavRouteGuidance = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      v9 = currentACCNavRouteGuidance;
      v10 = 1;
    }

    else
    {
      if (toState != 5)
      {
        goto LABEL_9;
      }

      v12 = serviceCopy;
      currentACCNavRouteGuidance = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      v9 = currentACCNavRouteGuidance;
      v10 = 0;
    }

    [currentACCNavRouteGuidance setBeingShownInApp:v10];
  }

  else
  {
    v12 = serviceCopy;
    [(CarClusterNavigationController *)self updateRouteGuidanceState:0];
    etaDisplayFormatter = [(CarClusterNavigationController *)self etaDisplayFormatter];
    [etaDisplayFormatter setDelegate:0];

    [(CarClusterNavigationController *)self setEtaDisplayFormatter:0];
    [(CarClusterNavigationController *)self setCurrentRoute:0];
  }

  [(CarClusterNavigationController *)self sendRouteGuidance];
  serviceCopy = v12;
LABEL_9:
}

- (void)navigationService:(id)service willChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  if (MNNavigationServiceStateChangedToNavigating())
  {
    route = [serviceCopy route];

    if (route)
    {
      route2 = [serviceCopy route];
      [(CarClusterNavigationController *)self setCurrentRoute:route2];

      currentACCNavRouteGuidance = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      routeGuidanceState = [currentACCNavRouteGuidance routeGuidanceState];

      if (!routeGuidanceState)
      {
        [(CarClusterNavigationController *)self updateRouteGuidanceState:3];
      }

      goto LABEL_7;
    }
  }

  if (!toState && [(CarClusterNavigationController *)self updateRouteGuidanceState:0])
  {
LABEL_7:
    [(CarClusterNavigationController *)self sendRouteGuidance];
  }
}

- (int)_roadClassAtLocation:(id)location
{
  v8 = 0;
  v9 = 9;
  routeMatch = [location routeMatch];
  routeCoordinate = [routeMatch routeCoordinate];

  currentRoute = [(CarClusterNavigationController *)self currentRoute];
  [currentRoute getFormOfWay:&v8 roadClass:&v9 at:routeCoordinate];

  return v9;
}

- (void)_updateSecondaryManeuversIfNecessaryForGuidanceEvent:(id)event maneuver:(id)maneuver
{
  if (event && maneuver)
  {
    maneuverCopy = maneuver;
    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [event stepIndex]);
    indexedSteps = [(CarClusterNavigationController *)self indexedSteps];
    v8 = [indexedSteps objectForKeyedSubscript:v20];

    if (!v8)
    {
      v9 = objc_opt_new();
      indexedSteps2 = [(CarClusterNavigationController *)self indexedSteps];
      [indexedSteps2 setObject:v9 forKeyedSubscript:v20];
    }

    indexedSteps3 = [(CarClusterNavigationController *)self indexedSteps];
    v12 = [indexedSteps3 objectForKeyedSubscript:v20];
    [v12 addObject:maneuverCopy];

    indexedSteps4 = [(CarClusterNavigationController *)self indexedSteps];
    v14 = [indexedSteps4 objectForKeyedSubscript:v20];
    [v14 sortUsingComparator:&stru_1016563F8];

    indexedSteps5 = [(CarClusterNavigationController *)self indexedSteps];
    v16 = [indexedSteps5 objectForKeyedSubscript:v20];
    v17 = [v16 count];

    if (v17 >= 2)
    {
      indexedSteps6 = [(CarClusterNavigationController *)self indexedSteps];
      v19 = [indexedSteps6 objectForKeyedSubscript:v20];
      [v19 enumerateObjectsUsingBlock:&stru_101656438];
    }
  }
}

- (void)sendManeuvers
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  currentACCNavManeuvers = [(CarClusterNavigationController *)self currentACCNavManeuvers];

  if (!currentACCNavManeuvers)
  {
    v6 = objc_opt_new();
    [(CarClusterNavigationController *)self setCurrentACCNavManeuvers:v6];

    v7 = objc_opt_new();
    [(CarClusterNavigationController *)self setIndexedSteps:v7];
  }

  currentACCNavManeuvers2 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
  v9 = [currentACCNavManeuvers2 valueForKey:@"index"];

  currentACCNavManeuvers3 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
  firstObject = [currentACCNavManeuvers3 firstObject];

  currentACCNavRouteGuidance = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  firstIndex_RouteGuidanceManeuverCurrentList = [currentACCNavRouteGuidance firstIndex_RouteGuidanceManeuverCurrentList];

  if (firstIndex_RouteGuidanceManeuverCurrentList != -1)
  {
    index = [firstObject index];
    unsignedIntegerValue = [index unsignedIntegerValue];
    currentACCNavRouteGuidance2 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    if (unsignedIntegerValue == [currentACCNavRouteGuidance2 firstIndex_RouteGuidanceManeuverCurrentList])
    {
      firstObject2 = firstObject;
LABEL_8:

      firstObject = firstObject2;
    }

    else
    {
      while (1)
      {
        currentACCNavManeuvers4 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
        v19 = [currentACCNavManeuvers4 count];

        if (!v19)
        {
          break;
        }

        index2 = [firstObject index];
        [v3 addObject:index2];

        currentACCNavManeuvers5 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
        [currentACCNavManeuvers5 removeObjectAtIndex:0];

        currentACCNavManeuvers6 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
        firstObject2 = [currentACCNavManeuvers6 firstObject];

        index = [firstObject2 index];
        unsignedIntegerValue2 = [index unsignedIntegerValue];
        currentACCNavRouteGuidance2 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
        firstObject = firstObject2;
        if (unsignedIntegerValue2 == [currentACCNavRouteGuidance2 firstIndex_RouteGuidanceManeuverCurrentList])
        {
          goto LABEL_8;
        }
      }
    }
  }

  currentACCNavManeuvers7 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
  lastObject = [currentACCNavManeuvers7 lastObject];

  if (lastObject)
  {
    index3 = [lastObject index];
    firstIndex_RouteGuidanceManeuverCurrentList2 = [index3 unsignedIntegerValue] + 1;
  }

  else
  {
    index3 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    firstIndex_RouteGuidanceManeuverCurrentList2 = [index3 firstIndex_RouteGuidanceManeuverCurrentList];
  }

  smartGuidanceActive = [(CarClusterNavigationController *)self smartGuidanceActive];
  currentRoute = [(CarClusterNavigationController *)self currentRoute];
  v30 = currentRoute;
  v61 = v3;
  v59 = lastObject;
  if (smartGuidanceActive)
  {
    [currentRoute composedGuidanceEvents];
  }

  else
  {
    [currentRoute steps];
  }
  v31 = ;
  v60 = v9;

  currentACCNavManeuvers8 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
  v33 = [currentACCNavManeuvers8 count];
  component = [(CarClusterNavigationController *)self component];
  if (v33 >= [component guidanceManeuverCapacity])
  {
LABEL_23:
  }

  else
  {
    while (1)
    {
      v35 = [v31 count];

      if (v35 <= firstIndex_RouteGuidanceManeuverCurrentList2)
      {
        break;
      }

      if ([(CarClusterNavigationController *)self smartGuidanceActive])
      {
        v36 = [v31 objectAtIndexedSubscript:firstIndex_RouteGuidanceManeuverCurrentList2];
        currentRoute2 = [(CarClusterNavigationController *)self currentRoute];
        steps = [currentRoute2 steps];
        component3 = [steps objectAtIndexedSubscript:{objc_msgSend(v36, "stepIndex")}];

        component2 = [(CarClusterNavigationController *)self component];
        v41 = [CarClusterUpdateManeuverInfo maneuverUpdateWithGuidanceEvent:v36 routeStep:component3 component:component2];

        v42 = [NSNumber numberWithUnsignedInteger:firstIndex_RouteGuidanceManeuverCurrentList2];
        [v41 setIndex:v42];

        [(CarClusterNavigationController *)self _updateSecondaryManeuversIfNecessaryForGuidanceEvent:v36 maneuver:v41];
      }

      else
      {
        v36 = [v31 objectAtIndexedSubscript:firstIndex_RouteGuidanceManeuverCurrentList2];
        component3 = [(CarClusterNavigationController *)self component];
        v41 = [CarClusterUpdateManeuverInfo maneuverUpdateWithStep:v36 component:component3];
      }

      if (v41)
      {
        currentACCNavManeuvers9 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
        [currentACCNavManeuvers9 addObject:v41];
      }

      ++firstIndex_RouteGuidanceManeuverCurrentList2;

      currentACCNavManeuvers8 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
      v44 = [currentACCNavManeuvers8 count];
      component = [(CarClusterNavigationController *)self component];
      if (v44 >= [component guidanceManeuverCapacity])
      {
        goto LABEL_23;
      }
    }
  }

  currentACCNavManeuvers10 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
  v58 = [currentACCNavManeuvers10 valueForKey:@"index"];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  currentACCNavManeuvers11 = [(CarClusterNavigationController *)self currentACCNavManeuvers];
  v47 = [currentACCNavManeuvers11 countByEnumeratingWithState:&v62 objects:v74 count:16];
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
          objc_enumerationMutation(currentACCNavManeuvers11);
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
          index4 = [v51 index];
          [v4 addObject:index4];

          [(CarClusterNavigationController *)self sendManeuverUpdate:v51];
        }
      }

      v48 = [currentACCNavManeuvers11 countByEnumeratingWithState:&v62 objects:v74 count:16];
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
  currentACCNavLaneGuidances = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];

  if (!currentACCNavLaneGuidances)
  {
    v6 = objc_opt_new();
    [(CarClusterNavigationController *)self setCurrentACCNavLaneGuidances:v6];

    v7 = objc_opt_new();
    [(CarClusterNavigationController *)self setCurrentACCNavLaneGuidanceIndexes:v7];
  }

  currentACCNavLaneGuidances2 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
  v59 = [currentACCNavLaneGuidances2 valueForKey:@"index"];

  currentACCNavLaneGuidances3 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
  firstObject = [currentACCNavLaneGuidances3 firstObject];

  index = [firstObject index];
  if (index)
  {
    v12 = index;
    currentACCNavRouteGuidance = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    laneGuidanceCurrentIndex = [currentACCNavRouteGuidance laneGuidanceCurrentIndex];

    if (laneGuidanceCurrentIndex)
    {
      while (1)
      {
        index2 = [firstObject index];
        unsignedIntegerValue = [index2 unsignedIntegerValue];
        currentACCNavRouteGuidance2 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
        laneGuidanceCurrentIndex2 = [currentACCNavRouteGuidance2 laneGuidanceCurrentIndex];
        unsignedIntegerValue2 = [laneGuidanceCurrentIndex2 unsignedIntegerValue];

        if (unsignedIntegerValue == unsignedIntegerValue2)
        {
          break;
        }

        index3 = [firstObject index];
        [v3 addObject:index3];

        currentACCNavLaneGuidances4 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
        [currentACCNavLaneGuidances4 removeObjectAtIndex:0];

        currentACCNavLaneGuidanceIndexes = [(CarClusterNavigationController *)self currentACCNavLaneGuidanceIndexes];
        index4 = [firstObject index];
        [currentACCNavLaneGuidanceIndexes removeObject:index4];

        currentACCNavLaneGuidances5 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
        firstObject2 = [currentACCNavLaneGuidances5 firstObject];

        firstObject = firstObject2;
      }
    }
  }

  currentACCNavLaneGuidances6 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
  lastObject = [currentACCNavLaneGuidances6 lastObject];

  index5 = [lastObject index];
  unsignedIntegerValue3 = [index5 unsignedIntegerValue];

  v60 = v3;
  v57 = lastObject;
  if ([(CarClusterNavigationController *)self smartGuidanceActive])
  {
    currentRoute = [(CarClusterNavigationController *)self currentRoute];
    composedGuidanceEvents = [currentRoute composedGuidanceEvents];
  }

  else
  {
    composedGuidanceEvents = 0;
  }

  component = [(CarClusterNavigationController *)self component];
  laneGuidanceCapacity = [component laneGuidanceCapacity];

  currentACCNavLaneGuidances7 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
  if ([currentACCNavLaneGuidances7 count] >= laneGuidanceCapacity)
  {
LABEL_16:
  }

  else
  {
    v35 = unsignedIntegerValue3 + 1;
    while (1)
    {
      v36 = [composedGuidanceEvents count];

      if (v36 <= v35)
      {
        break;
      }

      v37 = [composedGuidanceEvents objectAtIndexedSubscript:v35];
      component2 = [(CarClusterNavigationController *)self component];
      v39 = [CarClusterUpdateLaneGuidance laneGuidanceUpdateWithComposedGuidanceEvent:v37 component:component2];

      v40 = [NSNumber numberWithUnsignedInteger:v35];
      [v39 setIndex:v40];

      if (v39)
      {
        currentACCNavLaneGuidances8 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
        [currentACCNavLaneGuidances8 addObject:v39];

        currentACCNavLaneGuidanceIndexes2 = [(CarClusterNavigationController *)self currentACCNavLaneGuidanceIndexes];
        index6 = [v39 index];
        [currentACCNavLaneGuidanceIndexes2 addObject:index6];
      }

      currentACCNavLaneGuidances7 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
      ++v35;
      if ([currentACCNavLaneGuidances7 count] >= laneGuidanceCapacity)
      {
        goto LABEL_16;
      }
    }
  }

  currentACCNavLaneGuidances9 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
  v61 = [currentACCNavLaneGuidances9 valueForKey:@"index"];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  currentACCNavLaneGuidances10 = [(CarClusterNavigationController *)self currentACCNavLaneGuidances];
  v46 = [currentACCNavLaneGuidances10 countByEnumeratingWithState:&v62 objects:v74 count:16];
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
          objc_enumerationMutation(currentACCNavLaneGuidances10);
        }

        v50 = *(*(&v62 + 1) + 8 * i);
        if (([v50 hasBeenSent] & 1) == 0)
        {
          [v50 setHasBeenSent:1];
          index7 = [v50 index];
          [v4 addObject:index7];

          [(CarClusterNavigationController *)self sendLaneGuidanceUpdate:v50];
        }
      }

      v47 = [currentACCNavLaneGuidances10 countByEnumeratingWithState:&v62 objects:v74 count:16];
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

- (void)sendLaneGuidanceUpdate:(id)update
{
  updateCopy = update;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    accessory = [(CarClusterNavigationController *)self accessory];
    accessoryUID = [accessory accessoryUID];
    component = [(CarClusterNavigationController *)self component];
    identifier = [component identifier];
    logFormat = [updateCopy logFormat];
    accNavFormat = [updateCopy accNavFormat];
    *buf = 138413058;
    v18 = accessoryUID;
    v19 = 2048;
    v20 = identifier;
    v21 = 2112;
    v22 = logFormat;
    v23 = 2112;
    v24 = accNavFormat;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "accessory=%@ component=%ld \nupdate=%@ \naccNavFormat=%@", buf, 0x2Au);
  }

  accessory2 = [(CarClusterNavigationController *)self accessory];
  v13 = [ACCNavigationInfoBuilder accNavigationLaneGuidanceInfoFrom:updateCopy];
  component2 = [(CarClusterNavigationController *)self component];
  v16 = component2;
  v15 = [NSArray arrayWithObjects:&v16 count:1];
  [accessory2 updateLaneGuidanceInfo:v13 componentList:v15];
}

- (void)sendManeuverUpdate:(id)update
{
  updateCopy = update;
  currentACCNavLaneGuidanceIndexes = [(CarClusterNavigationController *)self currentACCNavLaneGuidanceIndexes];
  index = [updateCopy index];
  v7 = [currentACCNavLaneGuidanceIndexes containsObject:index];

  if (v7)
  {
    index2 = [updateCopy index];
    [updateCopy setLinkedLaneGuidanceInfo:index2];
  }

  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    accessory = [(CarClusterNavigationController *)self accessory];
    accessoryUID = [accessory accessoryUID];
    component = [(CarClusterNavigationController *)self component];
    identifier = [component identifier];
    logFormat = [updateCopy logFormat];
    accNavFormat = [updateCopy accNavFormat];
    *buf = 138413058;
    v22 = accessoryUID;
    v23 = 2048;
    v24 = identifier;
    v25 = 2112;
    v26 = logFormat;
    v27 = 2112;
    v28 = accNavFormat;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "accessory=%@ component=%ld \nupdate=%@ \naccNavFormat=%@", buf, 0x2Au);
  }

  accessory2 = [(CarClusterNavigationController *)self accessory];
  v17 = [ACCNavigationInfoBuilder accNavigationManeuverUpdateInfoFrom:updateCopy];
  component2 = [(CarClusterNavigationController *)self component];
  v20 = component2;
  v19 = [NSArray arrayWithObjects:&v20 count:1];
  [accessory2 updateManeuverInfo:v17 componentList:v19];
}

- (void)sendRouteGuidance
{
  currentACCNavRouteGuidance = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    accessory = [(CarClusterNavigationController *)self accessory];
    accessoryUID = [accessory accessoryUID];
    component = [(CarClusterNavigationController *)self component];
    identifier = [component identifier];
    logFormat = [currentACCNavRouteGuidance logFormat];
    accNavFormat = [currentACCNavRouteGuidance accNavFormat];
    *buf = 138413058;
    v17 = accessoryUID;
    v18 = 2048;
    v19 = identifier;
    v20 = 2112;
    v21 = logFormat;
    v22 = 2112;
    v23 = accNavFormat;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "accessory=%@ component=%ld \nupdate=%@ \naccNavFormat=%@", buf, 0x2Au);
  }

  accessory2 = [(CarClusterNavigationController *)self accessory];
  v12 = [ACCNavigationInfoBuilder accNavigationRouteGuidanceUpdateInfoFrom:currentACCNavRouteGuidance];
  component2 = [(CarClusterNavigationController *)self component];
  v15 = component2;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [accessory2 updateRouteGuidanceInfo:v12 componentList:v14];
}

- (BOOL)updateRouteGuidanceState:(unsigned __int16)state
{
  stateCopy = state;
  if (state == 1)
  {
    currentRoute = [(CarClusterNavigationController *)self currentRoute];

    if (!currentRoute)
    {
      return 0;
    }
  }

  currentACCNavRouteGuidance = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  routeGuidanceState = [currentACCNavRouteGuidance routeGuidanceState];

  if (routeGuidanceState == stateCopy)
  {
    return 0;
  }

  currentACCNavRouteGuidance2 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  [currentACCNavRouteGuidance2 setRouteGuidanceState:stateCopy];

  v10 = stateCopy - 3;
  if (stateCopy >= 3)
  {
    currentACCNavRouteGuidance3 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [currentACCNavRouteGuidance3 setCurrentRoadName:&stru_1016631F0];

    if (stateCopy == 5)
    {
      [(CarClusterNavigationController *)self setCurrentRoute:0];
    }

    currentRoute2 = [(CarClusterNavigationController *)self currentRoute];

    if (!currentRoute2)
    {
      currentACCNavRouteGuidance4 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [currentACCNavRouteGuidance4 setRouteGuidanceManeuverCount:&off_1016EA040];

      currentACCNavRouteGuidance5 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [currentACCNavRouteGuidance5 setRouteGuidanceManeuverCurrentList:&off_1016EDAC0];

      currentACCNavRouteGuidance6 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [currentACCNavRouteGuidance6 setManeuverState:3];

      currentACCNavRouteGuidance7 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [currentACCNavRouteGuidance7 setLaneGuidanceShowing:0];

      currentACCNavRouteGuidance8 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [currentACCNavRouteGuidance8 setLaneGuidanceTotalCount:&off_1016EA058];

      currentACCNavRouteGuidance9 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [currentACCNavRouteGuidance9 setLaneGuidanceCurrentIndex:&off_1016EA058];

      currentACCNavRouteGuidance10 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [currentACCNavRouteGuidance10 setDestinationTimeZoneOffsetMinutes:&off_1016EA058];

      v20 = objc_opt_new();
      component = [(CarClusterNavigationController *)self component];
      [v20 setComponent:component];

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

- (BOOL)updateRemainingDistance:(double)distance
{
  currentACCNavRouteGuidance = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  distanceRemaining = [currentACCNavRouteGuidance distanceRemaining];
  [distanceRemaining doubleValue];
  v8 = v7 != distance && distance >= 0.0;

  if (v8)
  {
    currentACCNavRouteGuidance2 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [currentACCNavRouteGuidance2 updateRemainingDistance:distance];
  }

  return v8;
}

- (BOOL)updateRemainingTime:(double)time
{
  if (time < 0.0)
  {
    return 0;
  }

  currentACCNavRouteGuidance = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  routeGuidanceState = [currentACCNavRouteGuidance routeGuidanceState];

  if (!routeGuidanceState)
  {
    return 0;
  }

  etaDisplayFormatter = [(CarClusterNavigationController *)self etaDisplayFormatter];
  [etaDisplayFormatter displayRemainingTimeToEndOfLeg];
  v9 = v8;

  etaDisplayFormatter2 = [(CarClusterNavigationController *)self etaDisplayFormatter];
  displayETAToEndOfLeg = [etaDisplayFormatter2 displayETAToEndOfLeg];
  [displayETAToEndOfLeg timeIntervalSince1970];
  v13 = v12;

  currentACCNavRouteGuidance2 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  timeRemainingToDestination = [currentACCNavRouteGuidance2 timeRemainingToDestination];
  [timeRemainingToDestination doubleValue];
  v17 = v16;

  currentACCNavRouteGuidance3 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  estimatedTimeOfArrival = [currentACCNavRouteGuidance3 estimatedTimeOfArrival];
  [estimatedTimeOfArrival doubleValue];
  v21 = v20;

  if (v9 == v17 && v13 == v21)
  {
    return 0;
  }

  currentACCNavRouteGuidance4 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  [currentACCNavRouteGuidance4 updateRemainingTime:v9 estimatedTimeOfArrival:v13];

  return 1;
}

- (id)_destinationTimeZoneOffsetMinutes
{
  destination = [(GEOComposedRoute *)self->_currentRoute destination];
  timezone = [destination timezone];

  v4 = +[NSDate date];
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [timezone secondsFromGMTForDate:v4] / 60);

  return v5;
}

- (BOOL)updateManeuverIndices:(id)indices distanceToManeuver:(double)maneuver
{
  indicesCopy = indices;
  currentACCNavRouteGuidance = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  routeGuidanceManeuverCurrentList = [currentACCNavRouteGuidance routeGuidanceManeuverCurrentList];
  if (routeGuidanceManeuverCurrentList)
  {
    v9 = routeGuidanceManeuverCurrentList;
    currentACCNavRouteGuidance2 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    routeGuidanceManeuverCurrentList2 = [currentACCNavRouteGuidance2 routeGuidanceManeuverCurrentList];
    v12 = [MNComparison isValue:routeGuidanceManeuverCurrentList2 equalTo:indicesCopy];

    if (v12)
    {
      v13 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  currentACCNavRouteGuidance3 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  [currentACCNavRouteGuidance3 setRouteGuidanceManeuverCurrentList:indicesCopy];

  v13 = 1;
LABEL_6:
  currentACCNavRouteGuidance4 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  distanceRemainingToNextManeuver = [currentACCNavRouteGuidance4 distanceRemainingToNextManeuver];
  [distanceRemainingToNextManeuver doubleValue];
  v18 = v17;

  if (v18 != maneuver)
  {
    v19 = [NSNumber numberWithDouble:maneuver];
    currentACCNavRouteGuidance5 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [currentACCNavRouteGuidance5 setDistanceRemainingToNextManeuver:v19];

    v27 = 0;
    v26 = 0;
    [CarClusterUpdateRouteGuidance getStringValue:&v26 displayUnits:&v27 forRemainingDistance:maneuver];
    v21 = v26;
    currentACCNavRouteGuidance6 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [currentACCNavRouteGuidance6 setDistanceRemainingToNextManeuverDisplayString:v21];

    v23 = v27;
    currentACCNavRouteGuidance7 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
    [currentACCNavRouteGuidance7 setDistanceRemainingToNextManeuverDisplayUnits:v23];

    v13 = 1;
  }

  return v13;
}

- (BOOL)updateManeuverIndex:(unint64_t)index distanceToManeuver:(double)maneuver
{
  v6 = [NSNumber numberWithUnsignedInteger:index];
  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];
  LOBYTE(self) = [(CarClusterNavigationController *)self updateManeuverIndices:v7 distanceToManeuver:maneuver];

  return self;
}

- (void)setCurrentRoute:(id)route
{
  routeCopy = route;
  if (self->_currentRoute != routeCopy)
  {
    v35 = routeCopy;
    objc_storeStrong(&self->_currentRoute, route);
    [(CarClusterNavigationController *)self setCurrentACCNavManeuvers:0];
    [(CarClusterNavigationController *)self setCurrentACCNavLaneGuidances:0];
    [(CarClusterNavigationController *)self setEtaDisplayFormatter:0];
    [(CarClusterNavigationController *)self setIndexedSteps:0];
    if (v35)
    {
      currentACCNavRouteGuidance = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      routeGuidanceState = [currentACCNavRouteGuidance routeGuidanceState];

      if (!routeGuidanceState)
      {
        [(CarClusterNavigationController *)self updateRouteGuidanceState:3];
      }

      v8 = [MNETADisplayFormatter alloc];
      v9 = +[MNNavigationService sharedService];
      upcomingStop = [v9 upcomingStop];
      timezone = [upcomingStop timezone];
      v12 = [v8 initWithTimeZone:timezone];
      [(CarClusterNavigationController *)self setEtaDisplayFormatter:v12];

      etaDisplayFormatter = [(CarClusterNavigationController *)self etaDisplayFormatter];
      [etaDisplayFormatter setDelegate:self];

      smartGuidanceActive = [(CarClusterNavigationController *)self smartGuidanceActive];
      currentACCNavRouteGuidance2 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [currentACCNavRouteGuidance2 setSmartGuidanceActive:smartGuidanceActive];

      composedGuidanceEventsWithSignGuidance = [(GEOComposedRoute *)v35 composedGuidanceEventsWithSignGuidance];
      v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [composedGuidanceEventsWithSignGuidance count]);
      currentACCNavRouteGuidance3 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [currentACCNavRouteGuidance3 setRouteGuidanceManeuverCount:v17];

      composedGuidanceEvents = [(GEOComposedRoute *)v35 composedGuidanceEvents];
      v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [composedGuidanceEvents count]);
      currentACCNavRouteGuidance4 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [currentACCNavRouteGuidance4 setLaneGuidanceTotalCount:v20];

      currentACCNavRouteGuidance5 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [currentACCNavRouteGuidance5 setLaneGuidanceShowing:0];

      currentACCNavRouteGuidance6 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [currentACCNavRouteGuidance6 setLaneGuidanceCurrentIndex:0];

      _destinationTimeZoneOffsetMinutes = [(CarClusterNavigationController *)self _destinationTimeZoneOffsetMinutes];
      currentACCNavRouteGuidance7 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [currentACCNavRouteGuidance7 setDestinationTimeZoneOffsetMinutes:_destinationTimeZoneOffsetMinutes];

      v26 = +[MNNavigationService sharedService];
      v27 = [v26 displayETAInfoForRoute:v35];

      displayRemainingMinutesToEndOfLeg = [v27 displayRemainingMinutesToEndOfLeg];
      etaDisplayFormatter2 = [(CarClusterNavigationController *)self etaDisplayFormatter];
      [etaDisplayFormatter2 setRemainingTimeToEndOfLeg:displayRemainingMinutesToEndOfLeg];

      v30 = +[MNNavigationService sharedService];
      v31 = [v30 remainingDistanceInfoForRoute:v35];

      [v31 distanceRemainingToEndOfLeg];
      [(CarClusterNavigationController *)self updateRemainingDistance:?];
      v32 = +[MNNavigationService sharedService];
      destinationName = [v32 destinationName];
      currentACCNavRouteGuidance8 = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
      [currentACCNavRouteGuidance8 setDestinationName:destinationName];
    }

    [(CarClusterNavigationController *)self sendLaneGuidance];
    [(CarClusterNavigationController *)self sendManeuvers];
    [(CarClusterNavigationController *)self sendRouteGuidance];
    routeCopy = v35;
  }
}

- (BOOL)smartGuidanceActive
{
  composedGuidanceEvents = [(GEOComposedRoute *)self->_currentRoute composedGuidanceEvents];
  v3 = [composedGuidanceEvents count] != 0;

  return v3;
}

- (void)setRouteGuidanceBeingShownInApp:(BOOL)app
{
  appCopy = app;
  currentACCNavRouteGuidance = [(CarClusterNavigationController *)self currentACCNavRouteGuidance];
  [currentACCNavRouteGuidance setBeingShownInApp:appCopy];

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

- (CarClusterNavigationController)initWithAccessory:(id)accessory component:(id)component
{
  accessoryCopy = accessory;
  componentCopy = component;
  v15.receiver = self;
  v15.super_class = CarClusterNavigationController;
  v9 = [(CarClusterNavigationController *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessory, accessory);
    objc_storeStrong(&v10->_component, component);
    v11 = objc_alloc_init(CarClusterUpdateRouteGuidance);
    currentACCNavRouteGuidance = v10->_currentACCNavRouteGuidance;
    v10->_currentACCNavRouteGuidance = v11;

    [(CarClusterUpdate *)v10->_currentACCNavRouteGuidance setComponent:componentCopy];
    v13 = +[MNNavigationService sharedService];
    [v13 registerObserver:v10];
  }

  return v10;
}

@end