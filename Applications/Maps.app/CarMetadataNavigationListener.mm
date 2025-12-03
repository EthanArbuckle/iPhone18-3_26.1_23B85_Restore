@interface CarMetadataNavigationListener
- (CarMetadataNavigationListener)initWithDelegate:(id)delegate;
- (double)_angleForGeoLaneDirection:(int)direction;
- (id)_attributedInstructionVariantsForGuidanceEvent:(id)event route:(id)route;
- (id)_cpLaneGuidanceForGuidanceEvent:(id)event;
- (id)_cpManeuverForGuidanceEvent:(id)event route:(id)route;
- (id)_cpRouteLineForRoute:(id)route;
- (id)_cpTravelEstimatesForGuidanceEvent:(id)event route:(id)route;
- (id)_instructionVariantsForGuidanceEvent:(id)event route:(id)route;
- (id)_lightMapItemForWaypoint:(id)waypoint;
- (id)_measurementForDistanceInMeters:(double)meters;
- (id)_preconditioningInfo;
- (id)_symbolImageForGuidanceEvent:(id)event;
- (int64_t)_maneuverStateForLocation:(id)location distanceToManeuver:(double)maneuver;
- (unint64_t)_cpConnectorTypeForConnectorType:(int)type;
- (unsigned)_cpRerouteReasonForRerouteReason:(unint64_t)reason;
- (void)_carPlayConnectionDidChange;
- (void)_startRouteGuidanceUpdatesWithRoute:(id)route;
- (void)_stopRouteGuidanceUpdates;
- (void)_updateBeingShownInApp;
- (void)_updateCarPlayNavigationState:(id)state;
- (void)_updateForNewRoute:(id)route;
- (void)_updatePreconditioningInfo;
- (void)_updateRouteGuidance:(id)guidance;
- (void)_updateStringArgument:(id)argument route:(id)route guidanceEvent:(id)event;
- (void)dealloc;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didChangeNavigationState:(int)state;
- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason;
- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic;
- (void)navigationService:(id)service didUpdateETAResponse:(id)response forRoute:(id)route;
- (void)navigationService:(id)service didUpdateTargetLegIndex:(unint64_t)index;
- (void)navigationService:(id)service hideLaneDirectionsForId:(id)id;
- (void)navigationService:(id)service showLaneDirections:(id)directions;
- (void)navigationService:(id)service updateSignsWithInfo:(id)info;
- (void)navigationServiceDidFinishLocationUpdate:(id)update;
@end

@implementation CarMetadataNavigationListener

- (id)_preconditioningInfo
{
  v3 = +[MNNavigationService sharedService];
  route = [v3 route];
  v5 = sub_10007DD1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    isEVRoute = [route isEVRoute];
    v30 = 1024;
    targetLegIndex = [v3 targetLegIndex];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating preconditioning info. Is EV route: %d, target leg index: %d", buf, 0xEu);
  }

  if ([route isEVRoute])
  {
    targetLegIndex2 = [v3 targetLegIndex];
    legs = [route legs];
    v8 = [legs count];

    if (targetLegIndex2 >= v8)
    {
      v10 = sub_10007DD1C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        targetLegIndex3 = [v3 targetLegIndex];
        legs2 = [route legs];
        v25 = [legs2 count];
        *buf = 67109376;
        isEVRoute = targetLegIndex3;
        v30 = 1024;
        targetLegIndex = v25;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Target leg index (%d) on navigation service is out of bounds of current route (%d legs).", buf, 0xEu);
      }

      v11 = 0;
    }

    else
    {
      legs3 = [route legs];
      v10 = [legs3 objectAtIndexedSubscript:{objc_msgSend(v3, "targetLegIndex")}];

      v11 = objc_opt_new();
      v12 = [route batteryLevelForStepIndex:{-[NSObject endStepIndex](v10, "endStepIndex")}];
      [v11 setArrivalBatteryLevel:v12];

      steps = [route steps];
      lastObject = [steps lastObject];
      v15 = [route batteryLevelForStepIndex:{objc_msgSend(lastObject, "stepIndex")}];
      [v11 setFinalWaypointBatteryLevel:v15];

      nextLeg = [v10 nextLeg];
      v17 = nextLeg;
      if (nextLeg)
      {
        v18 = [route batteryLevelForStepIndex:{objc_msgSend(nextLeg, "startStepIndex")}];
        [v11 setDepartureBatteryLevel:v18];
      }

      mutableData = [route mutableData];
      v20 = [mutableData chargingStationInfoForLegIndex:{-[NSObject legIndex](v10, "legIndex")}];

      supportedChargerPlugs = [v20 supportedChargerPlugs];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100811F0C;
      v27[3] = &unk_10162B358;
      v27[4] = self;
      v22 = sub_100021DB0(supportedChargerPlugs, v27);
      [v11 setConnectors:v22];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_updatePreconditioningInfo
{
  _preconditioningInfo = [(CarMetadataNavigationListener *)self _preconditioningInfo];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationListener:self didUpdatePreconditioningInfo:_preconditioningInfo];
}

