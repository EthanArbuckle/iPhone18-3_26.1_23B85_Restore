@interface RidesharingErrorAlertProvider
- (NSString)dismissCommandTitle;
- (NSString)message;
- (NSString)openAppCommandTitle;
- (NSString)title;
- (id)_initWithCause:(int64_t)cause application:(id)application activity:(id)activity;
- (id)description;
- (void)_supersede;
- (void)openApp;
@end

@implementation RidesharingErrorAlertProvider

- (id)description
{
  title = [(RidesharingErrorAlertProvider *)self title];
  message = [(RidesharingErrorAlertProvider *)self message];
  v5 = [NSString stringWithFormat:@"Title: %@, message: %@", title, message];

  return v5;
}

- (void)_supersede
{
  if (!self->_superseded)
  {
    self->_superseded = 1;
    didSupersede = [(RidesharingErrorAlertProvider *)self didSupersede];

    if (didSupersede)
    {
      didSupersede2 = [(RidesharingErrorAlertProvider *)self didSupersede];
      didSupersede2[2](didSupersede2, self);
    }
  }
}

- (void)openApp
{
  if (!self->_superseded)
  {
    [(RideBookingApplication *)self->_application openWithActivity:self->_activity];
  }
}

- (NSString)dismissCommandTitle
{
  cause = [(RidesharingErrorAlertProvider *)self cause];
  if (cause <= 3)
  {
    v4 = *(&off_101622F58 + cause);
    v5 = +[NSBundle mainBundle];
    v2 = [v5 localizedStringForKey:v4 value:@"localized string not found" table:0];
  }

  return v2;
}

- (NSString)openAppCommandTitle
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Open %@ [ridesharing booking error alert]" value:@"localized string not found" table:0];

  v5 = [NSString alloc];
  name = [(RideBookingApplication *)self->_application name];
  v7 = [v5 initWithFormat:v4, name];

  return v7;
}

- (NSString)message
{
  cause = [(RidesharingErrorAlertProvider *)self cause];
  if (cause <= 3)
  {
    v5 = *(&off_101622F38 + cause);
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:v5 value:@"localized string not found" table:0];

    v8 = [NSString alloc];
    name = [(RideBookingApplication *)self->_application name];
    v2 = [v8 initWithFormat:v7, name];
  }

  return v2;
}

- (NSString)title
{
  p_isa = &self->super.isa;
  cause = [(RidesharingErrorAlertProvider *)self cause];
  if (cause > 1)
  {
    if (cause == 2)
    {
      v7 = +[NSBundle mainBundle];
      v5 = [v7 localizedStringForKey:@"Set pickup location in %@ [ridesharing API error alert]" value:@"localized string not found" table:0];

      v8 = [NSString alloc];
      name = [p_isa[1] name];
      p_isa = [v8 initWithFormat:v5, name];

      goto LABEL_11;
    }

    if (cause != 3)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (!cause)
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"There was a problem booking your ride [ridesharing booking error alert]";
    goto LABEL_9;
  }

  if (cause == 1)
  {
LABEL_7:
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"There was a problem updating your ride status [ridesharing status error alert]";
LABEL_9:
    p_isa = [v4 localizedStringForKey:v6 value:@"localized string not found" table:0];
LABEL_11:
  }

LABEL_12:

  return p_isa;
}

- (id)_initWithCause:(int64_t)cause application:(id)application activity:(id)activity
{
  applicationCopy = application;
  activityCopy = activity;
  v14.receiver = self;
  v14.super_class = RidesharingErrorAlertProvider;
  v11 = [(RidesharingErrorAlertProvider *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_application, application);
    objc_storeStrong(&v12->_activity, activity);
    v12->_cause = cause;
  }

  return v12;
}

@end