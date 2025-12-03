@interface PHDeclineWithReminderController
+ (void)configureButton:(id)button forIncomingCall:(id)call presenter:(id)presenter;
- (CLLocationManager)locationManager;
- (PHDeclineWithReminderController)initWithCall:(id)call presenter:(id)presenter;
- (UIViewController)presenter;
- (id)destinationID;
- (id)displayName;
- (id)menuActions;
- (id)numberForReminder;
- (id)reminderAction;
- (id)reminderActivity;
- (id)reminderText;
- (void)createReminderForLocation:(id)location;
- (void)createReminderForWhenILeave;
- (void)createReminderWithDurationInMinutes:(int)minutes;
- (void)declineCall;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)performLocationReminderAction:(id)action ifAuthorizedForStatus:(int)status;
- (void)presentAlertWithTitle:(id)title message:(id)message;
@end

@implementation PHDeclineWithReminderController

+ (void)configureButton:(id)button forIncomingCall:(id)call presenter:(id)presenter
{
  buttonCopy = button;
  callCopy = call;
  presenterCopy = presenter;
  [buttonCopy setContextMenuInteractionEnabled:1];
  [buttonCopy setShowsMenuAsPrimaryAction:1];
  objc_initWeak(&location, presenterCopy);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000AEFE8;
  v11[3] = &unk_100358978;
  v10 = callCopy;
  v12 = v10;
  objc_copyWeak(&v13, &location);
  [buttonCopy _setMenuProvider:v11];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
}

- (PHDeclineWithReminderController)initWithCall:(id)call presenter:(id)presenter
{
  callCopy = call;
  presenterCopy = presenter;
  v9 = [(PHDeclineWithReminderController *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_call, call);
    v11 = [[PHMeCardGeocoder alloc] initWithCall:callCopy];
    meCardGeocoder = v10->_meCardGeocoder;
    v10->_meCardGeocoder = v11;

    objc_storeWeak(&v10->_presenter, presenterCopy);
  }

  return v10;
}

- (void)declineCall
{
  v4 = +[TUCallCenter sharedInstance];
  call = [(PHDeclineWithReminderController *)self call];
  [v4 disconnectCall:call withReason:4];
}

- (id)numberForReminder
{
  destinationID = [(PHDeclineWithReminderController *)self destinationID];
  if ([destinationID destinationIdIsPhoneNumber])
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
    v5 = destinationID;
  }

  return v5;
}

- (id)displayName
{
  call = [(PHDeclineWithReminderController *)self call];
  displayName = [call displayName];

  return displayName;
}

