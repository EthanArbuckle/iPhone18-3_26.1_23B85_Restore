@interface CarMetadataNavigationListener
- (CarMetadataNavigationListener)initWithDelegate:(id)a3;
- (double)_angleForGeoLaneDirection:(int)a3;
- (id)_attributedInstructionVariantsForGuidanceEvent:(id)a3 route:(id)a4;
- (id)_cpLaneGuidanceForGuidanceEvent:(id)a3;
- (id)_cpManeuverForGuidanceEvent:(id)a3 route:(id)a4;
- (id)_cpRouteLineForRoute:(id)a3;
- (id)_cpTravelEstimatesForGuidanceEvent:(id)a3 route:(id)a4;
- (id)_instructionVariantsForGuidanceEvent:(id)a3 route:(id)a4;
- (id)_lightMapItemForWaypoint:(id)a3;
- (id)_measurementForDistanceInMeters:(double)a3;
- (id)_preconditioningInfo;
- (id)_symbolImageForGuidanceEvent:(id)a3;
- (int64_t)_maneuverStateForLocation:(id)a3 distanceToManeuver:(double)a4;
- (unint64_t)_cpConnectorTypeForConnectorType:(int)a3;
- (unsigned)_cpRerouteReasonForRerouteReason:(unint64_t)a3;
- (void)_carPlayConnectionDidChange;
- (void)_startRouteGuidanceUpdatesWithRoute:(id)a3;
- (void)_stopRouteGuidanceUpdates;
- (void)_updateBeingShownInApp;
- (void)_updateCarPlayNavigationState:(id)a3;
- (void)_updateForNewRoute:(id)a3;
- (void)_updatePreconditioningInfo;
- (void)_updateRouteGuidance:(id)a3;
- (void)_updateStringArgument:(id)a3 route:(id)a4 guidanceEvent:(id)a5;
- (void)dealloc;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didChangeNavigationState:(int)a4;
- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5;
- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6;
- (void)navigationService:(id)a3 didUpdateETAResponse:(id)a4 forRoute:(id)a5;
- (void)navigationService:(id)a3 didUpdateTargetLegIndex:(unint64_t)a4;
- (void)navigationService:(id)a3 hideLaneDirectionsForId:(id)a4;
- (void)navigationService:(id)a3 showLaneDirections:(id)a4;
- (void)navigationService:(id)a3 updateSignsWithInfo:(id)a4;
- (void)navigationServiceDidFinishLocationUpdate:(id)a3;
@end

@implementation CarMetadataNavigationListener

- (id)_preconditioningInfo
{
  v3 = +[MNNavigationService sharedService];
  v4 = [v3 route];
  v5 = sub_10007DD1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v29 = [v4 isEVRoute];
    v30 = 1024;
    v31 = [v3 targetLegIndex];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating preconditioning info. Is EV route: %d, target leg index: %d", buf, 0xEu);
  }

  if ([v4 isEVRoute])
  {
    v6 = [v3 targetLegIndex];
    v7 = [v4 legs];
    v8 = [v7 count];

    if (v6 >= v8)
    {
      v10 = sub_10007DD1C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v23 = [v3 targetLegIndex];
        v24 = [v4 legs];
        v25 = [v24 count];
        *buf = 67109376;
        v29 = v23;
        v30 = 1024;
        v31 = v25;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Target leg index (%d) on navigation service is out of bounds of current route (%d legs).", buf, 0xEu);
      }

      v11 = 0;
    }

    else
    {
      v9 = [v4 legs];
      v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v3, "targetLegIndex")}];

      v11 = objc_opt_new();
      v12 = [v4 batteryLevelForStepIndex:{-[NSObject endStepIndex](v10, "endStepIndex")}];
      [v11 setArrivalBatteryLevel:v12];

      v13 = [v4 steps];
      v14 = [v13 lastObject];
      v15 = [v4 batteryLevelForStepIndex:{objc_msgSend(v14, "stepIndex")}];
      [v11 setFinalWaypointBatteryLevel:v15];

      v16 = [v10 nextLeg];
      v17 = v16;
      if (v16)
      {
        v18 = [v4 batteryLevelForStepIndex:{objc_msgSend(v16, "startStepIndex")}];
        [v11 setDepartureBatteryLevel:v18];
      }

      v19 = [v4 mutableData];
      v20 = [v19 chargingStationInfoForLegIndex:{-[NSObject legIndex](v10, "legIndex")}];

      v21 = [v20 supportedChargerPlugs];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100811F0C;
      v27[3] = &unk_10162B358;
      v27[4] = self;
      v22 = sub_100021DB0(v21, v27);
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
  v4 = [(CarMetadataNavigationListener *)self _preconditioningInfo];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationListener:self didUpdatePreconditioningInfo:v4];
}

