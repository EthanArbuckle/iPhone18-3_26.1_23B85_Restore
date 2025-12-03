@interface RestaurantReservationAnalyticsBookingSession
- (RestaurantReservationAnalyticsBookingSession)init;
- (id)description;
- (void)_mapsForegrounded;
- (void)_restartSession;
- (void)addErrorMessage:(id)message;
- (void)beginSessionIfNeeded;
- (void)endSession;
- (void)endSessionWithState:(int64_t)state;
@end

@implementation RestaurantReservationAnalyticsBookingSession

- (void)endSessionWithState:(int64_t)state
{
  stateCopy = state;
  if (![(RestaurantReservationAnalyticsBookingSession *)self sessionEnded])
  {
    startDate = [(RestaurantReservationAnalyticsBookingSession *)self startDate];

    if (startDate)
    {
      [(RestaurantReservationAnalyticsBookingSession *)self setSessionEnded:1];
      errorMessages = [(RestaurantReservationAnalyticsBookingSession *)self errorMessages];
      objc_sync_enter(errorMessages);
      errorMessages2 = [(RestaurantReservationAnalyticsBookingSession *)self errorMessages];
      v31 = [errorMessages2 copy];

      objc_sync_exit(errorMessages);
      currentState = [(RestaurantReservationAnalyticsBookingSession *)self currentState];
      if ([(RestaurantReservationAnalyticsBookingSession *)self currentState]== 1)
      {
        v9 = currentState;
      }

      else
      {
        v9 = stateCopy;
      }

      v23 = v9;
      currentView = [(RestaurantReservationAnalyticsBookingSession *)self currentView];
      startDate2 = [(RestaurantReservationAnalyticsBookingSession *)self startDate];
      [startDate2 timeIntervalSinceNow];
      v12 = -v11;

      sessionID = [(RestaurantReservationAnalyticsBookingSession *)self sessionID];
      appID = [(RestaurantReservationAnalyticsBookingSession *)self appID];
      muid = [(RestaurantReservationAnalyticsBookingSession *)self muid];
      if (muid)
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
      installNeeded = [(RestaurantReservationAnalyticsBookingSession *)self installNeeded];
      if (installNeeded)
      {
        installNeededTappedAppId = [(RestaurantReservationAnalyticsBookingSession *)self installNeededTappedAppId];
      }

      else
      {
        installNeededTappedAppId = 0;
      }

      installNeeded2 = [(RestaurantReservationAnalyticsBookingSession *)self installNeeded];
      if (installNeeded2)
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
      [GEOAPPortal captureTableBookingWithBookTableSessionId:sessionID endState:v23 endView:currentView bookTableAppId:appID muid:v26 blurredReservationTimestamp:v29 blurredBookingTimestamp:v28 durationOfSessionInSeconds:v27 installNeeded:v13 installNeededTappedAppId:installNeededTappedAppId installCompleted:v17 tableSize:v18 addedSpecialRequest:v19 swipedAvailableTimes:v20 tappedDatePicker:v21 errorMessages:v31];

      if (installNeeded2)
      {
      }

      if (installNeeded)
      {
      }

      if (muid)
      {
      }
    }
  }
}

- (void)endSession
{
  currentState = [(RestaurantReservationAnalyticsBookingSession *)self currentState];

  [(RestaurantReservationAnalyticsBookingSession *)self endSessionWithState:currentState];
}

- (void)beginSessionIfNeeded
{
  startDate = [(RestaurantReservationAnalyticsBookingSession *)self startDate];

  if (!startDate)
  {

    [(RestaurantReservationAnalyticsBookingSession *)self _restartSession];
  }
}

- (void)addErrorMessage:(id)message
{
  messageCopy = message;
  errorMessages = [(RestaurantReservationAnalyticsBookingSession *)self errorMessages];
  objc_sync_enter(errorMessages);
  errorMessages2 = [(RestaurantReservationAnalyticsBookingSession *)self errorMessages];
  [errorMessages2 addObject:messageCopy];

  objc_sync_exit(errorMessages);
}

