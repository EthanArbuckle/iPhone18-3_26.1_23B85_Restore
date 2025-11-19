@interface HDHealthRecordsAPIReminderRegistry
+ (void)initialize;
- (BOOL)_queue_deregisterAppWithBundleIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_queue_isAnyReminderInFlight;
- (BOOL)_queue_shouldDropUnlimitedAuthorizationModeReminder:(id)a3;
- (BOOL)_readAuthorizationAllowedForAnyTypeInRecordsByType:(id)a3;
- (HDHealthRecordsAPIReminderRegistry)init;
- (HDHealthRecordsAPIReminderRegistry)initWithProfileExtension:(id)a3;
- (HDHealthRecordsProfileExtension)profileExtension;
- (HDProfile)profile;
- (double)_timeIntervalForDefaultsKey:(id)a3 fallbackInterval:(double)a4;
- (double)deferralPeriod;
- (double)schedulerGracePeriod;
- (double)throttlingInterval;
- (id)_criteriaForFirstUnlockActivity;
- (id)_criteriaForFirstUnlockActivityCompleted;
- (id)_eligibilityStartDateAfterPostedReminder:(id)a3;
- (id)_eligibilityStartDateForUnpostedReminder:(id)a3;
- (id)_queue_firstEligibleReminderAfterDate:(id)a3;
- (id)_queue_nextEligibleFireDate;
- (int64_t)_authorizationModeForRecordsByType:(id)a3;
- (void)_applicationsUninstalledNotification:(id)a3;
- (void)_checkInForFirstUnlockActivity;
- (void)_didProcessPendingReminderID:(id)a3 transaction:(id)a4;
- (void)_displayStopAlertForPendingReminderID:(id)a3 transaction:(id)a4 title:(id)a5 body:(id)a6 defaultButtonTitle:(id)a7 alternateButtonTitle:(id)a8;
- (void)_displayUnlimitedAuthorizationModeConfirmationForPendingReminderID:(id)a3 transaction:(id)a4 reminder:(id)a5;
- (void)_firePendingReminderIfEligible;
- (void)_handleHomescreenUnlockedNotification:(id)a3;
- (void)_handleUserNotificationResponse:(int64_t)a3 pendingReminderID:(id)a4 transaction:(id)a5;
- (void)_queue_dropReminder:(id)a3;
- (void)_queue_firePendingReminderIfEligibleUsingPendingReminderID:(id)a3 transaction:(id)a4;
- (void)_queue_handleUserNotificationResponse:(int64_t)a3 pendingReminderID:(id)a4 transaction:(id)a5;
- (void)_queue_performUserActionForReminder:(id)a3 userResponse:(int64_t)a4;
- (void)_queue_scheduleFireOnHomescreenUnlockIfEligibleWithNow:(id)a3;
- (void)_queue_scheduleNextTriggerWithNow:(id)a3;
- (void)_queue_scheduleTriggers;
- (void)_queue_startListeningForHomescreenUnlockNotifications;
- (void)_queue_stopListeningForHomescreenUnlockNotifications;
- (void)_scheduleTriggers;
- (void)_showClinicalAPISettingsForAppSource:(id)a3;
- (void)_startObservingApplicationsUninstalledNotification;
- (void)_unitTesting_setDeferralPeriodOverride:(double)a3;
- (void)_unitTesting_setSchedulerGracePeriodOverride:(double)a3;
- (void)_unitTesting_setThrottlingIntervalOverride:(double)a3;
- (void)deregisterAppSourceFromUnlimitedAuthorizationModeConfirmation:(id)a3 completion:(id)a4;
- (void)registerAppSourceForUnlimitedAuthorizationModeConfirmation:(id)a3 completion:(id)a4;
@end

@implementation HDHealthRecordsAPIReminderRegistry

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v6[0] = @"HealthRecordsAPIReminderDeferralPeriod";
    v6[1] = @"HealthRecordsAPIReminderThrottlingInterval";
    v7[0] = &off_1107A0;
    v7[1] = &off_1107B0;
    v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
    [v4 registerDefaults:v5];
  }
}

