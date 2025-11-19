@interface PHDeclineWithReminderController
+ (void)configureButton:(id)a3 forIncomingCall:(id)a4 presenter:(id)a5;
- (CLLocationManager)locationManager;
- (PHDeclineWithReminderController)initWithCall:(id)a3 presenter:(id)a4;
- (UIViewController)presenter;
- (id)destinationID;
- (id)displayName;
- (id)menuActions;
- (id)numberForReminder;
- (id)reminderAction;
- (id)reminderActivity;
- (id)reminderText;
- (void)createReminderForLocation:(id)a3;
- (void)createReminderForWhenILeave;
- (void)createReminderWithDurationInMinutes:(int)a3;
- (void)declineCall;
- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
- (void)performLocationReminderAction:(id)a3 ifAuthorizedForStatus:(int)a4;
- (void)presentAlertWithTitle:(id)a3 message:(id)a4;
@end

@implementation PHDeclineWithReminderController

+ (void)configureButton:(id)a3 forIncomingCall:(id)a4 presenter:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v7 setContextMenuInteractionEnabled:1];
  [v7 setShowsMenuAsPrimaryAction:1];
  objc_initWeak(&location, v9);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000AEFE8;
  v11[3] = &unk_100358978;
  v10 = v8;
  v12 = v10;
  objc_copyWeak(&v13, &location);
  [v7 _setMenuProvider:v11];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
}

- (PHDeclineWithReminderController)initWithCall:(id)a3 presenter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PHDeclineWithReminderController *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_call, a3);
    v11 = [[PHMeCardGeocoder alloc] initWithCall:v7];
    meCardGeocoder = v10->_meCardGeocoder;
    v10->_meCardGeocoder = v11;

    objc_storeWeak(&v10->_presenter, v8);
  }

  return v10;
}

- (void)declineCall
{
  v4 = +[TUCallCenter sharedInstance];
  v3 = [(PHDeclineWithReminderController *)self call];
  [v4 disconnectCall:v3 withReason:4];
}

