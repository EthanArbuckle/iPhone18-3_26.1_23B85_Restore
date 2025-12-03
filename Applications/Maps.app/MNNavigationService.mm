@interface MNNavigationService
- (BOOL)isArrivedAtEVCharger;
- (GEOComposedRouteEVChargingStationInfo)arrivalChargingStationInfo;
- (GEOComposedWaypoint)stopAfterCharging;
- (GEOComposedWaypoint)upcomingStop;
- (id)etaFilterData;
- (id)incidentsOnRouteData;
- (id)incidentsOnRouteOffsets;
- (id)legacyRouteRepresentation;
- (id)originalWaypointRouteRepresentation;
- (id)routeId;
- (int)effectiveTransportType;
- (int64_t)effectiveNavigationType;
- (unint64_t)arrivalState;
- (void)setVoiceGuidanceEnabled:(BOOL)enabled;
@end

@implementation MNNavigationService

- (unint64_t)arrivalState
{
  route = [(MNNavigationService *)self route];
  v4 = [route legIndexForStepIndex:{-[MNNavigationService stepIndex](self, "stepIndex")}];

  route2 = [(MNNavigationService *)self route];
  legs = [route2 legs];
  v7 = [legs count];

  arrivalInfo = [(MNNavigationService *)self arrivalInfo];
  arrivalState = [arrivalInfo arrivalState];

  if (arrivalState > 6)
  {
    return 0;
  }

  v10 = v7 - 1;
  if (((1 << arrivalState) & 0x72) != 0)
  {
    v11 = v4 == v10;
    v12 = 4;
  }

  else
  {
    if (((1 << arrivalState) & 0xC) == 0)
    {
      return 1;
    }

    v11 = v4 == v10;
    v12 = 2;
  }

  if (v11)
  {
    return v12 + 1;
  }

  else
  {
    return v12;
  }
}

- (GEOComposedWaypoint)upcomingStop
{
  lastLocation = [(MNNavigationService *)self lastLocation];

  if (lastLocation)
  {
    lastLocation2 = [(MNNavigationService *)self lastLocation];
    routeMatch = [lastLocation2 routeMatch];
    [routeMatch leg];
  }

  else
  {
    lastLocation2 = [(MNNavigationService *)self route];
    routeMatch = [lastLocation2 legs];
    [routeMatch firstObject];
  }
  v6 = ;
  destination = [v6 destination];

  return destination;
}

- (GEOComposedRouteEVChargingStationInfo)arrivalChargingStationInfo
{
  if ([(MNNavigationService *)self isArrivedAtEVCharger])
  {
    arrivalInfo = [(MNNavigationService *)self arrivalInfo];
    destination = [arrivalInfo destination];
    route = [(MNNavigationService *)self route];
    legs = [route legs];
    v7 = [legs objectAtIndex:{objc_msgSend(arrivalInfo, "legIndex")}];

    route2 = [(MNNavigationService *)self route];
    v9 = [route2 waypointDisplayInfoForWaypoint:destination];

    chargingStationInfo = [v7 chargingStationInfo];

    if (chargingStationInfo)
    {
      evChargingInfo = [v9 evChargingInfo];
      v12 = evChargingInfo;
      if (evChargingInfo)
      {
        chargingStationInfo2 = evChargingInfo;
      }

      else
      {
        chargingStationInfo2 = [v7 chargingStationInfo];
      }

      chargingInfo = chargingStationInfo2;
    }

    else
    {
      chargingInfo = [destination chargingInfo];
    }
  }

  else
  {
    chargingInfo = 0;
  }

  return chargingInfo;
}

