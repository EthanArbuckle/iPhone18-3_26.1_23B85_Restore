@interface RidesharingAnalyticsBookingSession
- (RidesharingAnalyticsBookingSession)init;
- (void)captureBookedApp:(id)a3 version:(id)a4;
- (void)captureErrorMessage:(id)a3;
- (void)captureIntent:(int)a3 withFailure:(int)a4;
- (void)captureRideOptionCount:(unint64_t)a3;
- (void)endSessionOnView:(int64_t)a3 state:(int64_t)a4;
@end

@implementation RidesharingAnalyticsBookingSession

- (void)endSessionOnView:(int64_t)a3 state:(int64_t)a4
{
  if (!self->_sessionEnded)
  {
    self->_sessionEnded = 1;
    self->_endState = a4;
    self->_endView = a3;
    if (!self->_maximumCountOfRideOptionsReturned)
    {
      self->_noRidesAvailable = 1;
    }

    if (a4 == 1)
    {
      v5 = +[NSDate date];
      bookingDate = self->_bookingDate;
      self->_bookingDate = v5;
    }

    [(NSDate *)self->_sessionStartDate timeIntervalSinceNow];
    v8 = v7;
    [(CLLocation *)self->_origin coordinate];
    v10 = v9;
    [(CLLocation *)self->_origin coordinate];
    v12 = v11;
    [(CLLocation *)self->_destination coordinate];
    v14 = v13;
    [(CLLocation *)self->_destination coordinate];
    v16 = v15;
    v17 = self;
    objc_sync_enter(v17);
    v49 = [(NSMutableArray *)v17->_errorMessages copy];
    v18 = (v12 * 100.0);
    v19 = ((v14 * 100.0) * 0.01);
    v20 = (v18 * 0.01);
    objc_sync_exit(v17);

    v21 = objc_alloc_init(GEOLatLng);
    [v21 setLat:((v10 * 100.0) * 0.01)];
    [v21 setLng:v20];
    v22 = objc_alloc_init(GEOLatLng);
    [v22 setLat:v19];
    [v22 setLng:((v16 * 100.0) * 0.01)];
    [(NSDate *)v17->_bookingDate timeIntervalSince1970];
    v24 = v23;
    v25 = +[NSProcessInfo processInfo];
    v26 = [v25 processName];
    v27 = [v26 isEqualToString:@"destinationd"];

    if (v27)
    {
      v28 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/Shared/Rides/Internal/RidesharingAnalyticsBookingSession.m");
        v30 = [[NSString alloc] initWithFormat:@"endSessionOnView: was called from destinationd, not capturing ride booking analytics"];
        *buf = 136315394;
        v51 = v29;
        v52 = 2112;
        v53 = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
      }
    }

    else
    {
      endState = self->_endState;
      statusIssue = v17->_statusIssue;
      endView = self->_endView;
      sessionId = v17->_sessionId;
      appVersion = v17->_appVersion;
      appIdentifier = v17->_appIdentifier;
      v45 = [NSNumber numberWithBool:v17->_exploredOtherOptions];
      v38 = [NSNumber numberWithDouble:v17->_distanceToPickup];
      v48 = [NSNumber numberWithBool:v17->_paymentIsApplePay];
      v47 = [NSNumber numberWithUnsignedInteger:v17->_numberOfInstalledExtensions];
      v46 = [NSNumber numberWithBool:v17->_switchedApp];
      v31 = [NSNumber numberWithBool:v17->_comparedRideOptions];
      v37 = [NSNumber numberWithBool:v17->_showedSurgePricingAlert];
      v32 = [NSNumber numberWithDouble:-v8];
      v33 = [NSNumber numberWithBool:v17->_installedApp];
      v34 = [NSNumber numberWithDouble:((v24 * 3600.0) * 0.00027778)];
      v35 = [NSNumber numberWithBool:v17->_noRidesAvailable];
      v36 = [NSNumber numberWithBool:v17->_movedPickupLocation];
      [GEOAPPortal captureRideBookingWithRideBookingSessionId:sessionId statusIssue:statusIssue endState:endState endView:endView rideAppId:appIdentifier rideAppVersion:appVersion originBlurred:v21 destinationBlurred:v22 exploredOtherOptions:v45 distanceToPickupInMeters:v38 paymentIsApplePay:v48 numberOfAvailableExtensions:v47 switchedApp:v46 comparedRideOptions:v31 showedSurgePricingAlert:v37 durationOfSessionInSeconds:v32 installedApp:v33 timestamp:v34 unavailable:v35 movedPickupLocation:v36 errorMessages:v49 intentResponseFailures:v17->_intentResponseFailures];
    }
  }
}

- (void)captureIntent:(int)a3 withFailure:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v8 = objc_alloc_init(GEORideBookingIntentResponseFailure);
  [v8 setIntent:v5];
  [v8 setFailure:v4];
  v7 = self;
  objc_sync_enter(v7);
  [(NSMutableArray *)v7->_intentResponseFailures addObject:v8];
  objc_sync_exit(v7);
}

- (void)captureErrorMessage:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableArray *)v4->_errorMessages addObject:v5];
  objc_sync_exit(v4);
}

- (void)captureBookedApp:(id)a3 version:(id)a4
{
  v8 = a3;
  v7 = a4;
  objc_storeStrong(&self->_appIdentifier, a3);
  objc_storeStrong(&self->_appVersion, a4);
  if (!self->_initiallySelectedApp || ([v8 isEqualToString:?] & 1) == 0)
  {
    self->_switchedApp = 1;
  }
}

- (void)captureRideOptionCount:(unint64_t)a3
{
  maximumCountOfRideOptionsReturned = self->_maximumCountOfRideOptionsReturned;
  if (maximumCountOfRideOptionsReturned <= a3)
  {
    maximumCountOfRideOptionsReturned = a3;
  }

  self->_maximumCountOfRideOptionsReturned = maximumCountOfRideOptionsReturned;
}

- (RidesharingAnalyticsBookingSession)init
{
  v18.receiver = self;
  v18.super_class = RidesharingAnalyticsBookingSession;
  v2 = [(RidesharingAnalyticsBookingSession *)&v18 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    v4 = [v3 UUIDString];
    sessionId = v2->_sessionId;
    v2->_sessionId = v4;

    v6 = +[RidesharingAppPreferenceManager mostRecentSelectedAppIdentifers];
    v7 = [v6 firstObject];
    initiallySelectedApp = v2->_initiallySelectedApp;
    v2->_initiallySelectedApp = v7;

    v9 = +[NSDate date];
    sessionStartDate = v2->_sessionStartDate;
    v2->_sessionStartDate = v9;

    v11 = objc_alloc_init(NSMutableArray);
    errorMessages = v2->_errorMessages;
    v2->_errorMessages = v11;

    v13 = objc_alloc_init(NSMutableArray);
    intentResponseFailures = v2->_intentResponseFailures;
    v2->_intentResponseFailures = v13;

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v2 selector:"mapsBackgrounded" name:UIApplicationDidEnterBackgroundNotification object:0];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v2 selector:"mapsForegrounded" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  return v2;
}

@end