- (id)destinationID
{
  call = [(PHDeclineWithReminderController *)self call];
  handle = [call handle];
  value = [handle value];

  return value;
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

      meCardGeocoder = [(PHDeclineWithReminderController *)self meCardGeocoder];
      v35 = meCardGeocoder;
      if (meCardGeocoder)
      {
        v17 = meCardGeocoder;
        currentValidLocations = [meCardGeocoder currentValidLocations];
        [v17 setActivelyUsing:1];
      }

      else
      {
        currentValidLocations = 0;
      }

      selfCopy = self;
      v19 = [currentValidLocations count];
      if (v19 >= 2)
      {
        v20 = 2;
      }

      else
      {
        v20 = v19;
      }

      v39 = v15;
      if (currentValidLocations && v19)
      {
        v21 = 0;
        do
        {
          v22 = v20;
          v23 = [currentValidLocations objectAtIndex:v21];
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
          v41[4] = selfCopy;
          v42 = currentValidLocations;
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
      self = selfCopy;
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

- (void)performLocationReminderAction:(id)action ifAuthorizedForStatus:(int)status
{
  actionCopy = action;
  v7 = actionCopy;
  if (status)
  {
    if ((status - 3) <= 1)
    {
      (*(actionCopy + 2))(actionCopy);
    }
  }

  else
  {
    locationAuthorizationStatusCallback = [(PHDeclineWithReminderController *)self locationAuthorizationStatusCallback];

    if (!locationAuthorizationStatusCallback)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000AFB20;
      v10[3] = &unk_100358A18;
      v11 = v7;
      [(PHDeclineWithReminderController *)self setLocationAuthorizationStatusCallback:v10];
    }

    locationManager = [(PHDeclineWithReminderController *)self locationManager];
    [locationManager startUpdatingLocationWithPrompt];
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

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  v4 = *&status;
  managerCopy = manager;
  locationAuthorizationStatusCallback = [(PHDeclineWithReminderController *)self locationAuthorizationStatusCallback];

  if (locationAuthorizationStatusCallback)
  {
    locationAuthorizationStatusCallback2 = [(PHDeclineWithReminderController *)self locationAuthorizationStatusCallback];
    (locationAuthorizationStatusCallback2)[2](locationAuthorizationStatusCallback2, managerCopy, v4);

    if (v4)
    {
      [(PHDeclineWithReminderController *)self setLocationAuthorizationStatusCallback:0];
    }
  }
}

- (void)createReminderWithDurationInMinutes:(int)minutes
{
  v5 = objc_alloc_init(EKEventStore);
  v6 = [EKReminder reminderWithEventStore:v5];
  reminderText = [(PHDeclineWithReminderController *)self reminderText];
  [v6 setTitle:reminderText];

  defaultCalendarForNewReminders = [v5 defaultCalendarForNewReminders];
  [v6 setCalendar:defaultCalendarForNewReminders];

  calendar = [v6 calendar];

  if (!calendar)
  {
LABEL_12:
    displayName = +[NSBundle mainBundle];
    v33 = [displayName localizedStringForKey:@"ERROR" value:&stru_100361FD0 table:@"InCallService"];
    v34 = +[NSBundle mainBundle];
    v35 = [v34 localizedStringForKey:@"REMINDER_FAILED_TRY_LATER" value:&stru_100361FD0 table:@"InCallService"];
    [(PHDeclineWithReminderController *)self presentAlertWithTitle:v33 message:v35];

    goto LABEL_13;
  }

  call = [(PHDeclineWithReminderController *)self call];
  provider = [call provider];
  isSystemProvider = [provider isSystemProvider];

  if (isSystemProvider)
  {
    calendar2 = [v6 calendar];
    source = [calendar2 source];
    constraints = [source constraints];
    supportsReminderActions = [constraints supportsReminderActions];

    if (!supportsReminderActions)
    {
      goto LABEL_7;
    }

    reminderAction = [(PHDeclineWithReminderController *)self reminderAction];
    [v6 setAction:reminderAction];
  }

  else
  {
    reminderAction = [(PHDeclineWithReminderController *)self reminderActivity];
    [v6 setAppLink:reminderAction];
  }

LABEL_7:
  v18 = [NSDate dateWithTimeIntervalSinceNow:(60 * minutes)];
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
  uniqueID = [v6 uniqueID];
  v29 = [v27 initWithUUIDString:uniqueID];
  call2 = [(PHDeclineWithReminderController *)self call];
  [call2 setReminderUUID:v29];

  displayName = [(PHDeclineWithReminderController *)self displayName];
  TUNotifyOfRemindMeLater();
LABEL_13:
}

- (void)createReminderForLocation:(id)location
{
  locationCopy = location;
  v5 = [locationCopy objectForKey:@"Address"];
  v6 = [locationCopy objectForKey:@"CLLocation"];
  v7 = [locationCopy objectForKey:@"Radius"];
  [v7 doubleValue];
  v9 = v8;

  v51 = v5;
  v10 = [EKStructuredLocation locationWithTitle:v5];
  v52 = v6;
  [v10 setGeoLocation:v6];
  [v10 setRadius:v9];
  v11 = objc_alloc_init(EKEventStore);
  v12 = [EKReminder reminderWithEventStore:v11];
  reminderText = [(PHDeclineWithReminderController *)self reminderText];
  [v12 setTitle:reminderText];

  defaultCalendarForNewReminders = [v11 defaultCalendarForNewReminders];
  [v12 setCalendar:defaultCalendarForNewReminders];

  calendar = [v12 calendar];

  if (!calendar)
  {
    goto LABEL_22;
  }

  calendar2 = [v12 calendar];
  source = [calendar2 source];
  constraints = [source constraints];
  supportsReminderLocations = [constraints supportsReminderLocations];

  if (!supportsReminderLocations)
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
      displayName = +[NSBundle mainBundle];
      v50 = [displayName localizedStringForKey:@"ERROR" value:&stru_100361FD0 table:@"InCallService"];
      [(PHDeclineWithReminderController *)self presentAlertWithTitle:v50 message:v31];

      goto LABEL_24;
    }

LABEL_22:
    v49 = +[NSBundle mainBundle];
    v31 = [v49 localizedStringForKey:@"REMINDER_FAILED_TRY_LATER" value:&stru_100361FD0 table:@"InCallService"];

    v32 = 0;
    goto LABEL_23;
  }

  call = [(PHDeclineWithReminderController *)self call];
  provider = [call provider];
  isSystemProvider = [provider isSystemProvider];

  if (isSystemProvider)
  {
    calendar3 = [v12 calendar];
    source2 = [calendar3 source];
    constraints2 = [source2 constraints];
    supportsReminderActions = [constraints2 supportsReminderActions];

    if (!supportsReminderActions)
    {
      goto LABEL_12;
    }

    reminderAction = [(PHDeclineWithReminderController *)self reminderAction];
    [v12 setAction:reminderAction];
  }

  else
  {
    reminderAction = [(PHDeclineWithReminderController *)self reminderActivity];
    [v12 setAppLink:reminderAction];
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

  v32 = [locationCopy valueForKey:@"Name"];
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
  uniqueID = [v12 uniqueID];
  v45 = [v43 initWithUUIDString:uniqueID];
  call2 = [(PHDeclineWithReminderController *)self call];
  [call2 setReminderUUID:v45];

  displayName = [(PHDeclineWithReminderController *)self displayName];
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

  displayName = [(PHDeclineWithReminderController *)self displayName];
  reminderText = [(PHDeclineWithReminderController *)self reminderText];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"WHEN_I_LEAVE" value:&stru_100361FD0 table:@"InCallService"];
  TUNotifyOfRemindMeLaterWhenILeave();
}

- (void)presentAlertWithTitle:(id)title message:(id)message
{
  v5 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"OK" value:&stru_100361FD0 table:@"InCallService"];
  v8 = [UIAlertAction actionWithTitle:v7 style:0 handler:&stru_100358AC8];

  [v5 addAction:v8];
  presenter = [(PHDeclineWithReminderController *)self presenter];

  if (presenter)
  {
    presenter2 = [(PHDeclineWithReminderController *)self presenter];
    [presenter2 presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v11 = sub_100004F84();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PHDeclineWithReminderController: presenter for alert deallocated so falling back to UIWindow._applicationKeyWindow.rootViewController", v13, 2u);
    }

    presenter2 = +[UIWindow _applicationKeyWindow];
    rootViewController = [presenter2 rootViewController];
    [rootViewController presentViewController:v5 animated:1 completion:&stru_100358AE8];
  }
}