- (id)numberForReminder
{
  v2 = [(PHDeclineWithReminderController *)self destinationID];
  if ([v2 destinationIdIsPhoneNumber])
  {
    v3 = CPPhoneNumberCopyCountryCodeForIncomingTextMessage();
    if (!v3)
    {
      v3 = TUActiveCountryCode();
    }

    v4 = TUNetworkCountryCode();
    v5 = TUNumberToDial();
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

- (id)displayName
{
  v2 = [(PHDeclineWithReminderController *)self call];
  v3 = [v2 displayName];

  return v3;
}

- (id)destinationID
{
  v2 = [(PHDeclineWithReminderController *)self call];
  v3 = [v2 handle];
  v4 = [v3 value];

  return v4;
}

- (id)menuActions
{
  v3 = +[NSMutableArray array];
  v4 = [NSBundle bundleWithPath:@"/System/Library/LocationBundles/RemindersAlerts.bundle"];
  v5 = [CLLocationManager authorizationStatusForBundle:v4];

  v6 = [UIImage systemImageNamed:@"location"];
  v7 = [UIImage systemImageNamed:@"clock"];
  if (+[EKAlarm areLocationsAllowed])
  {
    v8 = v5 == 2;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (v5 - 5 > 0xFFFFFFFD || (+[PHInCallUIUtilities sharedInstance](PHInCallUIUtilities, "sharedInstance"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isSpringBoardLocked], v9, (v10 & 1) == 0))
    {
      v37 = v7;
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"WHEN_I_LEAVE" value:&stru_100361FD0 table:@"InCallService"];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_1000AF83C;
      v45[3] = &unk_1003589A0;
      v45[4] = self;
      v46 = v5;
      v13 = v6;
      v14 = [UIAction actionWithTitle:v12 image:v6 identifier:0 handler:v45];
      v15 = v3;
      [v3 addObject:v14];

      v16 = [(PHDeclineWithReminderController *)self meCardGeocoder];
      v35 = v16;
      if (v16)
      {
        v17 = v16;
        v18 = [v16 currentValidLocations];
        [v17 setActivelyUsing:1];
      }

      else
      {
        v18 = 0;
      }

      v38 = self;
      v19 = [v18 count];
      if (v19 >= 2)
      {
        v20 = 2;
      }

      else
      {
        v20 = v19;
      }

      v39 = v15;
      if (v18 && v19)
      {
        v21 = 0;
        do
        {
          v22 = v20;
          v23 = [v18 objectAtIndex:v21];
          v24 = [v23 valueForKey:@"Name"];

          LODWORD(v23) = [v24 isEqualToString:CNLabelHome];
          v25 = +[NSBundle mainBundle];
          v26 = v25;
          if (v23)
          {
            v27 = @"WHEN_I_GET_HOME";
          }

          else
          {
            v27 = @"WHEN_I_GET_TO_WORK";
          }

          v28 = [v25 localizedStringForKey:v27 value:&stru_100361FD0 table:@"InCallService"];

          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_1000AF8F0;
          v41[3] = &unk_1003589C8;
          v41[4] = v38;
          v42 = v18;
          v43 = v21;
          v44 = v5;
          v29 = [UIAction actionWithTitle:v28 image:v13 identifier:0 handler:v41];
          [v39 addObject:v29];

          v20 = v22;
          ++v21;
        }

        while (v22 != v21);
      }

      v6 = v13;
      v3 = v39;
      self = v38;
      v7 = v37;
    }
  }

  v30 = +[NSBundle mainBundle];
  v31 = [v30 localizedStringForKey:@"IN_1_HOUR" value:&stru_100361FD0 table:@"InCallService"];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000AF9EC;
  v40[3] = &unk_1003589F0;
  v40[4] = self;
  v32 = [UIAction actionWithTitle:v31 image:v7 identifier:0 handler:v40];
  [v3 addObject:v32];

  v33 = [NSArray arrayWithArray:v3];

  return v33;
}

- (void)performLocationReminderAction:(id)a3 ifAuthorizedForStatus:(int)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    if ((a4 - 3) <= 1)
    {
      (*(v6 + 2))(v6);
    }
  }

  else
  {
    v8 = [(PHDeclineWithReminderController *)self locationAuthorizationStatusCallback];

    if (!v8)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000AFB20;
      v10[3] = &unk_100358A18;
      v11 = v7;
      [(PHDeclineWithReminderController *)self setLocationAuthorizationStatusCallback:v10];
    }

    v9 = [(PHDeclineWithReminderController *)self locationManager];
    [v9 startUpdatingLocationWithPrompt];
  }
}

- (CLLocationManager)locationManager
{
  locationManager = self->_locationManager;
  if (!locationManager)
  {
    v4 = [CLLocationManager alloc];
    v5 = [NSBundle bundleWithPath:@"/System/Library/LocationBundles/RemindersAlerts.bundle"];
    v6 = [v4 initWithEffectiveBundle:v5];
    v7 = self->_locationManager;
    self->_locationManager = v6;

    [(CLLocationManager *)self->_locationManager setDelegate:self];
    locationManager = self->_locationManager;
  }

  return locationManager;
}

- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  v4 = *&a4;
  v8 = a3;
  v6 = [(PHDeclineWithReminderController *)self locationAuthorizationStatusCallback];

  if (v6)
  {
    v7 = [(PHDeclineWithReminderController *)self locationAuthorizationStatusCallback];
    (v7)[2](v7, v8, v4);

    if (v4)
    {
      [(PHDeclineWithReminderController *)self setLocationAuthorizationStatusCallback:0];
    }
  }
}