- (BOOL)isArrivedAtEVCharger
{
  arrivalInfo = [(MNNavigationService *)self arrivalInfo];
  if ((([arrivalInfo isInArrivalState] & 1) != 0 || objc_msgSend(arrivalInfo, "isInParkingState")) && (-[MNNavigationService route](self, "route"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "legs"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v7 = objc_msgSend(arrivalInfo, "legIndex"), v5, v4, v6 > v7))
  {
    route = [(MNNavigationService *)self route];
    legs = [route legs];
    v10 = [legs objectAtIndex:{objc_msgSend(arrivalInfo, "legIndex")}];

    chargingStationInfo = [v10 chargingStationInfo];

    if (chargingStationInfo)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      destination = [arrivalInfo destination];
      chargingInfo = [destination chargingInfo];
      v12 = chargingInfo != 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (id)originalWaypointRouteRepresentation
{
  lastLocation = [(MNNavigationService *)self lastLocation];
  routeMatch = [lastLocation routeMatch];
  routeCoordinate = [routeMatch routeCoordinate];

  if (GEOPolylineCoordinateIsValid())
  {
    route = [(MNNavigationService *)self route];
    v7 = [route geoOriginalWaypointRouteFromRouteCoordinate:routeCoordinate purpose:0];

    data = [v7 data];
  }

  else
  {
    data = 0;
  }

  return data;
}

- (id)legacyRouteRepresentation
{
  route = [(MNNavigationService *)self route];
  v3 = [route zilchDataFromStepIndex:0];

  return v3;
}

- (id)routeId
{
  route = [(MNNavigationService *)self route];
  serverRouteID = [route serverRouteID];

  return serverRouteID;
}

- (GEOComposedWaypoint)stopAfterCharging
{
  arrivalInfo = [(MNNavigationService *)self arrivalInfo];
  legIndex = [arrivalInfo legIndex];
  route = [(MNNavigationService *)self route];
  legs = [route legs];
  v7 = [legs count];

  if (legIndex >= v7)
  {
    destination = 0;
  }

  else
  {
    route2 = [(MNNavigationService *)self route];
    legs2 = [route2 legs];
    arrivalInfo2 = [(MNNavigationService *)self arrivalInfo];
    v11 = [legs2 objectAtIndex:{objc_msgSend(arrivalInfo2, "legIndex") + 1}];
    destination = [v11 destination];
  }

  return destination;
}

- (id)incidentsOnRouteOffsets
{
  v3 = objc_alloc_init(NSMutableArray);
  lastLocation = [(MNNavigationService *)self lastLocation];
  routeMatch = [lastLocation routeMatch];
  routeCoordinate = [routeMatch routeCoordinate];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  route = [(MNNavigationService *)self route];
  traffic = [route traffic];
  routeIncidents = [traffic routeIncidents];

  v10 = [routeIncidents countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(routeIncidents);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        incident = [v14 incident];

        if (incident)
        {
          route2 = [(MNNavigationService *)self route];
          [route2 distanceBetweenRouteCoordinate:routeCoordinate andRouteCoordinate:{objc_msgSend(v14, "routeCoordinate")}];
          v18 = v17;

          v19 = [NSNumber numberWithDouble:v18];
          [v3 addObject:v19];
        }
      }

      v11 = [routeIncidents countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  return v3;
}

- (id)incidentsOnRouteData
{
  v3 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  route = [(MNNavigationService *)self route];
  traffic = [route traffic];
  routeIncidents = [traffic routeIncidents];

  v7 = [routeIncidents countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(routeIncidents);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        incident = [v11 incident];

        if (incident)
        {
          incident2 = [v11 incident];
          data = [incident2 data];
          [v3 addObject:data];
        }
      }

      v8 = [routeIncidents countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v3;
}

- (id)etaFilterData
{
  route = [(MNNavigationService *)self route];
  routeAttributes = [route routeAttributes];

  v4 = +[GEOMapService sharedService];
  v5 = [v4 serializedETAFilterForSiriWithRouteAttributes:routeAttributes];

  return v5;
}

- (void)setVoiceGuidanceEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = [AudioPreferences alloc];
  v6 = +[NSUserDefaults standardUserDefaults];
  v9 = [(AudioPreferences *)v5 initWithDefaults:v6];

  if (enabledCopy)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  route = [(MNNavigationService *)self route];
  -[AudioPreferences setGuidanceLevel:forTransportType:](v9, "setGuidanceLevel:forTransportType:", v7, [route transportType]);

  [(AudioPreferences *)v9 synchronize];
}

- (int)effectiveTransportType
{
  if ([(MNNavigationService *)self isInNavigatingState])
  {

    return [(MNNavigationService *)self navigationTransportType];
  }

  else
  {

    return [(MNNavigationService *)self desiredTransportType];
  }
}

- (int64_t)effectiveNavigationType
{
  if ([(MNNavigationService *)self isInNavigatingState])
  {

    return [(MNNavigationService *)self navigationType];
  }

  else
  {

    return [(MNNavigationService *)self desiredNavigationType];
  }
}

@end