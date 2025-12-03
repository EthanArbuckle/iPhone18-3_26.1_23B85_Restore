@interface MNNavigationService
- (BOOL)isArrivedAtEVCharger;
- (GEOComposedRouteEVChargingStationInfo)arrivalChargingStationInfo;
- (GEOComposedWaypoint)stopAfterCharging;
- (GEOComposedWaypoint)upcomingStop;
- (unint64_t)arrivalState;
@end

@implementation MNNavigationService

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

- (BOOL)isArrivedAtEVCharger
{
  arrivalInfo = [(MNNavigationService *)self arrivalInfo];
  if (([arrivalInfo isInArrivalState] & 1) == 0 && !objc_msgSend(arrivalInfo, "isInParkingState"))
  {
    goto LABEL_6;
  }

  route = [(MNNavigationService *)self route];
  legs = [route legs];
  v6 = [legs count];
  legIndex = [arrivalInfo legIndex];

  if (v6 > legIndex)
  {
    route2 = [(MNNavigationService *)self route];
    legs2 = [route2 legs];
    v10 = [legs2 objectAtIndex:{objc_msgSend(arrivalInfo, "legIndex")}];

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
LABEL_6:
    LOBYTE(v12) = 0;
  }

  return v12;
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

@end