- (void)createReminderWithDurationInMinutes:(int)a3
{
  v5 = objc_alloc_init(EKEventStore);
  v6 = [EKReminder reminderWithEventStore:v5];
  v7 = [(PHDeclineWithReminderController *)self reminderText];
  [v6 setTitle:v7];

  v8 = [v5 defaultCalendarForNewReminders];
  [v6 setCalendar:v8];

  v9 = [v6 calendar];

  if (!v9)
  {
LABEL_12:
    v31 = +[NSBundle mainBundle];
    v33 = [v31 localizedStringForKey:@"ERROR" value:&stru_100361FD0 table:@"InCallService"];
    v34 = +[NSBundle mainBundle];
    v35 = [v34 localizedStringForKey:@"REMINDER_FAILED_TRY_LATER" value:&stru_100361FD0 table:@"InCallService"];
    [(PHDeclineWithReminderController *)self presentAlertWithTitle:v33 message:v35];

    goto LABEL_13;
  }

  v10 = [(PHDeclineWithReminderController *)self call];
  v11 = [v10 provider];
  v12 = [v11 isSystemProvider];

  if (v12)
  {
    v13 = [v6 calendar];
    v14 = [v13 source];
    v15 = [v14 constraints];
    v16 = [v15 supportsReminderActions];

    if (!v16)
    {
      goto LABEL_7;
    }

    v17 = [(PHDeclineWithReminderController *)self reminderAction];
    [v6 setAction:v17];
  }

  else
  {
    v17 = [(PHDeclineWithReminderController *)self reminderActivity];
    [v6 setAppLink:v17];
  }

LABEL_7:
  v18 = [NSDate dateWithTimeIntervalSinceNow:(60 * a3)];
  v19 = [EKAlarm alarmWithAbsoluteDate:v18];
  v20 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v21 = +[NSTimeZone localTimeZone];
  [v20 setTimeZone:v21];

  v22 = [v20 components:1048830 fromDate:v18];
  [v6 setDueDateComponents:v22];

  v23 = [NSArray arrayWithObject:v19];
  [v6 setAlarms:v23];

  v36 = 0;
  v24 = [v5 saveReminder:v6 commit:1 error:&v36];
  v25 = v36;
  v26 = v25;
  if ((v24 & 1) == 0)
  {
    v32 = sub_100004F84();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_100255FB0();
    }

    goto LABEL_12;
  }

  v27 = [NSUUID alloc];
  v28 = [v6 uniqueID];
  v29 = [v27 initWithUUIDString:v28];
  v30 = [(PHDeclineWithReminderController *)self call];
  [v30 setReminderUUID:v29];

  v31 = [(PHDeclineWithReminderController *)self displayName];
  TUNotifyOfRemindMeLater();
LABEL_13:
}

- (void)createReminderForLocation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"Address"];
  v6 = [v4 objectForKey:@"CLLocation"];
  v7 = [v4 objectForKey:@"Radius"];
  [v7 doubleValue];
  v9 = v8;

  v51 = v5;
  v10 = [EKStructuredLocation locationWithTitle:v5];
  v52 = v6;
  [v10 setGeoLocation:v6];
  [v10 setRadius:v9];
  v11 = objc_alloc_init(EKEventStore);
  v12 = [EKReminder reminderWithEventStore:v11];
  v13 = [(PHDeclineWithReminderController *)self reminderText];
  [v12 setTitle:v13];

  v14 = [v11 defaultCalendarForNewReminders];
  [v12 setCalendar:v14];

  v15 = [v12 calendar];

  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = [v12 calendar];
  v17 = [v16 source];
  v18 = [v17 constraints];
  v19 = [v18 supportsReminderLocations];

  if (!v19)
  {
    v28 = sub_100004F84();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[WARN] Reminder failed because calendar doesn't support location-based reminders", buf, 2u);
    }

    v29 = +[NSBundle mainBundle];
    v30 = [v29 localizedStringForKey:@"REMINDER_FAILED_NO_LOCATION_BASED_REMINDERS" value:&stru_100361FD0 table:@"InCallService"];

    if (v30)
    {
      v31 = v30;
      v32 = v31;
LABEL_23:
      v47 = +[NSBundle mainBundle];
      v50 = [v47 localizedStringForKey:@"ERROR" value:&stru_100361FD0 table:@"InCallService"];
      [(PHDeclineWithReminderController *)self presentAlertWithTitle:v50 message:v31];

      goto LABEL_24;
    }

