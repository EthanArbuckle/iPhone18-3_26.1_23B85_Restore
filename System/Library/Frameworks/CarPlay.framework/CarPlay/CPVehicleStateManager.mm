@interface CPVehicleStateManager
- (CAFRoute)route;
- (CPVehicleStateManager)init;
- (CPVehicleStateManagerDelegate)delegate;
- (void)carDidUpdateAccessories:(id)accessories;
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
- (void)clearRoute;
- (void)clearRouteLine;
- (void)didUpdateNavigationOwnership;
- (void)sendGuidanceState:(unsigned __int8)state;
- (void)sendRouteLine:(id)line;
- (void)setSupportsRouteSharing:(BOOL)sharing;
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
  selfCopy = self;
  navigation = [(CPVehicleStateManager *)selfCopy navigation];
  if (navigation)
  {
    v4 = navigation;
    route = [(CAFNavigation *)navigation route];
  }

  else
  {
    route = 0;
  }

  return route;
}

- (void)willReleaseNavigationOwnership
{
  selfCopy = self;
  CPVehicleStateManager.willReleaseNavigationOwnership()();
}

- (void)didUpdateNavigationOwnership
{
  selfCopy = self;
  CPVehicleStateManager.didUpdateNavigationOwnership()();
}

- (void)sendGuidanceState:(unsigned __int8)state
{
  selfCopy = self;
  CPVehicleStateManager.send(_:)(state);
}

- (void)setSupportsRouteSharing:(BOOL)sharing
{
  *(*(self + OBJC_IVAR___CPVehicleStateManager_routeSharingState) + 32) = sharing;
  selfCopy = self;

  RouteSharingState.supportsRouteSharing.didset();

  CPVehicleStateManager.forceUserEnabledIfAllowed(reason:)(1u);
}

- (void)sendRouteLine:(id)line
{
  swift_unknownObjectRetain();
  selfCopy = self;
  CPVehicleStateManager.send(_:)(line);
  swift_unknownObjectRelease();
}

- (void)clearRoute
{
  selfCopy = self;
  CPVehicleStateManager.clearRoute()();
}

- (void)clearRouteLine
{
  selfCopy = self;
  CPVehicleStateManager.clearRouteLine()();
}

- (CPVehicleStateManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)carManager:(id)manager didUpdateCurrentCar:(id)car
{
  if (car)
  {
    selfCopy = self;
    carCopy = car;
    [carCopy registerObserver_];
    [(CPVehicleStateManager *)selfCopy carDidUpdateAccessories:carCopy];
  }
}

- (void)carDidUpdateAccessories:(id)accessories
{
  selfCopy = self;
  route = [(CPVehicleStateManager *)selfCopy route];
  if (route)
  {
    v4 = route;
    [(CAFRoute *)route registerObserver:selfCopy];
    v5 = *(selfCopy + OBJC_IVAR___CPVehicleStateManager_routeSharingState);

    swift_unknownObjectWeakAssign();

    v6 = v4;
  }

  else
  {
    v6 = selfCopy;
  }
}

@end