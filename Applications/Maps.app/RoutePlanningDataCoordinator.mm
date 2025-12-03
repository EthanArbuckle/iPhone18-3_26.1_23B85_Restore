@interface RoutePlanningDataCoordinator
- ($873BFAB23BBB6E2F0B0288ED2F935688)currentRouteDisplayedMapRect;
- (BOOL)canAddStop;
- (BOOL)inACustomRouteRegion;
- (BOOL)isSuspended;
- (BOOL)updateTiming:(id)timing;
- (CyclePreferences)cyclePreferences;
- (DirectionItem)directionItemForCurrentSession;
- (DrivePreferences)drivePreferences;
- (GEOAdvisoriesInfo)advisoriesInfo;
- (GEOComposedRoute)currentRoute;
- (GEORouteDisplayHints)displayHints;
- (NSArray)automaticSharingContacts;
- (NSArray)waypointRequests;
- (NSHashTable)observersIfEnabled;
- (NSString)destinationName;
- (NSString)originName;
- (NSUUID)originalHistoryEntryIdentifier;
- (RideBookingRideOptionStateObserverProxy)rideOptionStateObserver;
- (RouteCollection)routeCollection;
- (RoutePlanningDataCoordinator)initWithPlatformController:(id)controller;
- (RoutePlanningDataCoordinatorPresentationDelegate)delegate;
- (RoutePlanningError)routePlanningError;
- (RoutePlanningWaypointRequest)destinationWaypointRequest;
- (RoutePlanningWaypointRequest)originWaypointRequest;
- (TransitPreferences)transitPreferences;
- (WalkPreferences)walkPreferences;
- (WaypointSet)resolvedWaypointSet;
- (int64_t)desiredTransportType;
- (int64_t)requestState;
- (int64_t)transportType;
- (void)RideBookingPlanningSession:(id)session didFinishResolvingWaypointSet:(id)set;
- (void)RideBookingPlanningSession:(id)session rideOptionStateDidChange:(id)change;
- (void)_applicationWillEnterForeground;
- (void)_notifyDidUpdateAutomaticSharingContacts:(id)contacts;
- (void)_notifyDidUpdateCurrentRouteDisplayedMapRect:(id)rect;
- (void)_notifyDidUpdateCyclePreferences:(id)preferences;
- (void)_notifyDidUpdateDrivePreferences:(id)preferences;
- (void)_notifyDidUpdateEnabled;
- (void)_notifyDidUpdateOriginDestinationNames;
- (void)_notifyDidUpdateOriginDestinationWaypointRequest;
- (void)_notifyDidUpdateRequestState:(int64_t)state;
- (void)_notifyDidUpdateRouteCollection:(id)collection;
- (void)_notifyDidUpdateRoutes:(id)routes;
- (void)_notifyDidUpdateTiming;
- (void)_notifyDidUpdateTransitPreferences:(id)preferences;
- (void)_notifyDidUpdateTransportType;
- (void)_notifyDidUpdateVirtualGarage;
- (void)_notifyDidUpdateWalkPreferences:(id)preferences;
- (void)_notifyDidUpdateWaypointSet;
- (void)_notifyResultRouteCollectionChangeForCurrentTransportType;
- (void)_reloadUsingNewCyclePreferences:(id)preferences;
- (void)_reloadUsingNewDrivePreferences:(id)preferences;
- (void)_reloadUsingNewTransitPreferences:(id)preferences;
- (void)_reloadUsingNewWalkPreferences:(id)preferences;
- (void)_updateIsEnabled;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)mapsSession:(id)session didChangeState:(unint64_t)state;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)refreshRidesharingOptionsIfVisible;
- (void)refreshVirtualGarage;
- (void)removeObserver:(id)observer;
- (void)resume;
- (void)routePlanningSession:(id)session didChangeRouteCreationRegion:(BOOL)region;
- (void)routePlanningSession:(id)session didFinishResolvingWaypointSet:(id)set;
- (void)routePlanningSession:(id)session didReceiveUpdates:(id)updates forRoutesResult:(id)result;
- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type;
- (void)setNavigationSession:(id)session;
- (void)setRideBookingPlanningSession:(id)session;
- (void)setRoutePlanningSession:(id)session;
- (void)setupDataForCurrentObservers;
- (void)setupDataForObserver:(id)observer;
- (void)startWithDirectionItem:(id)item traits:(id)traits userInfo:(id)info;
- (void)stop;
- (void)suspend;
- (void)updateCurrentRoute:(id)route;
- (void)updateCurrentRouteDisplayedMapRect:(id)rect;
- (void)updateCurrentRouteIndex:(unint64_t)index;
- (void)updateCyclePreferences:(id)preferences;
- (void)updateDrivePreferences:(id)preferences;
- (void)updateTransitPreferences:(id)preferences;
- (void)updateTransportType:(int64_t)type;
- (void)updateVirtualGarage:(id)garage;
- (void)updateWalkPreferences:(id)preferences;
- (void)virtualGarageDidUpdate:(id)update;
@end

@implementation RoutePlanningDataCoordinator

- (void)_applicationWillEnterForeground
{
  if ([(RoutePlanningDataCoordinator *)self transportType]== 4)
  {

    [(RoutePlanningDataCoordinator *)self refreshRidesharingOptionsIfVisible];
  }
}

- (int64_t)transportType
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (routePlanningSession)
  {
    routePlanningSession2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    currentTransportType = [routePlanningSession2 currentTransportType];

    return currentTransportType;
  }

  else
  {
    rideBookingPlanningSession = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
    v8 = rideBookingPlanningSession != 0;

    return 4 * v8;
  }
}

- (RoutePlanningDataCoordinatorPresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)virtualGarageDidUpdate:(id)update
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100DDD24C;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  updateCopy = update;
  v3 = updateCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_notifyDidUpdateAutomaticSharingContacts:(id)contacts
{
  contactsCopy = contacts;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  observersIfEnabled = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v6 = [observersIfEnabled copy];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (([v11 observedRoutePlanningData] & 0x20000) != 0)
        {
          [v11 routePlanningDataCoordinator:self didUpdateAutomaticSharingContacts:contactsCopy];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_notifyResultRouteCollectionChangeForCurrentTransportType
{
  [(RoutePlanningDataCoordinator *)self updateCurrentRouteDisplayedMapRect:MKMapRectNull.origin.x, MKMapRectNull.origin.y, MKMapRectNull.size.width, MKMapRectNull.size.height];
  routeCollection = [(RoutePlanningDataCoordinator *)self routeCollection];
  [(RoutePlanningDataCoordinator *)self _notifyDidUpdateRouteCollection:routeCollection];

  requestState = [(RoutePlanningDataCoordinator *)self requestState];

  [(RoutePlanningDataCoordinator *)self _notifyDidUpdateRequestState:requestState];
}

- (void)_notifyDidUpdateOriginDestinationNames
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  observersIfEnabled = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v4 = [observersIfEnabled copy];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 observedRoutePlanningData] & 8) != 0)
        {
          originName = [(RoutePlanningDataCoordinator *)self originName];
          destinationName = [(RoutePlanningDataCoordinator *)self destinationName];
          [v9 routePlanningDataCoordinator:self didUpdateOriginName:originName destinationName:destinationName];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)_notifyDidUpdateTiming
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observersIfEnabled = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v4 = [observersIfEnabled countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(observersIfEnabled);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 observedRoutePlanningData] & 0x4000) != 0)
        {
          timing = [(RoutePlanningDataCoordinator *)self timing];
          [v8 routePlanningDataCoordinator:self didUpdateTiming:timing];
        }
      }

      v5 = [observersIfEnabled countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_notifyDidUpdateWaypointSet
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  observersIfEnabled = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v4 = [observersIfEnabled countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(observersIfEnabled);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        if (([v8 observedRoutePlanningData] & 4) != 0)
        {
          resolvedWaypointSet = [(RoutePlanningDataCoordinator *)self resolvedWaypointSet];
          [v8 routePlanningDataCoordinator:self didUpdateResolvedWaypointSet:resolvedWaypointSet];
        }
      }

      v5 = [observersIfEnabled countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }

  resolvedWaypointSet2 = [(RoutePlanningDataCoordinator *)self resolvedWaypointSet];
  origin = [resolvedWaypointSet2 origin];
  geoMapItem = [origin geoMapItem];
  timezone = [geoMapItem timezone];

  resolvedWaypointSet3 = [(RoutePlanningDataCoordinator *)self resolvedWaypointSet];
  destination = [resolvedWaypointSet3 destination];
  geoMapItem2 = [destination geoMapItem];
  timezone2 = [geoMapItem2 timezone];

  arrivalDate = [(RoutePlanningTiming *)self->_timing arrivalDate];

  if (arrivalDate)
  {
    timing = [(RoutePlanningTiming *)self->_timing arrivalDate];
    v20 = [RoutePlanningTiming timingWithArrivalDate:timing departureTimeZone:timezone arrivalTimeZone:timezone2];
  }

  else
  {
    departureDate = [(RoutePlanningTiming *)self->_timing departureDate];

    if (!departureDate)
    {
      v23 = [RoutePlanningTiming timingWithArrivalDate:0 departureTimeZone:timezone arrivalTimeZone:timezone2];
      timing = self->_timing;
      self->_timing = v23;
      goto LABEL_15;
    }

    timing = [(RoutePlanningTiming *)self->_timing departureDate];
    v20 = [RoutePlanningTiming timingWithDepartureDate:timing departureTimeZone:timezone arrivalTimeZone:timezone2];
  }

  v22 = self->_timing;
  self->_timing = v20;

LABEL_15:
  [(RoutePlanningDataCoordinator *)self _notifyDidUpdateTiming];
  [(RoutePlanningDataCoordinator *)self _notifyDidUpdateOriginDestinationNames];
}