- (void)navigationService:(id)service didUpdateTargetLegIndex:(unint64_t)index
{
  if (self->_isConnectedToCarPlay)
  {
    [(CarMetadataNavigationListener *)self _updatePreconditioningInfo:service];
  }
}

- (void)navigationService:(id)service didUpdateETAResponse:(id)response forRoute:(id)route
{
  if (self->_isConnectedToCarPlay)
  {
    [(CarMetadataNavigationListener *)self _updatePreconditioningInfo:service];
  }
}

- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic
{
  serviceCopy = service;
  routeCopy = route;
  trafficCopy = traffic;
  if (self->_isConnectedToCarPlay)
  {
    if (type)
    {
      [(CarMetadataNavigationListener *)self _stopRouteGuidanceUpdates];
    }

    else if (self->_cpRouteGuidance)
    {
      [(CarMetadataNavigationListener *)self _updateForNewRoute:routeCopy];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained navigationListener:self didRerouteWithReason:0 routeInfo:self->_cpRouteInfo];

      [(CarMetadataNavigationListener *)self _updatePreconditioningInfo];
    }

    else
    {
      [(CarMetadataNavigationListener *)self _startRouteGuidanceUpdatesWithRoute:routeCopy];
    }
  }
}

- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason
{
  if (self->_isConnectedToCarPlay)
  {
    [(CarMetadataNavigationListener *)self _updateForNewRoute:reroute];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained navigationListener:self didRerouteWithReason:-[CarMetadataNavigationListener _cpRerouteReasonForRerouteReason:](self routeInfo:{"_cpRerouteReasonForRerouteReason:", reason), self->_cpRouteInfo}];

    [(CarMetadataNavigationListener *)self _updatePreconditioningInfo];
  }
}

- (void)navigationService:(id)service hideLaneDirectionsForId:(id)id
{
  if (self->_isConnectedToCarPlay)
  {
    activeLaneGuidanceEvent = self->_activeLaneGuidanceEvent;
    self->_activeLaneGuidanceEvent = 0;
  }
}

- (void)navigationService:(id)service showLaneDirections:(id)directions
{
  if (self->_isConnectedToCarPlay)
  {
    uniqueID = [directions uniqueID];
    v8 = uniqueID;
    if (uniqueID)
    {
      uniqueID = [(NSDictionary *)self->_guidanceEventLookup objectForKeyedSubscript:uniqueID];
    }

    activeLaneGuidanceEvent = self->_activeLaneGuidanceEvent;
    self->_activeLaneGuidanceEvent = uniqueID;
  }
}

- (void)navigationService:(id)service updateSignsWithInfo:(id)info
{
  infoCopy = info;
  if (self->_isConnectedToCarPlay)
  {
    v21 = infoCopy;
    v6 = +[NSMutableArray array];
    primarySign = [v21 primarySign];
    uniqueID = [primarySign uniqueID];

    if (uniqueID)
    {
      v9 = [(NSDictionary *)self->_guidanceEventLookup objectForKeyedSubscript:uniqueID];
      if (v9)
      {
        [v6 addObject:v9];
      }
    }

    secondarySign = [v21 secondarySign];
    uniqueID2 = [secondarySign uniqueID];

    if (uniqueID2)
    {
      v12 = [(NSDictionary *)self->_guidanceEventLookup objectForKeyedSubscript:uniqueID2];
      if (v12)
      {
        [v6 addObject:v12];
      }
    }

    objc_storeStrong(&self->_activeManeuverGuidanceEvents, v6);
    primarySign2 = [v21 primarySign];
    [primarySign2 remainingDistance];
    v14 = [NSMeasurement _geo_distanceMeasurementForMeters:?];
    remainingDistanceToManeuver = self->_remainingDistanceToManeuver;
    self->_remainingDistanceToManeuver = v14;

    primarySign3 = [v21 primarySign];
    displayRemainingDistance = [primarySign3 displayRemainingDistance];
    v18 = displayRemainingDistance;
    if (displayRemainingDistance)
    {
      v19 = displayRemainingDistance;
    }

    else
    {
      v19 = [NSMeasurement _geo_distanceMeasurementForMeters:0.0];
    }

    displayRemainingDistanceToManeuver = self->_displayRemainingDistanceToManeuver;
    self->_displayRemainingDistanceToManeuver = v19;

    infoCopy = v21;
  }
}

