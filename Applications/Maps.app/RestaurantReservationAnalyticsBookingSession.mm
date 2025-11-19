@interface RestaurantReservationAnalyticsBookingSession
- (RestaurantReservationAnalyticsBookingSession)init;
- (id)description;
- (void)_mapsForegrounded;
- (void)_restartSession;
- (void)addErrorMessage:(id)a3;
- (void)beginSessionIfNeeded;
- (void)endSession;
- (void)endSessionWithState:(int64_t)a3;
@end

@implementation RestaurantReservationAnalyticsBookingSession

- (void)endSessionWithState:(int64_t)a3
{
  v3 = a3;
  if (![(RestaurantReservationAnalyticsBookingSession *)self sessionEnded])
  {
    v5 = [(RestaurantReservationAnalyticsBookingSession *)self startDate];

    if (v5)
    {
      [(RestaurantReservationAnalyticsBookingSession *)self setSessionEnded:1];
      v6 = [(RestaurantReservationAnalyticsBookingSession *)self errorMessages];
      objc_sync_enter(v6);
      v7 = [(RestaurantReservationAnalyticsBookingSession *)self errorMessages];
      v31 = [v7 copy];

      objc_sync_exit(v6);
      v8 = [(RestaurantReservationAnalyticsBookingSession *)self currentState];
      if ([(RestaurantReservationAnalyticsBookingSession *)self currentState]== 1)
      {
        v9 = v8;
      }

      else
      {
        v9 = v3;
      }

      v23 = v9;
      v22 = [(RestaurantReservationAnalyticsBookingSession *)self currentView];
      v10 = [(RestaurantReservationAnalyticsBookingSession *)self startDate];
      [v10 timeIntervalSinceNow];
      v12 = -v11;

      v25 = [(RestaurantReservationAnalyticsBookingSession *)self sessionID];
      v30 = [(RestaurantReservationAnalyticsBookingSession *)self appID];
      v24 = [(RestaurantReservationAnalyticsBookingSession *)self muid];
      if (v24)
      {
        v26 = [NSNumber numberWithUnsignedLongLong:[(RestaurantReservationAnalyticsBookingSession *)self muid]];
      }

      else
      {
        v26 = 0;
      }

      v29 = [NSNumber numberWithLongLong:[(RestaurantReservationAnalyticsBookingSession *)self blurredReservationTimestamp]];
      v28 = [NSNumber numberWithLongLong:[(RestaurantReservationAnalyticsBookingSession *)self blurredBookingTimestamp]];
      v27 = [NSNumber numberWithDouble:v12];
      v13 = [NSNumber numberWithBool:[(RestaurantReservationAnalyticsBookingSession *)self installNeeded]];
      v14 = [(RestaurantReservationAnalyticsBookingSession *)self installNeeded];
      if (v14)
      {
        v15 = [(RestaurantReservationAnalyticsBookingSession *)self installNeededTappedAppId];
      }

      else
      {
        v15 = 0;
      }

      v16 = [(RestaurantReservationAnalyticsBookingSession *)self installNeeded];
      if (v16)
      {
        v17 = [NSNumber numberWithBool:[(RestaurantReservationAnalyticsBookingSession *)self installCompleted]];
      }

      else
      {
        v17 = 0;
      }

      v18 = [NSNumber numberWithUnsignedInteger:[(RestaurantReservationAnalyticsBookingSession *)self tableSize]];
      v19 = [NSNumber numberWithBool:[(RestaurantReservationAnalyticsBookingSession *)self addedSpecialRequest]];
      v20 = [NSNumber numberWithBool:[(RestaurantReservationAnalyticsBookingSession *)self swipedAvailableTimes]];
      v21 = [NSNumber numberWithBool:[(RestaurantReservationAnalyticsBookingSession *)self tappedDatePicker]];
      [GEOAPPortal captureTableBookingWithBookTableSessionId:v25 endState:v23 endView:v22 bookTableAppId:v30 muid:v26 blurredReservationTimestamp:v29 blurredBookingTimestamp:v28 durationOfSessionInSeconds:v27 installNeeded:v13 installNeededTappedAppId:v15 installCompleted:v17 tableSize:v18 addedSpecialRequest:v19 swipedAvailableTimes:v20 tappedDatePicker:v21 errorMessages:v31];

      if (v16)
      {
      }

      if (v14)
      {
      }

      if (v24)
      {
      }
    }
  }
}

- (void)endSession
{
  v3 = [(RestaurantReservationAnalyticsBookingSession *)self currentState];

  [(RestaurantReservationAnalyticsBookingSession *)self endSessionWithState:v3];
}

- (void)beginSessionIfNeeded
{
  v3 = [(RestaurantReservationAnalyticsBookingSession *)self startDate];

  if (!v3)
  {

    [(RestaurantReservationAnalyticsBookingSession *)self _restartSession];
  }
}

- (void)addErrorMessage:(id)a3
{
  v6 = a3;
  v4 = [(RestaurantReservationAnalyticsBookingSession *)self errorMessages];
  objc_sync_enter(v4);
  v5 = [(RestaurantReservationAnalyticsBookingSession *)self errorMessages];
  [v5 addObject:v6];

  objc_sync_exit(v4);
}

