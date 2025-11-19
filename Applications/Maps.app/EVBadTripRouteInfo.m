@interface EVBadTripRouteInfo
- (EVBadTripRouteInfo)initWithRoute:(id)a3 currentVehicleState:(id)a4;
- (id)description;
@end

@implementation EVBadTripRouteInfo

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(GEOComposedRoute *)self->_route uniqueRouteID];
  v5 = [v4 UUIDString];
  v6 = [NSString stringWithFormat:@"<%@:%p, routeId: %@, lastTraversedStepIdx: %lu, initial: %lu, expected: %lu, real: %lu>", v3, self, v5, [(GEOComposedRouteStep *)self->_lastTraversedStep stepIndex], [(NSNumber *)self->_initialBatteryCharge unsignedLongValue], [(NSNumber *)self->_expectedArrivalBatteryCharge unsignedLongValue], [(NSNumber *)self->_realArrivalBatteryCharge unsignedLongValue]];

  return v6;
}

- (EVBadTripRouteInfo)initWithRoute:(id)a3 currentVehicleState:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EVBadTripRouteInfo;
  v9 = [(EVBadTripRouteInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_route, a3);
    v10->_initialBatteryCharge = [v8 currentBatteryCharge];
  }

  return v10;
}

@end