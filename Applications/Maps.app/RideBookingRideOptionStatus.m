@interface RideBookingRideOptionStatus
+ (RideBookingRideOptionStatus)statusWithApplication:(id)a3;
+ (RideBookingRideOptionStatus)statusWithApplication:(id)a3 error:(unint64_t)a4;
+ (RideBookingRideOptionStatus)statusWithApplication:(id)a3 loadingRideOptions:(BOOL)a4;
+ (RideBookingRideOptionStatus)statusWithApplication:(id)a3 rideOptions:(id)a4 expirationDate:(id)a5 userActivity:(id)a6 rideOptionStatusError:(unint64_t)a7;
- (NSString)errorMessage;
- (RideBookingApplication)application;
- (id)_init;
- (id)description;
@end

@implementation RideBookingRideOptionStatus

- (NSString)errorMessage
{
  v3 = [(RideBookingRideOptionStatus *)self rideOptionStatusError];
  v4 = 0;
  if (v3 > 6)
  {
    if (v3 > 9)
    {
      switch(v3)
      {
        case 10:
          v8 = +[NSBundle mainBundle];
          v6 = v8;
          v9 = @"Open %@ to verify the state of your previous ride. [Ridesharing]";
          break;
        case 11:
          v10 = +[NSBundle mainBundle];
          v6 = v10;
          v11 = @"Review your last ride. [Ridesharing]";
          goto LABEL_27;
        case 12:
          v8 = +[NSBundle mainBundle];
          v6 = v8;
          v9 = @"Open %@ to request a ride [Ridesharing]";
          break;
        default:
          goto LABEL_29;
      }
    }

    else if (v3 == 7)
    {
      v8 = +[NSBundle mainBundle];
      v6 = v8;
      v9 = @"Sign in to %@ to request a ride [Ridesharing]";
    }

    else if (v3 == 8)
    {
      v8 = +[NSBundle mainBundle];
      v6 = v8;
      v9 = @"%@ does not offer service [Ridesharing]";
    }

    else
    {
      v8 = +[NSBundle mainBundle];
      v6 = v8;
      v9 = @"Service from %@ is temporarily unavailable [Ridesharing]";
    }

    v12 = [v8 localizedStringForKey:v9 value:@"localized string not found" table:0];
    v13 = [(RideBookingRideOptionStatus *)self application];
    v14 = [v13 name];
    v15 = [NSString localizedStringWithFormat:v12, v14];
    goto LABEL_25;
  }

  if (v3 > 3)
  {
    if ((v3 - 4) >= 2)
    {
      if (v3 != 6)
      {
        goto LABEL_29;
      }

      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"%@ requires you to launch their app to view the ride options.";
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (v3 == 1)
  {
LABEL_12:
    v10 = +[NSBundle mainBundle];
    v6 = v10;
    v11 = @"There was a problem communicating with this app.";
LABEL_27:
    v4 = [v10 localizedStringForKey:v11 value:@"localized string not found" table:0];
    goto LABEL_28;
  }

  if (v3 == 2)
  {
    v10 = +[NSBundle mainBundle];
    v6 = v10;
    v11 = @"A ride is already booked for this app.";
    goto LABEL_27;
  }

  if (v3 != 3)
  {
    goto LABEL_29;
  }

  v5 = +[NSBundle mainBundle];
  v6 = v5;
  v7 = @"No rides are currently available from %@";
LABEL_19:
  v12 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];
  v13 = [(RideBookingRideOptionStatus *)self application];
  v14 = [v13 name];
  v15 = [NSString stringWithFormat:v12, v14];
LABEL_25:
  v4 = v15;

LABEL_28:
LABEL_29:

  return v4;
}

- (RideBookingApplication)application
{
  WeakRetained = objc_loadWeakRetained(&self->_application);

  return WeakRetained;
}

- (id)description
{
  WeakRetained = objc_loadWeakRetained(&self->_application);
  v4 = [NSString stringWithFormat:@"Application: %@\nRideOptions: %@\nExpiration Date: %@", WeakRetained, self->_rideOptions, self->_expirationDate];

  return v4;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = RideBookingRideOptionStatus;
  v2 = [(RideBookingRideOptionStatus *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_loadingRideOptions = 0;
    rideOptions = v2->_rideOptions;
    v2->_rideOptions = 0;

    v3->_rideOptionStatusError = 0;
  }

  return v3;
}

+ (RideBookingRideOptionStatus)statusWithApplication:(id)a3 rideOptions:(id)a4 expirationDate:(id)a5 userActivity:(id)a6 rideOptionStatusError:(unint64_t)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [RideBookingRideOptionStatus statusWithApplication:a3];
  [v14 setRideOptions:v13];

  [v14 setExpirationDate:v12];
  [v14 setUserActivity:v11];

  [v14 setRideOptionStatusError:a7];

  return v14;
}

+ (RideBookingRideOptionStatus)statusWithApplication:(id)a3 error:(unint64_t)a4
{
  v5 = [RideBookingRideOptionStatus statusWithApplication:a3];
  [v5 setRideOptionStatusError:a4];

  return v5;
}

+ (RideBookingRideOptionStatus)statusWithApplication:(id)a3 loadingRideOptions:(BOOL)a4
{
  v4 = a4;
  v5 = [RideBookingRideOptionStatus statusWithApplication:a3];
  [v5 setLoadingRideOptions:v4];

  return v5;
}

+ (RideBookingRideOptionStatus)statusWithApplication:(id)a3
{
  v3 = a3;
  v4 = [[RideBookingRideOptionStatus alloc] _init];
  [v4 setApplication:v3];

  return v4;
}

@end