- (id)reminderAction
{
  call = [(PHDeclineWithReminderController *)self call];
  dialRequestForRedial = [call dialRequestForRedial];
  v4 = [dialRequestForRedial URL];

  return v4;
}

- (id)reminderActivity
{
  call = [(PHDeclineWithReminderController *)self call];
  dialRequestForRedial = [call dialRequestForRedial];
  userActivity = [dialRequestForRedial userActivity];

  return userActivity;
}

- (id)reminderText
{
  call = [(PHDeclineWithReminderController *)self call];
  provider = [call provider];
  isFaceTimeProvider = [provider isFaceTimeProvider];

  call2 = [(PHDeclineWithReminderController *)self call];
  v7 = call2;
  if (isFaceTimeProvider)
  {
    isVideo = [call2 isVideo];
    v9 = +[NSBundle mainBundle];
    v10 = v9;
    if (isVideo)
    {
      v11 = @"FACETIME_%@";
    }

    else
    {
      v11 = @"FACETIME_AUDIO_%@";
    }

    v12 = [v9 localizedStringForKey:v11 value:&stru_100361FD0 table:@"InCallService"];

    displayName = [(PHDeclineWithReminderController *)self displayName];
    v14 = [NSString stringWithFormat:v12, displayName];
    goto LABEL_18;
  }

  provider2 = [call2 provider];
  isTelephonyProvider = [provider2 isTelephonyProvider];

  call3 = [(PHDeclineWithReminderController *)self call];
  v18 = call3;
  if (!isTelephonyProvider)
  {
    isVideo2 = [call3 isVideo];
    v28 = +[NSBundle mainBundle];
    v29 = v28;
    if (isVideo2)
    {
      v30 = @"VOIP_%@_VIDEO_%@";
    }

    else
    {
      v30 = @"VOIP_%@_AUDIO_%@";
    }

    v12 = [v28 localizedStringForKey:v30 value:&stru_100361FD0 table:@"InCallService"];

    displayName = [(PHDeclineWithReminderController *)self call];
    provider3 = [displayName provider];
    localizedName = [provider3 localizedName];
    displayName2 = [(PHDeclineWithReminderController *)self displayName];
    v14 = [NSString stringWithFormat:v12, localizedName, displayName2];
    goto LABEL_14;
  }

  provider4 = [call3 provider];
  prioritizedSenderIdentities = [provider4 prioritizedSenderIdentities];
  if ([prioritizedSenderIdentities count] <= 1)
  {

    goto LABEL_16;
  }

  call4 = [(PHDeclineWithReminderController *)self call];
  localSenderIdentity = [call4 localSenderIdentity];

  if (!localSenderIdentity)
  {
LABEL_16:
    v12 = +[NSBundle mainBundle];
    displayName = [v12 localizedStringForKey:@"CALL_BACK_%@" value:&stru_100361FD0 table:@"InCallService"];
    provider3 = [(PHDeclineWithReminderController *)self displayName];
    v14 = [NSString stringWithFormat:displayName, provider3];
    goto LABEL_17;
  }

  v12 = +[NSBundle mainBundle];
  displayName = [v12 localizedStringForKey:@"CALL_BACK_%@_WITH_SENDER_IDENTITY_%@" value:&stru_100361FD0 table:@"InCallService"];
  provider3 = [(PHDeclineWithReminderController *)self displayName];
  localizedName = [(PHDeclineWithReminderController *)self call];
  displayName2 = [localizedName localSenderIdentity];
  localizedName2 = [displayName2 localizedName];
  v14 = [NSString stringWithFormat:displayName, provider3, localizedName2];

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