- (void)navigationService:(id)a3 didUpdateTargetLegIndex:(unint64_t)a4
{
  if (self->_isConnectedToCarPlay)
  {
    [(CarMetadataNavigationListener *)self _updatePreconditioningInfo:a3];
  }
}

- (void)navigationService:(id)a3 didUpdateETAResponse:(id)a4 forRoute:(id)a5
{
  if (self->_isConnectedToCarPlay)
  {
    [(CarMetadataNavigationListener *)self _updatePreconditioningInfo:a3];
  }
}

- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6
{
  v13 = a3;
  v10 = a5;
  v11 = a6;
  if (self->_isConnectedToCarPlay)
  {
    if (a4)
    {
      [(CarMetadataNavigationListener *)self _stopRouteGuidanceUpdates];
    }

    else if (self->_cpRouteGuidance)
    {
      [(CarMetadataNavigationListener *)self _updateForNewRoute:v10];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained navigationListener:self didRerouteWithReason:0 routeInfo:self->_cpRouteInfo];

      [(CarMetadataNavigationListener *)self _updatePreconditioningInfo];
    }

    else
    {
      [(CarMetadataNavigationListener *)self _startRouteGuidanceUpdatesWithRoute:v10];
    }
  }
}

- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5
{
  if (self->_isConnectedToCarPlay)
  {
    [(CarMetadataNavigationListener *)self _updateForNewRoute:a4];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained navigationListener:self didRerouteWithReason:-[CarMetadataNavigationListener _cpRerouteReasonForRerouteReason:](self routeInfo:{"_cpRerouteReasonForRerouteReason:", a5), self->_cpRouteInfo}];

    [(CarMetadataNavigationListener *)self _updatePreconditioningInfo];
  }
}

- (void)navigationService:(id)a3 hideLaneDirectionsForId:(id)a4
{
  if (self->_isConnectedToCarPlay)
  {
    activeLaneGuidanceEvent = self->_activeLaneGuidanceEvent;
    self->_activeLaneGuidanceEvent = 0;
  }
}

- (void)navigationService:(id)a3 showLaneDirections:(id)a4
{
  if (self->_isConnectedToCarPlay)
  {
    v6 = [a4 uniqueID];
    v8 = v6;
    if (v6)
    {
      v6 = [(NSDictionary *)self->_guidanceEventLookup objectForKeyedSubscript:v6];
    }

    activeLaneGuidanceEvent = self->_activeLaneGuidanceEvent;
    self->_activeLaneGuidanceEvent = v6;
  }
}

- (void)navigationService:(id)a3 updateSignsWithInfo:(id)a4
{
  v5 = a4;
  if (self->_isConnectedToCarPlay)
  {
    v21 = v5;
    v6 = +[NSMutableArray array];
    v7 = [v21 primarySign];
    v8 = [v7 uniqueID];

    if (v8)
    {
      v9 = [(NSDictionary *)self->_guidanceEventLookup objectForKeyedSubscript:v8];
      if (v9)
      {
        [v6 addObject:v9];
      }
    }

    v10 = [v21 secondarySign];
    v11 = [v10 uniqueID];

    if (v11)
    {
      v12 = [(NSDictionary *)self->_guidanceEventLookup objectForKeyedSubscript:v11];
      if (v12)
      {
        [v6 addObject:v12];
      }
    }

    objc_storeStrong(&self->_activeManeuverGuidanceEvents, v6);
    v13 = [v21 primarySign];
    [v13 remainingDistance];
    v14 = [NSMeasurement _geo_distanceMeasurementForMeters:?];
    remainingDistanceToManeuver = self->_remainingDistanceToManeuver;
    self->_remainingDistanceToManeuver = v14;

    v16 = [v21 primarySign];
    v17 = [v16 displayRemainingDistance];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [NSMeasurement _geo_distanceMeasurementForMeters:0.0];
    }

    displayRemainingDistanceToManeuver = self->_displayRemainingDistanceToManeuver;
    self->_displayRemainingDistanceToManeuver = v19;

    v5 = v21;
  }
}

