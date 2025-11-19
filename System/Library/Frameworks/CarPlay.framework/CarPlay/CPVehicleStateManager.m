@interface CPVehicleStateManager
- (CAFRoute)route;
- (CPVehicleStateManager)init;
- (CPVehicleStateManagerDelegate)delegate;
- (void)carDidUpdateAccessories:(id)a3;
- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4;
- (void)clearRoute;
- (void)clearRouteLine;
- (void)didUpdateNavigationOwnership;
- (void)sendGuidanceState:(unsigned __int8)a3;
- (void)sendRouteLine:(id)a3;
- (void)setSupportsRouteSharing:(BOOL)a3;
- (void)willReleaseNavigationOwnership;
@end

@implementation CPVehicleStateManager

- (CPVehicleStateManagerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CAFRoute)route
{
  v2 = self;
  v3 = [(CPVehicleStateManager *)v2 navigation];
  if (v3)
  {
    v4 = v3;
    v5 = [(CAFNavigation *)v3 route];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)willReleaseNavigationOwnership
{
  v2 = self;
  CPVehicleStateManager.willReleaseNavigationOwnership()();
}

- (void)didUpdateNavigationOwnership
{
  v2 = self;
  CPVehicleStateManager.didUpdateNavigationOwnership()();
}

- (void)sendGuidanceState:(unsigned __int8)a3
{
  v4 = self;
  CPVehicleStateManager.send(_:)(a3);
}

- (void)setSupportsRouteSharing:(BOOL)a3
{
  *(*(self + OBJC_IVAR___CPVehicleStateManager_routeSharingState) + 32) = a3;
  v3 = self;

  RouteSharingState.supportsRouteSharing.didset();

  CPVehicleStateManager.forceUserEnabledIfAllowed(reason:)(1u);
}

- (void)sendRouteLine:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  CPVehicleStateManager.send(_:)(a3);
  swift_unknownObjectRelease();
}

- (void)clearRoute
{
  v2 = self;
  CPVehicleStateManager.clearRoute()();
}

- (void)clearRouteLine
{
  v2 = self;
  CPVehicleStateManager.clearRouteLine()();
}

- (CPVehicleStateManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4
{
  if (a4)
  {
    v6 = self;
    v5 = a4;
    [v5 registerObserver_];
    [(CPVehicleStateManager *)v6 carDidUpdateAccessories:v5];
  }
}

- (void)carDidUpdateAccessories:(id)a3
{
  v7 = self;
  v3 = [(CPVehicleStateManager *)v7 route];
  if (v3)
  {
    v4 = v3;
    [(CAFRoute *)v3 registerObserver:v7];
    v5 = *(v7 + OBJC_IVAR___CPVehicleStateManager_routeSharingState);

    swift_unknownObjectWeakAssign();

    v6 = v4;
  }

  else
  {
    v6 = v7;
  }
}

@end