- (HDHealthRecordsAPIReminderRegistry)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDHealthRecordsAPIReminderRegistry)initWithProfileExtension:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = HDHealthRecordsAPIReminderRegistry;
  v5 = [(HDHealthRecordsAPIReminderRegistry *)&v21 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profileExtension, v4);
    v7 = [v4 profile];
    objc_storeWeak(&v6->_profile, v7);

    v8 = [(HDHealthRecordsAPIReminderRegistry *)v6 _newQueue];
    queue = v6->_queue;
    v6->_queue = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    pendingReminderIDsToReminders = v6->_pendingReminderIDsToReminders;
    v6->_pendingReminderIDsToReminders = v10;

    objc_initWeak(&location, v6);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_8AC34;
    v18 = &unk_1088A8;
    objc_copyWeak(&v19, &location);
    v12 = [HDXPCScheduler schedulerWithEventNamed:@"HDHealthRecordsAPIReminderRegistry-Trigger" runBlock:&v15];
    triggerScheduler = v6->_triggerScheduler;
    v6->_triggerScheduler = v12;

    [(HDHealthRecordsAPIReminderRegistry *)v6 _startObservingApplicationsUninstalledNotification:v15];
    [(HDHealthRecordsAPIReminderRegistry *)v6 _checkInForFirstUnlockActivity];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)_scheduleTriggers
{
  v3 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_not_V2(v3);

  v4 = [HDDaemonTransaction transactionWithOwner:self activityName:@"ScheduleTriggers"];
  v5 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_8AD54;
  v7[3] = &unk_106B68;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_and_wait(v5, v7);
}

- (id)_eligibilityStartDateAfterPostedReminder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 wasPosted] & 1) == 0)
  {
    sub_A821C();
  }

  v6 = [v5 postDate];
  [(HDHealthRecordsAPIReminderRegistry *)self throttlingInterval];
  v7 = [v6 dateByAddingTimeInterval:?];

  return v7;
}

- (id)_eligibilityStartDateForUnpostedReminder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 wasPosted])
  {
    sub_A8290();
  }

  v6 = [v5 creationDate];
  [(HDHealthRecordsAPIReminderRegistry *)self deferralPeriod];
  v7 = [v6 dateByAddingTimeInterval:?];

  return v7;
}

- (void)_queue_scheduleTriggers
{
  v3 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc_init(NSDate);
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A8304();
  }

  [(HDHealthRecordsAPIReminderRegistry *)self _queue_scheduleNextTriggerWithNow:v4];
  [(HDHealthRecordsAPIReminderRegistry *)self _queue_scheduleFireOnHomescreenUnlockIfEligibleWithNow:v4];
}

- (void)_queue_scheduleNextTriggerWithNow:(id)a3
{
  v11 = a3;
  v4 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HDHealthRecordsAPIReminderRegistry *)self triggerScheduler];
  [v5 unschedule];
  v6 = [(HDHealthRecordsAPIReminderRegistry *)self _queue_nextEligibleFireDate];
  v7 = v6;
  if (v6 && ([v6 hk_isBeforeOrEqualToDate:v11] & 1) == 0)
  {
    [v7 timeIntervalSinceDate:v11];
    v9 = v8;
    [(HDHealthRecordsAPIReminderRegistry *)self schedulerGracePeriod];
    [v5 scheduleWithInterval:v9 gracePeriod:v10];
  }
}

- (void)_queue_scheduleFireOnHomescreenUnlockIfEligibleWithNow:(id)a3
{
  v4 = a3;
  v5 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(v5);

  [(HDHealthRecordsAPIReminderRegistry *)self _queue_stopListeningForHomescreenUnlockNotifications];
  v6 = [(HDHealthRecordsAPIReminderRegistry *)self _queue_firstEligibleReminderAfterDate:v4];

  if (v6)
  {

    [(HDHealthRecordsAPIReminderRegistry *)self _queue_startListeningForHomescreenUnlockNotifications];
  }
}

