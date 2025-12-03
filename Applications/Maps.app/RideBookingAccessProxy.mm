@interface RideBookingAccessProxy
+ (id)coordinator;
+ (id)imageCache;
+ (id)rideBookingCurrentBookedSessionForAppIdentifier:(id)identifier rideIdentifier:(id)rideIdentifier;
+ (id)rideBookingCurrentRideBookingSessionCreateIfNecessary:(BOOL)necessary;
@end

@implementation RideBookingAccessProxy

+ (id)coordinator
{
  if (qword_10195E378 != -1)
  {
    dispatch_once(&qword_10195E378, &stru_101632D78);
  }

  if (sub_100016C50())
  {
    v2 = qword_10195E380;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)rideBookingCurrentBookedSessionForAppIdentifier:(id)identifier rideIdentifier:(id)rideIdentifier
{
  identifierCopy = identifier;
  rideIdentifierCopy = rideIdentifier;
  if (sub_100016C50())
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!qword_10195E390)
    {
      v9 = objc_opt_new();
      v10 = qword_10195E390;
      qword_10195E390 = v9;
    }

    v11 = 0;
    if (identifierCopy && rideIdentifierCopy)
    {
      v12 = [identifierCopy stringByAppendingString:rideIdentifierCopy];
      v13 = [qword_10195E390 objectForKey:v12];
      v14 = v13;
      if (v13 && ![(RidesharingAnalyticsBookedSession *)v13 sessionEnded])
      {
        v11 = v14;
      }

      else
      {
        v11 = objc_alloc_init(RidesharingAnalyticsBookedSession);

        v15 = [identifierCopy copy];
        [(RidesharingAnalyticsBookedSession *)v11 setAppIdentifier:v15];

        sha1Hash = [rideIdentifierCopy sha1Hash];
        [(RidesharingAnalyticsBookedSession *)v11 setSessionId:sha1Hash];

        [qword_10195E390 setObject:v11 forKey:v12];
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)rideBookingCurrentRideBookingSessionCreateIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if (sub_100016C50())
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    sessionEnded = [qword_10195E388 sessionEnded];
    v7 = qword_10195E388;
    if (!qword_10195E388 || (sessionEnded & necessaryCopy) != 0)
    {
      v8 = objc_alloc_init(RidesharingAnalyticsBookingSession);
      v9 = qword_10195E388;
      qword_10195E388 = v8;

      v7 = qword_10195E388;
    }

    v10 = v7;
    objc_sync_exit(selfCopy);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)imageCache
{
  if (sub_100016C50())
  {
    v2 = +[RideBookingImageCache sharedCache];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end