LABEL_22:
    v49 = +[NSBundle mainBundle];
    v31 = [v49 localizedStringForKey:@"REMINDER_FAILED_TRY_LATER" value:&stru_100361FD0 table:@"InCallService"];

    v32 = 0;
    goto LABEL_23;
  }

  v20 = [(PHDeclineWithReminderController *)self call];
  v21 = [v20 provider];
  v22 = [v21 isSystemProvider];

  if (v22)
  {
    v23 = [v12 calendar];
    v24 = [v23 source];
    v25 = [v24 constraints];
    v26 = [v25 supportsReminderActions];

    if (!v26)
    {
      goto LABEL_12;
    }

    v27 = [(PHDeclineWithReminderController *)self reminderAction];
    [v12 setAction:v27];
  }

  else
  {
    v27 = [(PHDeclineWithReminderController *)self reminderActivity];
    [v12 setAppLink:v27];
  }

LABEL_12:
  v33 = [EKAlarm alarmWithRelativeOffset:0.0];
  [v33 setProximity:1];
  [v33 setStructuredLocation:v10];
  [v12 setStructuredLocation:v10];
  v34 = [NSArray arrayWithObject:v33];
  [v12 setAlarms:v34];

  v35 = sub_100004F84();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = v6;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "About to save a reminder for CLLocation %@", buf, 0xCu);
  }

  v53 = 0;
  v36 = [v11 saveReminder:v12 commit:1 error:&v53];
  v37 = v53;
  v38 = v37;
  if ((v36 & 1) == 0)
  {
    v48 = sub_100004F84();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      sub_100255FB0();
    }

    goto LABEL_22;
  }

  v32 = [v4 valueForKey:@"Name"];
  v39 = [v32 isEqualToString:CNLabelHome];
  v40 = +[NSBundle mainBundle];
  v41 = v40;
  if (v39)
  {
    v42 = @"WHEN_I_GET_HOME";
  }

  else
  {
    v42 = @"WHEN_I_GET_TO_WORK";
  }

  v31 = [v40 localizedStringForKey:v42 value:&stru_100361FD0 table:@"InCallService"];

  v43 = [NSUUID alloc];
  v44 = [v12 uniqueID];
  v45 = [v43 initWithUUIDString:v44];
  v46 = [(PHDeclineWithReminderController *)self call];
  [v46 setReminderUUID:v45];

  v47 = [(PHDeclineWithReminderController *)self displayName];
  TUNotifyOfRemindMeLater();
LABEL_24:
}

- (void)createReminderForWhenILeave
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHDeclineWithReminderController.createReminderForWhenILeave beginBackgroundTaskWithExpirationHandler", buf, 2u);
  }

  v4 = +[UIApplication sharedApplication];
  v5 = [v4 beginBackgroundTaskWithExpirationHandler:&stru_100358A38];

  v6 = [NSBundle bundleWithPath:@"/System/Library/LocationBundles/RemindersAlerts.bundle"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B07F0;
  v11[3] = &unk_100358A88;
  v11[4] = self;
  v11[5] = v5;
  [PHLocationFinder findLocationWithBundle:v6 completion:v11];

  v7 = [(PHDeclineWithReminderController *)self displayName];
  v8 = [(PHDeclineWithReminderController *)self reminderText];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"WHEN_I_LEAVE" value:&stru_100361FD0 table:@"InCallService"];
  TUNotifyOfRemindMeLaterWhenILeave();
}