- (id)_queue_nextEligibleFireDate
{
  v3 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HDHealthRecordsAPIReminderRegistry *)self profile];
  v17 = 0;
  v5 = [HDClinicalAPIReminderEntity lastPostedReminderWithProfile:v4 error:&v17];
  v6 = v17;
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {

    v16 = 0;
    v9 = [HDClinicalAPIReminderEntity nextScheduledReminderWithProfile:v4 error:&v16];
    v10 = v16;
    v7 = v10;
    if (v9 || !v10)
    {
      if (v9)
      {
        v13 = [(HDHealthRecordsAPIReminderRegistry *)self _eligibilityStartDateAfterPostedReminder:v5];
        v14 = [(HDHealthRecordsAPIReminderRegistry *)self _eligibilityStartDateForUnpostedReminder:v9];
        v12 = HKDateMax();

LABEL_16:
        goto LABEL_17;
      }
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A8374();
      }
    }

    v12 = 0;
    goto LABEL_16;
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_A83DC();
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (id)_queue_firstEligibleReminderAfterDate:(id)a3
{
  v4 = a3;
  v5 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HDHealthRecordsAPIReminderRegistry *)self profile];
  v7 = [(HDHealthRecordsAPIReminderRegistry *)self _queue_nextEligibleFireDate];
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A8444();
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  else if (!v7)
  {
LABEL_4:
    _HKInitializeLogging();
    v8 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Deferring any pending CHR API reminders.", buf, 2u);
    }

    v9 = 0;
    goto LABEL_14;
  }

  if ([v7 hk_isAfterDate:v4])
  {
    goto LABEL_4;
  }

  v14 = 0;
  v10 = [HDClinicalAPIReminderEntity nextScheduledReminderWithProfile:v6 error:&v14];
  v11 = v14;
  v12 = v11;
  if (v10 || !v11)
  {
    v9 = v10;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A8374();
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (void)_queue_dropReminder:(id)a3
{
  v4 = a3;
  v5 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HDHealthRecordsAPIReminderRegistry *)self profile];
  v10 = 0;
  v7 = [HDClinicalAPIReminderEntity deleteReminder:v4 profile:v6 error:&v10];
  v8 = v10;

  if ((v7 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A84B4();
    }
  }

  v9 = [(HDHealthRecordsAPIReminderRegistry *)self _unitTesting_testingEventListener];
  [v9 droppedReminder:v4];
}

- (BOOL)_queue_isAnyReminderInFlight
{
  v3 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HDHealthRecordsAPIReminderRegistry *)self pendingReminderIDsToReminders];
  LOBYTE(v3) = [v4 count] != 0;

  return v3;
}

- (void)_firePendingReminderIfEligible
{
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A8520();
  }

  v3 = objc_alloc_init(NSUUID);
  v4 = [v3 UUIDString];
  v5 = [HDDaemonTransaction transactionWithOwner:self activityName:v4];

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A855C();
  }

  v6 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8B6D8;
  block[3] = &unk_1088D0;
  block[4] = self;
  v10 = v3;
  v11 = v5;
  v7 = v5;
  v8 = v3;
  dispatch_async(v6, block);
}

- (void)_queue_firePendingReminderIfEligibleUsingPendingReminderID:(id)a3 transaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(v8);

  if ([(HDHealthRecordsAPIReminderRegistry *)self _queue_isAnyReminderInFlight])
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A863C();
    }

    [(HDHealthRecordsAPIReminderRegistry *)self _didProcessPendingReminderID:v6 transaction:v7];
  }

  else
  {
    v9 = objc_alloc_init(NSDate);
    v10 = [(HDHealthRecordsAPIReminderRegistry *)self _queue_firstEligibleReminderAfterDate:v9];
    if (v10)
    {
      if ([(HDHealthRecordsAPIReminderRegistry *)self _queue_shouldDropUnlimitedAuthorizationModeReminder:v10])
      {
        [(HDHealthRecordsAPIReminderRegistry *)self _queue_dropReminder:v10];
        [(HDHealthRecordsAPIReminderRegistry *)self _queue_firePendingReminderIfEligibleUsingPendingReminderID:v6 transaction:v7];
      }

      else
      {
        v11 = [(HDHealthRecordsAPIReminderRegistry *)self pendingReminderIDsToReminders];
        [v11 setObject:v10 forKeyedSubscript:v6];

        [(HDHealthRecordsAPIReminderRegistry *)self _displayUnlimitedAuthorizationModeConfirmationForPendingReminderID:v6 transaction:v7 reminder:v10];
      }
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
      {
        sub_A85CC();
      }

      [(HDHealthRecordsAPIReminderRegistry *)self _didProcessPendingReminderID:v6 transaction:v7];
    }
  }
}