- (void)_notifyDidUpdateOriginDestinationWaypointRequest
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observersIfEnabled = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v4 = [observersIfEnabled countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(observersIfEnabled);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 observedRoutePlanningData])
        {
          originWaypointRequest = [(RoutePlanningDataCoordinator *)self originWaypointRequest];
          destinationWaypointRequest = [(RoutePlanningDataCoordinator *)self destinationWaypointRequest];
          [v8 routePlanningDataCoordinator:self didUpdateOriginWaypointRequest:originWaypointRequest destinationWaypointRequest:destinationWaypointRequest];
        }
      }

      v5 = [observersIfEnabled countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(RoutePlanningDataCoordinator *)self _notifyDidUpdateOriginDestinationNames];
}

- (void)_notifyDidUpdateRequestState:(int64_t)state
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observersIfEnabled = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v6 = [observersIfEnabled countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(observersIfEnabled);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (([v10 observedRoutePlanningData] & 0x20) != 0)
        {
          [v10 routePlanningDataCoordinator:self didUpdateRequestState:state];
        }
      }

      v7 = [observersIfEnabled countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyDidUpdateVirtualGarage
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observersIfEnabled = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v4 = [observersIfEnabled countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(observersIfEnabled);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 observedRoutePlanningData] & 0x2000) != 0)
        {
          virtualGarage = [(RoutePlanningDataCoordinator *)self virtualGarage];
          [v8 routePlanningDataCoordinator:self didUpdateVirtualGarage:virtualGarage];
        }
      }

      v5 = [observersIfEnabled countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_notifyDidUpdateCyclePreferences:(id)preferences
{
  preferencesCopy = preferences;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observersIfEnabled = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v6 = [observersIfEnabled countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(observersIfEnabled);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (([v10 observedRoutePlanningData] & 0x1000) != 0)
        {
          [v10 routePlanningDataCoordinator:self didUpdateCyclePreferences:preferencesCopy];
        }
      }

      v7 = [observersIfEnabled countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyDidUpdateTransitPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observersIfEnabled = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v6 = [observersIfEnabled countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(observersIfEnabled);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (([v10 observedRoutePlanningData] & 0x100) != 0)
        {
          [v10 routePlanningDataCoordinator:self didUpdateTransitPreferences:preferencesCopy];
        }
      }

      v7 = [observersIfEnabled countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyDidUpdateWalkPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observersIfEnabled = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v6 = [observersIfEnabled countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(observersIfEnabled);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (([v10 observedRoutePlanningData] & 0x10000) != 0)
        {
          [v10 routePlanningDataCoordinator:self didUpdateWalkPreferences:preferencesCopy];
        }
      }

      v7 = [observersIfEnabled countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyDidUpdateDrivePreferences:(id)preferences
{
  preferencesCopy = preferences;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observersIfEnabled = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v6 = [observersIfEnabled countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(observersIfEnabled);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (([v10 observedRoutePlanningData] & 0x80) != 0)
        {
          [v10 routePlanningDataCoordinator:self didUpdateDrivePreferences:preferencesCopy];
        }
      }

      v7 = [observersIfEnabled countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyDidUpdateTransportType
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  observersIfEnabled = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v4 = [observersIfEnabled countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(observersIfEnabled);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (([v8 observedRoutePlanningData] & 0x10) != 0)
        {
          [v8 routePlanningDataCoordinator:self didUpdateTransportType:{-[RoutePlanningDataCoordinator desiredTransportType](self, "desiredTransportType")}];
        }
      }

      v5 = [observersIfEnabled countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(RoutePlanningDataCoordinator *)self _notifyResultRouteCollectionChangeForCurrentTransportType];
  [(RoutePlanningDataCoordinator *)self _notifyDidUpdateOriginDestinationNames];
}

- (void)_notifyDidUpdateCurrentRouteDisplayedMapRect:(id)rect
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v5 = rect.var0.var1;
  v6 = rect.var0.var0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  observersIfEnabled = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v9 = [observersIfEnabled countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(observersIfEnabled);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (([v13 observedRoutePlanningData] & 0x200) != 0)
        {
          [v13 routePlanningDataCoordinator:self didUpdateCurrentRouteDisplayedMapRect:{v6, v5, var0, var1}];
        }
      }

      v10 = [observersIfEnabled countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_notifyDidUpdateRoutes:(id)routes
{
  routesCopy = routes;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observersIfEnabled = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v6 = [observersIfEnabled countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(observersIfEnabled);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (([v10 observedRoutePlanningData] & 0x800) != 0)
        {
          [v10 routePlanningDataCoordinator:self didUpdateRoutes:routesCopy];
        }
      }

      v7 = [observersIfEnabled countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyDidUpdateRouteCollection:(id)collection
{
  collectionCopy = collection;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observersIfEnabled = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v6 = [observersIfEnabled countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(observersIfEnabled);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (([v10 observedRoutePlanningData] & 0x40) != 0)
        {
          [v10 routePlanningDataCoordinator:self didUpdateRouteCollection:collectionCopy];
        }
      }

      v7 = [observersIfEnabled countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyDidUpdateEnabled
{
  isEnabled = [(RoutePlanningDataCoordinator *)self isEnabled];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [(RoutePlanningDataCoordinator *)self observers];
  v5 = [observers copy];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (([v10 observedRoutePlanningData] & 0x8000) != 0)
        {
          [v10 routePlanningDataCoordinator:self didEnable:isEnabled];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)stop
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  if (routePlanningSession || ([(RoutePlanningDataCoordinator *)self rideBookingPlanningSession], (routePlanningSession = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = routePlanningSession;
    platformController = [(RoutePlanningDataCoordinator *)self platformController];
    currentSession = [platformController currentSession];

    if (currentSession != v4)
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315906;
        v12 = "[RoutePlanningDataCoordinator stop]";
        v13 = 2080;
        v14 = "RoutePlanningDataCoordinator.m";
        v15 = 1024;
        v16 = 1062;
        v17 = 2080;
        v18 = "self.platformController.currentSession == session";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v11, 0x26u);
      }

      if (sub_100E03634())
      {
        v9 = sub_10006D178();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = +[NSThread callStackSymbols];
          v11 = 138412290;
          v12 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
        }
      }
    }

    platformController2 = [(RoutePlanningDataCoordinator *)self platformController];
    [platformController2 clearIfCurrentSession:v4];
  }
}

- (void)resume
{
  if ([(RoutePlanningDataCoordinator *)self isSuspended])
  {
    platformController = [(RoutePlanningDataCoordinator *)self platformController];
    stashedRoutePlanningSession = [(RoutePlanningDataCoordinator *)self stashedRoutePlanningSession];
    [platformController replaceCurrentSessionWithSession:stashedRoutePlanningSession];
  }
}

- (void)suspend
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  if (routePlanningSession)
  {
    v4 = routePlanningSession;
    isSuspended = [(RoutePlanningDataCoordinator *)self isSuspended];

    if ((isSuspended & 1) == 0)
    {
      routePlanningSession2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
      [(RoutePlanningDataCoordinator *)self setStashedRoutePlanningSession:routePlanningSession2];

      platformController = [(RoutePlanningDataCoordinator *)self platformController];
      routePlanningSession3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
      [platformController popIfCurrentSession:routePlanningSession3];
    }
  }
}

- (BOOL)isSuspended
{
  stashedRoutePlanningSession = [(RoutePlanningDataCoordinator *)self stashedRoutePlanningSession];
  if (stashedRoutePlanningSession)
  {
    stashedRoutePlanningSession2 = [(RoutePlanningDataCoordinator *)self stashedRoutePlanningSession];
    v5 = [stashedRoutePlanningSession2 sessionState] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)refreshVirtualGarage
{
  objc_initWeak(&location, self);
  v3 = +[VGVirtualGarageService sharedService];
  [v3 registerObserver:self];

  v4 = +[VGVirtualGarageService sharedService];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100DDEB4C;
  v5[3] = &unk_101655840;
  objc_copyWeak(&v6, &location);
  [v4 virtualGarageGetGarageWithReply:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)refreshRidesharingOptionsIfVisible
{
  if ([(RoutePlanningDataCoordinator *)self transportType]== 4 && sub_100016C50() && [(RoutePlanningDataCoordinator *)self isEnabled])
  {
    rideBookingPlanningSession = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
    if (!rideBookingPlanningSession)
    {
      v4 = sub_10006D178();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315906;
        v8 = "[RoutePlanningDataCoordinator refreshRidesharingOptionsIfVisible]";
        v9 = 2080;
        v10 = "RoutePlanningDataCoordinator.m";
        v11 = 1024;
        v12 = 1015;
        v13 = 2080;
        v14 = "existingSession != nil";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v7, 0x26u);
      }

      if (sub_100E03634())
      {
        v5 = sub_10006D178();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v6 = +[NSThread callStackSymbols];
          v7 = 138412290;
          v8 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
        }
      }
    }

    [rideBookingPlanningSession refresh];
  }
}

- (DirectionItem)directionItemForCurrentSession
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (routePlanningSession)
  {
    routePlanningSession2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    v5 = [DirectionItem directionItemWithRoutePlanningSession:routePlanningSession2];
  }

  else
  {
    rideBookingPlanningSession = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];

    if (!rideBookingPlanningSession)
    {
      goto LABEL_6;
    }

    routePlanningSession2 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
    v5 = [DirectionItem directionItemWithRideBookingSession:routePlanningSession2];
  }

  rideBookingPlanningSession = v5;

LABEL_6:

  return rideBookingPlanningSession;
}

- (BOOL)canAddStop
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (!routePlanningSession)
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  routePlanningSession2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DDF0C8;
  v10[3] = &unk_101655138;
  v10[4] = &v11;
  [routePlanningSession2 enumerateRequestsOrWaypointsUsingBlock:v10];

  transportType = [(RoutePlanningDataCoordinator *)self transportType];
  v6 = 0;
  if (transportType <= 1)
  {
    if (transportType)
    {
      if (transportType == 1)
      {
        IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
LABEL_14:
        v6 = IsEnabled_DrivingMultiWaypointRoutes;
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
    {
      v6 = 1;
      goto LABEL_15;
    }

LABEL_13:
    IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_Maps182();
    goto LABEL_14;
  }

  if (transportType == 2)
  {
    goto LABEL_13;
  }

  if (transportType == 5)
  {
    IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_Maps420();
    goto LABEL_14;
  }

LABEL_15:
  UInteger = GEOConfigGetUInteger();
  if (v6)
  {
    if (UInteger)
    {
      LOBYTE(v6) = v12[3] < UInteger;
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (void)startWithDirectionItem:(id)item traits:(id)traits userInfo:(id)info
{
  itemCopy = item;
  infoCopy = info;
  traitsCopy = traits;
  v10 = [infoCopy objectForKeyedSubscript:@"DisableNotReachableErrorInRoutePlanning"];
  -[RoutePlanningDataCoordinator setDisableNotReachableError:](self, "setDisableNotReachableError:", [v10 BOOLValue]);

  if (infoCopy)
  {
    v11 = [RoutePlanningTiming timingWithUserInfo:infoCopy];
    v12 = v11;
    if (v11)
    {
      timing = v11;
    }

    else
    {
      timing = [itemCopy timing];
    }

    timing2 = timing;

    if (!timing2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  timing2 = [itemCopy timing];
  if (timing2)
  {
LABEL_8:
    objc_storeStrong(&self->_timing, timing2);
  }

LABEL_9:
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  waypointRequestResults = [routePlanningSession waypointRequestResults];
  v17 = sub_100D506E0(itemCopy, traitsCopy, waypointRequestResults, infoCopy);

  platformController = [(RoutePlanningDataCoordinator *)self platformController];
  [platformController replaceCurrentSessionWithSession:v17];
}

- (NSArray)automaticSharingContacts
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  configuration = [routePlanningSession configuration];
  automaticSharingContacts = [configuration automaticSharingContacts];
  v5 = automaticSharingContacts;
  if (automaticSharingContacts)
  {
    v6 = automaticSharingContacts;
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  v7 = v6;

  return v6;
}

- (NSUUID)originalHistoryEntryIdentifier
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (routePlanningSession)
  {
    routePlanningSession2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    configuration = [routePlanningSession2 configuration];
    originalHistoryEntryIdentifier = [configuration originalHistoryEntryIdentifier];
  }

  else
  {
    originalHistoryEntryIdentifier = 0;
  }

  return originalHistoryEntryIdentifier;
}

- (void)_reloadUsingNewTransitPreferences:(id)preferences
{
  preferencesCopy = preferences;
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (routePlanningSession)
  {
    routePlanningSession2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    configuration = [routePlanningSession2 configuration];
    routeLoadingTaskFactory = [configuration routeLoadingTaskFactory];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(RoutePlanningDataCoordinator *)self transportType]== 3)
      {
        routePlanningSession4 = [routeLoadingTaskFactory factoryByModifyingTransitPreferences:preferencesCopy timing:self->_timing];
        routePlanningSession3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
        configuration2 = [routePlanningSession3 configuration];
        waypointRequestResults = [routePlanningSession3 waypointRequestResults];
        v12 = [configuration2 configurationByModifyingRouteLoadingTaskFactory:routePlanningSession4 andDedupingWaypointRequests:waypointRequestResults];

        [v12 setInitialTransportType:{-[RoutePlanningDataCoordinator transportType](self, "transportType")}];
        [v12 setInitialRoutesBeingFetchedExternally:0];
        v13 = [[RoutePlanningSession alloc] initWithInitiator:1 configuration:v12];
        platformController = [(RoutePlanningDataCoordinator *)self platformController];
        [platformController replaceCurrentSessionWithSession:v13];

        transitPreferences = [(RoutePlanningDataCoordinator *)self transitPreferences];
        [(RoutePlanningDataCoordinator *)self _notifyDidUpdateTransitPreferences:transitPreferences];
      }

      else
      {
        routePlanningSession4 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
        [routePlanningSession4 purgeRouteCollectionForTransportType:3];
      }
    }
  }
}

- (void)_reloadUsingNewCyclePreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (!preferencesCopy)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315906;
      v21 = "[RoutePlanningDataCoordinator _reloadUsingNewCyclePreferences:]";
      v22 = 2080;
      v23 = "RoutePlanningDataCoordinator.m";
      v24 = 1024;
      v25 = 885;
      v26 = 2080;
      v27 = "preferences != nil";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v20, 0x26u);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        v20 = 138412290;
        v21 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", &v20, 0xCu);
      }
    }
  }

  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (routePlanningSession)
  {
    routePlanningSession2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    configuration = [routePlanningSession2 configuration];
    routeLoadingTaskFactory = [configuration routeLoadingTaskFactory];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(RoutePlanningDataCoordinator *)self transportType]== 5)
      {
        routePlanningSession4 = [routeLoadingTaskFactory factoryByModifyingCyclePreferences:preferencesCopy timing:self->_timing];
        routePlanningSession3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
        configuration2 = [routePlanningSession3 configuration];
        waypointRequestResults = [routePlanningSession3 waypointRequestResults];
        v13 = [configuration2 configurationByModifyingRouteLoadingTaskFactory:routePlanningSession4 andDedupingWaypointRequests:waypointRequestResults];

        [v13 setInitialTransportType:{-[RoutePlanningDataCoordinator transportType](self, "transportType")}];
        [v13 setInitialRoutesBeingFetchedExternally:0];
        v14 = [[RoutePlanningSession alloc] initWithInitiator:1 configuration:v13];
        platformController = [(RoutePlanningDataCoordinator *)self platformController];
        [platformController replaceCurrentSessionWithSession:v14];

        cyclePreferences = [(RoutePlanningDataCoordinator *)self cyclePreferences];
        [(RoutePlanningDataCoordinator *)self _notifyDidUpdateCyclePreferences:cyclePreferences];
      }

      else
      {
        routePlanningSession4 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
        [routePlanningSession4 purgeRouteCollectionForTransportType:5];
      }
    }
  }
}