- (void)navigationServiceDidFinishLocationUpdate:(id)update
{
  updateCopy = update;
  if (self->_isConnectedToCarPlay)
  {
    cpRouteGuidance = self->_cpRouteGuidance;
    if (cpRouteGuidance)
    {
      [(CPRouteGuidance *)cpRouteGuidance setGuidanceState:self->_cpGuidanceState];
      lastLocation = [updateCopy lastLocation];
      roadName = [lastLocation roadName];
      if (roadName)
      {
        roadName2 = [lastLocation roadName];
        v64 = roadName2;
        v9 = [NSArray arrayWithObjects:&v64 count:1];
        [(CPRouteGuidance *)self->_cpRouteGuidance setCurrentRoadNameVariants:v9];
      }

      else
      {
        [(CPRouteGuidance *)self->_cpRouteGuidance setCurrentRoadNameVariants:0];
      }

      route = [updateCopy route];
      targetLegIndex = [updateCopy targetLegIndex];
      legs = [route legs];
      v13 = [legs count];

      if (targetLegIndex >= v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 0;
        do
        {
          legs2 = [route legs];
          v16 = [legs2 objectAtIndexedSubscript:targetLegIndex];

          destination = [v16 destination];
          navDisplayName = [destination navDisplayName];

          if (navDisplayName)
          {
            if (!v14)
            {
              v14 = +[NSMutableArray array];
            }

            [v14 addObject:navDisplayName];
          }

          ++targetLegIndex;
          legs3 = [route legs];
          v20 = [legs3 count];
        }

        while (targetLegIndex < v20);
      }

      [(CPRouteGuidance *)self->_cpRouteGuidance setDestinationNameVariants:v14];
      displayEtaInfo = [updateCopy displayEtaInfo];
      legInfos = [displayEtaInfo legInfos];
      firstObject = [legInfos firstObject];

      -[CPRouteGuidance setTimeRemaining:](self->_cpRouteGuidance, "setTimeRemaining:", (60 * [firstObject remainingMinutes]));
      v24 = [firstObject eta];
      [(CPRouteGuidance *)self->_cpRouteGuidance setEstimatedTimeOfArrival:v24];

      v61 = firstObject;
      timeZone = [firstObject timeZone];
      secondsFromGMT = [timeZone secondsFromGMT];
      [(CPRouteGuidance *)self->_cpRouteGuidance setDestinationTimeZoneOffsetMinutes:(((34953 * secondsFromGMT) >> 16) >> 5) + (((secondsFromGMT + ((-30583 * secondsFromGMT) >> 16)) & 0x8000) >> 15)];

      remainingDistanceInfo = [updateCopy remainingDistanceInfo];
      [remainingDistanceInfo distanceRemainingToEndOfLeg];
      v29 = v28;

      v30 = [NSMeasurement alloc];
      v31 = +[NSUnitLength meters];
      v32 = [v30 initWithDoubleValue:v31 unit:v29];
      [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemaining:v32];

      v33 = [(CarMetadataNavigationListener *)self _measurementForDistanceInMeters:v29];
      [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemainingDisplay:v33];

      firstObject2 = [(NSArray *)self->_activeManeuverGuidanceEvents firstObject];
      if (firstObject2)
      {
        if ([updateCopy navigationState] == 2)
        {
          [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemainingToNextManeuver:self->_remainingDistanceToManeuver];
          [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemainingToNextManeuverDisplay:self->_displayRemainingDistanceToManeuver];
          [(NSMeasurement *)self->_remainingDistanceToManeuver doubleValue];
          [(CPRouteGuidance *)self->_cpRouteGuidance setManeuverState:[(CarMetadataNavigationListener *)self _maneuverStateForLocation:lastLocation distanceToManeuver:?]];
        }

        else if ([updateCopy navigationState] == 1)
        {
          routeMatch = [lastLocation routeMatch];
          [routeMatch distanceFromRoute];
          v36 = [NSMeasurement _geo_distanceMeasurementForMeters:?];

          [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemainingToNextManeuver:v36];
          v37 = GEORoundedDistanceMeasurement();
          [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemainingToNextManeuverDisplay:v37];
        }
      }

      v62 = lastLocation;
      v38 = [(NSArray *)self->_activeManeuverGuidanceEvents _geo_map:&stru_10162B398];
      [(CPRouteGuidance *)self->_cpRouteGuidance setCurrentManeuverIndexes:v38];
      activeManeuverGuidanceEvents = self->_activeManeuverGuidanceEvents;
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_100811BD0;
      v63[3] = &unk_10162B3C0;
      v63[4] = self;
      v40 = [(NSArray *)activeManeuverGuidanceEvents _geo_map:v63];
      [(CPRouteGuidance *)self->_cpRouteGuidance setCurrentManeuvers:v40];
      activeLaneGuidanceEvent = self->_activeLaneGuidanceEvent;
      if (!activeLaneGuidanceEvent || (-[_CarMetadataGuidanceEventPair cpIndex](activeLaneGuidanceEvent, "cpIndex"), v42 = objc_claimAutoreleasedReturnValue(), v59 = [v42 unsignedIntegerValue], -[CPRouteInfo laneGuidances](self->_cpRouteInfo, "laneGuidances"), v43 = v40, v44 = updateCopy, v45 = v38, v46 = firstObject2, v47 = objc_claimAutoreleasedReturnValue(), v60 = displayEtaInfo, v48 = objc_msgSend(v47, "count"), v47, firstObject2 = v46, v38 = v45, updateCopy = v44, v40 = v43, v42, v49 = v59 >= v48, displayEtaInfo = v60, v49))
      {
        [(CPRouteGuidance *)self->_cpRouteGuidance setLaneGuidanceShowing:0];
      }

      else
      {
        [(CPRouteGuidance *)self->_cpRouteGuidance setLaneGuidanceShowing:1];
        cpIndex = [(_CarMetadataGuidanceEventPair *)self->_activeLaneGuidanceEvent cpIndex];
        -[CPRouteGuidance setCurrentLaneGuidanceIndex:](self->_cpRouteGuidance, "setCurrentLaneGuidanceIndex:", [cpIndex intValue]);

        laneGuidances = [(CPRouteInfo *)self->_cpRouteInfo laneGuidances];
        cpIndex2 = [(_CarMetadataGuidanceEventPair *)self->_activeLaneGuidanceEvent cpIndex];
        v53 = [laneGuidances objectAtIndexedSubscript:{objc_msgSend(cpIndex2, "unsignedIntegerValue")}];
        [(CPRouteGuidance *)self->_cpRouteGuidance setCurrentLaneGuidance:v53];

        displayEtaInfo = v60;
      }

      maneuvers = [(CPRouteInfo *)self->_cpRouteInfo maneuvers];
      -[CPRouteGuidance setTotalManeuverCount:](self->_cpRouteGuidance, "setTotalManeuverCount:", [maneuvers count]);

      laneGuidances2 = [(CPRouteInfo *)self->_cpRouteInfo laneGuidances];
      -[CPRouteGuidance setTotalLaneGuidanceCount:](self->_cpRouteGuidance, "setTotalLaneGuidanceCount:", [laneGuidances2 count]);

      nextWaypoint = [updateCopy nextWaypoint];
      if ([route isEVRoute] && (objc_msgSend(nextWaypoint, "chargingInfo"), v57 = objc_claimAutoreleasedReturnValue(), v57, v57))
      {
        if ([nextWaypoint isServerProvidedWaypoint])
        {
          v58 = 3;
        }

        else
        {
          v58 = 2;
        }
      }

      else
      {
        v58 = 0;
      }

      [(CPRouteGuidance *)self->_cpRouteGuidance setStopType:v58];
      [(CarMetadataNavigationListener *)self _updateRouteGuidance:self->_cpRouteGuidance];
    }
  }
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  if (!self->_isConnectedToCarPlay)
  {
    goto LABEL_10;
  }

  cpRouteGuidance = self->_cpRouteGuidance;
  if (![(CarMetadataNavigationListener *)self _isTurnByTurn:toState])
  {
    if (!cpRouteGuidance)
    {
      goto LABEL_10;
    }

LABEL_9:
    [(CarMetadataNavigationListener *)self _stopRouteGuidanceUpdates];
    goto LABEL_10;
  }

  navigationTransportType = [serviceCopy navigationTransportType];
  if ((cpRouteGuidance == 0) == (navigationTransportType == 0))
  {
    if (!navigationTransportType)
    {
      route = [serviceCopy route];
      [(CarMetadataNavigationListener *)self _startRouteGuidanceUpdatesWithRoute:route];

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!navigationTransportType)
  {
    [(CarMetadataNavigationListener *)self _updateBeingShownInApp];
  }

LABEL_10:
}

- (void)navigationService:(id)service didChangeNavigationState:(int)state
{
  if (self->_isConnectedToCarPlay)
  {
    [(CarMetadataNavigationListener *)self _updateCarPlayNavigationState:service, *&state];
  }
}

- (void)_carPlayConnectionDidChange
{
  v3 = +[CarDisplayController sharedInstance];
  screen = [v3 screen];
  self->_isConnectedToCarPlay = screen != 0;

  if (self->_isConnectedToCarPlay)
  {
    v8 = +[MNNavigationService sharedService];
    [(CarMetadataNavigationListener *)self _updateCarPlayNavigationState:v8];
    if (-[CarMetadataNavigationListener _isTurnByTurn:](self, "_isTurnByTurn:", [v8 state]))
    {
      v5 = [v8 navigationTransportType] == 0;
    }

    else
    {
      v5 = 0;
    }

    route = [v8 route];
    v7 = route;
    if (v5 && route)
    {
      [(CarMetadataNavigationListener *)self _startRouteGuidanceUpdatesWithRoute:route];
    }

    else
    {
      [(CarMetadataNavigationListener *)self _stopRouteGuidanceUpdates];
    }
  }
}

- (void)_updateCarPlayNavigationState:(id)state
{
  v4 = [state navigationState] - 1;
  if (v4 <= 6 && ((0x73u >> v4) & 1) != 0)
  {
    self->_cpGuidanceState = 0x2020501010106uLL >> (8 * v4);
  }
}

- (unsigned)_cpRerouteReasonForRerouteReason:(unint64_t)reason
{
  if (reason - 1 > 0xF)
  {
    return 0;
  }

  else
  {
    return byte_101212C10[reason - 1];
  }
}

- (unint64_t)_cpConnectorTypeForConnectorType:(int)type
{
  if (type > 0xA)
  {
    return 3;
  }

  else
  {
    return qword_1012135E0[type];
  }
}

- (void)_updateStringArgument:(id)argument route:(id)route guidanceEvent:(id)event
{
  argumentCopy = argument;
  routeCopy = route;
  eventCopy = event;
  if ([argumentCopy type] == 10)
  {
    v9 = [routeCopy legIndexForStepIndex:{objc_msgSend(eventCopy, "stepIndex")}];
    legs = [routeCopy legs];
    v11 = [legs count];

    if (v9 < v11)
    {
      legs2 = [routeCopy legs];
      v13 = [legs2 objectAtIndexedSubscript:v9];

      token = [argumentCopy token];
      v15 = [token isEqualToString:@"{Name}"];

      if (v15)
      {
        destination = [v13 destination];
        navDisplayName = [destination navDisplayName];
      }

      else
      {
        token2 = [argumentCopy token];
        v19 = [token2 isEqualToString:@"{Address}"];

        if (!v19)
        {
LABEL_8:

          goto LABEL_9;
        }

        destination = [v13 destination];
        navDisplayName = [destination navDisplayAddress];
      }

      v20 = navDisplayName;
      stringFormat = [argumentCopy stringFormat];
      [stringFormat setOverrideValue:v20];

      goto LABEL_8;
    }
  }

LABEL_9:
}

- (int64_t)_maneuverStateForLocation:(id)location distanceToManeuver:(double)maneuver
{
  locationCopy = location;
  if (qword_10195D900 != -1)
  {
    dispatch_once(&qword_10195D900, &stru_10162B330);
  }

  routeMatch = [locationCopy routeMatch];
  road = [routeMatch road];
  roadClass = [road roadClass];

  if (roadClass - 2 > 6)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_101214FD8[roadClass - 2];
  }

  v10 = +[NSLocale currentLocale];
  v11 = [v10 objectForKey:NSLocaleMeasurementSystem];

  v12 = [qword_10195D8F8 objectForKeyedSubscript:v11];
  if (v12)
  {
    v13 = [NSNumber numberWithInteger:v9];
    v14 = [v12 objectForKeyedSubscript:v13];

    if (v14)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = v14;
      unsignedCharValue = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (unsignedCharValue)
      {
        v17 = *v26;
        while (2)
        {
          for (i = 0; i != unsignedCharValue; ++i)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v25 + 1) + 8 * i);
            if ([v19 count] == 2)
            {
              v20 = [v19 objectAtIndexedSubscript:0];
              [v20 doubleValue];
              v22 = v21;

              if (v22 > maneuver)
              {
                v23 = [v19 objectAtIndexedSubscript:1];
                unsignedCharValue = [v23 unsignedCharValue];

                goto LABEL_19;
              }
            }
          }

          unsignedCharValue = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (unsignedCharValue)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:
    }

    else
    {
      unsignedCharValue = 0;
    }
  }

  else
  {
    unsignedCharValue = 0;
  }

  return unsignedCharValue;
}

