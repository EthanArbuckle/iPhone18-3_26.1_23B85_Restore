@interface EVBadTripRouteInfo
- (EVBadTripRouteInfo)initWithRoute:(id)route currentVehicleState:(id)state;
- (id)description;
@end

@implementation EVBadTripRouteInfo

- (id)description
{
  v3 = objc_opt_class();
  uniqueRouteID = [(GEOComposedRoute *)self->_route uniqueRouteID];
  uUIDString = [uniqueRouteID UUIDString];
  v6 = [NSString stringWithFormat:@"<%@:%p, routeId: %@, lastTraversedStepIdx: %lu, initial: %lu, expected: %lu, real: %lu>", v3, self, uUIDString, [(GEOComposedRouteStep *)self->_lastTraversedStep stepIndex], [(NSNumber *)self->_initialBatteryCharge unsignedLongValue], [(NSNumber *)self->_expectedArrivalBatteryCharge unsignedLongValue], [(NSNumber *)self->_realArrivalBatteryCharge unsignedLongValue]];

  return v6;
}

- (EVBadTripRouteInfo)initWithRoute:(id)route currentVehicleState:(id)state
{
  routeCopy = route;
  stateCopy = state;
  v12.receiver = self;
  v12.super_class = EVBadTripRouteInfo;
  v9 = [(EVBadTripRouteInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_route, route);
    v10->_initialBatteryCharge = [stateCopy currentBatteryCharge];
  }

  return v10;
}

@end