- (void)_displayStopAlertForPendingReminderID:(id)a3 transaction:(id)a4 title:(id)a5 body:(id)a6 defaultButtonTitle:(id)a7 alternateButtonTitle:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = objc_alloc_init(HDUserNotification);
  [v20 setTitle:v19];

  [v20 setMessage:v18];
  [v20 setCancelButton:v16];

  [v20 setOtherButton:v17];
  [v20 setAlertLevel:3];
  [v20 setUserNotificationOptions:32];
  v32[0] = SBUserNotificationAllowedApplicationsKey;
  v32[1] = SBUserNotificationPendInSetupIfNotAllowedKey;
  v33[0] = &off_110690;
  v33[1] = &__kCFBooleanTrue;
  v21 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
  [v20 setAdditionalDescriptors:v21];

  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_8BA94;
  v28 = &unk_1088F8;
  v29 = self;
  v30 = v14;
  v31 = v15;
  v22 = v15;
  v23 = v14;
  [v20 presentWithResponseHandler:&v25];
  v24 = [(HDHealthRecordsAPIReminderRegistry *)self _unitTesting_testingEventListener:v25];
  [v24 displayedAlertForPendingReminderID:v23];
}

- (void)_handleUserNotificationResponse:(int64_t)a3 pendingReminderID:(id)a4 transaction:(id)a5
{
  v8 = a4;
  v9 = a5;
  _HKInitializeLogging();
  v10 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A86AC(v10, a3, v8);
  }

  v11 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_8BBBC;
  v14[3] = &unk_1076D8;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a3;
  v12 = v9;
  v13 = v8;
  dispatch_async(v11, v14);
}

- (void)_queue_handleUserNotificationResponse:(int64_t)a3 pendingReminderID:(id)a4 transaction:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [(HDHealthRecordsAPIReminderRegistry *)self pendingReminderIDsToReminders];
  v13 = [v12 objectForKeyedSubscript:v9];
  [v12 setObject:0 forKeyedSubscript:v9];
  if (!v13)
  {
    sub_A8760(a2, self, v9);
  }

  v14 = objc_alloc_init(NSDate);
  v15 = [(HDHealthRecordsAPIReminderRegistry *)self profile];
  v18 = 0;
  v16 = [HDClinicalAPIReminderEntity setReminderPosted:v13 postDate:v14 profile:v15 error:&v18];
  v17 = v18;

  if (v16)
  {
    [(HDHealthRecordsAPIReminderRegistry *)self _queue_performUserActionForReminder:v16 userResponse:a3];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A87E0();
    }
  }

  [(HDHealthRecordsAPIReminderRegistry *)self _didProcessPendingReminderID:v9 transaction:v10];
}

- (void)_queue_performUserActionForReminder:(id)a3 userResponse:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 1)
  {
    v8 = [v6 source];
    [(HDHealthRecordsAPIReminderRegistry *)self _showClinicalAPISettingsForAppSource:v8];
  }

  else if (!a4)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A8848();
    }
  }
}

- (void)_showClinicalAPISettingsForAppSource:(id)a3
{
  v3 = a3;
  if (([v3 _isApplication] & 1) == 0)
  {
    sub_A88B0();
  }

  v4 = v3;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (void)_didProcessPendingReminderID:(id)a3 transaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8C1E0;
  block[3] = &unk_1088D0;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);

  v11 = [(HDHealthRecordsAPIReminderRegistry *)self _unitTesting_testingEventListener];
  [v11 didFinishProcessingPendingReminderID:v10];
}