- (double)_angleForGeoLaneDirection:(int)direction
{
  result = 0.0;
  if (direction > 31)
  {
    if (direction > 127)
    {
      if (direction == 256)
      {
        return 180.0;
      }

      else if (direction == 128)
      {
        return -45.0;
      }
    }

    else if (direction == 32)
    {
      return -135.0;
    }

    else if (direction == 64)
    {
      return -90.0;
    }
  }

  else if (direction > 7)
  {
    if (direction == 8)
    {
      return 135.0;
    }

    else if (direction == 16)
    {
      return -180.0;
    }
  }

  else if (direction == 2)
  {
    return 45.0;
  }

  else if (direction == 4)
  {
    return 90.0;
  }

  return result;
}

- (id)_cpLaneGuidanceForGuidanceEvent:(id)event
{
  eventCopy = event;
  lanes = [eventCopy lanes];
  v6 = [lanes count];

  if (v6)
  {
    lanes2 = [eventCopy lanes];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100812788;
    v11[3] = &unk_10162B310;
    v11[4] = self;
    v8 = [lanes2 _geo_map:v11];

    v9 = objc_opt_new();
    [v9 setLanes:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_symbolImageForGuidanceEvent:(id)event
{
  memset(__src, 0, sizeof(__src));
  eventCopy = event;
  MKDefaultGuidanceManeuverMetrics();
  [eventCopy maneuverType];
  [eventCopy drivingSide];

  v4 = +[UIColor whiteColor];
  v5 = +[UIColor lightGrayColor];
  memcpy(v11, __src, sizeof(v11));
  v6 = MKManeuverArrowImage();

  v7 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
  configuration = [v6 configuration];
  v9 = [configuration configurationWithTraitCollection:v7];

  return v6;
}

- (id)_attributedInstructionVariantsForGuidanceEvent:(id)event route:(id)route
{
  eventCopy = event;
  routeCopy = route;
  secondarySignStrings = [eventCopy secondarySignStrings];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100812BCC;
  v13[3] = &unk_1016312D0;
  v13[4] = self;
  v14 = routeCopy;
  v15 = eventCopy;
  v9 = eventCopy;
  v10 = routeCopy;
  v11 = [secondarySignStrings _geo_map:v13];

  return v11;
}

- (id)_instructionVariantsForGuidanceEvent:(id)event route:(id)route
{
  eventCopy = event;
  routeCopy = route;
  secondarySignStrings = [eventCopy secondarySignStrings];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100812E64;
  v13[3] = &unk_10162B2C0;
  v13[4] = self;
  v14 = routeCopy;
  v15 = eventCopy;
  v9 = eventCopy;
  v10 = routeCopy;
  v11 = [secondarySignStrings _geo_map:v13];

  return v11;
}

- (id)_cpTravelEstimatesForGuidanceEvent:(id)event route:(id)route
{
  eventCopy = event;
  routeCopy = route;
  [routeCopy distanceBetweenRouteCoordinate:objc_msgSend(eventCopy andRouteCoordinate:{"startValidRouteCoordinate"), objc_msgSend(eventCopy, "endValidRouteCoordinate")}];
  v7 = GEORoundedMeasurementForDistance();
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  startValidRouteCoordinate = [eventCopy startValidRouteCoordinate];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1008130E8;
  v14[3] = &unk_10162B270;
  v9 = eventCopy;
  v15 = v9;
  v10 = routeCopy;
  v16 = v10;
  v17 = &v18;
  [v10 iterateTravelTimeRangesFromRouteCoordinate:startValidRouteCoordinate etaRoute:0 handler:v14];
  v11 = [CPTravelEstimates alloc];
  v12 = [v11 initWithDistanceRemaining:v7 timeRemaining:v19[3]];

  _Block_object_dispose(&v18, 8);

  return v12;
}

- (id)_cpManeuverForGuidanceEvent:(id)event route:(id)route
{
  eventCopy = event;
  routeCopy = route;
  if ([eventCopy hasSignGuidance])
  {
    stepIndex = [eventCopy stepIndex];
    steps = [routeCopy steps];
    if (stepIndex >= [steps count])
    {
      v11 = 0;
    }

    else
    {
      steps2 = [routeCopy steps];
      v11 = [steps2 objectAtIndexedSubscript:{objc_msgSend(eventCopy, "stepIndex")}];
    }

    maneuverJunction = [eventCopy maneuverJunction];
    v12 = objc_opt_new();
    v14 = [(CarMetadataNavigationListener *)self _cpTravelEstimatesForGuidanceEvent:eventCopy route:routeCopy];
    [v12 setInitialTravelEstimates:v14];

    v15 = [(CarMetadataNavigationListener *)self _instructionVariantsForGuidanceEvent:eventCopy route:routeCopy];
    [v12 setInstructionVariants:v15];

    v16 = [(CarMetadataNavigationListener *)self _attributedInstructionVariantsForGuidanceEvent:eventCopy route:routeCopy];
    [v12 setAttributedInstructionVariants:v16];

    v17 = [(CarMetadataNavigationListener *)self _symbolImageForGuidanceEvent:eventCopy];
    [v12 setSymbolImage:v17];

    roadName = [eventCopy roadName];
    if (roadName)
    {
      roadName2 = [eventCopy roadName];
      v42 = roadName2;
      v20 = [NSArray arrayWithObjects:&v42 count:1];
      [v12 setRoadFollowingManeuverVariants:v20];
    }

    else
    {
      [v12 setRoadFollowingManeuverVariants:0];
    }

    v21 = [eventCopy maneuverType] - 1;
    if (v21 > 0x57)
    {
      v22 = 0;
    }

    else
    {
      v22 = qword_1012150C0[v21];
    }

    [v12 setManeuverType:v22];
    [v12 setTrafficSide:{objc_msgSend(eventCopy, "drivingSide") != 0}];
    [v12 setJunctionType:{objc_msgSend(maneuverJunction, "junctionType") != 0}];
    numElements = [maneuverJunction numElements];
    if (numElements)
    {
      v24 = numElements;
      v40 = routeCopy;
      v41 = eventCopy;
      elements = [maneuverJunction elements];
      v26 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [maneuverJunction numElements]);
      v27 = elements + 12;
      do
      {
        v28 = *(v27 - 3);
        v29 = *(v27 - 1);
        v30 = *v27;
        v31 = [NSMeasurement alloc];
        v32 = v28;
        v33 = +[NSUnitAngle degrees];
        v34 = [v31 initWithDoubleValue:v33 unit:v32];

        if ((v30 & 4) != 0 && v29 == 2)
        {
          [v12 setJunctionExitAngle:v34];
        }

        else
        {
          [v26 addObject:v34];
        }

        v27 += 16;

        --v24;
      }

      while (v24);
      [v12 setJunctionElementAngles:v26];

      routeCopy = v40;
      eventCopy = v41;
    }

    geoStep = [v11 geoStep];
    exitNumber = [geoStep exitNumber];

    if (exitNumber)
    {
      shieldInfo = [eventCopy shieldInfo];
      shield = [shieldInfo shield];

      if ([shield length])
      {
        [v12 setExitInfo:shield];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_cpRouteLineForRoute:(id)route
{
  routeCopy = route;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100813740;
  v17[4] = sub_100813750;
  v18 = 0;
  legs = [routeCopy legs];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100813758;
  v14[3] = &unk_10162B248;
  v16 = v17;
  v14[4] = self;
  v6 = routeCopy;
  v15 = v6;
  v7 = [legs _geo_map:v14];

  firstObject = [v7 firstObject];
  origin = [firstObject origin];

  lastObject = [v7 lastObject];
  destination = [lastObject destination];

  v12 = [[CPRouteLine alloc] initWithGeodeticSystem:1 origin:origin destination:destination routeLegs:v7];
  _Block_object_dispose(v17, 8);

  return v12;
}

- (id)_lightMapItemForWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  [waypointCopy coordinate];
  v6 = [[CLLocation alloc] initWithLatitude:v4 longitude:v5];
  geoMapItem = [waypointCopy geoMapItem];

  addressObject = [geoMapItem addressObject];
  v9 = [addressObject fullAddressWithMultiline:0];

  addressObject2 = [geoMapItem addressObject];
  shortAddress = [addressObject2 shortAddress];

  v12 = [[MKAddress alloc] initWithFullAddress:v9 shortAddress:shortAddress];
  v13 = [[MKMapItem alloc] initWithCLLocation:v6 address:v12];
  name = [geoMapItem name];
  [v13 setName:name];

  return v13;
}

- (void)_updateForNewRoute:(id)route
{
  routeCopy = route;
  v30 = +[NSMutableArray array];
  v29 = +[NSMutableArray array];
  +[NSMutableDictionary dictionary];
  v33 = v32 = routeCopy;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [routeCopy composedGuidanceEvents];
  v5 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v31 = *v35;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v35 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        v11 = [(CarMetadataNavigationListener *)self _cpManeuverForGuidanceEvent:v10 route:v32];
        v12 = v11;
        if (v11)
        {
          [v11 setIndex:v8];
          v13 = objc_opt_new();
          [v13 setGuidanceEvent:v10];
          v14 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v12 index]);
          [v13 setCpIndex:v14];

          uniqueID = [v10 uniqueID];
          [(NSDictionary *)v33 setObject:v13 forKeyedSubscript:uniqueID];

          [v30 addObject:v12];
          ++v8;
        }

        v16 = [(CarMetadataNavigationListener *)self _cpLaneGuidanceForGuidanceEvent:v10];
        v17 = v16;
        if (v16)
        {
          v18 = v7 + 1;
          [v16 setIndex:v7];
          v19 = objc_opt_new();
          [v19 setGuidanceEvent:v10];
          v20 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v17 index]);
          [v19 setCpIndex:v20];

          uniqueID2 = [v10 uniqueID];
          [(NSDictionary *)v33 setObject:v19 forKeyedSubscript:uniqueID2];

          [v29 addObject:v17];
          v7 = v18;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v6);
  }

  v22 = [[CPRouteInfo alloc] initWithRouteGuidance:self->_cpRouteGuidance maneuvers:v30 laneGuidances:v29];
  cpRouteInfo = self->_cpRouteInfo;
  self->_cpRouteInfo = v22;

  guidanceEventLookup = self->_guidanceEventLookup;
  self->_guidanceEventLookup = v33;
  v25 = v33;

  activeManeuverGuidanceEvents = self->_activeManeuverGuidanceEvents;
  self->_activeManeuverGuidanceEvents = 0;

  activeLaneGuidanceEvent = self->_activeLaneGuidanceEvent;
  self->_activeLaneGuidanceEvent = 0;

  [(CarMetadataNavigationListener *)self _updatePreconditioningInfo];
}

