@interface RestaurantReservationAnalyticsBookedSession
+ (id)currentAnalyticsBookedSessionForMuid:(unint64_t)a3 createIfNotPresent:(BOOL)a4;
+ (void)removeAnalyticsBookedSession:(id)a3;
+ (void)removeAnalyticsBookedSessionsFromProactiveTrayIfNotInListOfMuids:(id)a3;
- (RestaurantReservationAnalyticsBookedSession)init;
- (id)description;
- (void)_captureSession;
- (void)endSession;
- (void)setAppID:(id)a3;
- (void)setBookedUsingMaps:(BOOL)a3;
- (void)setMuid:(unint64_t)a3;
- (void)setTappedChangeReservation:(BOOL)a3;
- (void)setTappedProactiveTrayItem:(BOOL)a3;
- (void)setViewedDetailsFromPlacecard:(BOOL)a3;
- (void)setViewedInPlacecard:(BOOL)a3;
- (void)setViewedInProactiveTray:(BOOL)a3;
@end

@implementation RestaurantReservationAnalyticsBookedSession

- (void)endSession
{
  if (![(RestaurantReservationAnalyticsBookedSession *)self sessionEnded])
  {
    [(RestaurantReservationAnalyticsBookedSession *)self setSessionEnded:1];
    [(RestaurantReservationAnalyticsBookedSession *)self _captureSession];

    [RestaurantReservationAnalyticsBookedSession removeAnalyticsBookedSession:self];
  }
}

- (void)setViewedDetailsFromPlacecard:(BOOL)a3
{
  if (a3)
  {
    [(RestaurantReservationAnalyticsBookedSession *)self _restartSession];
  }

  self->_viewedDetailsFromPlacecard = a3;
}

- (void)setTappedChangeReservation:(BOOL)a3
{
  if (a3)
  {
    [(RestaurantReservationAnalyticsBookedSession *)self _restartSession];
  }

  self->_tappedChangeReservation = a3;
}

- (void)setTappedProactiveTrayItem:(BOOL)a3
{
  if (a3)
  {
    [(RestaurantReservationAnalyticsBookedSession *)self _restartSession];
  }

  self->_tappedProactiveTrayItem = a3;
}

- (void)setViewedInProactiveTray:(BOOL)a3
{
  if (a3)
  {
    [(RestaurantReservationAnalyticsBookedSession *)self _restartSession];
  }

  self->_viewedInProactiveTray = a3;
}

- (void)setViewedInPlacecard:(BOOL)a3
{
  if (a3)
  {
    [(RestaurantReservationAnalyticsBookedSession *)self _restartSession];
  }

  self->_viewedInPlacecard = a3;
}

- (void)setBookedUsingMaps:(BOOL)a3
{
  if (a3)
  {
    [(RestaurantReservationAnalyticsBookedSession *)self _restartSession];
  }

  self->_bookedUsingMaps = a3;
}

- (void)setMuid:(unint64_t)a3
{
  if (a3)
  {
    [(RestaurantReservationAnalyticsBookedSession *)self _restartSession];
  }

  self->_muid = a3;
}

- (void)setAppID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(RestaurantReservationAnalyticsBookedSession *)self _restartSession];
  }

  appID = self->_appID;
  self->_appID = v4;
}

