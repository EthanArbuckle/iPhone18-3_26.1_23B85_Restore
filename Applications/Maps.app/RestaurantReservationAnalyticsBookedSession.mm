@interface RestaurantReservationAnalyticsBookedSession
+ (id)currentAnalyticsBookedSessionForMuid:(unint64_t)muid createIfNotPresent:(BOOL)present;
+ (void)removeAnalyticsBookedSession:(id)session;
+ (void)removeAnalyticsBookedSessionsFromProactiveTrayIfNotInListOfMuids:(id)muids;
- (RestaurantReservationAnalyticsBookedSession)init;
- (id)description;
- (void)_captureSession;
- (void)endSession;
- (void)setAppID:(id)d;
- (void)setBookedUsingMaps:(BOOL)maps;
- (void)setMuid:(unint64_t)muid;
- (void)setTappedChangeReservation:(BOOL)reservation;
- (void)setTappedProactiveTrayItem:(BOOL)item;
- (void)setViewedDetailsFromPlacecard:(BOOL)placecard;
- (void)setViewedInPlacecard:(BOOL)placecard;
- (void)setViewedInProactiveTray:(BOOL)tray;
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

- (void)setViewedDetailsFromPlacecard:(BOOL)placecard
{
  if (placecard)
  {
    [(RestaurantReservationAnalyticsBookedSession *)self _restartSession];
  }

  self->_viewedDetailsFromPlacecard = placecard;
}

- (void)setTappedChangeReservation:(BOOL)reservation
{
  if (reservation)
  {
    [(RestaurantReservationAnalyticsBookedSession *)self _restartSession];
  }

  self->_tappedChangeReservation = reservation;
}

- (void)setTappedProactiveTrayItem:(BOOL)item
{
  if (item)
  {
    [(RestaurantReservationAnalyticsBookedSession *)self _restartSession];
  }

  self->_tappedProactiveTrayItem = item;
}

- (void)setViewedInProactiveTray:(BOOL)tray
{
  if (tray)
  {
    [(RestaurantReservationAnalyticsBookedSession *)self _restartSession];
  }

  self->_viewedInProactiveTray = tray;
}

- (void)setViewedInPlacecard:(BOOL)placecard
{
  if (placecard)
  {
    [(RestaurantReservationAnalyticsBookedSession *)self _restartSession];
  }

  self->_viewedInPlacecard = placecard;
}

- (void)setBookedUsingMaps:(BOOL)maps
{
  if (maps)
  {
    [(RestaurantReservationAnalyticsBookedSession *)self _restartSession];
  }

  self->_bookedUsingMaps = maps;
}

- (void)setMuid:(unint64_t)muid
{
  if (muid)
  {
    [(RestaurantReservationAnalyticsBookedSession *)self _restartSession];
  }

  self->_muid = muid;
}

- (void)setAppID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    [(RestaurantReservationAnalyticsBookedSession *)self _restartSession];
  }

  appID = self->_appID;
  self->_appID = dCopy;
}

- (void)_captureSession
{
  sessionID = [(RestaurantReservationAnalyticsBookedSession *)self sessionID];
  bookedUsingMaps = [(RestaurantReservationAnalyticsBookedSession *)self bookedUsingMaps];
  viewedInProactiveTray = [(RestaurantReservationAnalyticsBookedSession *)self viewedInProactiveTray];
  tappedProactiveTrayItem = [(RestaurantReservationAnalyticsBookedSession *)self tappedProactiveTrayItem];
  viewedInPlacecard = [(RestaurantReservationAnalyticsBookedSession *)self viewedInPlacecard];
  viewedDetailsFromPlacecard = [(RestaurantReservationAnalyticsBookedSession *)self viewedDetailsFromPlacecard];
  appID = [(RestaurantReservationAnalyticsBookedSession *)self appID];
  muid = [(RestaurantReservationAnalyticsBookedSession *)self muid];
  BYTE3(v11) = 0;
  BYTE2(v11) = [(RestaurantReservationAnalyticsBookedSession *)self tappedChangeReservation];
  LOWORD(v11) = 0;
  LOWORD(v10) = viewedDetailsFromPlacecard;
  [GEOAPPortal captureTableBookedEventWithSessionId:"captureTableBookedEventWithSessionId:bookedUsingMaps:cancelled:viewedInProactiveTray:tappedProactiveTrayItem:viewedInPlacecard:viewedDetailsInPlacecard:isAsync:bookedAppId:muid:called:routed:tappedChangeReservation:tappedCancelReservation:" bookedUsingMaps:sessionID cancelled:bookedUsingMaps viewedInProactiveTray:0 tappedProactiveTrayItem:viewedInProactiveTray viewedInPlacecard:tappedProactiveTrayItem viewedDetailsInPlacecard:viewedInPlacecard isAsync:v10 bookedAppId:appID muid:muid called:v11 routed:? tappedChangeReservation:? tappedCancelReservation:?];
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v10.receiver = self;
  v10.super_class = RestaurantReservationAnalyticsBookedSession;
  v4 = [(RestaurantReservationAnalyticsBookedSession *)&v10 description];
  v5 = [v3 initWithFormat:@"%@\n", v4];

  sessionID = [(RestaurantReservationAnalyticsBookedSession *)self sessionID];
  [v5 appendFormat:@" sessionID: %@\n", sessionID];

  appID = [(RestaurantReservationAnalyticsBookedSession *)self appID];
  [v5 appendFormat:@" appID: %@\n", appID];

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
    uUIDString = [v3 UUIDString];
    sessionID = v2->_sessionID;
    v2->_sessionID = uUIDString;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_mapsBackgrounded" name:UIApplicationDidEnterBackgroundNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_mapsForegrounded" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  return v2;
}

+ (void)removeAnalyticsBookedSessionsFromProactiveTrayIfNotInListOfMuids:(id)muids
{
  muidsCopy = muids;
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
          v8 = muidsCopy;
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

+ (void)removeAnalyticsBookedSession:(id)session
{
  v3 = qword_10195F4E0;
  sessionCopy = session;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195F4E0, &stru_101657700);
  }

  [qword_10195F4D0 lock];
  [qword_10195F4D8 removeObject:sessionCopy];

  v5 = qword_10195F4D0;

  [v5 unlock];
}

+ (id)currentAnalyticsBookedSessionForMuid:(unint64_t)muid createIfNotPresent:(BOOL)present
{
  presentCopy = present;
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
          if ([v10 muid] == muid)
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
    v13 = !presentCopy;
  }

  if (!v13)
  {
    v7 = objc_alloc_init(RestaurantReservationAnalyticsBookedSession);
    [(RestaurantReservationAnalyticsBookedSession *)v7 setMuid:muid];
    [qword_10195F4D8 addObject:v7];
  }

  [qword_10195F4D0 unlock];

  return v7;
}

@end