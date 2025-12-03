@interface RideBookingAction
- (RideBookingAction)initWithActivity:(id)activity application:(id)application;
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

- (RideBookingAction)initWithActivity:(id)activity application:(id)application
{
  activityCopy = activity;
  applicationCopy = application;
  v12.receiver = self;
  v12.super_class = RideBookingAction;
  v8 = [(RideBookingAction *)&v12 init];
  if (v8)
  {
    v9 = [activityCopy copy];
    activity = v8->_activity;
    v8->_activity = v9;

    objc_storeWeak(&v8->_application, applicationCopy);
  }

  return v8;
}

@end