- (void)updateCyclePreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (preferencesCopy)
  {
    cyclePreferences = [(RoutePlanningDataCoordinator *)self cyclePreferences];
    v6 = [preferencesCopy isEqual:cyclePreferences];

    if ((v6 & 1) == 0)
    {
      [preferencesCopy synchronize];
      v7 = +[NSUserDefaults standardUserDefaults];
      [MapsAnalyticStateProvider updateCycleOptionsInformation:v7];

      routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

      if (!routePlanningSession)
      {
        cyclePreferences2 = [(RoutePlanningDataCoordinator *)self cyclePreferences];
        [(RoutePlanningDataCoordinator *)self _notifyDidUpdateCyclePreferences:cyclePreferences2];
      }
    }
  }

  else
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315906;
      v14 = "[RoutePlanningDataCoordinator updateCyclePreferences:]";
      v15 = 2080;
      v16 = "RoutePlanningDataCoordinator.m";
      v17 = 1024;
      v18 = 871;
      v19 = 2080;
      v20 = "preferences != nil";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v13, 0x26u);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
      }
    }
  }
}

- (void)updateVirtualGarage:(id)garage
{
  garageCopy = garage;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136316418;
        v13 = "[RoutePlanningDataCoordinator updateVirtualGarage:]";
        v14 = 2080;
        v15 = "RoutePlanningDataCoordinator.m";
        v16 = 1024;
        v17 = 864;
        v18 = 2080;
        v19 = "dispatch_get_main_queue()";
        v20 = 2080;
        v21 = dispatch_queue_get_label(&_dispatch_main_q);
        v22 = 2080;
        v23 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v12, 0x3Au);
      }

      if (sub_100E03634())
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NSThread callStackSymbols];
          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
        }
      }
    }
  }

  virtualGarage = self->_virtualGarage;
  self->_virtualGarage = garageCopy;

  [(RoutePlanningDataCoordinator *)self _notifyDidUpdateVirtualGarage];
}

