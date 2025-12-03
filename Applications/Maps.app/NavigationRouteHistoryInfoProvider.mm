@interface NavigationRouteHistoryInfoProvider
- (GEORouteAttributes)routeAttributes;
- (HistoryEntryRecentsItem)historyEntryRoute;
- (NSData)archivedTripSharingState;
- (NSData)sessionState;
- (NSUUID)currentHistoryEntryRouteIdentifier;
- (NavigationRouteHistoryInfoProvider)initWithNavigationService:(id)service;
- (id)_composedRoute;
- (id)auxiliaryTasksManager;
- (id)legacyRouteRepresentation;
- (id)originalWaypointRouteRepresentation;
- (id)routeId;
- (void)updateHistoryEntryRoute:(id)route;
@end

@implementation NavigationRouteHistoryInfoProvider

- (NSData)archivedTripSharingState
{
  v2 = +[MSPSharedTripService sharedInstance];
  archivedSharingState = [v2 archivedSharingState];

  return archivedSharingState;
}

- (GEORouteAttributes)routeAttributes
{
  lastLocation = [(MNNavigationService *)self->_navigationService lastLocation];
  if (lastLocation)
  {
    v4 = [GEOLatLng alloc];
    [lastLocation coordinate];
    v6 = v5;
    [lastLocation coordinate];
    v7 = [v4 initWithLatitude:v6 longitude:?];
  }

  else
  {
    v7 = 0;
  }

  currentRequest = [(MNNavigationService *)self->_navigationService currentRequest];
  waypointTypeds = [currentRequest waypointTypeds];
  lastObject = [waypointTypeds lastObject];
  locationForWaypoint = [lastObject locationForWaypoint];

  if (v7 && locationForWaypoint)
  {
    v22 = v7;
    v23 = locationForWaypoint;
    v12 = &v22;
    v13 = 2;
LABEL_12:
    v15 = [NSArray arrayWithObjects:v12 count:v13, v21, v22, v23];
    goto LABEL_14;
  }

  if (v7 | locationForWaypoint)
  {
    if (v7)
    {
      v14 = v7;
    }

    else
    {
      v14 = locationForWaypoint;
    }

    v21 = v14;
    v12 = &v21;
    v13 = 1;
    goto LABEL_12;
  }

  v15 = 0;
LABEL_14:
  v16 = [MNRouteAttributes alloc];
  _composedRoute = [(NavigationRouteHistoryInfoProvider *)self _composedRoute];
  routeAttributes = [_composedRoute routeAttributes];
  v19 = [v16 initWithAttributes:routeAttributes latLngs:v15];

  return v19;
}

- (NSUUID)currentHistoryEntryRouteIdentifier
{
  historyEntryRoute = [(NavigationRouteHistoryInfoProvider *)self historyEntryRoute];
  historyEntry = [historyEntryRoute historyEntry];
  storageIdentifier = [historyEntry storageIdentifier];

  return storageIdentifier;
}

- (void)updateHistoryEntryRoute:(id)route
{
  routeCopy = route;
  auxiliaryTasksManager = [(NavigationRouteHistoryInfoProvider *)self auxiliaryTasksManager];
  routePlanningSessionRouteLoadedNotifier = [auxiliaryTasksManager routePlanningSessionRouteLoadedNotifier];
  [routePlanningSessionRouteLoadedNotifier setCurrentRouteHistoryEntry:routeCopy];
}

- (HistoryEntryRecentsItem)historyEntryRoute
{
  auxiliaryTasksManager = [(NavigationRouteHistoryInfoProvider *)self auxiliaryTasksManager];
  routePlanningSessionRouteLoadedNotifier = [auxiliaryTasksManager routePlanningSessionRouteLoadedNotifier];
  currentRouteHistoryEntry = [routePlanningSessionRouteLoadedNotifier currentRouteHistoryEntry];

  return currentRouteHistoryEntry;
}

- (id)auxiliaryTasksManager
{
  v2 = +[UIApplication sharedMapsDelegate];
  appSessionController = [v2 appSessionController];
  currentlyNavigatingPlatformController = [appSessionController currentlyNavigatingPlatformController];
  auxiliaryTasksManager = [currentlyNavigatingPlatformController auxiliaryTasksManager];

  return auxiliaryTasksManager;
}

- (NSData)sessionState
{
  _composedRoute = [(NavigationRouteHistoryInfoProvider *)self _composedRoute];
  routeInitializerData = [_composedRoute routeInitializerData];
  directionsResponse = [routeInitializerData directionsResponse];
  sessionState = [directionsResponse sessionState];

  return sessionState;
}

- (id)originalWaypointRouteRepresentation
{
  navigationService = [(NavigationRouteHistoryInfoProvider *)self navigationService];
  originalWaypointRouteRepresentation = [navigationService originalWaypointRouteRepresentation];

  return originalWaypointRouteRepresentation;
}

- (id)legacyRouteRepresentation
{
  navigationService = [(NavigationRouteHistoryInfoProvider *)self navigationService];
  legacyRouteRepresentation = [navigationService legacyRouteRepresentation];

  return legacyRouteRepresentation;
}

- (id)routeId
{
  navigationService = [(NavigationRouteHistoryInfoProvider *)self navigationService];
  routeId = [navigationService routeId];

  return routeId;
}

- (id)_composedRoute
{
  navigationService = [(NavigationRouteHistoryInfoProvider *)self navigationService];
  route = [navigationService route];

  return route;
}

- (NavigationRouteHistoryInfoProvider)initWithNavigationService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = NavigationRouteHistoryInfoProvider;
  v6 = [(NavigationRouteHistoryInfoProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationService, service);
  }

  return v7;
}

@end