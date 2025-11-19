@interface RoutePlanningDataCoordinator
- ($873BFAB23BBB6E2F0B0288ED2F935688)currentRouteDisplayedMapRect;
- (BOOL)canAddStop;
- (BOOL)inACustomRouteRegion;
- (BOOL)isSuspended;
- (BOOL)updateTiming:(id)a3;
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
- (RoutePlanningDataCoordinator)initWithPlatformController:(id)a3;
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
- (void)RideBookingPlanningSession:(id)a3 didFinishResolvingWaypointSet:(id)a4;
- (void)RideBookingPlanningSession:(id)a3 rideOptionStateDidChange:(id)a4;
- (void)_applicationWillEnterForeground;
- (void)_notifyDidUpdateAutomaticSharingContacts:(id)a3;
- (void)_notifyDidUpdateCurrentRouteDisplayedMapRect:(id)a3;
- (void)_notifyDidUpdateCyclePreferences:(id)a3;
- (void)_notifyDidUpdateDrivePreferences:(id)a3;
- (void)_notifyDidUpdateEnabled;
- (void)_notifyDidUpdateOriginDestinationNames;
- (void)_notifyDidUpdateOriginDestinationWaypointRequest;
- (void)_notifyDidUpdateRequestState:(int64_t)a3;
- (void)_notifyDidUpdateRouteCollection:(id)a3;
- (void)_notifyDidUpdateRoutes:(id)a3;
- (void)_notifyDidUpdateTiming;
- (void)_notifyDidUpdateTransitPreferences:(id)a3;
- (void)_notifyDidUpdateTransportType;
- (void)_notifyDidUpdateVirtualGarage;
- (void)_notifyDidUpdateWalkPreferences:(id)a3;
- (void)_notifyDidUpdateWaypointSet;
- (void)_notifyResultRouteCollectionChangeForCurrentTransportType;
- (void)_reloadUsingNewCyclePreferences:(id)a3;
- (void)_reloadUsingNewDrivePreferences:(id)a3;
- (void)_reloadUsingNewTransitPreferences:(id)a3;
- (void)_reloadUsingNewWalkPreferences:(id)a3;
- (void)_updateIsEnabled;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)mapsSession:(id)a3 didChangeState:(unint64_t)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)refreshRidesharingOptionsIfVisible;
- (void)refreshVirtualGarage;
- (void)removeObserver:(id)a3;
- (void)resume;
- (void)routePlanningSession:(id)a3 didChangeRouteCreationRegion:(BOOL)a4;
- (void)routePlanningSession:(id)a3 didFinishResolvingWaypointSet:(id)a4;
- (void)routePlanningSession:(id)a3 didReceiveUpdates:(id)a4 forRoutesResult:(id)a5;
- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5;
- (void)setNavigationSession:(id)a3;
- (void)setRideBookingPlanningSession:(id)a3;
- (void)setRoutePlanningSession:(id)a3;
- (void)setupDataForCurrentObservers;
- (void)setupDataForObserver:(id)a3;
- (void)startWithDirectionItem:(id)a3 traits:(id)a4 userInfo:(id)a5;
- (void)stop;
- (void)suspend;
- (void)updateCurrentRoute:(id)a3;
- (void)updateCurrentRouteDisplayedMapRect:(id)a3;
- (void)updateCurrentRouteIndex:(unint64_t)a3;
- (void)updateCyclePreferences:(id)a3;
- (void)updateDrivePreferences:(id)a3;
- (void)updateTransitPreferences:(id)a3;
- (void)updateTransportType:(int64_t)a3;
- (void)updateVirtualGarage:(id)a3;
- (void)updateWalkPreferences:(id)a3;
- (void)virtualGarageDidUpdate:(id)a3;
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
  v3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (v3)
  {
    v4 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    v5 = [v4 currentTransportType];

    return v5;
  }

  else
  {
    v7 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
    v8 = v7 != 0;

    return 4 * v8;
  }
}

- (RoutePlanningDataCoordinatorPresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)virtualGarageDidUpdate:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100DDD24C;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_notifyDidUpdateAutomaticSharingContacts:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v6 = [v5 copy];

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
          [v11 routePlanningDataCoordinator:self didUpdateAutomaticSharingContacts:v4];
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
  v3 = [(RoutePlanningDataCoordinator *)self routeCollection];
  [(RoutePlanningDataCoordinator *)self _notifyDidUpdateRouteCollection:v3];

  v4 = [(RoutePlanningDataCoordinator *)self requestState];

  [(RoutePlanningDataCoordinator *)self _notifyDidUpdateRequestState:v4];
}