- (void)updateTransitPreferences:(id)preferences
{
  preferencesCopy = preferences;
  transitPreferences = [(RoutePlanningDataCoordinator *)self transitPreferences];
  v6 = preferencesCopy;
  if (v6 | transitPreferences)
  {
    v9 = v6;
    v7 = [transitPreferences isEqual:v6];

    v6 = v9;
    if ((v7 & 1) == 0)
    {
      [v9 synchronize];
      routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

      v6 = v9;
      if (!routePlanningSession)
      {
        [(RoutePlanningDataCoordinator *)self _notifyDidUpdateTransitPreferences:v9];
        v6 = v9;
      }
    }
  }
}

- (void)_reloadUsingNewWalkPreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (!preferencesCopy)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315906;
      v21 = "[RoutePlanningDataCoordinator _reloadUsingNewWalkPreferences:]";
      v22 = 2080;
      v23 = "RoutePlanningDataCoordinator.m";
      v24 = 1024;
      v25 = 825;
      v26 = 2080;
      v27 = "preferences != nil";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v20, 0x26u);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        v20 = 138412290;
        v21 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", &v20, 0xCu);
      }
    }
  }

  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (routePlanningSession)
  {
    routePlanningSession2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    configuration = [routePlanningSession2 configuration];
    routeLoadingTaskFactory = [configuration routeLoadingTaskFactory];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(RoutePlanningDataCoordinator *)self transportType]== 2)
      {
        routePlanningSession4 = [routeLoadingTaskFactory factoryByModifyingWalkPreferences:preferencesCopy timing:self->_timing];
        routePlanningSession3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
        configuration2 = [routePlanningSession3 configuration];
        waypointRequestResults = [routePlanningSession3 waypointRequestResults];
        v13 = [configuration2 configurationByModifyingRouteLoadingTaskFactory:routePlanningSession4 andDedupingWaypointRequests:waypointRequestResults];

        [v13 setInitialTransportType:{-[RoutePlanningDataCoordinator transportType](self, "transportType")}];
        [v13 setInitialRoutesBeingFetchedExternally:0];
        v14 = [[RoutePlanningSession alloc] initWithInitiator:1 configuration:v13];
        platformController = [(RoutePlanningDataCoordinator *)self platformController];
        [platformController replaceCurrentSessionWithSession:v14];

        walkPreferences = [(RoutePlanningDataCoordinator *)self walkPreferences];
        [(RoutePlanningDataCoordinator *)self _notifyDidUpdateWalkPreferences:walkPreferences];
      }

      else
      {
        routePlanningSession4 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
        [routePlanningSession4 purgeRouteCollectionForTransportType:2];
      }
    }
  }
}

- (void)_reloadUsingNewDrivePreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (!preferencesCopy)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315906;
      v21 = "[RoutePlanningDataCoordinator _reloadUsingNewDrivePreferences:]";
      v22 = 2080;
      v23 = "RoutePlanningDataCoordinator.m";
      v24 = 1024;
      v25 = 798;
      v26 = 2080;
      v27 = "preferences != nil";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v20, 0x26u);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        v20 = 138412290;
        v21 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", &v20, 0xCu);
      }
    }
  }

  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (routePlanningSession)
  {
    routePlanningSession2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    configuration = [routePlanningSession2 configuration];
    routeLoadingTaskFactory = [configuration routeLoadingTaskFactory];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(RoutePlanningDataCoordinator *)self transportType]== 1)
      {
        routePlanningSession4 = [routeLoadingTaskFactory factoryByModifyingDrivePreferences:preferencesCopy timing:self->_timing];
        routePlanningSession3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
        configuration2 = [routePlanningSession3 configuration];
        waypointRequestResults = [routePlanningSession3 waypointRequestResults];
        v13 = [configuration2 configurationByModifyingRouteLoadingTaskFactory:routePlanningSession4 andDedupingWaypointRequests:waypointRequestResults];

        [v13 setInitialTransportType:{-[RoutePlanningDataCoordinator transportType](self, "transportType")}];
        [v13 setInitialRoutesBeingFetchedExternally:0];
        v14 = [[RoutePlanningSession alloc] initWithInitiator:1 configuration:v13];
        platformController = [(RoutePlanningDataCoordinator *)self platformController];
        [platformController replaceCurrentSessionWithSession:v14];

        drivePreferences = [(RoutePlanningDataCoordinator *)self drivePreferences];
        [(RoutePlanningDataCoordinator *)self _notifyDidUpdateDrivePreferences:drivePreferences];
      }

      else
      {
        routePlanningSession4 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
        [routePlanningSession4 purgeRouteCollectionForTransportType:1];
      }
    }
  }
}

- (void)updateWalkPreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (preferencesCopy)
  {
    walkPreferences = [(RoutePlanningDataCoordinator *)self walkPreferences];
    v6 = [preferencesCopy isEqual:walkPreferences];

    if ((v6 & 1) == 0)
    {
      [preferencesCopy synchronize];
      v7 = +[NSUserDefaults standardUserDefaults];
      [MapsAnalyticStateProvider updateWalkOptionsInformation:v7];

      routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

      if (!routePlanningSession)
      {
        walkPreferences2 = [(RoutePlanningDataCoordinator *)self walkPreferences];
        [(RoutePlanningDataCoordinator *)self _notifyDidUpdateWalkPreferences:walkPreferences2];
      }
    }
  }

  else
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315906;
      v14 = "[RoutePlanningDataCoordinator updateWalkPreferences:]";
      v15 = 2080;
      v16 = "RoutePlanningDataCoordinator.m";
      v17 = 1024;
      v18 = 784;
      v19 = 2080;
      v20 = "preferences != nil";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v13, 0x26u);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
      }
    }
  }
}