- (void)registerAppSourceForUnlimitedAuthorizationModeConfirmation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 _isApplication] & 1) == 0)
  {
    sub_A8AE8();
  }

  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = HKSensitiveLogItem();
    *buf = 138412290;
    v19 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Attempting to register app source %@ for unlimited authorization mode confirmation alert", buf, 0xCu);
  }

  v11 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8C3E0;
  block[3] = &unk_107190;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v12 = v7;
  v13 = v6;
  dispatch_async(v11, block);
}

- (void)deregisterAppSourceFromUnlimitedAuthorizationModeConfirmation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 _isApplication] & 1) == 0)
  {
    sub_A8B5C();
  }

  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = HKSensitiveLogItem();
    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Deregistering app source %@ for unlimited authorization mode confirmation alert", buf, 0xCu);
  }

  v11 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8C628;
  block[3] = &unk_107190;
  block[4] = self;
  v15 = v6;
  v16 = v7;
  v12 = v7;
  v13 = v6;
  dispatch_async(v11, block);
}

- (BOOL)_queue_shouldDropUnlimitedAuthorizationModeReminder:(id)a3
{
  v4 = [a3 source];
  v5 = [v4 bundleIdentifier];
  v6 = [NSSet alloc];
  v7 = +[HKClinicalType allTypes];
  v8 = [v6 initWithArray:v7];
  v9 = [(HDHealthRecordsAPIReminderRegistry *)self profile];
  v19 = 0;
  v10 = [HDAuthorizationEntity authorizationRecordsByTypeForBundleIdentifier:v5 types:v8 profile:v9 error:&v19];
  v11 = v19;

  if (!v10)
  {
    _HKInitializeLogging();
    v13 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A8D80(v13, v4, v11);
    }

    goto LABEL_10;
  }

  if (![v10 count])
  {
    _HKInitializeLogging();
    v14 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A8CF0(v14);
    }

    goto LABEL_10;
  }

  if ([(HDHealthRecordsAPIReminderRegistry *)self _authorizationModeForRecordsByType:v10])
  {
    _HKInitializeLogging();
    v12 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A8BD0(v12);
    }

LABEL_10:
    v15 = 1;
    goto LABEL_11;
  }

  v17 = [(HDHealthRecordsAPIReminderRegistry *)self _readAuthorizationAllowedForAnyTypeInRecordsByType:v10];
  if ((v17 & 1) == 0)
  {
    _HKInitializeLogging();
    v18 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A8C60(v18);
    }
  }

  v15 = v17 ^ 1;
LABEL_11:

  return v15;
}

- (void)_displayUnlimitedAuthorizationModeConfirmationForPendingReminderID:(id)a3 transaction:(id)a4 reminder:(id)a5
{
  v7 = a4;
  v8 = a3;
  v23 = [a5 source];
  v9 = [v23 name];
  v10 = [NSString alloc];
  v11 = HDHealthRecordsPluginBundle();
  v12 = [v11 localizedStringForKey:@"UNLIMITED_AUTHORIZATION_REMINDER_TITLE_APP_%@" value:&stru_1090E8 table:@"HealthRecordsPlugin-Localizable"];
  v13 = [v10 initWithFormat:v12, v9];

  v14 = [NSString alloc];
  v15 = HDHealthRecordsPluginBundle();
  v16 = [v15 localizedStringForKey:@"UNLIMITED_AUTHORIZATION_REMINDER_BODY_APP_%@" value:&stru_1090E8 table:@"HealthRecordsPlugin-Localizable"];
  v17 = [v14 initWithFormat:v16, v9];

  v18 = HDHealthRecordsPluginBundle();
  v19 = [v18 localizedStringForKey:@"UNLIMITED_AUTHORIZATION_REMINDER_BUTTON_KEEP" value:&stru_1090E8 table:@"HealthRecordsPlugin-Localizable"];
  v20 = HDHealthRecordsPluginBundle();
  v21 = [v20 localizedStringForKey:@"UNLIMITED_AUTHORIZATION_REMINDER_BUTTON_MANAGE_ACCESS" value:&stru_1090E8 table:@"HealthRecordsPlugin-Localizable"];
  [(HDHealthRecordsAPIReminderRegistry *)self _displayStopAlertForPendingReminderID:v8 transaction:v7 title:v13 body:v17 defaultButtonTitle:v19 alternateButtonTitle:v21];
}

