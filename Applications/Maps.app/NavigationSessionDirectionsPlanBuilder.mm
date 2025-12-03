@interface NavigationSessionDirectionsPlanBuilder
- (NavigationSessionDirectionsPlanBuilder)initWithSessionStack:(id)stack fidelity:(unint64_t)fidelity;
- (id)buildDirectionsPlan;
@end

@implementation NavigationSessionDirectionsPlanBuilder

- (id)buildDirectionsPlan
{
  routePlanningBuilder = [(NavigationSessionDirectionsPlanBuilder *)self routePlanningBuilder];
  if (routePlanningBuilder)
  {
  }

  if (!self->_session)
  {
    buildDirectionsPlan = 0;
    goto LABEL_40;
  }

  routePlanningBuilder2 = [(NavigationSessionDirectionsPlanBuilder *)self routePlanningBuilder];
  if (routePlanningBuilder2)
  {
    routePlanningBuilder3 = [(NavigationSessionDirectionsPlanBuilder *)self routePlanningBuilder];
    buildDirectionsPlan = [routePlanningBuilder3 buildDirectionsPlan];
  }

  else
  {
    buildDirectionsPlan = objc_alloc_init(DirectionsPlan);
  }

  v7 = objc_alloc_init(GEOStorageRouteRequestStorage);
  [(DirectionsPlan *)buildDirectionsPlan setRouteRequestStorage:v7];
  v8 = [(NavigationSession *)self->_session currentTransportType]- 2;
  if (v8 > 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = dword_101212C30[v8];
  }

  routeRequestStorage = [(DirectionsPlan *)buildDirectionsPlan routeRequestStorage];
  [routeRequestStorage setTransportType:v9];

  currentRouteCollection = [(NavigationSession *)self->_session currentRouteCollection];
  v12 = currentRouteCollection;
  if (currentRouteCollection)
  {
    -[DirectionsPlan setCurrentRouteIndex:](buildDirectionsPlan, "setCurrentRouteIndex:", [currentRouteCollection currentRouteIndex]);
  }

  currentRoute = [v12 currentRoute];
  if (currentRoute)
  {
    v14 = [[GEOURLRouteHandle alloc] initWithRoute:currentRoute fidelity:{-[NavigationSessionDirectionsPlanBuilder fidelity](self, "fidelity")}];
    routeRequestStorage2 = [(DirectionsPlan *)buildDirectionsPlan routeRequestStorage];
    [routeRequestStorage2 setRouteHandle:v14];
  }

  currentRoute2 = [v12 currentRoute];
  v17 = [DirectionsPlan _maps_expiryDateForRoute:currentRoute2];
  [v17 timeIntervalSinceReferenceDate];
  [(DirectionsPlan *)buildDirectionsPlan setExpiryTime:?];

  session = [(NavigationSessionDirectionsPlanBuilder *)self session];
  waypointController = [session waypointController];
  targetLegIndex = [waypointController targetLegIndex];

  waypoints = [currentRoute waypoints];
  v22 = [waypoints mutableCopy];

  if (targetLegIndex && [v22 count] >= 3 && targetLegIndex < objc_msgSend(v22, "count") - 1)
  {
    [v22 removeObjectsInRange:{1, targetLegIndex}];
  }

  v58 = targetLegIndex;
  routeRequestStorage3 = [(DirectionsPlan *)buildDirectionsPlan routeRequestStorage];
  [routeRequestStorage3 setWaypoints:v22];

  if (([currentRoute source] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    persistentData = [currentRoute persistentData];
    routeRequestStorage4 = [(DirectionsPlan *)buildDirectionsPlan routeRequestStorage];
    [routeRequestStorage4 setDestinationRouteData:persistentData];
  }

  if ([(NavigationSession *)self->_session guidanceType]== 2)
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  [(DirectionsPlan *)buildDirectionsPlan setDisplayMethod:v26];
  v27 = +[MNNavigationService sharedService];
  [v27 state];
  IsNavigating = MNNavigationServiceStateIsNavigating();

  if (IsNavigating)
  {
    configuration = +[MNNavigationService sharedService];
    -[DirectionsPlan setShouldRestoreLowGuidance:](buildDirectionsPlan, "setShouldRestoreLowGuidance:", [configuration state] == 5);
  }

  else
  {
    configuration = [(NavigationSession *)self->_session configuration];
    startNavigationDetails = [configuration startNavigationDetails];
    -[DirectionsPlan setShouldRestoreLowGuidance:](buildDirectionsPlan, "setShouldRestoreLowGuidance:", [startNavigationDetails guidanceType] == 1);
  }

  if (GEOConfigGetBOOL())
  {
    v31 = +[MSPSharedTripService sharedInstance];
    receivers = [v31 receivers];

    v33 = sub_100021DB0(receivers, &stru_10162F568);
    v34 = currentRoute;
    v35 = [v33 mutableCopy];
    [(DirectionsPlan *)buildDirectionsPlan setHandlesForSharingETAs:v35];

    currentRoute = v34;
  }

  v36 = sub_100028730();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    log = v36;
    v56 = currentRoute;
    selfCopy = self;
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v57 = v12;
    if (objc_opt_respondsToSelector())
    {
      v40 = [(NavigationSessionDirectionsPlanBuilder *)selfCopy performSelector:"accessibilityIdentifier"];
      v41 = v40;
      if (v40 && ![v40 isEqualToString:v39])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v39, selfCopy, v41];

        goto LABEL_35;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v39, selfCopy];
LABEL_35:

    v54 = selfCopy;
    displayMethod = [(DirectionsPlan *)buildDirectionsPlan displayMethod];
    if (displayMethod >= 3)
    {
      v44 = [NSString stringWithFormat:@"(unknown: %i)", displayMethod];
    }

    else
    {
      v44 = *(&off_10162F588 + displayMethod);
    }

    v53 = v44;
    v45 = v7;
    waypointsCount = [v7 waypointsCount];
    v47 = [v22 count];
    [(DirectionsPlan *)buildDirectionsPlan expiryTime];
    v48 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

    handlesForSharingETAsCount = [(DirectionsPlan *)buildDirectionsPlan handlesForSharingETAsCount];
    [(DirectionsPlan *)buildDirectionsPlan handlesForSharingETAs];
    v51 = v50 = v22;
    *buf = 138545154;
    v60 = v54;
    v61 = 2114;
    v62 = v44;
    v63 = 2048;
    v64 = waypointsCount;
    v7 = v45;
    v65 = 2048;
    v66 = v47;
    v67 = 2048;
    v68 = v58;
    v69 = 2112;
    v70 = v48;
    v71 = 2048;
    v72 = handlesForSharingETAsCount;
    v73 = 2112;
    v74 = v51;
    v36 = log;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "[%{public}@] Prepared directions plan (%{public}@, %lu waypoints (%lu in original route, %lu current leg index), expires: %@, %lu sharing handles: %@)", buf, 0x52u);

    v22 = v50;
    currentRoute = v56;
    v12 = v57;
  }

LABEL_40:

  return buildDirectionsPlan;
}

- (NavigationSessionDirectionsPlanBuilder)initWithSessionStack:(id)stack fidelity:(unint64_t)fidelity
{
  stackCopy = stack;
  v16.receiver = self;
  v16.super_class = NavigationSessionDirectionsPlanBuilder;
  v7 = [(NavigationSessionDirectionsPlanBuilder *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_fidelity = fidelity;
    v9 = [[RoutePlanningSessionDirectionsPlanBuilder alloc] initWithSessionStack:stackCopy fidelity:fidelity];
    routePlanningBuilder = v8->_routePlanningBuilder;
    v8->_routePlanningBuilder = v9;

    lastObject = [stackCopy lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      lastObject2 = [stackCopy lastObject];
      session = v8->_session;
      v8->_session = lastObject2;
    }
  }

  return v8;
}

@end