- (void)_restartSession
{
  v3 = [(RestaurantReservationAnalyticsBookingSession *)self errorMessages];
  objc_sync_enter(v3);
  v4 = [(RestaurantReservationAnalyticsBookingSession *)self errorMessages];
  [v4 removeAllObjects];

  objc_sync_exit(v3);
  v5 = +[NSDate date];
  [(RestaurantReservationAnalyticsBookingSession *)self setStartDate:v5];

  [(RestaurantReservationAnalyticsBookingSession *)self setSessionEnded:0];
}

- (void)_mapsForegrounded
{
  v3 = [(RestaurantReservationAnalyticsBookingSession *)self startDate];
  if (v3)
  {
    v4 = v3;
    v5 = [(RestaurantReservationAnalyticsBookingSession *)self sessionEnded];

    if (v5)
    {

      [(RestaurantReservationAnalyticsBookingSession *)self _restartSession];
    }
  }
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v15.receiver = self;
  v15.super_class = RestaurantReservationAnalyticsBookingSession;
  v4 = [(RestaurantReservationAnalyticsBookingSession *)&v15 description];
  v5 = [v3 initWithFormat:@"%@\n", v4];

  v6 = [(RestaurantReservationAnalyticsBookingSession *)self sessionID];
  [v5 appendFormat:@" sessionID: %@\n", v6];

  v7 = [(RestaurantReservationAnalyticsBookingSession *)self appID];
  [v5 appendFormat:@" appID: %@\n", v7];

  [v5 appendFormat:@" muid: %llu\n", -[RestaurantReservationAnalyticsBookingSession muid](self, "muid")];
  [v5 appendFormat:@" blurredReservationTimestamp: %lld\n", -[RestaurantReservationAnalyticsBookingSession blurredBookingTimestamp](self, "blurredBookingTimestamp")];
  [v5 appendFormat:@" blurredBookingTimestamp: %lld\n", -[RestaurantReservationAnalyticsBookingSession blurredReservationTimestamp](self, "blurredReservationTimestamp")];
  [v5 appendFormat:@" installNeeded: %d\n", -[RestaurantReservationAnalyticsBookingSession installNeeded](self, "installNeeded")];
  v8 = [(RestaurantReservationAnalyticsBookingSession *)self installNeededTappedAppId];
  [v5 appendFormat:@" installNeededTappedAppId: %@\n", v8];

  [v5 appendFormat:@" installCompleted: %d\n", -[RestaurantReservationAnalyticsBookingSession installCompleted](self, "installCompleted")];
  [v5 appendFormat:@" tableSize: %lu\n", -[RestaurantReservationAnalyticsBookingSession tableSize](self, "tableSize")];
  [v5 appendFormat:@" addedSpecialRequest: %d\n", -[RestaurantReservationAnalyticsBookingSession addedSpecialRequest](self, "addedSpecialRequest")];
  [v5 appendFormat:@" swipedAvailableTimes: %d\n", -[RestaurantReservationAnalyticsBookingSession swipedAvailableTimes](self, "swipedAvailableTimes")];
  [v5 appendFormat:@" tappedDatePicker: %d\n", -[RestaurantReservationAnalyticsBookingSession tappedDatePicker](self, "tappedDatePicker")];
  [v5 appendFormat:@" hasAppsInstalled: %d\n", -[RestaurantReservationAnalyticsBookingSession hasAppsInstalled](self, "hasAppsInstalled")];
  [v5 appendFormat:@" hasAppsEnabled: %d\n", -[RestaurantReservationAnalyticsBookingSession hasAppsEnabled](self, "hasAppsEnabled")];
  v9 = [(RestaurantReservationAnalyticsBookingSession *)self currentView];
  if (v9 > 7)
  {
    v10 = @"UNKNOWN";
  }

  else
  {
    v10 = *(&off_10164D800 + v9);
  }

  [v5 appendFormat:@" currentView: %@\n", v10];
  v11 = [(RestaurantReservationAnalyticsBookingSession *)self currentState];
  if (v11 > 5)
  {
    v12 = @"UNKNOWN";
  }

  else
  {
    v12 = *(&off_10164D840 + v11);
  }

  [v5 appendFormat:@" currentState: %@\n", v12];
  v13 = [v5 copy];

  return v13;
}

- (RestaurantReservationAnalyticsBookingSession)init
{
  v11.receiver = self;
  v11.super_class = RestaurantReservationAnalyticsBookingSession;
  v2 = [(RestaurantReservationAnalyticsBookingSession *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    errorMessages = v2->_errorMessages;
    v2->_errorMessages = v3;

    v5 = +[NSUUID UUID];
    v6 = [v5 UUIDString];
    sessionID = v2->_sessionID;
    v2->_sessionID = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_mapsBackgrounded" name:UIApplicationDidEnterBackgroundNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"_mapsForegrounded" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  return v2;
}

@end