- (void)navigationServiceDidFinishLocationUpdate:(id)a3
{
  v4 = a3;
  if (self->_isConnectedToCarPlay)
  {
    cpRouteGuidance = self->_cpRouteGuidance;
    if (cpRouteGuidance)
    {
      [(CPRouteGuidance *)cpRouteGuidance setGuidanceState:self->_cpGuidanceState];
      v6 = [v4 lastLocation];
      v7 = [v6 roadName];
      if (v7)
      {
        v8 = [v6 roadName];
        v64 = v8;
        v9 = [NSArray arrayWithObjects:&v64 count:1];
        [(CPRouteGuidance *)self->_cpRouteGuidance setCurrentRoadNameVariants:v9];
      }

      else
      {
        [(CPRouteGuidance *)self->_cpRouteGuidance setCurrentRoadNameVariants:0];
      }

      v10 = [v4 route];
      v11 = [v4 targetLegIndex];
      v12 = [v10 legs];
      v13 = [v12 count];

      if (v11 >= v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 0;
        do
        {
          v15 = [v10 legs];
          v16 = [v15 objectAtIndexedSubscript:v11];

          v17 = [v16 destination];
          v18 = [v17 navDisplayName];

          if (v18)
          {
            if (!v14)
            {
              v14 = +[NSMutableArray array];
            }

            [v14 addObject:v18];
          }

          ++v11;
          v19 = [v10 legs];
          v20 = [v19 count];
        }

        while (v11 < v20);
      }

      [(CPRouteGuidance *)self->_cpRouteGuidance setDestinationNameVariants:v14];
      v21 = [v4 displayEtaInfo];
      v22 = [v21 legInfos];
      v23 = [v22 firstObject];

      -[CPRouteGuidance setTimeRemaining:](self->_cpRouteGuidance, "setTimeRemaining:", (60 * [v23 remainingMinutes]));
      v24 = [v23 eta];
      [(CPRouteGuidance *)self->_cpRouteGuidance setEstimatedTimeOfArrival:v24];

      v61 = v23;
      v25 = [v23 timeZone];
      v26 = [v25 secondsFromGMT];
      [(CPRouteGuidance *)self->_cpRouteGuidance setDestinationTimeZoneOffsetMinutes:(((34953 * v26) >> 16) >> 5) + (((v26 + ((-30583 * v26) >> 16)) & 0x8000) >> 15)];

      v27 = [v4 remainingDistanceInfo];
      [v27 distanceRemainingToEndOfLeg];
      v29 = v28;

      v30 = [NSMeasurement alloc];
      v31 = +[NSUnitLength meters];
      v32 = [v30 initWithDoubleValue:v31 unit:v29];
      [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemaining:v32];

      v33 = [(CarMetadataNavigationListener *)self _measurementForDistanceInMeters:v29];
      [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemainingDisplay:v33];

      v34 = [(NSArray *)self->_activeManeuverGuidanceEvents firstObject];
      if (v34)
      {
        if ([v4 navigationState] == 2)
        {
          [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemainingToNextManeuver:self->_remainingDistanceToManeuver];
          [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemainingToNextManeuverDisplay:self->_displayRemainingDistanceToManeuver];
          [(NSMeasurement *)self->_remainingDistanceToManeuver doubleValue];
          [(CPRouteGuidance *)self->_cpRouteGuidance setManeuverState:[(CarMetadataNavigationListener *)self _maneuverStateForLocation:v6 distanceToManeuver:?]];
        }

        else if ([v4 navigationState] == 1)
        {
          v35 = [v6 routeMatch];
          [v35 distanceFromRoute];
          v36 = [NSMeasurement _geo_distanceMeasurementForMeters:?];

          [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemainingToNextManeuver:v36];
          v37 = GEORoundedDistanceMeasurement();
          [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemainingToNextManeuverDisplay:v37];
        }
      }

      v62 = v6;
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
      if (!activeLaneGuidanceEvent || (-[_CarMetadataGuidanceEventPair cpIndex](activeLaneGuidanceEvent, "cpIndex"), v42 = objc_claimAutoreleasedReturnValue(), v59 = [v42 unsignedIntegerValue], -[CPRouteInfo laneGuidances](self->_cpRouteInfo, "laneGuidances"), v43 = v40, v44 = v4, v45 = v38, v46 = v34, v47 = objc_claimAutoreleasedReturnValue(), v60 = v21, v48 = objc_msgSend(v47, "count"), v47, v34 = v46, v38 = v45, v4 = v44, v40 = v43, v42, v49 = v59 >= v48, v21 = v60, v49))
      {
        [(CPRouteGuidance *)self->_cpRouteGuidance setLaneGuidanceShowing:0];
      }

      else
      {
        [(CPRouteGuidance *)self->_cpRouteGuidance setLaneGuidanceShowing:1];
        v50 = [(_CarMetadataGuidanceEventPair *)self->_activeLaneGuidanceEvent cpIndex];
        -[CPRouteGuidance setCurrentLaneGuidanceIndex:](self->_cpRouteGuidance, "setCurrentLaneGuidanceIndex:", [v50 intValue]);

        v51 = [(CPRouteInfo *)self->_cpRouteInfo laneGuidances];
        v52 = [(_CarMetadataGuidanceEventPair *)self->_activeLaneGuidanceEvent cpIndex];
        v53 = [v51 objectAtIndexedSubscript:{objc_msgSend(v52, "unsignedIntegerValue")}];
        [(CPRouteGuidance *)self->_cpRouteGuidance setCurrentLaneGuidance:v53];

        v21 = v60;
      }

      v54 = [(CPRouteInfo *)self->_cpRouteInfo maneuvers];
      -[CPRouteGuidance setTotalManeuverCount:](self->_cpRouteGuidance, "setTotalManeuverCount:", [v54 count]);

      v55 = [(CPRouteInfo *)self->_cpRouteInfo laneGuidances];
      -[CPRouteGuidance setTotalLaneGuidanceCount:](self->_cpRouteGuidance, "setTotalLaneGuidanceCount:", [v55 count]);

      v56 = [v4 nextWaypoint];
      if ([v10 isEVRoute] && (objc_msgSend(v56, "chargingInfo"), v57 = objc_claimAutoreleasedReturnValue(), v57, v57))
      {
        if ([v56 isServerProvidedWaypoint])
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

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v10 = a3;
  if (!self->_isConnectedToCarPlay)
  {
    goto LABEL_10;
  }

  cpRouteGuidance = self->_cpRouteGuidance;
  if (![(CarMetadataNavigationListener *)self _isTurnByTurn:a5])
  {
    if (!cpRouteGuidance)
    {
      goto LABEL_10;
    }

LABEL_9:
    [(CarMetadataNavigationListener *)self _stopRouteGuidanceUpdates];
    goto LABEL_10;
  }

  v8 = [v10 navigationTransportType];
  if ((cpRouteGuidance == 0) == (v8 == 0))
  {
    if (!v8)
    {
      v9 = [v10 route];
      [(CarMetadataNavigationListener *)self _startRouteGuidanceUpdatesWithRoute:v9];

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v8)
  {
    [(CarMetadataNavigationListener *)self _updateBeingShownInApp];
  }

LABEL_10:
}

- (void)navigationService:(id)a3 didChangeNavigationState:(int)a4
{
  if (self->_isConnectedToCarPlay)
  {
    [(CarMetadataNavigationListener *)self _updateCarPlayNavigationState:a3, *&a4];
  }
}

- (void)_carPlayConnectionDidChange
{
  v3 = +[CarDisplayController sharedInstance];
  v4 = [v3 screen];
  self->_isConnectedToCarPlay = v4 != 0;

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

    v6 = [v8 route];
    v7 = v6;
    if (v5 && v6)
    {
      [(CarMetadataNavigationListener *)self _startRouteGuidanceUpdatesWithRoute:v6];
    }

    else
    {
      [(CarMetadataNavigationListener *)self _stopRouteGuidanceUpdates];
    }
  }
}

- (void)_updateCarPlayNavigationState:(id)a3
{
  v4 = [a3 navigationState] - 1;
  if (v4 <= 6 && ((0x73u >> v4) & 1) != 0)
  {
    self->_cpGuidanceState = 0x2020501010106uLL >> (8 * v4);
  }
}

- (unsigned)_cpRerouteReasonForRerouteReason:(unint64_t)a3
{
  if (a3 - 1 > 0xF)
  {
    return 0;
  }

  else
  {
    return byte_101212C10[a3 - 1];
  }
}

- (unint64_t)_cpConnectorTypeForConnectorType:(int)a3
{
  if (a3 > 0xA)
  {
    return 3;
  }

  else
  {
    return qword_1012135E0[a3];
  }
}

- (void)_updateStringArgument:(id)a3 route:(id)a4 guidanceEvent:(id)a5
{
  v22 = a3;
  v7 = a4;
  v8 = a5;
  if ([v22 type] == 10)
  {
    v9 = [v7 legIndexForStepIndex:{objc_msgSend(v8, "stepIndex")}];
    v10 = [v7 legs];
    v11 = [v10 count];

    if (v9 < v11)
    {
      v12 = [v7 legs];
      v13 = [v12 objectAtIndexedSubscript:v9];

      v14 = [v22 token];
      v15 = [v14 isEqualToString:@"{Name}"];

      if (v15)
      {
        v16 = [v13 destination];
        v17 = [v16 navDisplayName];
      }

      else
      {
        v18 = [v22 token];
        v19 = [v18 isEqualToString:@"{Address}"];

        if (!v19)
        {
LABEL_8:

          goto LABEL_9;
        }

        v16 = [v13 destination];
        v17 = [v16 navDisplayAddress];
      }

      v20 = v17;
      v21 = [v22 stringFormat];
      [v21 setOverrideValue:v20];

      goto LABEL_8;
    }
  }

LABEL_9:
}

- (int64_t)_maneuverStateForLocation:(id)a3 distanceToManeuver:(double)a4
{
  v5 = a3;
  if (qword_10195D900 != -1)
  {
    dispatch_once(&qword_10195D900, &stru_10162B330);
  }

  v6 = [v5 routeMatch];
  v7 = [v6 road];
  v8 = [v7 roadClass];

  if (v8 - 2 > 6)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_101214FD8[v8 - 2];
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
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v16)
      {
        v17 = *v26;
        while (2)
        {
          for (i = 0; i != v16; ++i)
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

              if (v22 > a4)
              {
                v23 = [v19 objectAtIndexedSubscript:1];
                v16 = [v23 unsignedCharValue];

                goto LABEL_19;
              }
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v16)
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
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (double)_angleForGeoLaneDirection:(int)a3
{
  result = 0.0;
  if (a3 > 31)
  {
    if (a3 > 127)
    {
      if (a3 == 256)
      {
        return 180.0;
      }

      else if (a3 == 128)
      {
        return -45.0;
      }
    }

    else if (a3 == 32)
    {
      return -135.0;
    }

    else if (a3 == 64)
    {
      return -90.0;
    }
  }

  else if (a3 > 7)
  {
    if (a3 == 8)
    {
      return 135.0;
    }

    else if (a3 == 16)
    {
      return -180.0;
    }
  }

  else if (a3 == 2)
  {
    return 45.0;
  }

  else if (a3 == 4)
  {
    return 90.0;
  }

  return result;
}

- (id)_cpLaneGuidanceForGuidanceEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 lanes];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 lanes];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100812788;
    v11[3] = &unk_10162B310;
    v11[4] = self;
    v8 = [v7 _geo_map:v11];

    v9 = objc_opt_new();
    [v9 setLanes:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_symbolImageForGuidanceEvent:(id)a3
{
  memset(__src, 0, sizeof(__src));
  v3 = a3;
  MKDefaultGuidanceManeuverMetrics();
  [v3 maneuverType];
  [v3 drivingSide];

  v4 = +[UIColor whiteColor];
  v5 = +[UIColor lightGrayColor];
  memcpy(v11, __src, sizeof(v11));
  v6 = MKManeuverArrowImage();

  v7 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
  v8 = [v6 configuration];
  v9 = [v8 configurationWithTraitCollection:v7];

  return v6;
}

- (id)_attributedInstructionVariantsForGuidanceEvent:(id)a3 route:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 secondarySignStrings];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100812BCC;
  v13[3] = &unk_1016312D0;
  v13[4] = self;
  v14 = v7;
  v15 = v6;
  v9 = v6;
  v10 = v7;
  v11 = [v8 _geo_map:v13];

  return v11;
}

- (id)_instructionVariantsForGuidanceEvent:(id)a3 route:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 secondarySignStrings];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100812E64;
  v13[3] = &unk_10162B2C0;
  v13[4] = self;
  v14 = v7;
  v15 = v6;
  v9 = v6;
  v10 = v7;
  v11 = [v8 _geo_map:v13];

  return v11;
}