- (id)_measurementForDistanceInMeters:(double)meters
{
  v3 = +[NSLocale currentLocale];
  [v3 _navigation_distanceUsesMetricSystem];
  [v3 _navigation_useYardsForShortDistances];
  v4 = MNInstructionsCalculateDistanceUnits();
  v6 = 0;
  v7 = v5;
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v8 = +[NSUnitLength kilometers];
      }

      else
      {
        if (v4 != 2)
        {
          goto LABEL_15;
        }

        v8 = +[NSUnitLength yards];
      }
    }

    else
    {
      v8 = +[NSUnitLength meters];
    }

    goto LABEL_14;
  }

  if (v4 == 5)
  {
    v7 = v5 * 0.25;
    goto LABEL_12;
  }

  if (v4 == 4)
  {
LABEL_12:
    v8 = +[NSUnitLength miles];
    goto LABEL_14;
  }

  if (v4 != 3)
  {
    goto LABEL_15;
  }

  v8 = +[NSUnitLength feet];
LABEL_14:
  v6 = v8;
LABEL_15:
  v9 = [[NSMeasurement alloc] initWithDoubleValue:v6 unit:v7];

  return v9;
}

- (void)_updateBeingShownInApp
{
  v3 = +[MNNavigationService sharedService];
  state = [v3 state];

  cpRouteGuidance = self->_cpRouteGuidance;

  [(CPRouteGuidance *)cpRouteGuidance setBeingShownInApp:state == 4];
}

