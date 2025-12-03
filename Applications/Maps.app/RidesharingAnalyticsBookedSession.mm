@interface RidesharingAnalyticsBookedSession
- (RidesharingAnalyticsBookedSession)init;
- (void)captureIntent:(int)intent withFailure:(int)failure;
- (void)endSession;
@end

@implementation RidesharingAnalyticsBookedSession

- (void)endSession
{
  if (!self->_sessionEnded)
  {
    self->_sessionEnded = 1;
    v3 = +[NSProcessInfo processInfo];
    processName = [v3 processName];
    v5 = [processName isEqualToString:@"destinationd"];

    if (v5)
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/Shared/Rides/Internal/RidesharingAnalyticsBookedSession.m");
        v8 = [[NSString alloc] initWithFormat:@"endSession was called from destinationd, not capturing ride booking analytics"];
        *buf = 136315394;
        v19 = v7;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
      }
    }

    else
    {
      sessionId = self->_sessionId;
      v17 = [NSNumber numberWithBool:self->_bookedUsingMaps];
      v10 = [NSNumber numberWithBool:self->_cancelled];
      v11 = [NSNumber numberWithBool:self->_contactedDriver];
      v12 = [NSNumber numberWithBool:self->_viewedInProactiveTray];
      v13 = [NSNumber numberWithBool:self->_tappedProactiveTrayItem];
      v14 = [NSNumber numberWithBool:self->_viewedDetails];
      v15 = [NSNumber numberWithBool:self->_invalidVehicleLocation];
      v16 = [NSNumber numberWithBool:self->_missingVehicleLocation];
      [GEOAPPortal captureRideBookedWithRideBookedSessionId:sessionId bookedUsingMaps:v17 cancelled:v10 contactedDriver:v11 viewedInProactiveTray:v12 tappedProactiveTrayItem:v13 viewedDetails:v14 invalidVehicleLocation:v15 missingVehicleLocation:v16 rideAppId:self->_appIdentifier rideAppVersion:self->_appVersion intentResponseFailures:self->_intentResponseFailures];
    }
  }
}

- (void)captureIntent:(int)intent withFailure:(int)failure
{
  v4 = *&failure;
  v5 = *&intent;
  v8 = objc_alloc_init(GEORideBookingIntentResponseFailure);
  [v8 setIntent:v5];
  [v8 setFailure:v4];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_intentResponseFailures addObject:v8];
  objc_sync_exit(selfCopy);
}

- (RidesharingAnalyticsBookedSession)init
{
  v8.receiver = self;
  v8.super_class = RidesharingAnalyticsBookedSession;
  v2 = [(RidesharingAnalyticsBookedSession *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    intentResponseFailures = v2->_intentResponseFailures;
    v2->_intentResponseFailures = v3;

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"mapsBackgrounded" name:UIApplicationDidEnterBackgroundNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"mapsForegrounded" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  return v2;
}

@end