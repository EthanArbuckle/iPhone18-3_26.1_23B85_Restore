@interface NavigationSessionDirectionsPlanBuilder
- (NavigationSessionDirectionsPlanBuilder)initWithSessionStack:(id)a3 fidelity:(unint64_t)a4;
- (id)buildDirectionsPlan;
@end

@implementation NavigationSessionDirectionsPlanBuilder

- (id)buildDirectionsPlan
{
  v3 = [(NavigationSessionDirectionsPlanBuilder *)self routePlanningBuilder];
  if (v3)
  {
  }

  if (!self->_session)
  {
    v6 = 0;
    goto LABEL_40;
  }

  v4 = [(NavigationSessionDirectionsPlanBuilder *)self routePlanningBuilder];
  if (v4)
  {
    v5 = [(NavigationSessionDirectionsPlanBuilder *)self routePlanningBuilder];
    v6 = [v5 buildDirectionsPlan];
  }

  else
  {
    v6 = objc_alloc_init(DirectionsPlan);
  }

  v7 = objc_alloc_init(GEOStorageRouteRequestStorage);
  [(DirectionsPlan *)v6 setRouteRequestStorage:v7];
  v8 = [(NavigationSession *)self->_session currentTransportType]- 2;
  if (v8 > 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = dword_101212C30[v8];
  }

  v10 = [(DirectionsPlan *)v6 routeRequestStorage];
  [v10 setTransportType:v9];

  v11 = [(NavigationSession *)self->_session currentRouteCollection];
  v12 = v11;
  if (v11)
  {
    -[DirectionsPlan setCurrentRouteIndex:](v6, "setCurrentRouteIndex:", [v11 currentRouteIndex]);
  }

  v13 = [v12 currentRoute];
  if (v13)
  {
    v14 = [[GEOURLRouteHandle alloc] initWithRoute:v13 fidelity:{-[NavigationSessionDirectionsPlanBuilder fidelity](self, "fidelity")}];
    v15 = [(DirectionsPlan *)v6 routeRequestStorage];
    [v15 setRouteHandle:v14];
  }

  v16 = [v12 currentRoute];
  v17 = [DirectionsPlan _maps_expiryDateForRoute:v16];
  [v17 timeIntervalSinceReferenceDate];
  [(DirectionsPlan *)v6 setExpiryTime:?];

  v18 = [(NavigationSessionDirectionsPlanBuilder *)self session];
  v19 = [v18 waypointController];
  v20 = [v19 targetLegIndex];

  v21 = [v13 waypoints];
  v22 = [v21 mutableCopy];

  if (v20 && [v22 count] >= 3 && v20 < objc_msgSend(v22, "count") - 1)
  {
    [v22 removeObjectsInRange:{1, v20}];
  }

  v58 = v20;
  v23 = [(DirectionsPlan *)v6 routeRequestStorage];
  [v23 setWaypoints:v22];

  if (([v13 source] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v24 = [v13 persistentData];
    v25 = [(DirectionsPlan *)v6 routeRequestStorage];
    [v25 setDestinationRouteData:v24];
  }

  if ([(NavigationSession *)self->_session guidanceType]== 2)
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  [(DirectionsPlan *)v6 setDisplayMethod:v26];
  v27 = +[MNNavigationService sharedService];
  [v27 state];
  IsNavigating = MNNavigationServiceStateIsNavigating();

  if (IsNavigating)
  {
    v29 = +[MNNavigationService sharedService];
    -[DirectionsPlan setShouldRestoreLowGuidance:](v6, "setShouldRestoreLowGuidance:", [v29 state] == 5);
  }

  else
  {
    v29 = [(NavigationSession *)self->_session configuration];
    v30 = [v29 startNavigationDetails];
    -[DirectionsPlan setShouldRestoreLowGuidance:](v6, "setShouldRestoreLowGuidance:", [v30 guidanceType] == 1);
  }

  if (GEOConfigGetBOOL())
  {
    v31 = +[MSPSharedTripService sharedInstance];
    v32 = [v31 receivers];

    v33 = sub_100021DB0(v32, &stru_10162F568);
    v34 = v13;
    v35 = [v33 mutableCopy];
    [(DirectionsPlan *)v6 setHandlesForSharingETAs:v35];

    v13 = v34;
  }

  v36 = sub_100028730();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    log = v36;
    v56 = v13;
    v37 = self;
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v57 = v12;
    if (objc_opt_respondsToSelector())
    {
      v40 = [(NavigationSessionDirectionsPlanBuilder *)v37 performSelector:"accessibilityIdentifier"];
      v41 = v40;
      if (v40 && ![v40 isEqualToString:v39])
      {
        v42 = [NSString stringWithFormat:@"%@<%p, %@>", v39, v37, v41];

        goto LABEL_35;
      }
    }

    v42 = [NSString stringWithFormat:@"%@<%p>", v39, v37];
LABEL_35:

    v54 = v42;
    v43 = [(DirectionsPlan *)v6 displayMethod];
    if (v43 >= 3)
    {
      v44 = [NSString stringWithFormat:@"(unknown: %i)", v43];
    }

    else
    {
      v44 = *(&off_10162F588 + v43);
    }

    v53 = v44;
    v45 = v7;
    v46 = [v7 waypointsCount];
    v47 = [v22 count];
    [(DirectionsPlan *)v6 expiryTime];
    v48 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

    v49 = [(DirectionsPlan *)v6 handlesForSharingETAsCount];
    [(DirectionsPlan *)v6 handlesForSharingETAs];
    v51 = v50 = v22;
    *buf = 138545154;
    v60 = v54;
    v61 = 2114;
    v62 = v44;
    v63 = 2048;
    v64 = v46;
    v7 = v45;
    v65 = 2048;
    v66 = v47;
    v67 = 2048;
    v68 = v58;
    v69 = 2112;
    v70 = v48;
    v71 = 2048;
    v72 = v49;
    v73 = 2112;
    v74 = v51;
    v36 = log;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "[%{public}@] Prepared directions plan (%{public}@, %lu waypoints (%lu in original route, %lu current leg index), expires: %@, %lu sharing handles: %@)", buf, 0x52u);

    v22 = v50;
    v13 = v56;
    v12 = v57;
  }

LABEL_40:

  return v6;
}

- (NavigationSessionDirectionsPlanBuilder)initWithSessionStack:(id)a3 fidelity:(unint64_t)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = NavigationSessionDirectionsPlanBuilder;
  v7 = [(NavigationSessionDirectionsPlanBuilder *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_fidelity = a4;
    v9 = [[RoutePlanningSessionDirectionsPlanBuilder alloc] initWithSessionStack:v6 fidelity:a4];
    routePlanningBuilder = v8->_routePlanningBuilder;
    v8->_routePlanningBuilder = v9;

    v11 = [v6 lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [v6 lastObject];
      session = v8->_session;
      v8->_session = v13;
    }
  }

  return v8;
}

@end