- (void)presentAlertWithTitle:(id)a3 message:(id)a4
{
  v5 = [UIAlertController alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"OK" value:&stru_100361FD0 table:@"InCallService"];
  v8 = [UIAlertAction actionWithTitle:v7 style:0 handler:&stru_100358AC8];

  [v5 addAction:v8];
  v9 = [(PHDeclineWithReminderController *)self presenter];

  if (v9)
  {
    v10 = [(PHDeclineWithReminderController *)self presenter];
    [v10 presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v11 = sub_100004F84();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PHDeclineWithReminderController: presenter for alert deallocated so falling back to UIWindow._applicationKeyWindow.rootViewController", v13, 2u);
    }

    v10 = +[UIWindow _applicationKeyWindow];
    v12 = [v10 rootViewController];
    [v12 presentViewController:v5 animated:1 completion:&stru_100358AE8];
  }
}

- (id)reminderAction
{
  v2 = [(PHDeclineWithReminderController *)self call];
  v3 = [v2 dialRequestForRedial];
  v4 = [v3 URL];

  return v4;
}

- (id)reminderActivity
{
  v2 = [(PHDeclineWithReminderController *)self call];
  v3 = [v2 dialRequestForRedial];
  v4 = [v3 userActivity];

  return v4;
}

- (id)reminderText
{
  v3 = [(PHDeclineWithReminderController *)self call];
  v4 = [v3 provider];
  v5 = [v4 isFaceTimeProvider];

  v6 = [(PHDeclineWithReminderController *)self call];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 isVideo];
    v9 = +[NSBundle mainBundle];
    v10 = v9;
    if (v8)
    {
      v11 = @"FACETIME_%@";
    }

    else
    {
      v11 = @"FACETIME_AUDIO_%@";
    }

    v12 = [v9 localizedStringForKey:v11 value:&stru_100361FD0 table:@"InCallService"];

    v13 = [(PHDeclineWithReminderController *)self displayName];
    v14 = [NSString stringWithFormat:v12, v13];
    goto LABEL_18;
  }

  v15 = [v6 provider];
  v16 = [v15 isTelephonyProvider];

  v17 = [(PHDeclineWithReminderController *)self call];
  v18 = v17;
  if (!v16)
  {
    v27 = [v17 isVideo];
    v28 = +[NSBundle mainBundle];
    v29 = v28;
    if (v27)
    {
      v30 = @"VOIP_%@_VIDEO_%@";
    }

    else
    {
      v30 = @"VOIP_%@_AUDIO_%@";
    }

    v12 = [v28 localizedStringForKey:v30 value:&stru_100361FD0 table:@"InCallService"];

    v13 = [(PHDeclineWithReminderController *)self call];
    v23 = [v13 provider];
    v24 = [v23 localizedName];
    v25 = [(PHDeclineWithReminderController *)self displayName];
    v14 = [NSString stringWithFormat:v12, v24, v25];
    goto LABEL_14;
  }

  v19 = [v17 provider];
  v20 = [v19 prioritizedSenderIdentities];
  if ([v20 count] <= 1)
  {

    goto LABEL_16;
  }

  v21 = [(PHDeclineWithReminderController *)self call];
  v22 = [v21 localSenderIdentity];

  if (!v22)
  {
LABEL_16:
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"CALL_BACK_%@" value:&stru_100361FD0 table:@"InCallService"];
    v23 = [(PHDeclineWithReminderController *)self displayName];
    v14 = [NSString stringWithFormat:v13, v23];
    goto LABEL_17;
  }

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"CALL_BACK_%@_WITH_SENDER_IDENTITY_%@" value:&stru_100361FD0 table:@"InCallService"];
  v23 = [(PHDeclineWithReminderController *)self displayName];
  v24 = [(PHDeclineWithReminderController *)self call];
  v25 = [v24 localSenderIdentity];
  v26 = [v25 localizedName];
  v14 = [NSString stringWithFormat:v13, v23, v26];

LABEL_14:
LABEL_17:

LABEL_18:

  return v14;
}

- (UIViewController)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end