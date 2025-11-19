@interface ACSBatteryServiceBookingCoordinator
- (ACSBatteryServiceBookingCoordinator)init;
- (ACSBatteryServiceBookingCoordinator)initWithOptions:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
@end

@implementation ACSBatteryServiceBookingCoordinator

- (ACSBatteryServiceBookingCoordinator)init
{
  v6.receiver = self;
  v6.super_class = ACSBatteryServiceBookingCoordinator;
  v2 = [(ACSBatteryServiceBookingCoordinator *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    coordinator = v2->coordinator;
    v2->coordinator = v3;
  }

  return v2;
}

- (ACSBatteryServiceBookingCoordinator)initWithOptions:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ACSBatteryServiceBookingCoordinator;
  v5 = [(ACSBatteryServiceBookingCoordinator *)&v11 init];
  if (v5)
  {
    v6 = [_ACSBatteryServiceBookingCoordinator alloc];
    v7 = [[_ACSBatteryServiceOptions alloc] initWithValues:v4];
    v8 = [(_ACSBatteryServiceBookingCoordinator *)v6 initWithOptions:v7];
    coordinator = v5->coordinator;
    v5->coordinator = v8;
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = ACSBatteryServiceBookingCoordinator;
  if ([(ACSBatteryServiceBookingCoordinator *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    coordinator = self->coordinator;
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

@end