- (void)_captureSession
{
  v12 = [(RestaurantReservationAnalyticsBookedSession *)self sessionID];
  v3 = [(RestaurantReservationAnalyticsBookedSession *)self bookedUsingMaps];
  v4 = [(RestaurantReservationAnalyticsBookedSession *)self viewedInProactiveTray];
  v5 = [(RestaurantReservationAnalyticsBookedSession *)self tappedProactiveTrayItem];
  v6 = [(RestaurantReservationAnalyticsBookedSession *)self viewedInPlacecard];
  v7 = [(RestaurantReservationAnalyticsBookedSession *)self viewedDetailsFromPlacecard];
  v8 = [(RestaurantReservationAnalyticsBookedSession *)self appID];
  v9 = [(RestaurantReservationAnalyticsBookedSession *)self muid];
  BYTE3(v11) = 0;
  BYTE2(v11) = [(RestaurantReservationAnalyticsBookedSession *)self tappedChangeReservation];
  LOWORD(v11) = 0;
  LOWORD(v10) = v7;
  [GEOAPPortal captureTableBookedEventWithSessionId:"captureTableBookedEventWithSessionId:bookedUsingMaps:cancelled:viewedInProactiveTray:tappedProactiveTrayItem:viewedInPlacecard:viewedDetailsInPlacecard:isAsync:bookedAppId:muid:called:routed:tappedChangeReservation:tappedCancelReservation:" bookedUsingMaps:v12 cancelled:v3 viewedInProactiveTray:0 tappedProactiveTrayItem:v4 viewedInPlacecard:v5 viewedDetailsInPlacecard:v6 isAsync:v10 bookedAppId:v8 muid:v9 called:v11 routed:? tappedChangeReservation:? tappedCancelReservation:?];
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v10.receiver = self;
  v10.super_class = RestaurantReservationAnalyticsBookedSession;
  v4 = [(RestaurantReservationAnalyticsBookedSession *)&v10 description];
  v5 = [v3 initWithFormat:@"%@\n", v4];

  v6 = [(RestaurantReservationAnalyticsBookedSession *)self sessionID];
  [v5 appendFormat:@" sessionID: %@\n", v6];

  v7 = [(RestaurantReservationAnalyticsBookedSession *)self appID];
  [v5 appendFormat:@" appID: %@\n", v7];

  [v5 appendFormat:@" muid: %llu\n", -[RestaurantReservationAnalyticsBookedSession muid](self, "muid")];
  [v5 appendFormat:@" tappedChangeReservation: %d\n", -[RestaurantReservationAnalyticsBookedSession tappedChangeReservation](self, "tappedChangeReservation")];
  [v5 appendFormat:@" bookedUsingMaps: %d\n", -[RestaurantReservationAnalyticsBookedSession bookedUsingMaps](self, "bookedUsingMaps")];
  [v5 appendFormat:@" viewedInProactiveTray: %d\n", -[RestaurantReservationAnalyticsBookedSession viewedInProactiveTray](self, "viewedInProactiveTray")];
  [v5 appendFormat:@" tappedProactiveTrayItem: %d\n", -[RestaurantReservationAnalyticsBookedSession tappedProactiveTrayItem](self, "tappedProactiveTrayItem")];
  [v5 appendFormat:@" viewedInPlacecard: %d\n", -[RestaurantReservationAnalyticsBookedSession viewedInPlacecard](self, "viewedInPlacecard")];
  [v5 appendFormat:@" viewedDetailsFromPlacecard: %d\n", -[RestaurantReservationAnalyticsBookedSession viewedDetailsFromPlacecard](self, "viewedDetailsFromPlacecard")];
  [v5 appendFormat:@" hasAppsInstalled: %d\n", -[RestaurantReservationAnalyticsBookedSession hasAppsInstalled](self, "hasAppsInstalled")];
  [v5 appendFormat:@" hasAppsEnabled: %d\n", -[RestaurantReservationAnalyticsBookedSession hasAppsEnabled](self, "hasAppsEnabled")];
  v8 = [v5 copy];

  return v8;
}

- (RestaurantReservationAnalyticsBookedSession)init
{
  v9.receiver = self;
  v9.super_class = RestaurantReservationAnalyticsBookedSession;
  v2 = [(RestaurantReservationAnalyticsBookedSession *)&v9 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    v4 = [v3 UUIDString];
    sessionID = v2->_sessionID;
    v2->_sessionID = v4;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_mapsBackgrounded" name:UIApplicationDidEnterBackgroundNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_mapsForegrounded" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  return v2;
}

+ (void)removeAnalyticsBookedSessionsFromProactiveTrayIfNotInListOfMuids:(id)a3
{
  v24 = a3;
  v23 = +[NSMutableArray array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = qword_10195F4D8;
  v3 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v35;
    v21 = *v35;
    do
    {
      v6 = 0;
      v22 = v4;
      do
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v34 + 1) + 8 * v6);
        if ([v7 viewedInProactiveTray])
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v8 = v24;
          v9 = [v8 countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (!v9)
          {

LABEL_17:
            [v23 addObject:v7];
            goto LABEL_18;
          }

          v10 = v9;
          v11 = *v31;
          v12 = 1;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v31 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v30 + 1) + 8 * i);
              v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v7 muid]);
              LOBYTE(v14) = [v14 isEqualToNumber:v15];

              v12 &= v14 ^ 1;
            }

            v10 = [v8 countByEnumeratingWithState:&v30 objects:v39 count:16];
          }

          while (v10);

          v5 = v21;
          v4 = v22;
          if (v12)
          {
            goto LABEL_17;
          }
        }

LABEL_18:
        v6 = v6 + 1;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v4);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v23;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v26 + 1) + 8 * j) endSession];
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v18);
  }
}

+ (void)removeAnalyticsBookedSession:(id)a3
{
  v3 = qword_10195F4E0;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195F4E0, &stru_101657700);
  }

  [qword_10195F4D0 lock];
  [qword_10195F4D8 removeObject:v4];

  v5 = qword_10195F4D0;

  [v5 unlock];
}

+ (id)currentAnalyticsBookedSessionForMuid:(unint64_t)a3 createIfNotPresent:(BOOL)a4
{
  v4 = a4;
  if (qword_10195F4C8 != -1)
  {
    dispatch_once(&qword_10195F4C8, &stru_1016576E0);
  }

  [qword_10195F4D0 lock];
  if (qword_10195F4D8)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = qword_10195F4D8;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = (i + 1))
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ([v10 muid] == a3)
          {
            v7 = v10;
            goto LABEL_14;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v11 = objc_alloc_init(NSMutableArray);
    v12 = qword_10195F4D8;
    qword_10195F4D8 = v11;

    v7 = 0;
  }

  if (v7)
  {
    v13 = 1;
  }

  else
  {
    v13 = !v4;
  }

  if (!v13)
  {
    v7 = objc_alloc_init(RestaurantReservationAnalyticsBookedSession);
    [(RestaurantReservationAnalyticsBookedSession *)v7 setMuid:a3];
    [qword_10195F4D8 addObject:v7];
  }

  [qword_10195F4D0 unlock];

  return v7;
}

@end