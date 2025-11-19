@interface NavigationRouteHistoryInfoProvider
- (GEORouteAttributes)routeAttributes;
- (HistoryEntryRecentsItem)historyEntryRoute;
- (NSData)archivedTripSharingState;
- (NSData)sessionState;
- (NSUUID)currentHistoryEntryRouteIdentifier;
- (NavigationRouteHistoryInfoProvider)initWithNavigationService:(id)a3;
- (id)_composedRoute;
- (id)auxiliaryTasksManager;
- (id)legacyRouteRepresentation;
- (id)originalWaypointRouteRepresentation;
- (id)routeId;
- (void)updateHistoryEntryRoute:(id)a3;
@end

@implementation NavigationRouteHistoryInfoProvider

- (NSData)archivedTripSharingState
{
  v2 = +[MSPSharedTripService sharedInstance];
  v3 = [v2 archivedSharingState];

  return v3;
}

- (GEORouteAttributes)routeAttributes
{
  v3 = [(MNNavigationService *)self->_navigationService lastLocation];
  if (v3)
  {
    v4 = [GEOLatLng alloc];
    [v3 coordinate];
    v6 = v5;
    [v3 coordinate];
    v7 = [v4 initWithLatitude:v6 longitude:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(MNNavigationService *)self->_navigationService currentRequest];
  v9 = [v8 waypointTypeds];
  v10 = [v9 lastObject];
  v11 = [v10 locationForWaypoint];

  if (v7 && v11)
  {
    v22 = v7;
    v23 = v11;
    v12 = &v22;
    v13 = 2;
LABEL_12:
    v15 = [NSArray arrayWithObjects:v12 count:v13, v21, v22, v23];
    goto LABEL_14;
  }

  if (v7 | v11)
  {
    if (v7)
    {
      v14 = v7;
    }

    else
    {
      v14 = v11;
    }

    v21 = v14;
    v12 = &v21;
    v13 = 1;
    goto LABEL_12;
  }

  v15 = 0;
LABEL_14:
  v16 = [MNRouteAttributes alloc];
  v17 = [(NavigationRouteHistoryInfoProvider *)self _composedRoute];
  v18 = [v17 routeAttributes];
  v19 = [v16 initWithAttributes:v18 latLngs:v15];

  return v19;
}

- (NSUUID)currentHistoryEntryRouteIdentifier
{
  v2 = [(NavigationRouteHistoryInfoProvider *)self historyEntryRoute];
  v3 = [v2 historyEntry];
  v4 = [v3 storageIdentifier];

  return v4;
}

- (void)updateHistoryEntryRoute:(id)a3
{
  v4 = a3;
  v6 = [(NavigationRouteHistoryInfoProvider *)self auxiliaryTasksManager];
  v5 = [v6 routePlanningSessionRouteLoadedNotifier];
  [v5 setCurrentRouteHistoryEntry:v4];
}

- (HistoryEntryRecentsItem)historyEntryRoute
{
  v2 = [(NavigationRouteHistoryInfoProvider *)self auxiliaryTasksManager];
  v3 = [v2 routePlanningSessionRouteLoadedNotifier];
  v4 = [v3 currentRouteHistoryEntry];

  return v4;
}

- (id)auxiliaryTasksManager
{
  v2 = +[UIApplication sharedMapsDelegate];
  v3 = [v2 appSessionController];
  v4 = [v3 currentlyNavigatingPlatformController];
  v5 = [v4 auxiliaryTasksManager];

  return v5;
}

- (NSData)sessionState
{
  v2 = [(NavigationRouteHistoryInfoProvider *)self _composedRoute];
  v3 = [v2 routeInitializerData];
  v4 = [v3 directionsResponse];
  v5 = [v4 sessionState];

  return v5;
}

- (id)originalWaypointRouteRepresentation
{
  v2 = [(NavigationRouteHistoryInfoProvider *)self navigationService];
  v3 = [v2 originalWaypointRouteRepresentation];

  return v3;
}

- (id)legacyRouteRepresentation
{
  v2 = [(NavigationRouteHistoryInfoProvider *)self navigationService];
  v3 = [v2 legacyRouteRepresentation];

  return v3;
}

- (id)routeId
{
  v2 = [(NavigationRouteHistoryInfoProvider *)self navigationService];
  v3 = [v2 routeId];

  return v3;
}

- (id)_composedRoute
{
  v2 = [(NavigationRouteHistoryInfoProvider *)self navigationService];
  v3 = [v2 route];

  return v3;
}

- (NavigationRouteHistoryInfoProvider)initWithNavigationService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NavigationRouteHistoryInfoProvider;
  v6 = [(NavigationRouteHistoryInfoProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationService, a3);
  }

  return v7;
}

@end