- (void)_restartSession
{
  errorMessages = [(RestaurantReservationAnalyticsBookingSession *)self errorMessages];
  objc_sync_enter(errorMessages);
  errorMessages2 = [(RestaurantReservationAnalyticsBookingSession *)self errorMessages];
  [errorMessages2 removeAllObjects];

  objc_sync_exit(errorMessages);
  v5 = +[NSDate date];
  [(RestaurantReservationAnalyticsBookingSession *)self setStartDate:v5];

  [(RestaurantReservationAnalyticsBookingSession *)self setSessionEnded:0];
}

- (void)_mapsForegrounded
{
  startDate = [(RestaurantReservationAnalyticsBookingSession *)self startDate];
  if (startDate)
  {
    v4 = startDate;
    sessionEnded = [(RestaurantReservationAnalyticsBookingSession *)self sessionEnded];

    if (sessionEnded)
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

  sessionID = [(RestaurantReservationAnalyticsBookingSession *)self sessionID];
  [v5 appendFormat:@" sessionID: %@\n", sessionID];

  appID = [(RestaurantReservationAnalyticsBookingSession *)self appID];
  [v5 appendFormat:@" appID: %@\n", appID];

  [v5 appendFormat:@" muid: %llu\n", -[RestaurantReservationAnalyticsBookingSession muid](self, "muid")];
  [v5 appendFormat:@" blurredReservationTimestamp: %lld\n", -[RestaurantReservationAnalyticsBookingSession blurredBookingTimestamp](self, "blurredBookingTimestamp")];
  [v5 appendFormat:@" blurredBookingTimestamp: %lld\n", -[RestaurantReservationAnalyticsBookingSession blurredReservationTimestamp](self, "blurredReservationTimestamp")];
  [v5 appendFormat:@" installNeeded: %d\n", -[RestaurantReservationAnalyticsBookingSession installNeeded](self, "installNeeded")];
  installNeededTappedAppId = [(RestaurantReservationAnalyticsBookingSession *)self installNeededTappedAppId];
  [v5 appendFormat:@" installNeededTappedAppId: %@\n", installNeededTappedAppId];

  [v5 appendFormat:@" installCompleted: %d\n", -[RestaurantReservationAnalyticsBookingSession installCompleted](self, "installCompleted")];
  [v5 appendFormat:@" tableSize: %lu\n", -[RestaurantReservationAnalyticsBookingSession tableSize](self, "tableSize")];
  [v5 appendFormat:@" addedSpecialRequest: %d\n", -[RestaurantReservationAnalyticsBookingSession addedSpecialRequest](self, "addedSpecialRequest")];
  [v5 appendFormat:@" swipedAvailableTimes: %d\n", -[RestaurantReservationAnalyticsBookingSession swipedAvailableTimes](self, "swipedAvailableTimes")];
  [v5 appendFormat:@" tappedDatePicker: %d\n", -[RestaurantReservationAnalyticsBookingSession tappedDatePicker](self, "tappedDatePicker")];
  [v5 appendFormat:@" hasAppsInstalled: %d\n", -[RestaurantReservationAnalyticsBookingSession hasAppsInstalled](self, "hasAppsInstalled")];
  [v5 appendFormat:@" hasAppsEnabled: %d\n", -[RestaurantReservationAnalyticsBookingSession hasAppsEnabled](self, "hasAppsEnabled")];
  currentView = [(RestaurantReservationAnalyticsBookingSession *)self currentView];
  if (currentView > 7)
  {
    v10 = @"UNKNOWN";
  }

  else
  {
    v10 = *(&off_10164D800 + currentView);
  }

  [v5 appendFormat:@" currentView: %@\n", v10];
  currentState = [(RestaurantReservationAnalyticsBookingSession *)self currentState];
  if (currentState > 5)
  {
    v12 = @"UNKNOWN";
  }

  else
  {
    v12 = *(&off_10164D840 + currentState);
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
    uUIDString = [v5 UUIDString];
    sessionID = v2->_sessionID;
    v2->_sessionID = uUIDString;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_mapsBackgrounded" name:UIApplicationDidEnterBackgroundNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"_mapsForegrounded" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  return v2;
}

@end