- (void)updateDrivePreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (preferencesCopy)
  {
    drivePreferences = [(RoutePlanningDataCoordinator *)self drivePreferences];
    v6 = [preferencesCopy isEqual:drivePreferences];

    if ((v6 & 1) == 0)
    {
      [preferencesCopy synchronize];
      v7 = +[NSUserDefaults standardUserDefaults];
      [MapsAnalyticStateProvider updateDriveOptionsInformation:v7];

      routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

      if (!routePlanningSession)
      {
        drivePreferences2 = [(RoutePlanningDataCoordinator *)self drivePreferences];
        [(RoutePlanningDataCoordinator *)self _notifyDidUpdateDrivePreferences:drivePreferences2];
      }
    }
  }

  else
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315906;
      v14 = "[RoutePlanningDataCoordinator updateDrivePreferences:]";
      v15 = 2080;
      v16 = "RoutePlanningDataCoordinator.m";
      v17 = 1024;
      v18 = 770;
      v19 = 2080;
      v20 = "preferences != nil";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v13, 0x26u);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
      }
    }
  }
}

- (BOOL)updateTiming:(id)timing
{
  timingCopy = timing;
  v6 = self->_timing;
  v7 = timingCopy;
  if (v7 | v6 && (v8 = [v6 isEqual:v7], v7, v6, (v8 & 1) == 0))
  {
    v10 = sub_100035E6C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      timing = self->_timing;
      v15 = 138412546;
      timingCopy2 = timing;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Changing timing from %@ to %@", &v15, 0x16u);
    }

    objc_storeStrong(&self->_timing, timing);
    drivePreferences = [(RoutePlanningDataCoordinator *)self drivePreferences];
    [(RoutePlanningDataCoordinator *)self _reloadUsingNewDrivePreferences:drivePreferences];

    transitPreferences = [(RoutePlanningDataCoordinator *)self transitPreferences];
    [(RoutePlanningDataCoordinator *)self _reloadUsingNewTransitPreferences:transitPreferences];

    [(RoutePlanningDataCoordinator *)self _notifyDidUpdateTiming];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updateTransportType:(int64_t)type
{
  [(RoutePlanningDataCoordinator *)self setDesiredTransportType:?];
  v5 = sub_100016C50();
  if (type == 4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    typeCopy = type;
  }

  else
  {
    typeCopy = 1;
  }

  if (typeCopy != [(RoutePlanningDataCoordinator *)self transportType])
  {
    rideBookingPlanningSession = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];

    if (rideBookingPlanningSession)
    {
      rideBookingPlanningSession2 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
      waypointRequests = [rideBookingPlanningSession2 waypointRequests];

      rideBookingPlanningSession3 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
      traits = [rideBookingPlanningSession3 traits];
      copyByIncrementingSessionCounters = [traits copyByIncrementingSessionCounters];

      platformController = [(RoutePlanningDataCoordinator *)self platformController];
      sessionStack = [platformController sessionStack];
      v16 = sub_1000282CC(sessionStack, &stru_101655110);
      lastObject = [v16 lastObject];

      configuration = [lastObject configuration];
      isResumingMultipointRoute = [configuration isResumingMultipointRoute];

      configuration2 = [lastObject configuration];
      resumeRouteHandle = [configuration2 resumeRouteHandle];

      configuration3 = [lastObject configuration];
      persistentData = [configuration3 persistentData];

      v55 = waypointRequests;
      v24 = [[RoutePlanningSessionConfiguration alloc] initWithWaypointRequests:waypointRequests traits:copyByIncrementingSessionCounters existingTiming:self->_timing isResumingMultipointRoute:isResumingMultipointRoute resumeRouteHandle:resumeRouteHandle persistentData:persistentData];
      if ([(RoutePlanningSessionConfiguration *)v24 hasTransportType:typeCopy])
      {
        [(RoutePlanningSessionConfiguration *)v24 setInitialTransportType:typeCopy];
      }

      else
      {
        v35 = sub_10006D178();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v57 = "[RoutePlanningDataCoordinator updateTransportType:]";
          v58 = 2080;
          v59 = "RoutePlanningDataCoordinator.m";
          v60 = 1024;
          v61 = 716;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
        }

        if (sub_100E03634())
        {
          v36 = sub_10006D178();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v57 = v37;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      v38 = [[RoutePlanningSession alloc] initWithInitiator:1 configuration:v24];
      platformController2 = [(RoutePlanningDataCoordinator *)self platformController];
      rideBookingPlanningSession4 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
      [platformController2 popIfCurrentSession:rideBookingPlanningSession4];

      platformController3 = [(RoutePlanningDataCoordinator *)self platformController];
      currentSession = [platformController3 currentSession];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      platformController4 = [(RoutePlanningDataCoordinator *)self platformController];
      v45 = platformController4;
      if (isKindOfClass)
      {
        currentSession2 = [platformController4 currentSession];

        shortcutIdentifier = [currentSession2 shortcutIdentifier];
        [(RoutePlanningSession *)v38 setShortcutIdentifier:shortcutIdentifier];
        platformController5 = [(RoutePlanningDataCoordinator *)self platformController];
        [platformController5 replaceCurrentSessionWithSession:v38];

        v45 = currentSession2;
      }

      else
      {
        [platformController4 pushSession:v38];
      }
    }

    else
    {
      routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

      if (routePlanningSession)
      {
        routePlanningSession2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
        configuration4 = [routePlanningSession2 configuration];
        v28 = configuration4;
        if (typeCopy == 4)
        {

          traits2 = [v28 traits];
          copyByIncrementingSessionCounters2 = [traits2 copyByIncrementingSessionCounters];

          v31 = [RideBookingPlanningSession alloc];
          waypointRequests2 = [v28 waypointRequests];
          v33 = [(RideBookingPlanningSession *)v31 initWithInitiator:1 waypointRequests:waypointRequests2 traits:copyByIncrementingSessionCounters2];

          platformController6 = [(RoutePlanningDataCoordinator *)self platformController];
          [platformController6 pushSession:v33];
        }

        else
        {
          v49 = [configuration4 hasTransportType:typeCopy];

          routePlanningSession3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
          v28 = routePlanningSession3;
          if (v49)
          {
            [routePlanningSession3 safelySetCurrentTransportType:typeCopy];
          }

          else
          {
            configuration5 = [routePlanningSession3 configuration];
            isNavigationTracePlayback = [configuration5 isNavigationTracePlayback];

            if (isNavigationTracePlayback)
            {
              goto LABEL_27;
            }

            v53 = sub_10006D178();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v57 = "[RoutePlanningDataCoordinator updateTransportType:]";
              v58 = 2080;
              v59 = "RoutePlanningDataCoordinator.m";
              v60 = 1024;
              v61 = 745;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
            }

            if (!sub_100E03634())
            {
              goto LABEL_27;
            }

            v28 = sub_10006D178();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v54 = +[NSThread callStackSymbols];
              *buf = 138412290;
              v57 = v54;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }
          }
        }
      }
    }

LABEL_27:
    [(RoutePlanningDataCoordinator *)self _notifyDidUpdateTransportType];
  }
}

- (void)updateCurrentRouteDisplayedMapRect:(id)rect
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v5 = rect.var0.var1;
  v6 = rect.var0.var0;
  v8 = self->_currentRouteDisplayedMapRect.origin.x == rect.var0.var0 && self->_currentRouteDisplayedMapRect.origin.y == rect.var0.var1;
  if (!v8 || (self->_currentRouteDisplayedMapRect.size.width == rect.var1.var0 ? (v9 = self->_currentRouteDisplayedMapRect.size.height == rect.var1.var1) : (v9 = 0), !v9))
  {
    [(RoutePlanningDataCoordinator *)self setCurrentRouteDisplayedMapRect:rect.var0.var0, rect.var0.var1, rect.var1.var0, rect.var1.var1];

    [(RoutePlanningDataCoordinator *)self _notifyDidUpdateCurrentRouteDisplayedMapRect:v6, v5, var0, var1];
  }
}

- (void)updateCurrentRouteIndex:(unint64_t)index
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (!routePlanningSession)
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = [NSString stringWithFormat:@"%@ should only be called when a RoutePlanningSession is active", v14];
      *buf = 136316162;
      v23 = "[RoutePlanningDataCoordinator updateCurrentRouteIndex:]";
      v24 = 2080;
      v25 = "RoutePlanningDataCoordinator.m";
      v26 = 1024;
      v27 = 665;
      v28 = 2080;
      v29 = "self.routePlanningSession != nil";
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  routePlanningSession2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (routePlanningSession2)
  {
    routeCollection = [(RoutePlanningDataCoordinator *)self routeCollection];
    v9 = [routeCollection count];

    if (v9 <= index)
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        index = [NSString stringWithFormat:@"routeIndex (%lu) is not part of the current routeCollection", index];
        *buf = 136316162;
        v23 = "[RoutePlanningDataCoordinator updateCurrentRouteIndex:]";
        v24 = 2080;
        v25 = "RoutePlanningDataCoordinator.m";
        v26 = 1024;
        v27 = 670;
        v28 = 2080;
        v29 = "routeIndex < self.routeCollection.count";
        v30 = 2112;
        v31 = index;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
      }

      if (sub_100E03634())
      {
        v20 = sub_10006D178();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v23 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    routeCollection2 = [(RoutePlanningDataCoordinator *)self routeCollection];
    v11 = [routeCollection2 count];

    if (v11 > index)
    {
      routePlanningSession3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
      [routePlanningSession3 setSelectedRouteIndex:index forTransportType:{-[RoutePlanningDataCoordinator transportType](self, "transportType")}];
    }
  }
}