- (int64_t)_authorizationModeForRecordsByType:(id)a3
{
  v3 = a3;
  if (![v3 count])
  {
    sub_A8E34();
  }

  memset(v8, 0, sizeof(v8));
  v4 = v3;
  if ([v4 countByEnumeratingWithState:v8 objects:v9 count:16])
  {
    v5 = [v4 objectForKeyedSubscript:{**(&v8[0] + 1), *&v8[0]}];
    v6 = [v5 mode];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_readAuthorizationAllowedForAnyTypeInRecordsByType:(id)a3
{
  v3 = a3;
  if (![v3 count])
  {
    sub_A8EA8();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [v4 objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * i), v11}];
        [v8 status];
        v9 = HKAuthorizationStatusAllowsReading();

        if (v9)
        {
          LOBYTE(v5) = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v5;
}

- (void)_startObservingApplicationsUninstalledNotification
{
  v6 = +[NSNotificationCenter defaultCenter];
  v3 = HDHealthDaemonApplicationsUninstalledNotification;
  v4 = [(HDHealthRecordsAPIReminderRegistry *)self profile];
  v5 = [v4 daemon];
  [v6 addObserver:self selector:"_applicationsUninstalledNotification:" name:v3 object:v5];
}

- (void)_applicationsUninstalledNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:HDHealthDaemonApplicationsUninstalledBundleIdentifiersKey];

  if (!v5)
  {
    sub_A8F1C();
  }

  v6 = [HDDaemonTransaction transactionWithOwner:self activityName:@"ApplicationsUninstalled"];
  v7 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8CE88;
  block[3] = &unk_1088D0;
  v11 = v5;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

- (BOOL)_queue_deregisterAppWithBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(v7);

  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A8F90(v8);
  }

  v9 = [(HDHealthRecordsAPIReminderRegistry *)self profile];
  v10 = [HDClinicalAPIReminderEntity deleteRemindersForSourceWithBundleIdentifier:v6 profile:v9 error:a4];

  return v10;
}

- (void)_queue_startListeningForHomescreenUnlockNotifications
{
  v3 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(v3);

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A9030();
  }

  v4 = [(HDHealthRecordsAPIReminderRegistry *)self profile];
  v5 = [v4 daemon];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_handleHomescreenUnlockedNotification:" name:HDDaemonHomescreenUnlockedNotification object:v5];

  [v5 registerForLaunchNotification:"com.apple.springboard.homescreenunlocked"];
  v7 = [(HDHealthRecordsAPIReminderRegistry *)self _unitTesting_testingEventListener];
  [v7 startedListeningForHomescreenUnlockedNotifications];
}

- (void)_queue_stopListeningForHomescreenUnlockNotifications
{
  v3 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(v3);

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A906C();
  }

  v4 = [(HDHealthRecordsAPIReminderRegistry *)self profile];
  v5 = [v4 daemon];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:HDDaemonHomescreenUnlockedNotification object:v5];

  [v5 unregisterForLaunchNotification:"com.apple.springboard.homescreenunlocked"];
  v7 = [(HDHealthRecordsAPIReminderRegistry *)self _unitTesting_testingEventListener];
  [v7 stoppedListeningForHomescreenUnlockedNotifications];
}

- (void)_handleHomescreenUnlockedNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:HDDaemonHomescreenUnlockedAtHomescreenKey];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A90A8();
    }

    v7 = [(HDHealthRecordsAPIReminderRegistry *)self _unitTesting_testingEventListener];
    [v7 receivedHomescreenUnlockedAtHomescreenNotification];

    v8 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_8D408;
    block[3] = &unk_107A88;
    block[4] = self;
    dispatch_async(v8, block);

    [(HDHealthRecordsAPIReminderRegistry *)self _firePendingReminderIfEligible];
  }
}