- (void)_notifyDidUpdateOriginDestinationNames
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v4 = [v3 copy];

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
          v10 = [(RoutePlanningDataCoordinator *)self originName];
          v11 = [(RoutePlanningDataCoordinator *)self destinationName];
          [v9 routePlanningDataCoordinator:self didUpdateOriginName:v10 destinationName:v11];
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
  v3 = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 observedRoutePlanningData] & 0x4000) != 0)
        {
          v9 = [(RoutePlanningDataCoordinator *)self timing];
          [v8 routePlanningDataCoordinator:self didUpdateTiming:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v3 = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        if (([v8 observedRoutePlanningData] & 4) != 0)
        {
          v9 = [(RoutePlanningDataCoordinator *)self resolvedWaypointSet];
          [v8 routePlanningDataCoordinator:self didUpdateResolvedWaypointSet:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }

  v10 = [(RoutePlanningDataCoordinator *)self resolvedWaypointSet];
  v11 = [v10 origin];
  v12 = [v11 geoMapItem];
  v13 = [v12 timezone];

  v14 = [(RoutePlanningDataCoordinator *)self resolvedWaypointSet];
  v15 = [v14 destination];
  v16 = [v15 geoMapItem];
  v17 = [v16 timezone];

  v18 = [(RoutePlanningTiming *)self->_timing arrivalDate];

  if (v18)
  {
    timing = [(RoutePlanningTiming *)self->_timing arrivalDate];
    v20 = [RoutePlanningTiming timingWithArrivalDate:timing departureTimeZone:v13 arrivalTimeZone:v17];
  }

  else
  {
    v21 = [(RoutePlanningTiming *)self->_timing departureDate];

    if (!v21)
    {
      v23 = [RoutePlanningTiming timingWithArrivalDate:0 departureTimeZone:v13 arrivalTimeZone:v17];
      timing = self->_timing;
      self->_timing = v23;
      goto LABEL_15;
    }

    timing = [(RoutePlanningTiming *)self->_timing departureDate];
    v20 = [RoutePlanningTiming timingWithDepartureDate:timing departureTimeZone:v13 arrivalTimeZone:v17];
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
  v3 = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 observedRoutePlanningData])
        {
          v9 = [(RoutePlanningDataCoordinator *)self originWaypointRequest];
          v10 = [(RoutePlanningDataCoordinator *)self destinationWaypointRequest];
          [v8 routePlanningDataCoordinator:self didUpdateOriginWaypointRequest:v9 destinationWaypointRequest:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(RoutePlanningDataCoordinator *)self _notifyDidUpdateOriginDestinationNames];
}

- (void)_notifyDidUpdateRequestState:(int64_t)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
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
        if (([v10 observedRoutePlanningData] & 0x20) != 0)
        {
          [v10 routePlanningDataCoordinator:self didUpdateRequestState:a3];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 observedRoutePlanningData] & 0x2000) != 0)
        {
          v9 = [(RoutePlanningDataCoordinator *)self virtualGarage];
          [v8 routePlanningDataCoordinator:self didUpdateVirtualGarage:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_notifyDidUpdateCyclePreferences:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
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
        if (([v10 observedRoutePlanningData] & 0x1000) != 0)
        {
          [v10 routePlanningDataCoordinator:self didUpdateCyclePreferences:v4];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyDidUpdateTransitPreferences:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
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
        if (([v10 observedRoutePlanningData] & 0x100) != 0)
        {
          [v10 routePlanningDataCoordinator:self didUpdateTransitPreferences:v4];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyDidUpdateWalkPreferences:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
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
        if (([v10 observedRoutePlanningData] & 0x10000) != 0)
        {
          [v10 routePlanningDataCoordinator:self didUpdateWalkPreferences:v4];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyDidUpdateDrivePreferences:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
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
        if (([v10 observedRoutePlanningData] & 0x80) != 0)
        {
          [v10 routePlanningDataCoordinator:self didUpdateDrivePreferences:v4];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (([v8 observedRoutePlanningData] & 0x10) != 0)
        {
          [v8 routePlanningDataCoordinator:self didUpdateTransportType:{-[RoutePlanningDataCoordinator desiredTransportType](self, "desiredTransportType")}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(RoutePlanningDataCoordinator *)self _notifyResultRouteCollectionChangeForCurrentTransportType];
  [(RoutePlanningDataCoordinator *)self _notifyDidUpdateOriginDestinationNames];
}

- (void)_notifyDidUpdateCurrentRouteDisplayedMapRect:(id)a3
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v5 = a3.var0.var1;
  v6 = a3.var0.var0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (([v13 observedRoutePlanningData] & 0x200) != 0)
        {
          [v13 routePlanningDataCoordinator:self didUpdateCurrentRouteDisplayedMapRect:{v6, v5, var0, var1}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_notifyDidUpdateRoutes:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
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
        if (([v10 observedRoutePlanningData] & 0x800) != 0)
        {
          [v10 routePlanningDataCoordinator:self didUpdateRoutes:v4];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyDidUpdateRouteCollection:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
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
        if (([v10 observedRoutePlanningData] & 0x40) != 0)
        {
          [v10 routePlanningDataCoordinator:self didUpdateRouteCollection:v4];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyDidUpdateEnabled
{
  v3 = [(RoutePlanningDataCoordinator *)self isEnabled];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(RoutePlanningDataCoordinator *)self observers];
  v5 = [v4 copy];

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
          [v10 routePlanningDataCoordinator:self didEnable:v3];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)stop
{
  v3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  if (v3 || ([(RoutePlanningDataCoordinator *)self rideBookingPlanningSession], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [(RoutePlanningDataCoordinator *)self platformController];
    v6 = [v5 currentSession];

    if (v6 != v4)
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

    v7 = [(RoutePlanningDataCoordinator *)self platformController];
    [v7 clearIfCurrentSession:v4];
  }
}

- (void)resume
{
  if ([(RoutePlanningDataCoordinator *)self isSuspended])
  {
    v4 = [(RoutePlanningDataCoordinator *)self platformController];
    v3 = [(RoutePlanningDataCoordinator *)self stashedRoutePlanningSession];
    [v4 replaceCurrentSessionWithSession:v3];
  }
}

- (void)suspend
{
  v3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  if (v3)
  {
    v4 = v3;
    v5 = [(RoutePlanningDataCoordinator *)self isSuspended];

    if ((v5 & 1) == 0)
    {
      v6 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
      [(RoutePlanningDataCoordinator *)self setStashedRoutePlanningSession:v6];

      v8 = [(RoutePlanningDataCoordinator *)self platformController];
      v7 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
      [v8 popIfCurrentSession:v7];
    }
  }
}

- (BOOL)isSuspended
{
  v3 = [(RoutePlanningDataCoordinator *)self stashedRoutePlanningSession];
  if (v3)
  {
    v4 = [(RoutePlanningDataCoordinator *)self stashedRoutePlanningSession];
    v5 = [v4 sessionState] == 2;
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
    v3 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
    if (!v3)
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

    [v3 refresh];
  }
}

- (DirectionItem)directionItemForCurrentSession
{
  v3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (v3)
  {
    v4 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    v5 = [DirectionItem directionItemWithRoutePlanningSession:v4];
  }

  else
  {
    v6 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];

    if (!v6)
    {
      goto LABEL_6;
    }

    v4 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
    v5 = [DirectionItem directionItemWithRideBookingSession:v4];
  }

  v6 = v5;

LABEL_6:

  return v6;
}

- (BOOL)canAddStop
{
  v3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (!v3)
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DDF0C8;
  v10[3] = &unk_101655138;
  v10[4] = &v11;
  [v4 enumerateRequestsOrWaypointsUsingBlock:v10];

  v5 = [(RoutePlanningDataCoordinator *)self transportType];
  v6 = 0;
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 == 1)
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

  if (v5 == 2)
  {
    goto LABEL_13;
  }

  if (v5 == 5)
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

- (void)startWithDirectionItem:(id)a3 traits:(id)a4 userInfo:(id)a5
{
  v19 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v8 objectForKeyedSubscript:@"DisableNotReachableErrorInRoutePlanning"];
  -[RoutePlanningDataCoordinator setDisableNotReachableError:](self, "setDisableNotReachableError:", [v10 BOOLValue]);

  if (v8)
  {
    v11 = [RoutePlanningTiming timingWithUserInfo:v8];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [v19 timing];
    }

    v14 = v13;

    if (!v14)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = [v19 timing];
  if (v14)
  {
LABEL_8:
    objc_storeStrong(&self->_timing, v14);
  }

LABEL_9:
  v15 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  v16 = [v15 waypointRequestResults];
  v17 = sub_100D506E0(v19, v9, v16, v8);

  v18 = [(RoutePlanningDataCoordinator *)self platformController];
  [v18 replaceCurrentSessionWithSession:v17];
}

- (NSArray)automaticSharingContacts
{
  v2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  v3 = [v2 configuration];
  v4 = [v3 automaticSharingContacts];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
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
  v3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (v3)
  {
    v4 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    v5 = [v4 configuration];
    v6 = [v5 originalHistoryEntryIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_reloadUsingNewTransitPreferences:(id)a3
{
  v16 = a3;
  v4 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (v4)
  {
    v5 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    v6 = [v5 configuration];
    v7 = [v6 routeLoadingTaskFactory];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(RoutePlanningDataCoordinator *)self transportType]== 3)
      {
        v8 = [v7 factoryByModifyingTransitPreferences:v16 timing:self->_timing];
        v9 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
        v10 = [v9 configuration];
        v11 = [v9 waypointRequestResults];
        v12 = [v10 configurationByModifyingRouteLoadingTaskFactory:v8 andDedupingWaypointRequests:v11];

        [v12 setInitialTransportType:{-[RoutePlanningDataCoordinator transportType](self, "transportType")}];
        [v12 setInitialRoutesBeingFetchedExternally:0];
        v13 = [[RoutePlanningSession alloc] initWithInitiator:1 configuration:v12];
        v14 = [(RoutePlanningDataCoordinator *)self platformController];
        [v14 replaceCurrentSessionWithSession:v13];

        v15 = [(RoutePlanningDataCoordinator *)self transitPreferences];
        [(RoutePlanningDataCoordinator *)self _notifyDidUpdateTransitPreferences:v15];
      }

      else
      {
        v8 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
        [v8 purgeRouteCollectionForTransportType:3];
      }
    }
  }
}

- (void)_reloadUsingNewCyclePreferences:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v5 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (v5)
  {
    v6 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    v7 = [v6 configuration];
    v8 = [v7 routeLoadingTaskFactory];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(RoutePlanningDataCoordinator *)self transportType]== 5)
      {
        v9 = [v8 factoryByModifyingCyclePreferences:v4 timing:self->_timing];
        v10 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
        v11 = [v10 configuration];
        v12 = [v10 waypointRequestResults];
        v13 = [v11 configurationByModifyingRouteLoadingTaskFactory:v9 andDedupingWaypointRequests:v12];

        [v13 setInitialTransportType:{-[RoutePlanningDataCoordinator transportType](self, "transportType")}];
        [v13 setInitialRoutesBeingFetchedExternally:0];
        v14 = [[RoutePlanningSession alloc] initWithInitiator:1 configuration:v13];
        v15 = [(RoutePlanningDataCoordinator *)self platformController];
        [v15 replaceCurrentSessionWithSession:v14];

        v16 = [(RoutePlanningDataCoordinator *)self cyclePreferences];
        [(RoutePlanningDataCoordinator *)self _notifyDidUpdateCyclePreferences:v16];
      }

      else
      {
        v9 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
        [v9 purgeRouteCollectionForTransportType:5];
      }
    }
  }
}

- (void)updateCyclePreferences:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RoutePlanningDataCoordinator *)self cyclePreferences];
    v6 = [v4 isEqual:v5];

    if ((v6 & 1) == 0)
    {
      [v4 synchronize];
      v7 = +[NSUserDefaults standardUserDefaults];
      [MapsAnalyticStateProvider updateCycleOptionsInformation:v7];

      v8 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

      if (!v8)
      {
        v9 = [(RoutePlanningDataCoordinator *)self cyclePreferences];
        [(RoutePlanningDataCoordinator *)self _notifyDidUpdateCyclePreferences:v9];
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

- (void)updateVirtualGarage:(id)a3
{
  v4 = a3;
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
  self->_virtualGarage = v4;

  [(RoutePlanningDataCoordinator *)self _notifyDidUpdateVirtualGarage];
}

- (void)updateTransitPreferences:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningDataCoordinator *)self transitPreferences];
  v6 = v4;
  if (v6 | v5)
  {
    v9 = v6;
    v7 = [v5 isEqual:v6];

    v6 = v9;
    if ((v7 & 1) == 0)
    {
      [v9 synchronize];
      v8 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

      v6 = v9;
      if (!v8)
      {
        [(RoutePlanningDataCoordinator *)self _notifyDidUpdateTransitPreferences:v9];
        v6 = v9;
      }
    }
  }
}

- (void)_reloadUsingNewWalkPreferences:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v5 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (v5)
  {
    v6 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    v7 = [v6 configuration];
    v8 = [v7 routeLoadingTaskFactory];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(RoutePlanningDataCoordinator *)self transportType]== 2)
      {
        v9 = [v8 factoryByModifyingWalkPreferences:v4 timing:self->_timing];
        v10 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
        v11 = [v10 configuration];
        v12 = [v10 waypointRequestResults];
        v13 = [v11 configurationByModifyingRouteLoadingTaskFactory:v9 andDedupingWaypointRequests:v12];

        [v13 setInitialTransportType:{-[RoutePlanningDataCoordinator transportType](self, "transportType")}];
        [v13 setInitialRoutesBeingFetchedExternally:0];
        v14 = [[RoutePlanningSession alloc] initWithInitiator:1 configuration:v13];
        v15 = [(RoutePlanningDataCoordinator *)self platformController];
        [v15 replaceCurrentSessionWithSession:v14];

        v16 = [(RoutePlanningDataCoordinator *)self walkPreferences];
        [(RoutePlanningDataCoordinator *)self _notifyDidUpdateWalkPreferences:v16];
      }

      else
      {
        v9 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
        [v9 purgeRouteCollectionForTransportType:2];
      }
    }
  }
}