- (void)updateCurrentRoute:(id)route
{
  routeCopy = route;
  routeCollection = [(RoutePlanningDataCoordinator *)self routeCollection];
  v6 = [routeCollection indexOfRoute:routeCopy];

  [(RoutePlanningDataCoordinator *)self updateCurrentRouteIndex:v6];
}

- (NSString)destinationName
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (routePlanningSession)
  {
    routePlanningSession2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  }

  else
  {
    rideBookingPlanningSession = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];

    if (!rideBookingPlanningSession)
    {
      goto LABEL_6;
    }

    routePlanningSession2 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
  }

  v6 = routePlanningSession2;
  rideBookingPlanningSession = [routePlanningSession2 destinationName];

LABEL_6:

  return rideBookingPlanningSession;
}

- (NSString)originName
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (routePlanningSession)
  {
    routePlanningSession2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  }

  else
  {
    rideBookingPlanningSession = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];

    if (!rideBookingPlanningSession)
    {
      goto LABEL_6;
    }

    routePlanningSession2 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
  }

  v6 = routePlanningSession2;
  rideBookingPlanningSession = [routePlanningSession2 originName];

LABEL_6:

  return rideBookingPlanningSession;
}

- (RideBookingRideOptionStateObserverProxy)rideOptionStateObserver
{
  rideBookingPlanningSession = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
  rideOptionStateObserver = [rideBookingPlanningSession rideOptionStateObserver];

  return rideOptionStateObserver;
}

- (WaypointSet)resolvedWaypointSet
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (routePlanningSession)
  {
    routePlanningSession2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  }

  else
  {
    rideBookingPlanningSession = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];

    if (!rideBookingPlanningSession)
    {
      goto LABEL_6;
    }

    routePlanningSession2 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
  }

  v6 = routePlanningSession2;
  rideBookingPlanningSession = [routePlanningSession2 resolvedWaypoints];

LABEL_6:

  return rideBookingPlanningSession;
}

- (RoutePlanningWaypointRequest)destinationWaypointRequest
{
  waypointRequests = [(RoutePlanningDataCoordinator *)self waypointRequests];
  lastObject = [waypointRequests lastObject];

  return lastObject;
}

- (RoutePlanningWaypointRequest)originWaypointRequest
{
  waypointRequests = [(RoutePlanningDataCoordinator *)self waypointRequests];
  firstObject = [waypointRequests firstObject];

  return firstObject;
}

- (NSArray)waypointRequests
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (routePlanningSession)
  {
    routePlanningSession2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    configuration = [routePlanningSession2 configuration];
    waypointRequests = [configuration waypointRequests];
LABEL_5:

    goto LABEL_6;
  }

  rideBookingPlanningSession = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];

  if (rideBookingPlanningSession)
  {
    routePlanningSession2 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
    configuration = [routePlanningSession2 originRequest];
    v11[0] = configuration;
    rideBookingPlanningSession2 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
    destinationRequest = [rideBookingPlanningSession2 destinationRequest];
    v11[1] = destinationRequest;
    waypointRequests = [NSArray arrayWithObjects:v11 count:2];

    goto LABEL_5;
  }

  waypointRequests = 0;
LABEL_6:

  return waypointRequests;
}

- (RoutePlanningError)routePlanningError
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  resolvedWaypoints = [routePlanningSession resolvedWaypoints];
  origin = [resolvedWaypoints origin];
  mapItemStorage = [origin mapItemStorage];

  routePlanningSession2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  resolvedWaypoints2 = [routePlanningSession2 resolvedWaypoints];
  destination = [resolvedWaypoints2 destination];
  mapItemStorage2 = [destination mapItemStorage];

  routePlanningSession3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (routePlanningSession3)
  {
    routePlanningSession4 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    rideOptionStateObserverResult = [routePlanningSession4 routeCollectionResultForTransportType:{-[RoutePlanningDataCoordinator transportType](self, "transportType")}];
LABEL_5:
    rideBookingPlanningSession = rideOptionStateObserverResult;

    goto LABEL_6;
  }

  rideBookingPlanningSession = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];

  if (rideBookingPlanningSession)
  {
    routePlanningSession4 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
    rideOptionStateObserverResult = [routePlanningSession4 rideOptionStateObserverResult];
    goto LABEL_5;
  }

LABEL_6:
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100DE19B8;
  v31 = sub_100DE19C8;
  v32 = 0;
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_100DE19D0;
  v22 = &unk_1016550D0;
  v26 = &v27;
  selfCopy = self;
  v15 = mapItemStorage;
  v24 = v15;
  v16 = mapItemStorage2;
  v25 = v16;
  [rideBookingPlanningSession withValue:&stru_1016550A8 orError:&v19];
  if (-[RoutePlanningDataCoordinator disableNotReachableError](self, "disableNotReachableError", v19, v20, v21, v22, selfCopy) && [v28[5] errorCode] == 16)
  {
    [v28[5] setErrorCode:1];
  }

  v17 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v17;
}

- (int64_t)requestState
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (routePlanningSession)
  {
    routePlanningSession2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
LABEL_5:
    v6 = routePlanningSession2;
    requestState = [routePlanningSession2 requestState];

    return requestState;
  }

  rideBookingPlanningSession = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];

  if (rideBookingPlanningSession)
  {
    routePlanningSession2 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
    goto LABEL_5;
  }

  return 0;
}

- (int64_t)desiredTransportType
{
  result = [(RoutePlanningDataCoordinator *)self transportType];
  if (!result)
  {
    return self->_desiredTransportType;
  }

  return result;
}

- (CyclePreferences)cyclePreferences
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  cyclePreferences = [routePlanningSession cyclePreferences];
  v4 = cyclePreferences;
  if (cyclePreferences)
  {
    v5 = cyclePreferences;
  }

  else
  {
    v6 = [CyclePreferences alloc];
    v7 = +[NSUserDefaults standardUserDefaults];
    v5 = [(CyclePreferences *)v6 initWithDefaults:v7];
  }

  return v5;
}

- (GEORouteDisplayHints)displayHints
{
  currentRoute = [(RoutePlanningDataCoordinator *)self currentRoute];
  displayHints = [currentRoute displayHints];

  return displayHints;
}

- (TransitPreferences)transitPreferences
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  transitPreferences = [routePlanningSession transitPreferences];
  v4 = transitPreferences;
  if (transitPreferences)
  {
    v5 = transitPreferences;
  }

  else
  {
    v6 = [TransitPreferences alloc];
    v7 = +[NSUserDefaults standardUserDefaults];
    v5 = [(WatchSyncedPreferences *)v6 initWithDefaults:v7];
  }

  return v5;
}

- (WalkPreferences)walkPreferences
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  walkPreferences = [routePlanningSession walkPreferences];
  v4 = walkPreferences;
  if (walkPreferences)
  {
    v5 = walkPreferences;
  }

  else
  {
    v6 = [WalkPreferences alloc];
    v7 = +[NSUserDefaults standardUserDefaults];
    v5 = [(WalkPreferences *)v6 initWithDefaults:v7];
  }

  return v5;
}

- (DrivePreferences)drivePreferences
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  drivePreferences = [routePlanningSession drivePreferences];
  v4 = drivePreferences;
  if (drivePreferences)
  {
    v5 = drivePreferences;
  }

  else
  {
    v6 = [DrivePreferences alloc];
    v7 = +[NSUserDefaults standardUserDefaults];
    v5 = [(DrivePreferences *)v6 initWithDefaults:v7];
  }

  return v5;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)currentRouteDisplayedMapRect
{
  x = self->_currentRouteDisplayedMapRect.origin.x;
  y = self->_currentRouteDisplayedMapRect.origin.y;
  width = self->_currentRouteDisplayedMapRect.size.width;
  height = self->_currentRouteDisplayedMapRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (GEOComposedRoute)currentRoute
{
  routeCollection = [(RoutePlanningDataCoordinator *)self routeCollection];
  currentRoute = [routeCollection currentRoute];

  return currentRoute;
}

- (GEOAdvisoriesInfo)advisoriesInfo
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  advisoriesInfo = [routePlanningSession advisoriesInfo];

  return advisoriesInfo;
}

