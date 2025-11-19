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
- (void)setVoiceGuidanceEnabled:(BOOL)a3;
@end

@implementation MNNavigationService

- (unint64_t)arrivalState
{
  v3 = [(MNNavigationService *)self route];
  v4 = [v3 legIndexForStepIndex:{-[MNNavigationService stepIndex](self, "stepIndex")}];

  v5 = [(MNNavigationService *)self route];
  v6 = [v5 legs];
  v7 = [v6 count];

  v8 = [(MNNavigationService *)self arrivalInfo];
  v9 = [v8 arrivalState];

  if (v9 > 6)
  {
    return 0;
  }

  v10 = v7 - 1;
  if (((1 << v9) & 0x72) != 0)
  {
    v11 = v4 == v10;
    v12 = 4;
  }

  else
  {
    if (((1 << v9) & 0xC) == 0)
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
  v3 = [(MNNavigationService *)self lastLocation];

  if (v3)
  {
    v4 = [(MNNavigationService *)self lastLocation];
    v5 = [v4 routeMatch];
    [v5 leg];
  }

  else
  {
    v4 = [(MNNavigationService *)self route];
    v5 = [v4 legs];
    [v5 firstObject];
  }
  v6 = ;
  v7 = [v6 destination];

  return v7;
}

- (GEOComposedRouteEVChargingStationInfo)arrivalChargingStationInfo
{
  if ([(MNNavigationService *)self isArrivedAtEVCharger])
  {
    v3 = [(MNNavigationService *)self arrivalInfo];
    v4 = [v3 destination];
    v5 = [(MNNavigationService *)self route];
    v6 = [v5 legs];
    v7 = [v6 objectAtIndex:{objc_msgSend(v3, "legIndex")}];

    v8 = [(MNNavigationService *)self route];
    v9 = [v8 waypointDisplayInfoForWaypoint:v4];

    v10 = [v7 chargingStationInfo];

    if (v10)
    {
      v11 = [v9 evChargingInfo];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [v7 chargingStationInfo];
      }

      v14 = v13;
    }

    else
    {
      v14 = [v4 chargingInfo];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isArrivedAtEVCharger
{
  v3 = [(MNNavigationService *)self arrivalInfo];
  if ((([v3 isInArrivalState] & 1) != 0 || objc_msgSend(v3, "isInParkingState")) && (-[MNNavigationService route](self, "route"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "legs"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v7 = objc_msgSend(v3, "legIndex"), v5, v4, v6 > v7))
  {
    v8 = [(MNNavigationService *)self route];
    v9 = [v8 legs];
    v10 = [v9 objectAtIndex:{objc_msgSend(v3, "legIndex")}];

    v11 = [v10 chargingStationInfo];

    if (v11)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      v13 = [v3 destination];
      v14 = [v13 chargingInfo];
      v12 = v14 != 0;
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
  v3 = [(MNNavigationService *)self lastLocation];
  v4 = [v3 routeMatch];
  v5 = [v4 routeCoordinate];

  if (GEOPolylineCoordinateIsValid())
  {
    v6 = [(MNNavigationService *)self route];
    v7 = [v6 geoOriginalWaypointRouteFromRouteCoordinate:v5 purpose:0];

    v8 = [v7 data];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)legacyRouteRepresentation
{
  v2 = [(MNNavigationService *)self route];
  v3 = [v2 zilchDataFromStepIndex:0];

  return v3;
}

- (id)routeId
{
  v2 = [(MNNavigationService *)self route];
  v3 = [v2 serverRouteID];

  return v3;
}

- (GEOComposedWaypoint)stopAfterCharging
{
  v3 = [(MNNavigationService *)self arrivalInfo];
  v4 = [v3 legIndex];
  v5 = [(MNNavigationService *)self route];
  v6 = [v5 legs];
  v7 = [v6 count];

  if (v4 >= v7)
  {
    v12 = 0;
  }

  else
  {
    v8 = [(MNNavigationService *)self route];
    v9 = [v8 legs];
    v10 = [(MNNavigationService *)self arrivalInfo];
    v11 = [v9 objectAtIndex:{objc_msgSend(v10, "legIndex") + 1}];
    v12 = [v11 destination];
  }

  return v12;
}

- (id)incidentsOnRouteOffsets
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(MNNavigationService *)self lastLocation];
  v5 = [v4 routeMatch];
  v6 = [v5 routeCoordinate];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(MNNavigationService *)self route];
  v8 = [v7 traffic];
  v9 = [v8 routeIncidents];

  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 incident];

        if (v15)
        {
          v16 = [(MNNavigationService *)self route];
          [v16 distanceBetweenRouteCoordinate:v6 andRouteCoordinate:{objc_msgSend(v14, "routeCoordinate")}];
          v18 = v17;

          v19 = [NSNumber numberWithDouble:v18];
          [v3 addObject:v19];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
  v4 = [(MNNavigationService *)self route];
  v5 = [v4 traffic];
  v6 = [v5 routeIncidents];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 incident];

        if (v12)
        {
          v13 = [v11 incident];
          v14 = [v13 data];
          [v3 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v3;
}

- (id)etaFilterData
{
  v2 = [(MNNavigationService *)self route];
  v3 = [v2 routeAttributes];

  v4 = +[GEOMapService sharedService];
  v5 = [v4 serializedETAFilterForSiriWithRouteAttributes:v3];

  return v5;
}

- (void)setVoiceGuidanceEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [AudioPreferences alloc];
  v6 = +[NSUserDefaults standardUserDefaults];
  v9 = [(AudioPreferences *)v5 initWithDefaults:v6];

  if (v3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(MNNavigationService *)self route];
  -[AudioPreferences setGuidanceLevel:forTransportType:](v9, "setGuidanceLevel:forTransportType:", v7, [v8 transportType]);

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