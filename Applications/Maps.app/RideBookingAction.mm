@interface RideBookingAction
- (RideBookingAction)initWithActivity:(id)a3 application:(id)a4;
- (RideBookingApplication)application;
- (void)perform;
@end

@implementation RideBookingAction

- (RideBookingApplication)application
{
  WeakRetained = objc_loadWeakRetained(&self->_application);

  return WeakRetained;
}

- (void)perform
{
  WeakRetained = objc_loadWeakRetained(&self->_application);
  [WeakRetained openWithActivity:self->_activity];
}

- (RideBookingAction)initWithActivity:(id)a3 application:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = RideBookingAction;
  v8 = [(RideBookingAction *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    activity = v8->_activity;
    v8->_activity = v9;

    objc_storeWeak(&v8->_application, v7);
  }

  return v8;
}

@end