- (void)_checkInForFirstUnlockActivity
{
  v3 = [(HDHealthRecordsAPIReminderRegistry *)self _criteriaForFirstUnlockActivity];
  v4 = [(HDHealthRecordsAPIReminderRegistry *)self _criteriaForFirstUnlockActivityCompleted];
  objc_initWeak(&location, self);
  v5 = [@"com.apple.healthd.healthrecords.HDHealthRecordsAPIReminderRegistry-FirstUnlock" UTF8String];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_8D560;
  handler[3] = &unk_108920;
  v9 = @"com.apple.healthd.healthrecords.HDHealthRecordsAPIReminderRegistry-FirstUnlock";
  v6 = v3;
  v10 = v6;
  objc_copyWeak(&v12, &location);
  v7 = v4;
  v11 = v7;
  xpc_activity_register(v5, XPC_ACTIVITY_CHECK_IN, handler);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)_criteriaForFirstUnlockActivity
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_15_MIN);

  return v2;
}

- (id)_criteriaForFirstUnlockActivityCompleted
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_DELAY, 315360000);

  return v2;
}

- (double)deferralPeriod
{
  v3 = [(HDHealthRecordsAPIReminderRegistry *)self _unitTesting_deferralPeriodOverride];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
  }

  else
  {
    [(HDHealthRecordsAPIReminderRegistry *)self _timeIntervalForDefaultsKey:@"HealthRecordsAPIReminderDeferralPeriod" fallbackInterval:604800.0];
  }

  v6 = v5;

  return v6;
}

- (double)schedulerGracePeriod
{
  v3 = [(HDHealthRecordsAPIReminderRegistry *)self _unitTesting_schedulerGracePeriodOverride];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
  }

  else
  {
    [(HDHealthRecordsAPIReminderRegistry *)self _timeIntervalForDefaultsKey:@"HealthRecordsAPIReminderSchedulerGracePeriod" fallbackInterval:28800.0];
  }

  v6 = v5;

  return v6;
}

- (double)throttlingInterval
{
  v3 = [(HDHealthRecordsAPIReminderRegistry *)self _unitTesting_throttlingIntervalOverride];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
  }

  else
  {
    [(HDHealthRecordsAPIReminderRegistry *)self _timeIntervalForDefaultsKey:@"HealthRecordsAPIReminderThrottlingInterval" fallbackInterval:86400.0];
  }

  v6 = v5;

  return v6;
}

- (double)_timeIntervalForDefaultsKey:(id)a3 fallbackInterval:(double)a4
{
  v5 = a3;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    objc_opt_class();
    v8 = HKSafeObject();
    v9 = 0;

    if (v8)
    {
      [v8 doubleValue];
      v11 = v10;
      if (v10 > 0.0)
      {
        a4 = v10;
      }

      else
      {
        _HKInitializeLogging();
        v12 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_A9154(v5, v12, v11);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A91D8();
      }
    }
  }

  return a4;
}

- (void)_unitTesting_setDeferralPeriodOverride:(double)a3
{
  if (a3 <= 0.0)
  {
    sub_A9244();
  }

  v5 = [NSNumber numberWithDouble:a3];
  [(HDHealthRecordsAPIReminderRegistry *)self set_unitTesting_deferralPeriodOverride:v5];
}

- (void)_unitTesting_setSchedulerGracePeriodOverride:(double)a3
{
  if (a3 <= 0.0)
  {
    sub_A92B8();
  }

  v5 = [NSNumber numberWithDouble:a3];
  [(HDHealthRecordsAPIReminderRegistry *)self set_unitTesting_schedulerGracePeriodOverride:v5];
}

- (void)_unitTesting_setThrottlingIntervalOverride:(double)a3
{
  if (a3 <= 0.0)
  {
    sub_A932C();
  }

  v5 = [NSNumber numberWithDouble:a3];
  [(HDHealthRecordsAPIReminderRegistry *)self set_unitTesting_throttlingIntervalOverride:v5];
}

- (HDHealthRecordsProfileExtension)profileExtension
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);

  return WeakRetained;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end