- (id)_cpTravelEstimatesForGuidanceEvent:(id)a3 route:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v6 distanceBetweenRouteCoordinate:objc_msgSend(v5 andRouteCoordinate:{"startValidRouteCoordinate"), objc_msgSend(v5, "endValidRouteCoordinate")}];
  v7 = GEORoundedMeasurementForDistance();
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = [v5 startValidRouteCoordinate];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1008130E8;
  v14[3] = &unk_10162B270;
  v9 = v5;
  v15 = v9;
  v10 = v6;
  v16 = v10;
  v17 = &v18;
  [v10 iterateTravelTimeRangesFromRouteCoordinate:v8 etaRoute:0 handler:v14];
  v11 = [CPTravelEstimates alloc];
  v12 = [v11 initWithDistanceRemaining:v7 timeRemaining:v19[3]];

  _Block_object_dispose(&v18, 8);

  return v12;
}

- (id)_cpManeuverForGuidanceEvent:(id)a3 route:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 hasSignGuidance])
  {
    v8 = [v6 stepIndex];
    v9 = [v7 steps];
    if (v8 >= [v9 count])
    {
      v11 = 0;
    }

    else
    {
      v10 = [v7 steps];
      v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "stepIndex")}];
    }

    v13 = [v6 maneuverJunction];
    v12 = objc_opt_new();
    v14 = [(CarMetadataNavigationListener *)self _cpTravelEstimatesForGuidanceEvent:v6 route:v7];
    [v12 setInitialTravelEstimates:v14];

    v15 = [(CarMetadataNavigationListener *)self _instructionVariantsForGuidanceEvent:v6 route:v7];
    [v12 setInstructionVariants:v15];

    v16 = [(CarMetadataNavigationListener *)self _attributedInstructionVariantsForGuidanceEvent:v6 route:v7];
    [v12 setAttributedInstructionVariants:v16];

    v17 = [(CarMetadataNavigationListener *)self _symbolImageForGuidanceEvent:v6];
    [v12 setSymbolImage:v17];

    v18 = [v6 roadName];
    if (v18)
    {
      v19 = [v6 roadName];
      v42 = v19;
      v20 = [NSArray arrayWithObjects:&v42 count:1];
      [v12 setRoadFollowingManeuverVariants:v20];
    }

    else
    {
      [v12 setRoadFollowingManeuverVariants:0];
    }

    v21 = [v6 maneuverType] - 1;
    if (v21 > 0x57)
    {
      v22 = 0;
    }

    else
    {
      v22 = qword_1012150C0[v21];
    }

    [v12 setManeuverType:v22];
    [v12 setTrafficSide:{objc_msgSend(v6, "drivingSide") != 0}];
    [v12 setJunctionType:{objc_msgSend(v13, "junctionType") != 0}];
    v23 = [v13 numElements];
    if (v23)
    {
      v24 = v23;
      v40 = v7;
      v41 = v6;
      v25 = [v13 elements];
      v26 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v13 numElements]);
      v27 = v25 + 12;
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

      v7 = v40;
      v6 = v41;
    }

    v35 = [v11 geoStep];
    v36 = [v35 exitNumber];

    if (v36)
    {
      v37 = [v6 shieldInfo];
      v38 = [v37 shield];

      if ([v38 length])
      {
        [v12 setExitInfo:v38];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_cpRouteLineForRoute:(id)a3
{
  v4 = a3;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100813740;
  v17[4] = sub_100813750;
  v18 = 0;
  v5 = [v4 legs];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100813758;
  v14[3] = &unk_10162B248;
  v16 = v17;
  v14[4] = self;
  v6 = v4;
  v15 = v6;
  v7 = [v5 _geo_map:v14];

  v8 = [v7 firstObject];
  v9 = [v8 origin];

  v10 = [v7 lastObject];
  v11 = [v10 destination];

  v12 = [[CPRouteLine alloc] initWithGeodeticSystem:1 origin:v9 destination:v11 routeLegs:v7];
  _Block_object_dispose(v17, 8);

  return v12;
}

- (id)_lightMapItemForWaypoint:(id)a3
{
  v3 = a3;
  [v3 coordinate];
  v6 = [[CLLocation alloc] initWithLatitude:v4 longitude:v5];
  v7 = [v3 geoMapItem];

  v8 = [v7 addressObject];
  v9 = [v8 fullAddressWithMultiline:0];

  v10 = [v7 addressObject];
  v11 = [v10 shortAddress];

  v12 = [[MKAddress alloc] initWithFullAddress:v9 shortAddress:v11];
  v13 = [[MKMapItem alloc] initWithCLLocation:v6 address:v12];
  v14 = [v7 name];
  [v13 setName:v14];

  return v13;
}

- (void)_updateForNewRoute:(id)a3
{
  v4 = a3;
  v30 = +[NSMutableArray array];
  v29 = +[NSMutableArray array];
  +[NSMutableDictionary dictionary];
  v33 = v32 = v4;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [v4 composedGuidanceEvents];
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

          v15 = [v10 uniqueID];
          [(NSDictionary *)v33 setObject:v13 forKeyedSubscript:v15];

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

          v21 = [v10 uniqueID];
          [(NSDictionary *)v33 setObject:v19 forKeyedSubscript:v21];

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

- (id)_measurementForDistanceInMeters:(double)a3
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
  v4 = [v3 state];

  cpRouteGuidance = self->_cpRouteGuidance;

  [(CPRouteGuidance *)cpRouteGuidance setBeingShownInApp:v4 == 4];
}

- (void)_updateRouteGuidance:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [v4 estimatedTimeOfArrival];

    if (!v7)
    {
      v8 = +[NSDate now];
      [v4 setEstimatedTimeOfArrival:v8];
    }

    v9 = [v4 distanceRemainingToNextManeuver];

    if (!v9)
    {
      v10 = [NSMeasurement alloc];
      v11 = +[NSUnitLength meters];
      v12 = [v10 initWithDoubleValue:v11 unit:0.0];
      [v4 setDistanceRemainingToNextManeuver:v12];
    }

    v13 = [v4 distanceRemainingToNextManeuverDisplay];

    if (!v13)
    {
      v14 = [NSMeasurement alloc];
      v15 = +[NSUnitLength meters];
      v16 = [v14 initWithDoubleValue:v15 unit:0.0];
      [v4 setDistanceRemainingToNextManeuverDisplay:v16];
    }

    v17 = [v4 destinationNameVariants];

    if (!v17)
    {
      v18 = +[NSArray array];
      [v4 setDestinationNameVariants:v18];
    }

    v19 = sub_10007DD1C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v4 _maps_description];
      v22 = 138412290;
      v23 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Updating CPRouteGuidance: %@", &v22, 0xCu);
    }

    v21 = objc_loadWeakRetained(&self->_delegate);
    [v21 navigationListener:self didUpdateRouteGuidance:v4];
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