- (void)_reloadUsingNewDrivePreferences:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v5 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (v5)
  {
    v6 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    v7 = [v6 configuration];
    v8 = [v7 routeLoadingTaskFactory];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(RoutePlanningDataCoordinator *)self transportType]== 1)
      {
        v9 = [v8 factoryByModifyingDrivePreferences:v4 timing:self->_timing];
        v10 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
        v11 = [v10 configuration];
        v12 = [v10 waypointRequestResults];
        v13 = [v11 configurationByModifyingRouteLoadingTaskFactory:v9 andDedupingWaypointRequests:v12];

        [v13 setInitialTransportType:{-[RoutePlanningDataCoordinator transportType](self, "transportType")}];
        [v13 setInitialRoutesBeingFetchedExternally:0];
        v14 = [[RoutePlanningSession alloc] initWithInitiator:1 configuration:v13];
        v15 = [(RoutePlanningDataCoordinator *)self platformController];
        [v15 replaceCurrentSessionWithSession:v14];

        v16 = [(RoutePlanningDataCoordinator *)self drivePreferences];
        [(RoutePlanningDataCoordinator *)self _notifyDidUpdateDrivePreferences:v16];
      }

      else
      {
        v9 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
        [v9 purgeRouteCollectionForTransportType:1];
      }
    }
  }
}