- (void)_updateRouteGuidance:(id)guidance
{
  guidanceCopy = guidance;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    estimatedTimeOfArrival = [guidanceCopy estimatedTimeOfArrival];

    if (!estimatedTimeOfArrival)
    {
      v8 = +[NSDate now];
      [guidanceCopy setEstimatedTimeOfArrival:v8];
    }

    distanceRemainingToNextManeuver = [guidanceCopy distanceRemainingToNextManeuver];

    if (!distanceRemainingToNextManeuver)
    {
      v10 = [NSMeasurement alloc];
      v11 = +[NSUnitLength meters];
      v12 = [v10 initWithDoubleValue:v11 unit:0.0];
      [guidanceCopy setDistanceRemainingToNextManeuver:v12];
    }

    distanceRemainingToNextManeuverDisplay = [guidanceCopy distanceRemainingToNextManeuverDisplay];

    if (!distanceRemainingToNextManeuverDisplay)
    {
      v14 = [NSMeasurement alloc];
      v15 = +[NSUnitLength meters];
      v16 = [v14 initWithDoubleValue:v15 unit:0.0];
      [guidanceCopy setDistanceRemainingToNextManeuverDisplay:v16];
    }

    destinationNameVariants = [guidanceCopy destinationNameVariants];

    if (!destinationNameVariants)
    {
      v18 = +[NSArray array];
      [guidanceCopy setDestinationNameVariants:v18];
    }

    v19 = sub_10007DD1C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      _maps_description = [guidanceCopy _maps_description];
      v22 = 138412290;
      v23 = _maps_description;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Updating CPRouteGuidance: %@", &v22, 0xCu);
    }

    v21 = objc_loadWeakRetained(&self->_delegate);
    [v21 navigationListener:self didUpdateRouteGuidance:guidanceCopy];
  }
}