- (RouteCollection)routeCollection
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  v4 = [routePlanningSession routeCollectionForTransportType:{-[RoutePlanningDataCoordinator transportType](self, "transportType")}];

  return v4;
}

- (void)setupDataForCurrentObservers
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  observers = [(RoutePlanningDataCoordinator *)self observers];
  v4 = [observers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(observers);
        }

        [(RoutePlanningDataCoordinator *)self setupDataForObserver:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [observers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setupDataForObserver:(id)observer
{
  observerCopy = observer;
  observedRoutePlanningData = [observerCopy observedRoutePlanningData];
  if (!observedRoutePlanningData)
  {
    goto LABEL_18;
  }

  v6 = observedRoutePlanningData;
  observers = [(RoutePlanningDataCoordinator *)self observers];
  v8 = [observers containsObject:observerCopy];

  if ((v8 & 1) == 0)
  {
    v23 = sub_10006D178();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = 136315906;
      v27 = "[RoutePlanningDataCoordinator setupDataForObserver:]";
      v28 = 2080;
      v29 = "RoutePlanningDataCoordinator.m";
      v30 = 1024;
      v31 = 445;
      v32 = 2080;
      v33 = "[self.observers containsObject:observer]";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v26, 0x26u);
    }

    if (sub_100E03634())
    {
      v24 = sub_10006D178();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = +[NSThread callStackSymbols];
        v26 = 138412290;
        v27 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@", &v26, 0xCu);
      }
    }
  }

  if (v6)
  {
    originWaypointRequest = [(RoutePlanningDataCoordinator *)self originWaypointRequest];
    destinationWaypointRequest = [(RoutePlanningDataCoordinator *)self destinationWaypointRequest];
    [observerCopy routePlanningDataCoordinator:self didUpdateOriginWaypointRequest:originWaypointRequest destinationWaypointRequest:destinationWaypointRequest];

    if ((v6 & 0x10) == 0)
    {
LABEL_5:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_5;
  }

  [observerCopy routePlanningDataCoordinator:self didUpdateTransportType:{-[RoutePlanningDataCoordinator transportType](self, "transportType")}];
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  [observerCopy routePlanningDataCoordinator:self didUpdateRequestState:{-[RoutePlanningDataCoordinator requestState](self, "requestState")}];
  if ((v6 & 0x40) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  routeCollection = [(RoutePlanningDataCoordinator *)self routeCollection];
  [observerCopy routePlanningDataCoordinator:self didUpdateRouteCollection:routeCollection];

  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  drivePreferences = [(RoutePlanningDataCoordinator *)self drivePreferences];
  [observerCopy routePlanningDataCoordinator:self didUpdateDrivePreferences:drivePreferences];

  if ((v6 & 0x10000) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  walkPreferences = [(RoutePlanningDataCoordinator *)self walkPreferences];
  [observerCopy routePlanningDataCoordinator:self didUpdateWalkPreferences:walkPreferences];

  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  transitPreferences = [(RoutePlanningDataCoordinator *)self transitPreferences];
  [observerCopy routePlanningDataCoordinator:self didUpdateTransitPreferences:transitPreferences];

  if ((v6 & 0x1000) == 0)
  {
LABEL_11:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  cyclePreferences = [(RoutePlanningDataCoordinator *)self cyclePreferences];
  [observerCopy routePlanningDataCoordinator:self didUpdateCyclePreferences:cyclePreferences];

  if ((v6 & 0x2000) == 0)
  {
LABEL_12:
    if ((v6 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  virtualGarage = [(RoutePlanningDataCoordinator *)self virtualGarage];
  [observerCopy routePlanningDataCoordinator:self didUpdateVirtualGarage:virtualGarage];

  if ((v6 & 4) == 0)
  {
LABEL_13:
    if ((v6 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  resolvedWaypointSet = [(RoutePlanningDataCoordinator *)self resolvedWaypointSet];
  [observerCopy routePlanningDataCoordinator:self didUpdateResolvedWaypointSet:resolvedWaypointSet];

  if ((v6 & 8) == 0)
  {
LABEL_14:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  originName = [(RoutePlanningDataCoordinator *)self originName];
  destinationName = [(RoutePlanningDataCoordinator *)self destinationName];
  [observerCopy routePlanningDataCoordinator:self didUpdateOriginName:originName destinationName:destinationName];

  if ((v6 & 0x200) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

LABEL_31:
    timing = [(RoutePlanningDataCoordinator *)self timing];
    [observerCopy routePlanningDataCoordinator:self didUpdateTiming:timing];

    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_30:
  [(RoutePlanningDataCoordinator *)self currentRouteDisplayedMapRect];
  [observerCopy routePlanningDataCoordinator:self didUpdateCurrentRouteDisplayedMapRect:?];
  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  if ((v6 & 0x20000) != 0)
  {
LABEL_17:
    routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    automaticSharingContacts = [routePlanningSession automaticSharingContacts];
    [observerCopy routePlanningDataCoordinator:self didUpdateAutomaticSharingContacts:automaticSharingContacts];
  }

LABEL_18:
}

- (NSHashTable)observersIfEnabled
{
  if ([(RoutePlanningDataCoordinator *)self _shouldNotifyObservers])
  {
    observers = [(RoutePlanningDataCoordinator *)self observers];
    v4 = [observers copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(RoutePlanningDataCoordinator *)self observers];
  [observers removeObject:observerCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy observedRoutePlanningData])
  {
    observers = [(RoutePlanningDataCoordinator *)self observers];
    [observers addObject:observerCopy];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_101937378 == context)
  {
    v13 = &_dispatch_main_q;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v20 = sub_100DE26C8;
    v21 = &unk_101661A90;
    v22 = pathCopy;
    selfCopy = self;
    v14 = &_dispatch_main_q;
    v15 = v19;
    label = dispatch_queue_get_label(&_dispatch_main_q);
    v17 = dispatch_queue_get_label(0);
    if (label == v17 || label && v17 && !strcmp(label, v17))
    {
      v18 = objc_autoreleasePoolPush();
      v20(v15);
      objc_autoreleasePoolPop(v18);
    }

    else
    {
      dispatch_async(&_dispatch_main_q, v15);
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = RoutePlanningDataCoordinator;
    [(RoutePlanningDataCoordinator *)&v24 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)RideBookingPlanningSession:(id)session rideOptionStateDidChange:(id)change
{
  changeCopy = change;
  [(RoutePlanningDataCoordinator *)self _notifyDidUpdateRequestState:[(RoutePlanningDataCoordinator *)self requestState]];
  if (![changeCopy noRideOptionsAvailable] || (objc_msgSend(changeCopy, "loadingAppStoreSuggestions") & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    observersIfEnabled = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
    v7 = [observersIfEnabled countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(observersIfEnabled);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (([v11 observedRoutePlanningData] & 0x400) != 0)
          {
            [v11 routePlanningDataCoordinator:self didUpdateRideBookingRideOptionState:changeCopy];
          }
        }

        v8 = [observersIfEnabled countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)RideBookingPlanningSession:(id)session didFinishResolvingWaypointSet:(id)set
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100DE2B30;
  v5[3] = &unk_10165E750;
  v5[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100DE2B38;
  v4[3] = &unk_10165F7B8;
  v4[4] = self;
  [set withValue:v5 orError:v4];
}

- (void)routePlanningSession:(id)session didChangeRouteCreationRegion:(BOOL)region
{
  v5 = [(RoutePlanningDataCoordinator *)self routeCollection:session];
  [(RoutePlanningDataCoordinator *)self _notifyDidUpdateRouteCollection:v5];
}

- (BOOL)inACustomRouteRegion
{
  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  inACustomRouteRegion = [routePlanningSession inACustomRouteRegion];

  return inACustomRouteRegion;
}

- (void)routePlanningSession:(id)session didReceiveUpdates:(id)updates forRoutesResult:(id)result
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100DE2C50;
  v5[3] = &unk_101655400;
  v5[4] = self;
  [result withValue:v5 orError:&stru_101655088];
}

- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type
{
  if ([(RoutePlanningDataCoordinator *)self transportType:session]== type)
  {

    [(RoutePlanningDataCoordinator *)self _notifyResultRouteCollectionChangeForCurrentTransportType];
  }
}

- (void)routePlanningSession:(id)session didFinishResolvingWaypointSet:(id)set
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100DE2D68;
  v5[3] = &unk_10165E750;
  v5[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100DE2D70;
  v4[3] = &unk_10165F7B8;
  v4[4] = self;
  [set withValue:v5 orError:v4];
}

- (void)mapsSession:(id)session didChangeState:(unint64_t)state
{
  [(RoutePlanningDataCoordinator *)self _updateIsEnabled];
  if (state == 1)
  {
    requestState = [(RoutePlanningDataCoordinator *)self requestState];

    [(RoutePlanningDataCoordinator *)self _notifyDidUpdateRequestState:requestState];
  }
}

- (void)_updateIsEnabled
{
  rideBookingPlanningSession = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
  if (rideBookingPlanningSession)
  {
    v4 = 1;
  }

  else
  {
    routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    if (routePlanningSession)
    {
      v4 = 1;
    }

    else
    {
      navigationSession = [(RoutePlanningDataCoordinator *)self navigationSession];
      if (navigationSession)
      {
        navigationSession2 = [(RoutePlanningDataCoordinator *)self navigationSession];
        v4 = [navigationSession2 sessionState] == 0;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  if (self->_enabled != v4)
  {
    self->_enabled = v4;

    [(RoutePlanningDataCoordinator *)self _notifyDidUpdateEnabled];
  }
}

- (void)setNavigationSession:(id)session
{
  sessionCopy = session;
  navigationSession = self->_navigationSession;
  if (navigationSession != sessionCopy)
  {
    v7 = sessionCopy;
    [(NavigationSession *)navigationSession unregisterObserver:self];
    objc_storeStrong(&self->_navigationSession, session);
    [(NavigationSession *)self->_navigationSession registerObserver:self];
    sessionCopy = v7;
  }
}

- (void)setRideBookingPlanningSession:(id)session
{
  sessionCopy = session;
  rideBookingPlanningSession = self->_rideBookingPlanningSession;
  if (rideBookingPlanningSession != sessionCopy)
  {
    v7 = sessionCopy;
    [(RideBookingPlanningSession *)rideBookingPlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_rideBookingPlanningSession, session);
    [(RideBookingPlanningSession *)self->_rideBookingPlanningSession registerObserver:self];
    sessionCopy = v7;
  }
}

- (void)setRoutePlanningSession:(id)session
{
  sessionCopy = session;
  routePlanningSession = self->_routePlanningSession;
  if (routePlanningSession != sessionCopy)
  {
    v7 = sessionCopy;
    [(RoutePlanningSession *)routePlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_routePlanningSession, session);
    [(RoutePlanningSession *)self->_routePlanningSession registerObserver:self];
    sessionCopy = v7;
  }
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  controllerCopy = controller;
  sessionCopy = session;
  toSessionCopy = toSession;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = toSessionCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  [(RoutePlanningDataCoordinator *)self setRideBookingPlanningSession:v12];

  v13 = toSessionCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  [(RoutePlanningDataCoordinator *)self setRoutePlanningSession:v15];
  v16 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  [(RoutePlanningDataCoordinator *)self setNavigationSession:v18];
  [(RoutePlanningDataCoordinator *)self setDesiredTransportType:0];
  if (!v16 || !self->_timing)
  {
    v19 = +[RoutePlanningTiming leaveNowTiming];
    timing = self->_timing;
    self->_timing = v19;
  }

  routePlanningSession = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (routePlanningSession)
  {
    [(RoutePlanningDataCoordinator *)self setStashedRoutePlanningSession:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      sessionStack = [controllerCopy sessionStack];
      v23 = [sessionStack countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v23)
      {
        v24 = *v48;
        do
        {
          v25 = 0;
          do
          {
            if (*v48 != v24)
            {
              objc_enumerationMutation(sessionStack);
            }

            v26 = *(*(&v47 + 1) + 8 * v25);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v26 setShortcutIdentifier:0];
            }

            v25 = v25 + 1;
          }

          while (v23 != v25);
          v23 = [sessionStack countByEnumeratingWithState:&v47 objects:v51 count:16];
        }

        while (v23);
      }
    }
  }

  [(RoutePlanningDataCoordinator *)self _updateIsEnabled];
  chromeViewController = [controllerCopy chromeViewController];
  contexts = [chromeViewController contexts];
  lastObject = [contexts lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  navigationSession = [(RoutePlanningDataCoordinator *)self navigationSession];
  LODWORD(chromeViewController) = navigationSession != 0;

  if (((chromeViewController | isKindOfClass) & 1) == 0)
  {
    delegate = [(RoutePlanningDataCoordinator *)self delegate];
    [delegate routePlanningDataCoordinator:self isEnabled:{-[RoutePlanningDataCoordinator isEnabled](self, "isEnabled")}];

    [(RoutePlanningDataCoordinator *)self _notifyDidUpdateOriginDestinationWaypointRequest];
    [(RoutePlanningDataCoordinator *)self updateCurrentRouteDisplayedMapRect:MKMapRectNull.origin.x, MKMapRectNull.origin.y, MKMapRectNull.size.width, MKMapRectNull.size.height];
    routeCollection = [(RoutePlanningDataCoordinator *)self routeCollection];
    [(RoutePlanningDataCoordinator *)self _notifyDidUpdateRouteCollection:routeCollection];
  }

  routePlanningSession2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  v35 = routePlanningSession2 == 0;

  if (v35)
  {
    v38 = +[VGVirtualGarageService sharedService];
    [v38 unregisterObserver:self];
  }

  else
  {
    v36 = sessionCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;

    if (v38)
    {
      currentTransportType = [v38 currentTransportType];
      routePlanningSession3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
      v41 = currentTransportType != [routePlanningSession3 currentTransportType];
    }

    else
    {
      v41 = 0;
    }

    objc_opt_class();
    if ((v41 | objc_opt_isKindOfClass()))
    {
      [(RoutePlanningDataCoordinator *)self _notifyDidUpdateTransportType];
    }

    else if (v38)
    {
      [(RoutePlanningDataCoordinator *)self _notifyResultRouteCollectionChangeForCurrentTransportType];
    }

    objc_initWeak(&location, self);
    v42 = +[VGVirtualGarageService sharedService];
    [v42 registerObserver:self];

    v43 = +[VGVirtualGarageService sharedService];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100DE358C;
    v44[3] = &unk_101655840;
    objc_copyWeak(&v45, &location);
    [v43 virtualGarageGetGarageWithReply:v44];

    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [[NSMutableArray alloc] initWithArray:&off_1016ED970];
  [v5 addObjectsFromArray:&off_1016EDB38];
  [v5 addObjectsFromArray:&off_1016EDBC8];
  [v5 addObjectsFromArray:&off_1016EC950];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v4 removeObserver:self forKeyPath:*(*(&v12 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11.receiver = self;
  v11.super_class = RoutePlanningDataCoordinator;
  [(RoutePlanningDataCoordinator *)&v11 dealloc];
}

- (RoutePlanningDataCoordinator)initWithPlatformController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    v23 = sub_10006D178();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v33 = "[RoutePlanningDataCoordinator initWithPlatformController:]";
      v34 = 2080;
      v35 = "RoutePlanningDataCoordinator.m";
      v36 = 1024;
      v37 = 107;
      v38 = 2080;
      v39 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v24 = sub_10006D178();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v33 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v30.receiver = self;
  v30.super_class = RoutePlanningDataCoordinator;
  v6 = [(RoutePlanningDataCoordinator *)&v30 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_platformController, controller);
    [(PlatformController *)v7->_platformController registerObserver:v7];
    v8 = +[NSHashTable weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v8;

    size = MKMapRectNull.size;
    v7->_currentRouteDisplayedMapRect.origin = MKMapRectNull.origin;
    v7->_currentRouteDisplayedMapRect.size = size;
    v11 = +[RoutePlanningTiming leaveNowTiming];
    timing = v7->_timing;
    v7->_timing = v11;

    v13 = +[NSUserDefaults standardUserDefaults];
    v14 = [[NSMutableArray alloc] initWithArray:&off_1016ED970];
    [v14 addObjectsFromArray:&off_1016EDB38];
    [v14 addObjectsFromArray:&off_1016EDBC8];
    [v14 addObjectsFromArray:&off_1016EC950];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [v13 addObserver:v7 forKeyPath:*(*(&v26 + 1) + 8 * i) options:0 context:{off_101937378, v26}];
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v17);
    }

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v7 selector:"_applicationWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

    v21 = v7;
  }

  return v7;
}

@end