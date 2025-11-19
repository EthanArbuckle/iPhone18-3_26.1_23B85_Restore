@interface RideSharingSessionDirectionsPlanBuilder
- (RideSharingSessionDirectionsPlanBuilder)initWithRideBookingPlanningSession:(id)a3;
- (id)buildDirectionsPlan;
- (void)_addOriginDestinationToPlan:(id)a3;
@end

@implementation RideSharingSessionDirectionsPlanBuilder

- (void)_addOriginDestinationToPlan:(id)a3
{
  v4 = a3;
  v5 = [(RideSharingSessionDirectionsPlanBuilder *)self session];
  v16 = [v5 resolvedWaypoints];

  if (v16)
  {
    v6 = [v4 routeRequestStorage];
    v7 = [v16 origin];
    [v6 addWaypoints:v7];

    v8 = [v4 routeRequestStorage];

    v9 = [v16 destination];
    [v8 addWaypoints:v9];
  }

  else
  {
    v10 = [(RideSharingSessionDirectionsPlanBuilder *)self session];
    v11 = [v10 originRequest];
    v12 = [v11 waypointPlaceholder];
    v13 = [v12 name];
    [v4 setOriginString:v13];

    v8 = [(RideSharingSessionDirectionsPlanBuilder *)self session];
    v9 = [v8 destinationRequest];
    v14 = [v9 waypointPlaceholder];
    v15 = [v14 name];
    [v4 setDestinationString:v15];
  }
}

- (id)buildDirectionsPlan
{
  v3 = objc_alloc_init(DirectionsPlan);
  v4 = objc_alloc_init(GEOStorageRouteRequestStorage);
  [(DirectionsPlan *)v3 setRouteRequestStorage:v4];
  v5 = [(DirectionsPlan *)v3 routeRequestStorage];
  [v5 setTransportType:6];

  [(DirectionsPlan *)v3 setDisplayMethod:1];
  v6 = [DirectionsPlan _maps_expiryDateForRoute:0];
  [v6 timeIntervalSinceReferenceDate];
  [(DirectionsPlan *)v3 setExpiryTime:?];

  [(RideSharingSessionDirectionsPlanBuilder *)self _addOriginDestinationToPlan:v3];
  v7 = sub_100028730();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = self;
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_10;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(RideSharingSessionDirectionsPlanBuilder *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_8;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_8:

LABEL_10:
    v14 = v13;
    v15 = [(DirectionsPlan *)v3 displayMethod];
    if (v15 >= 3)
    {
      v16 = [NSString stringWithFormat:@"(unknown: %i)", v15];
    }

    else
    {
      v16 = off_101631CF0[v15];
    }

    v17 = v16;
    v18 = [v4 waypointsCount];
    [(DirectionsPlan *)v3 expiryTime];
    v19 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

    *buf = 138544130;
    v22 = v14;
    v23 = 2114;
    v24 = v16;
    v25 = 2048;
    v26 = v18;
    v27 = 2112;
    v28 = v19;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Prepared directions plan (%{public}@, %lu waypoints, expires: %@)", buf, 0x2Au);
  }

  return v3;
}

- (RideSharingSessionDirectionsPlanBuilder)initWithRideBookingPlanningSession:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RideSharingSessionDirectionsPlanBuilder;
  v6 = [(RideSharingSessionDirectionsPlanBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
  }

  return v7;
}

@end