- (void)_startRouteGuidanceUpdatesWithRoute:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CPRouteGuidance);
  cpRouteGuidance = self->_cpRouteGuidance;
  self->_cpRouteGuidance = v5;

  [(CPRouteGuidance *)self->_cpRouteGuidance setSourceName:@"Apple Maps"];
  [(CPRouteGuidance *)self->_cpRouteGuidance setSourceSupportsRouteGuidance:1];
  v7 = sub_10007DD1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CPRouteGuidance *)self->_cpRouteGuidance sourceName];
    v9 = [(CPRouteGuidance *)self->_cpRouteGuidance sourceSupportsRouteGuidance];
    v16 = 138412546;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating CPRouteGuidance. Source name: %@, supports route guidance: %d", &v16, 0x12u);
  }

  self->_cpGuidanceState = 1;
  v10 = [NSMeasurement _geo_distanceMeasurementForMeters:0.0];
  [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemaining:v10];
  [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemainingDisplay:v10];
  [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemainingToNextManeuver:v10];
  [(CPRouteGuidance *)self->_cpRouteGuidance setDistanceRemainingToNextManeuverDisplay:v10];
  [(CarMetadataNavigationListener *)self _updateForNewRoute:v4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationListener:self didStartNavigationWithRouteInfo:self->_cpRouteInfo];

  if (GEOConfigGetBOOL())
  {
    v12 = [(CarMetadataNavigationListener *)self _cpRouteLineForRoute:v4];
    v13 = sub_10007DD1C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v12 _maps_description];
      v16 = 138412290;
      v17 = v14;
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

- (CarMetadataNavigationListener)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CarMetadataNavigationListener;
  v5 = [(CarMetadataNavigationListener *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = +[MNNavigationService sharedService];
    [v7 registerObserver:v6];

    [(CarMetadataNavigationListener *)v6 _carPlayConnectionDidChange];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v6 selector:"_carPlayConnectionDidChange" name:@"CarDisplayDidChangeConnectedNotification" object:0];
  }

  return v6;
}

@end