@interface RidesharingErrorAlertProvider
- (NSString)dismissCommandTitle;
- (NSString)message;
- (NSString)openAppCommandTitle;
- (NSString)title;
- (id)_initWithCause:(int64_t)a3 application:(id)a4 activity:(id)a5;
- (id)description;
- (void)_supersede;
- (void)openApp;
@end

@implementation RidesharingErrorAlertProvider

- (id)description
{
  v3 = [(RidesharingErrorAlertProvider *)self title];
  v4 = [(RidesharingErrorAlertProvider *)self message];
  v5 = [NSString stringWithFormat:@"Title: %@, message: %@", v3, v4];

  return v5;
}

- (void)_supersede
{
  if (!self->_superseded)
  {
    self->_superseded = 1;
    v3 = [(RidesharingErrorAlertProvider *)self didSupersede];

    if (v3)
    {
      v4 = [(RidesharingErrorAlertProvider *)self didSupersede];
      v4[2](v4, self);
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
  v3 = [(RidesharingErrorAlertProvider *)self cause];
  if (v3 <= 3)
  {
    v4 = *(&off_101622F58 + v3);
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
  v6 = [(RideBookingApplication *)self->_application name];
  v7 = [v5 initWithFormat:v4, v6];

  return v7;
}

- (NSString)message
{
  v4 = [(RidesharingErrorAlertProvider *)self cause];
  if (v4 <= 3)
  {
    v5 = *(&off_101622F38 + v4);
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:v5 value:@"localized string not found" table:0];

    v8 = [NSString alloc];
    v9 = [(RideBookingApplication *)self->_application name];
    v2 = [v8 initWithFormat:v7, v9];
  }

  return v2;
}

- (NSString)title
{
  p_isa = &self->super.isa;
  v3 = [(RidesharingErrorAlertProvider *)self cause];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v7 = +[NSBundle mainBundle];
      v5 = [v7 localizedStringForKey:@"Set pickup location in %@ [ridesharing API error alert]" value:@"localized string not found" table:0];

      v8 = [NSString alloc];
      v9 = [p_isa[1] name];
      p_isa = [v8 initWithFormat:v5, v9];

      goto LABEL_11;
    }

    if (v3 != 3)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (!v3)
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"There was a problem booking your ride [ridesharing booking error alert]";
    goto LABEL_9;
  }

  if (v3 == 1)
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

- (id)_initWithCause:(int64_t)a3 application:(id)a4 activity:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = RidesharingErrorAlertProvider;
  v11 = [(RidesharingErrorAlertProvider *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_application, a4);
    objc_storeStrong(&v12->_activity, a5);
    v12->_cause = a3;
  }

  return v12;
}

@end