- (void)_stopRouteGuidanceUpdates
{
  activeManeuverGuidanceEvents = self->_activeManeuverGuidanceEvents;
  self->_activeManeuverGuidanceEvents = 0;

  activeLaneGuidanceEvent = self->_activeLaneGuidanceEvent;
  self->_activeLaneGuidanceEvent = 0;

  cpRouteGuidance = self->_cpRouteGuidance;
  self->_cpRouteGuidance = 0;

  v6 = sub_10007DD1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stopping CarPlay metadata updates.", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationListenerDidStopNavigation:self];
}

- (void)_startRouteGuidanceUpdatesWithRoute:(id)route
{
  routeCopy = route;
  v5 = objc_alloc_init(CPRouteGuidance);
  cpRouteGuidance = self->_cpRouteGuidance;
  self->_cpRouteGuidance = v5;

  [(CPRouteGuidance *)self->_cpRouteGuidance setSourceName:@"Apple Maps"];
  [(CPRouteGuidance *)self->_cpRouteGuidance setSourceSupportsRouteGuidance:1];
  v7 = sub_10007DD1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sourceName = [(CPRouteGuidance *)self->_cpRouteGuidance sourceName];
    sourceSupportsRouteGuidance = [(CPRouteGuidance *)self->_cpRouteGuidance sourceSupportsRouteGuidance];
    v16 = 138412546;
    v17 = sourceName;
    v18 = 1024;
    v19 = sourceSupportsRouteGuidance;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating CPRouteGuidance. Source name: %@, supports route guidance: %d", &v16, 0x12u);
  }

  self->_cpGuidanceState = 1;
  v10 = [NSMeasurement _geo_distanceMeasurementForMeters:0.0];
  [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemaining:v10];
  [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemainingDisplay:v10];
  [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemainingToNextManeuver:v10];
  [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemainingToNextManeuverDisplay:v10];
  [(CarMetadataNavigationListener *)self _updateForNewRoute:routeCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationListener:self didStartNavigationWithRouteInfo:self->_cpRouteInfo];

  if (GEOConfigGetBOOL())
  {
    v12 = [(CarMetadataNavigationListener *)self _cpRouteLineForRoute:routeCopy];
    v13 = sub_10007DD1C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      _maps_description = [v12 _maps_description];
      v16 = 138412290;
      v17 = _maps_description;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating CPRouteLine:\n%@", &v16, 0xCu);
    }

    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 navigationListener:self didUpdateRouteLine:v12];
  }

  [(CarMetadataNavigationListener *)self _updateBeingShownInApp];
  [(CarMetadataNavigationListener *)self _updatePreconditioningInfo];
}

- (void)dealloc
{
  v3 = +[MNNavigationService sharedService];
  [v3 unregisterObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = CarMetadataNavigationListener;
  [(CarMetadataNavigationListener *)&v5 dealloc];
}

- (CarMetadataNavigationListener)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = CarMetadataNavigationListener;
  v5 = [(CarMetadataNavigationListener *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = +[MNNavigationService sharedService];
    [v7 registerObserver:v6];

    [(CarMetadataNavigationListener *)v6 _carPlayConnectionDidChange];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v6 selector:"_carPlayConnectionDidChange" name:@"CarDisplayDidChangeConnectedNotification" object:0];
  }

  return v6;
}

@end