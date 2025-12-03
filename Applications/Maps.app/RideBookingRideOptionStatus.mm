@interface RideBookingRideOptionStatus
+ (RideBookingRideOptionStatus)statusWithApplication:(id)application;
+ (RideBookingRideOptionStatus)statusWithApplication:(id)application error:(unint64_t)error;
+ (RideBookingRideOptionStatus)statusWithApplication:(id)application loadingRideOptions:(BOOL)options;
+ (RideBookingRideOptionStatus)statusWithApplication:(id)application rideOptions:(id)options expirationDate:(id)date userActivity:(id)activity rideOptionStatusError:(unint64_t)error;
- (NSString)errorMessage;
- (RideBookingApplication)application;
- (id)_init;
- (id)description;
@end

@implementation RideBookingRideOptionStatus

- (NSString)errorMessage
{
  rideOptionStatusError = [(RideBookingRideOptionStatus *)self rideOptionStatusError];
  v4 = 0;
  if (rideOptionStatusError > 6)
  {
    if (rideOptionStatusError > 9)
    {
      switch(rideOptionStatusError)
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

    else if (rideOptionStatusError == 7)
    {
      v8 = +[NSBundle mainBundle];
      v6 = v8;
      v9 = @"Sign in to %@ to request a ride [Ridesharing]";
    }

    else if (rideOptionStatusError == 8)
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
    application = [(RideBookingRideOptionStatus *)self application];
    name = [application name];
    v15 = [NSString localizedStringWithFormat:v12, name];
    goto LABEL_25;
  }

  if (rideOptionStatusError > 3)
  {
    if ((rideOptionStatusError - 4) >= 2)
    {
      if (rideOptionStatusError != 6)
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

  if (rideOptionStatusError == 1)
  {
LABEL_12:
    v10 = +[NSBundle mainBundle];
    v6 = v10;
    v11 = @"There was a problem communicating with this app.";
LABEL_27:
    v4 = [v10 localizedStringForKey:v11 value:@"localized string not found" table:0];
    goto LABEL_28;
  }

  if (rideOptionStatusError == 2)
  {
    v10 = +[NSBundle mainBundle];
    v6 = v10;
    v11 = @"A ride is already booked for this app.";
    goto LABEL_27;
  }

  if (rideOptionStatusError != 3)
  {
    goto LABEL_29;
  }

  v5 = +[NSBundle mainBundle];
  v6 = v5;
  v7 = @"No rides are currently available from %@";
LABEL_19:
  v12 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];
  application = [(RideBookingRideOptionStatus *)self application];
  name = [application name];
  v15 = [NSString stringWithFormat:v12, name];
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

+ (RideBookingRideOptionStatus)statusWithApplication:(id)application rideOptions:(id)options expirationDate:(id)date userActivity:(id)activity rideOptionStatusError:(unint64_t)error
{
  activityCopy = activity;
  dateCopy = date;
  optionsCopy = options;
  v14 = [RideBookingRideOptionStatus statusWithApplication:application];
  [v14 setRideOptions:optionsCopy];

  [v14 setExpirationDate:dateCopy];
  [v14 setUserActivity:activityCopy];

  [v14 setRideOptionStatusError:error];

  return v14;
}

+ (RideBookingRideOptionStatus)statusWithApplication:(id)application error:(unint64_t)error
{
  v5 = [RideBookingRideOptionStatus statusWithApplication:application];
  [v5 setRideOptionStatusError:error];

  return v5;
}

+ (RideBookingRideOptionStatus)statusWithApplication:(id)application loadingRideOptions:(BOOL)options
{
  optionsCopy = options;
  v5 = [RideBookingRideOptionStatus statusWithApplication:application];
  [v5 setLoadingRideOptions:optionsCopy];

  return v5;
}

+ (RideBookingRideOptionStatus)statusWithApplication:(id)application
{
  applicationCopy = application;
  _init = [[RideBookingRideOptionStatus alloc] _init];
  [_init setApplication:applicationCopy];

  return _init;
}

@end