- (void)updateWalkPreferences:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RoutePlanningDataCoordinator *)self walkPreferences];
    v6 = [v4 isEqual:v5];

    if ((v6 & 1) == 0)
    {
      [v4 synchronize];
      v7 = +[NSUserDefaults standardUserDefaults];
      [MapsAnalyticStateProvider updateWalkOptionsInformation:v7];

      v8 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

      if (!v8)
      {
        v9 = [(RoutePlanningDataCoordinator *)self walkPreferences];
        [(RoutePlanningDataCoordinator *)self _notifyDidUpdateWalkPreferences:v9];
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

- (void)updateDrivePreferences:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RoutePlanningDataCoordinator *)self drivePreferences];
    v6 = [v4 isEqual:v5];

    if ((v6 & 1) == 0)
    {
      [v4 synchronize];
      v7 = +[NSUserDefaults standardUserDefaults];
      [MapsAnalyticStateProvider updateDriveOptionsInformation:v7];

      v8 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

      if (!v8)
      {
        v9 = [(RoutePlanningDataCoordinator *)self drivePreferences];
        [(RoutePlanningDataCoordinator *)self _notifyDidUpdateDrivePreferences:v9];
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

- (BOOL)updateTiming:(id)a3
{
  v5 = a3;
  v6 = self->_timing;
  v7 = v5;
  if (v7 | v6 && (v8 = [v6 isEqual:v7], v7, v6, (v8 & 1) == 0))
  {
    v10 = sub_100035E6C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      timing = self->_timing;
      v15 = 138412546;
      v16 = timing;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Changing timing from %@ to %@", &v15, 0x16u);
    }

    objc_storeStrong(&self->_timing, a3);
    v12 = [(RoutePlanningDataCoordinator *)self drivePreferences];
    [(RoutePlanningDataCoordinator *)self _reloadUsingNewDrivePreferences:v12];

    v13 = [(RoutePlanningDataCoordinator *)self transitPreferences];
    [(RoutePlanningDataCoordinator *)self _reloadUsingNewTransitPreferences:v13];

    [(RoutePlanningDataCoordinator *)self _notifyDidUpdateTiming];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updateTransportType:(int64_t)a3
{
  [(RoutePlanningDataCoordinator *)self setDesiredTransportType:?];
  v5 = sub_100016C50();
  if (a3 == 4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = a3;
  }

  else
  {
    v7 = 1;
  }

  if (v7 != [(RoutePlanningDataCoordinator *)self transportType])
  {
    v8 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];

    if (v8)
    {
      v9 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
      v10 = [v9 waypointRequests];

      v11 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
      v12 = [v11 traits];
      v13 = [v12 copyByIncrementingSessionCounters];

      v14 = [(RoutePlanningDataCoordinator *)self platformController];
      v15 = [v14 sessionStack];
      v16 = sub_1000282CC(v15, &stru_101655110);
      v17 = [v16 lastObject];

      v18 = [v17 configuration];
      v19 = [v18 isResumingMultipointRoute];

      v20 = [v17 configuration];
      v21 = [v20 resumeRouteHandle];

      v22 = [v17 configuration];
      v23 = [v22 persistentData];

      v55 = v10;
      v24 = [[RoutePlanningSessionConfiguration alloc] initWithWaypointRequests:v10 traits:v13 existingTiming:self->_timing isResumingMultipointRoute:v19 resumeRouteHandle:v21 persistentData:v23];
      if ([(RoutePlanningSessionConfiguration *)v24 hasTransportType:v7])
      {
        [(RoutePlanningSessionConfiguration *)v24 setInitialTransportType:v7];
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
      v39 = [(RoutePlanningDataCoordinator *)self platformController];
      v40 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
      [v39 popIfCurrentSession:v40];

      v41 = [(RoutePlanningDataCoordinator *)self platformController];
      v42 = [v41 currentSession];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v44 = [(RoutePlanningDataCoordinator *)self platformController];
      v45 = v44;
      if (isKindOfClass)
      {
        v46 = [v44 currentSession];

        v47 = [v46 shortcutIdentifier];
        [(RoutePlanningSession *)v38 setShortcutIdentifier:v47];
        v48 = [(RoutePlanningDataCoordinator *)self platformController];
        [v48 replaceCurrentSessionWithSession:v38];

        v45 = v46;
      }

      else
      {
        [v44 pushSession:v38];
      }
    }

    else
    {
      v25 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

      if (v25)
      {
        v26 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
        v27 = [v26 configuration];
        v28 = v27;
        if (v7 == 4)
        {

          v29 = [v28 traits];
          v30 = [v29 copyByIncrementingSessionCounters];

          v31 = [RideBookingPlanningSession alloc];
          v32 = [v28 waypointRequests];
          v33 = [(RideBookingPlanningSession *)v31 initWithInitiator:1 waypointRequests:v32 traits:v30];

          v34 = [(RoutePlanningDataCoordinator *)self platformController];
          [v34 pushSession:v33];
        }

        else
        {
          v49 = [v27 hasTransportType:v7];

          v50 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
          v28 = v50;
          if (v49)
          {
            [v50 safelySetCurrentTransportType:v7];
          }

          else
          {
            v51 = [v50 configuration];
            v52 = [v51 isNavigationTracePlayback];

            if (v52)
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

- (void)updateCurrentRouteDisplayedMapRect:(id)a3
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v5 = a3.var0.var1;
  v6 = a3.var0.var0;
  v8 = self->_currentRouteDisplayedMapRect.origin.x == a3.var0.var0 && self->_currentRouteDisplayedMapRect.origin.y == a3.var0.var1;
  if (!v8 || (self->_currentRouteDisplayedMapRect.size.width == a3.var1.var0 ? (v9 = self->_currentRouteDisplayedMapRect.size.height == a3.var1.var1) : (v9 = 0), !v9))
  {
    [(RoutePlanningDataCoordinator *)self setCurrentRouteDisplayedMapRect:a3.var0.var0, a3.var0.var1, a3.var1.var0, a3.var1.var1];

    [(RoutePlanningDataCoordinator *)self _notifyDidUpdateCurrentRouteDisplayedMapRect:v6, v5, var0, var1];
  }
}

- (void)updateCurrentRouteIndex:(unint64_t)a3
{
  v6 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (!v6)
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

  v7 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (v7)
  {
    v8 = [(RoutePlanningDataCoordinator *)self routeCollection];
    v9 = [v8 count];

    if (v9 <= a3)
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [NSString stringWithFormat:@"routeIndex (%lu) is not part of the current routeCollection", a3];
        *buf = 136316162;
        v23 = "[RoutePlanningDataCoordinator updateCurrentRouteIndex:]";
        v24 = 2080;
        v25 = "RoutePlanningDataCoordinator.m";
        v26 = 1024;
        v27 = 670;
        v28 = 2080;
        v29 = "routeIndex < self.routeCollection.count";
        v30 = 2112;
        v31 = v19;
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

    v10 = [(RoutePlanningDataCoordinator *)self routeCollection];
    v11 = [v10 count];

    if (v11 > a3)
    {
      v12 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
      [v12 setSelectedRouteIndex:a3 forTransportType:{-[RoutePlanningDataCoordinator transportType](self, "transportType")}];
    }
  }
}

- (void)updateCurrentRoute:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningDataCoordinator *)self routeCollection];
  v6 = [v5 indexOfRoute:v4];

  [(RoutePlanningDataCoordinator *)self updateCurrentRouteIndex:v6];
}

- (NSString)destinationName
{
  v3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (v3)
  {
    v4 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  }

  else
  {
    v5 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];

    if (!v5)
    {
      goto LABEL_6;
    }

    v4 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
  }

  v6 = v4;
  v5 = [v4 destinationName];

LABEL_6:

  return v5;
}

- (NSString)originName
{
  v3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (v3)
  {
    v4 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  }

  else
  {
    v5 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];

    if (!v5)
    {
      goto LABEL_6;
    }

    v4 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
  }

  v6 = v4;
  v5 = [v4 originName];

LABEL_6:

  return v5;
}

- (RideBookingRideOptionStateObserverProxy)rideOptionStateObserver
{
  v2 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
  v3 = [v2 rideOptionStateObserver];

  return v3;
}

- (WaypointSet)resolvedWaypointSet
{
  v3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (v3)
  {
    v4 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  }

  else
  {
    v5 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];

    if (!v5)
    {
      goto LABEL_6;
    }

    v4 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
  }

  v6 = v4;
  v5 = [v4 resolvedWaypoints];

LABEL_6:

  return v5;
}

- (RoutePlanningWaypointRequest)destinationWaypointRequest
{
  v2 = [(RoutePlanningDataCoordinator *)self waypointRequests];
  v3 = [v2 lastObject];

  return v3;
}

- (RoutePlanningWaypointRequest)originWaypointRequest
{
  v2 = [(RoutePlanningDataCoordinator *)self waypointRequests];
  v3 = [v2 firstObject];

  return v3;
}

- (NSArray)waypointRequests
{
  v3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (v3)
  {
    v4 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    v5 = [v4 configuration];
    v6 = [v5 waypointRequests];
LABEL_5:

    goto LABEL_6;
  }

  v7 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];

  if (v7)
  {
    v4 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
    v5 = [v4 originRequest];
    v11[0] = v5;
    v8 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
    v9 = [v8 destinationRequest];
    v11[1] = v9;
    v6 = [NSArray arrayWithObjects:v11 count:2];

    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (RoutePlanningError)routePlanningError
{
  v3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  v4 = [v3 resolvedWaypoints];
  v5 = [v4 origin];
  v6 = [v5 mapItemStorage];

  v7 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  v8 = [v7 resolvedWaypoints];
  v9 = [v8 destination];
  v10 = [v9 mapItemStorage];

  v11 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (v11)
  {
    v12 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    v13 = [v12 routeCollectionResultForTransportType:{-[RoutePlanningDataCoordinator transportType](self, "transportType")}];
LABEL_5:
    v14 = v13;

    goto LABEL_6;
  }

  v14 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];

  if (v14)
  {
    v12 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
    v13 = [v12 rideOptionStateObserverResult];
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
  v23 = self;
  v15 = v6;
  v24 = v15;
  v16 = v10;
  v25 = v16;
  [v14 withValue:&stru_1016550A8 orError:&v19];
  if (-[RoutePlanningDataCoordinator disableNotReachableError](self, "disableNotReachableError", v19, v20, v21, v22, v23) && [v28[5] errorCode] == 16)
  {
    [v28[5] setErrorCode:1];
  }

  v17 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v17;
}

- (int64_t)requestState
{
  v3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (v3)
  {
    v4 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
LABEL_5:
    v6 = v4;
    v7 = [v4 requestState];

    return v7;
  }

  v5 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];

  if (v5)
  {
    v4 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
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
  v2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  v3 = [v2 cyclePreferences];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v2 = [(RoutePlanningDataCoordinator *)self currentRoute];
  v3 = [v2 displayHints];

  return v3;
}

- (TransitPreferences)transitPreferences
{
  v2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  v3 = [v2 transitPreferences];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  v3 = [v2 walkPreferences];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  v3 = [v2 drivePreferences];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v2 = [(RoutePlanningDataCoordinator *)self routeCollection];
  v3 = [v2 currentRoute];

  return v3;
}

- (GEOAdvisoriesInfo)advisoriesInfo
{
  v2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  v3 = [v2 advisoriesInfo];

  return v3;
}

- (RouteCollection)routeCollection
{
  v3 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  v4 = [v3 routeCollectionForTransportType:{-[RoutePlanningDataCoordinator transportType](self, "transportType")}];

  return v4;
}

- (void)setupDataForCurrentObservers
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(RoutePlanningDataCoordinator *)self observers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [(RoutePlanningDataCoordinator *)self setupDataForObserver:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setupDataForObserver:(id)a3
{
  v4 = a3;
  v5 = [v4 observedRoutePlanningData];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = [(RoutePlanningDataCoordinator *)self observers];
  v8 = [v7 containsObject:v4];

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
    v11 = [(RoutePlanningDataCoordinator *)self originWaypointRequest];
    v12 = [(RoutePlanningDataCoordinator *)self destinationWaypointRequest];
    [v4 routePlanningDataCoordinator:self didUpdateOriginWaypointRequest:v11 destinationWaypointRequest:v12];

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

  [v4 routePlanningDataCoordinator:self didUpdateTransportType:{-[RoutePlanningDataCoordinator transportType](self, "transportType")}];
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
  [v4 routePlanningDataCoordinator:self didUpdateRequestState:{-[RoutePlanningDataCoordinator requestState](self, "requestState")}];
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
  v13 = [(RoutePlanningDataCoordinator *)self routeCollection];
  [v4 routePlanningDataCoordinator:self didUpdateRouteCollection:v13];

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
  v14 = [(RoutePlanningDataCoordinator *)self drivePreferences];
  [v4 routePlanningDataCoordinator:self didUpdateDrivePreferences:v14];

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
  v15 = [(RoutePlanningDataCoordinator *)self walkPreferences];
  [v4 routePlanningDataCoordinator:self didUpdateWalkPreferences:v15];

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
  v16 = [(RoutePlanningDataCoordinator *)self transitPreferences];
  [v4 routePlanningDataCoordinator:self didUpdateTransitPreferences:v16];

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
  v17 = [(RoutePlanningDataCoordinator *)self cyclePreferences];
  [v4 routePlanningDataCoordinator:self didUpdateCyclePreferences:v17];

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
  v18 = [(RoutePlanningDataCoordinator *)self virtualGarage];
  [v4 routePlanningDataCoordinator:self didUpdateVirtualGarage:v18];

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
  v19 = [(RoutePlanningDataCoordinator *)self resolvedWaypointSet];
  [v4 routePlanningDataCoordinator:self didUpdateResolvedWaypointSet:v19];

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
  v20 = [(RoutePlanningDataCoordinator *)self originName];
  v21 = [(RoutePlanningDataCoordinator *)self destinationName];
  [v4 routePlanningDataCoordinator:self didUpdateOriginName:v20 destinationName:v21];

  if ((v6 & 0x200) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

LABEL_31:
    v22 = [(RoutePlanningDataCoordinator *)self timing];
    [v4 routePlanningDataCoordinator:self didUpdateTiming:v22];

    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_30:
  [(RoutePlanningDataCoordinator *)self currentRouteDisplayedMapRect];
  [v4 routePlanningDataCoordinator:self didUpdateCurrentRouteDisplayedMapRect:?];
  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  if ((v6 & 0x20000) != 0)
  {
LABEL_17:
    v9 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    v10 = [v9 automaticSharingContacts];
    [v4 routePlanningDataCoordinator:self didUpdateAutomaticSharingContacts:v10];
  }

LABEL_18:
}

- (NSHashTable)observersIfEnabled
{
  if ([(RoutePlanningDataCoordinator *)self _shouldNotifyObservers])
  {
    v3 = [(RoutePlanningDataCoordinator *)self observers];
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningDataCoordinator *)self observers];
  [v5 removeObject:v4];
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  if ([v5 observedRoutePlanningData])
  {
    v4 = [(RoutePlanningDataCoordinator *)self observers];
    [v4 addObject:v5];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_101937378 == a6)
  {
    v13 = &_dispatch_main_q;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v20 = sub_100DE26C8;
    v21 = &unk_101661A90;
    v22 = v10;
    v23 = self;
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
    [(RoutePlanningDataCoordinator *)&v24 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)RideBookingPlanningSession:(id)a3 rideOptionStateDidChange:(id)a4
{
  v5 = a4;
  [(RoutePlanningDataCoordinator *)self _notifyDidUpdateRequestState:[(RoutePlanningDataCoordinator *)self requestState]];
  if (![v5 noRideOptionsAvailable] || (objc_msgSend(v5, "loadingAppStoreSuggestions") & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(RoutePlanningDataCoordinator *)self observersIfEnabled];
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
          if (([v11 observedRoutePlanningData] & 0x400) != 0)
          {
            [v11 routePlanningDataCoordinator:self didUpdateRideBookingRideOptionState:v5];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)RideBookingPlanningSession:(id)a3 didFinishResolvingWaypointSet:(id)a4
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
  [a4 withValue:v5 orError:v4];
}

- (void)routePlanningSession:(id)a3 didChangeRouteCreationRegion:(BOOL)a4
{
  v5 = [(RoutePlanningDataCoordinator *)self routeCollection:a3];
  [(RoutePlanningDataCoordinator *)self _notifyDidUpdateRouteCollection:v5];
}

- (BOOL)inACustomRouteRegion
{
  v2 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  v3 = [v2 inACustomRouteRegion];

  return v3;
}

- (void)routePlanningSession:(id)a3 didReceiveUpdates:(id)a4 forRoutesResult:(id)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100DE2C50;
  v5[3] = &unk_101655400;
  v5[4] = self;
  [a5 withValue:v5 orError:&stru_101655088];
}

- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5
{
  if ([(RoutePlanningDataCoordinator *)self transportType:a3]== a5)
  {

    [(RoutePlanningDataCoordinator *)self _notifyResultRouteCollectionChangeForCurrentTransportType];
  }
}

- (void)routePlanningSession:(id)a3 didFinishResolvingWaypointSet:(id)a4
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
  [a4 withValue:v5 orError:v4];
}

- (void)mapsSession:(id)a3 didChangeState:(unint64_t)a4
{
  [(RoutePlanningDataCoordinator *)self _updateIsEnabled];
  if (a4 == 1)
  {
    v6 = [(RoutePlanningDataCoordinator *)self requestState];

    [(RoutePlanningDataCoordinator *)self _notifyDidUpdateRequestState:v6];
  }
}

- (void)_updateIsEnabled
{
  v3 = [(RoutePlanningDataCoordinator *)self rideBookingPlanningSession];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(RoutePlanningDataCoordinator *)self navigationSession];
      if (v6)
      {
        v7 = [(RoutePlanningDataCoordinator *)self navigationSession];
        v4 = [v7 sessionState] == 0;
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

- (void)setNavigationSession:(id)a3
{
  v5 = a3;
  navigationSession = self->_navigationSession;
  if (navigationSession != v5)
  {
    v7 = v5;
    [(NavigationSession *)navigationSession unregisterObserver:self];
    objc_storeStrong(&self->_navigationSession, a3);
    [(NavigationSession *)self->_navigationSession registerObserver:self];
    v5 = v7;
  }
}

- (void)setRideBookingPlanningSession:(id)a3
{
  v5 = a3;
  rideBookingPlanningSession = self->_rideBookingPlanningSession;
  if (rideBookingPlanningSession != v5)
  {
    v7 = v5;
    [(RideBookingPlanningSession *)rideBookingPlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_rideBookingPlanningSession, a3);
    [(RideBookingPlanningSession *)self->_rideBookingPlanningSession registerObserver:self];
    v5 = v7;
  }
}

- (void)setRoutePlanningSession:(id)a3
{
  v5 = a3;
  routePlanningSession = self->_routePlanningSession;
  if (routePlanningSession != v5)
  {
    v7 = v5;
    [(RoutePlanningSession *)routePlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_routePlanningSession, a3);
    [(RoutePlanningSession *)self->_routePlanningSession registerObserver:self];
    v5 = v7;
  }
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  [(RoutePlanningDataCoordinator *)self setRideBookingPlanningSession:v12];

  v13 = v10;
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

  v21 = [(RoutePlanningDataCoordinator *)self routePlanningSession];

  if (v21)
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
      v22 = [v8 sessionStack];
      v23 = [v22 countByEnumeratingWithState:&v47 objects:v51 count:16];
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
              objc_enumerationMutation(v22);
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
          v23 = [v22 countByEnumeratingWithState:&v47 objects:v51 count:16];
        }

        while (v23);
      }
    }
  }

  [(RoutePlanningDataCoordinator *)self _updateIsEnabled];
  v27 = [v8 chromeViewController];
  v28 = [v27 contexts];
  v29 = [v28 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v31 = [(RoutePlanningDataCoordinator *)self navigationSession];
  LODWORD(v27) = v31 != 0;

  if (((v27 | isKindOfClass) & 1) == 0)
  {
    v32 = [(RoutePlanningDataCoordinator *)self delegate];
    [v32 routePlanningDataCoordinator:self isEnabled:{-[RoutePlanningDataCoordinator isEnabled](self, "isEnabled")}];

    [(RoutePlanningDataCoordinator *)self _notifyDidUpdateOriginDestinationWaypointRequest];
    [(RoutePlanningDataCoordinator *)self updateCurrentRouteDisplayedMapRect:MKMapRectNull.origin.x, MKMapRectNull.origin.y, MKMapRectNull.size.width, MKMapRectNull.size.height];
    v33 = [(RoutePlanningDataCoordinator *)self routeCollection];
    [(RoutePlanningDataCoordinator *)self _notifyDidUpdateRouteCollection:v33];
  }

  v34 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
  v35 = v34 == 0;

  if (v35)
  {
    v38 = +[VGVirtualGarageService sharedService];
    [v38 unregisterObserver:self];
  }

  else
  {
    v36 = v9;
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
      v39 = [v38 currentTransportType];
      v40 = [(RoutePlanningDataCoordinator *)self routePlanningSession];
      v41 = v39 != [v40 currentTransportType];
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

- (RoutePlanningDataCoordinator)initWithPlatformController:(id)a3
{
  v5 = a3;
  if (!v5)
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
    objc_storeStrong(&v6->_platformController, a3);
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