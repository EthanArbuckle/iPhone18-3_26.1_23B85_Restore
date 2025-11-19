@interface RideBookingAccessProxy
+ (id)coordinator;
+ (id)imageCache;
+ (id)rideBookingCurrentBookedSessionForAppIdentifier:(id)a3 rideIdentifier:(id)a4;
+ (id)rideBookingCurrentRideBookingSessionCreateIfNecessary:(BOOL)a3;
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

+ (id)rideBookingCurrentBookedSessionForAppIdentifier:(id)a3 rideIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (sub_100016C50())
  {
    v8 = a1;
    objc_sync_enter(v8);
    if (!qword_10195E390)
    {
      v9 = objc_opt_new();
      v10 = qword_10195E390;
      qword_10195E390 = v9;
    }

    v11 = 0;
    if (v6 && v7)
    {
      v12 = [v6 stringByAppendingString:v7];
      v13 = [qword_10195E390 objectForKey:v12];
      v14 = v13;
      if (v13 && ![(RidesharingAnalyticsBookedSession *)v13 sessionEnded])
      {
        v11 = v14;
      }

      else
      {
        v11 = objc_alloc_init(RidesharingAnalyticsBookedSession);

        v15 = [v6 copy];
        [(RidesharingAnalyticsBookedSession *)v11 setAppIdentifier:v15];

        v16 = [v7 sha1Hash];
        [(RidesharingAnalyticsBookedSession *)v11 setSessionId:v16];

        [qword_10195E390 setObject:v11 forKey:v12];
      }
    }

    objc_sync_exit(v8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)rideBookingCurrentRideBookingSessionCreateIfNecessary:(BOOL)a3
{
  v3 = a3;
  if (sub_100016C50())
  {
    v5 = a1;
    objc_sync_enter(v5);
    v6 = [qword_10195E388 sessionEnded];
    v7 = qword_10195E388;
    if (!qword_10195E388 || (v6 & v3) != 0)
    {
      v8 = objc_alloc_init(RidesharingAnalyticsBookingSession);
      v9 = qword_10195E388;
      qword_10195E388 = v8;

      v7 = qword_10195E388;
    }

    v10 = v7;
    objc_sync_exit(v5);
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