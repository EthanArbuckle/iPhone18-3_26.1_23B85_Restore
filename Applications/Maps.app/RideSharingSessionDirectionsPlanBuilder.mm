@interface RideSharingSessionDirectionsPlanBuilder
- (RideSharingSessionDirectionsPlanBuilder)initWithRideBookingPlanningSession:(id)session;
- (id)buildDirectionsPlan;
- (void)_addOriginDestinationToPlan:(id)plan;
@end

@implementation RideSharingSessionDirectionsPlanBuilder

- (void)_addOriginDestinationToPlan:(id)plan
{
  planCopy = plan;
  session = [(RideSharingSessionDirectionsPlanBuilder *)self session];
  resolvedWaypoints = [session resolvedWaypoints];

  if (resolvedWaypoints)
  {
    routeRequestStorage = [planCopy routeRequestStorage];
    origin = [resolvedWaypoints origin];
    [routeRequestStorage addWaypoints:origin];

    routeRequestStorage2 = [planCopy routeRequestStorage];

    destination = [resolvedWaypoints destination];
    [routeRequestStorage2 addWaypoints:destination];
  }

  else
  {
    session2 = [(RideSharingSessionDirectionsPlanBuilder *)self session];
    originRequest = [session2 originRequest];
    waypointPlaceholder = [originRequest waypointPlaceholder];
    name = [waypointPlaceholder name];
    [planCopy setOriginString:name];

    routeRequestStorage2 = [(RideSharingSessionDirectionsPlanBuilder *)self session];
    destination = [routeRequestStorage2 destinationRequest];
    waypointPlaceholder2 = [destination waypointPlaceholder];
    name2 = [waypointPlaceholder2 name];
    [planCopy setDestinationString:name2];
  }
}

- (id)buildDirectionsPlan
{
  v3 = objc_alloc_init(DirectionsPlan);
  v4 = objc_alloc_init(GEOStorageRouteRequestStorage);
  [(DirectionsPlan *)v3 setRouteRequestStorage:v4];
  routeRequestStorage = [(DirectionsPlan *)v3 routeRequestStorage];
  [routeRequestStorage setTransportType:6];

  [(DirectionsPlan *)v3 setDisplayMethod:1];
  v6 = [DirectionsPlan _maps_expiryDateForRoute:0];
  [v6 timeIntervalSinceReferenceDate];
  [(DirectionsPlan *)v3 setExpiryTime:?];

  [(RideSharingSessionDirectionsPlanBuilder *)self _addOriginDestinationToPlan:v3];
  v7 = sub_100028730();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(RideSharingSessionDirectionsPlanBuilder *)selfCopy performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_8:

LABEL_10:
    v14 = selfCopy;
    displayMethod = [(DirectionsPlan *)v3 displayMethod];
    if (displayMethod >= 3)
    {
      v16 = [NSString stringWithFormat:@"(unknown: %i)", displayMethod];
    }

    else
    {
      v16 = off_101631CF0[displayMethod];
    }

    v17 = v16;
    waypointsCount = [v4 waypointsCount];
    [(DirectionsPlan *)v3 expiryTime];
    v19 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

    *buf = 138544130;
    v22 = v14;
    v23 = 2114;
    v24 = v16;
    v25 = 2048;
    v26 = waypointsCount;
    v27 = 2112;
    v28 = v19;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Prepared directions plan (%{public}@, %lu waypoints, expires: %@)", buf, 0x2Au);
  }

  return v3;
}

- (RideSharingSessionDirectionsPlanBuilder)initWithRideBookingPlanningSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = RideSharingSessionDirectionsPlanBuilder;
  v6 = [(RideSharingSessionDirectionsPlanBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
  }

  return v7;
}

@end