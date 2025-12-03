@interface HDHealthRecordsAPIReminderRegistry
+ (void)initialize;
- (BOOL)_queue_deregisterAppWithBundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)_queue_isAnyReminderInFlight;
- (BOOL)_queue_shouldDropUnlimitedAuthorizationModeReminder:(id)reminder;
- (BOOL)_readAuthorizationAllowedForAnyTypeInRecordsByType:(id)type;
- (HDHealthRecordsAPIReminderRegistry)init;
- (HDHealthRecordsAPIReminderRegistry)initWithProfileExtension:(id)extension;
- (HDHealthRecordsProfileExtension)profileExtension;
- (HDProfile)profile;
- (double)_timeIntervalForDefaultsKey:(id)key fallbackInterval:(double)interval;
- (double)deferralPeriod;
- (double)schedulerGracePeriod;
- (double)throttlingInterval;
- (id)_criteriaForFirstUnlockActivity;
- (id)_criteriaForFirstUnlockActivityCompleted;
- (id)_eligibilityStartDateAfterPostedReminder:(id)reminder;
- (id)_eligibilityStartDateForUnpostedReminder:(id)reminder;
- (id)_queue_firstEligibleReminderAfterDate:(id)date;
- (id)_queue_nextEligibleFireDate;
- (int64_t)_authorizationModeForRecordsByType:(id)type;
- (void)_applicationsUninstalledNotification:(id)notification;
- (void)_checkInForFirstUnlockActivity;
- (void)_didProcessPendingReminderID:(id)d transaction:(id)transaction;
- (void)_displayStopAlertForPendingReminderID:(id)d transaction:(id)transaction title:(id)title body:(id)body defaultButtonTitle:(id)buttonTitle alternateButtonTitle:(id)alternateButtonTitle;
- (void)_displayUnlimitedAuthorizationModeConfirmationForPendingReminderID:(id)d transaction:(id)transaction reminder:(id)reminder;
- (void)_firePendingReminderIfEligible;
- (void)_handleHomescreenUnlockedNotification:(id)notification;
- (void)_handleUserNotificationResponse:(int64_t)response pendingReminderID:(id)d transaction:(id)transaction;
- (void)_queue_dropReminder:(id)reminder;
- (void)_queue_firePendingReminderIfEligibleUsingPendingReminderID:(id)d transaction:(id)transaction;
- (void)_queue_handleUserNotificationResponse:(int64_t)response pendingReminderID:(id)d transaction:(id)transaction;
- (void)_queue_performUserActionForReminder:(id)reminder userResponse:(int64_t)response;
- (void)_queue_scheduleFireOnHomescreenUnlockIfEligibleWithNow:(id)now;
- (void)_queue_scheduleNextTriggerWithNow:(id)now;
- (void)_queue_scheduleTriggers;
- (void)_queue_startListeningForHomescreenUnlockNotifications;
- (void)_queue_stopListeningForHomescreenUnlockNotifications;
- (void)_scheduleTriggers;
- (void)_showClinicalAPISettingsForAppSource:(id)source;
- (void)_startObservingApplicationsUninstalledNotification;
- (void)_unitTesting_setDeferralPeriodOverride:(double)override;
- (void)_unitTesting_setSchedulerGracePeriodOverride:(double)override;
- (void)_unitTesting_setThrottlingIntervalOverride:(double)override;
- (void)deregisterAppSourceFromUnlimitedAuthorizationModeConfirmation:(id)confirmation completion:(id)completion;
- (void)registerAppSourceForUnlimitedAuthorizationModeConfirmation:(id)confirmation completion:(id)completion;
@end

@implementation HDHealthRecordsAPIReminderRegistry

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
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

- (HDHealthRecordsAPIReminderRegistry)initWithProfileExtension:(id)extension
{
  extensionCopy = extension;
  v21.receiver = self;
  v21.super_class = HDHealthRecordsAPIReminderRegistry;
  v5 = [(HDHealthRecordsAPIReminderRegistry *)&v21 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profileExtension, extensionCopy);
    profile = [extensionCopy profile];
    objc_storeWeak(&v6->_profile, profile);

    _newQueue = [(HDHealthRecordsAPIReminderRegistry *)v6 _newQueue];
    queue = v6->_queue;
    v6->_queue = _newQueue;

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
  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v4 = [HDDaemonTransaction transactionWithOwner:self activityName:@"ScheduleTriggers"];
  queue2 = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_8AD54;
  v7[3] = &unk_106B68;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_and_wait(queue2, v7);
}

- (id)_eligibilityStartDateAfterPostedReminder:(id)reminder
{
  reminderCopy = reminder;
  v5 = reminderCopy;
  if (reminderCopy && ([reminderCopy wasPosted] & 1) == 0)
  {
    sub_A821C();
  }

  postDate = [v5 postDate];
  [(HDHealthRecordsAPIReminderRegistry *)self throttlingInterval];
  v7 = [postDate dateByAddingTimeInterval:?];

  return v7;
}

- (id)_eligibilityStartDateForUnpostedReminder:(id)reminder
{
  reminderCopy = reminder;
  v5 = reminderCopy;
  if (reminderCopy && [reminderCopy wasPosted])
  {
    sub_A8290();
  }

  creationDate = [v5 creationDate];
  [(HDHealthRecordsAPIReminderRegistry *)self deferralPeriod];
  v7 = [creationDate dateByAddingTimeInterval:?];

  return v7;
}

- (void)_queue_scheduleTriggers
{
  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = objc_alloc_init(NSDate);
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A8304();
  }

  [(HDHealthRecordsAPIReminderRegistry *)self _queue_scheduleNextTriggerWithNow:v4];
  [(HDHealthRecordsAPIReminderRegistry *)self _queue_scheduleFireOnHomescreenUnlockIfEligibleWithNow:v4];
}

- (void)_queue_scheduleNextTriggerWithNow:(id)now
{
  nowCopy = now;
  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(queue);

  triggerScheduler = [(HDHealthRecordsAPIReminderRegistry *)self triggerScheduler];
  [triggerScheduler unschedule];
  _queue_nextEligibleFireDate = [(HDHealthRecordsAPIReminderRegistry *)self _queue_nextEligibleFireDate];
  v7 = _queue_nextEligibleFireDate;
  if (_queue_nextEligibleFireDate && ([_queue_nextEligibleFireDate hk_isBeforeOrEqualToDate:nowCopy] & 1) == 0)
  {
    [v7 timeIntervalSinceDate:nowCopy];
    v9 = v8;
    [(HDHealthRecordsAPIReminderRegistry *)self schedulerGracePeriod];
    [triggerScheduler scheduleWithInterval:v9 gracePeriod:v10];
  }
}

- (void)_queue_scheduleFireOnHomescreenUnlockIfEligibleWithNow:(id)now
{
  nowCopy = now;
  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(queue);

  [(HDHealthRecordsAPIReminderRegistry *)self _queue_stopListeningForHomescreenUnlockNotifications];
  v6 = [(HDHealthRecordsAPIReminderRegistry *)self _queue_firstEligibleReminderAfterDate:nowCopy];

  if (v6)
  {

    [(HDHealthRecordsAPIReminderRegistry *)self _queue_startListeningForHomescreenUnlockNotifications];
  }
}

- (id)_queue_nextEligibleFireDate
{
  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(queue);

  profile = [(HDHealthRecordsAPIReminderRegistry *)self profile];
  v17 = 0;
  v5 = [HDClinicalAPIReminderEntity lastPostedReminderWithProfile:profile error:&v17];
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
    v9 = [HDClinicalAPIReminderEntity nextScheduledReminderWithProfile:profile error:&v16];
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

- (id)_queue_firstEligibleReminderAfterDate:(id)date
{
  dateCopy = date;
  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(queue);

  profile = [(HDHealthRecordsAPIReminderRegistry *)self profile];
  _queue_nextEligibleFireDate = [(HDHealthRecordsAPIReminderRegistry *)self _queue_nextEligibleFireDate];
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A8444();
    if (!_queue_nextEligibleFireDate)
    {
      goto LABEL_4;
    }
  }

  else if (!_queue_nextEligibleFireDate)
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

  if ([_queue_nextEligibleFireDate hk_isAfterDate:dateCopy])
  {
    goto LABEL_4;
  }

  v14 = 0;
  v10 = [HDClinicalAPIReminderEntity nextScheduledReminderWithProfile:profile error:&v14];
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

- (void)_queue_dropReminder:(id)reminder
{
  reminderCopy = reminder;
  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(queue);

  profile = [(HDHealthRecordsAPIReminderRegistry *)self profile];
  v10 = 0;
  v7 = [HDClinicalAPIReminderEntity deleteReminder:reminderCopy profile:profile error:&v10];
  v8 = v10;

  if ((v7 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A84B4();
    }
  }

  _unitTesting_testingEventListener = [(HDHealthRecordsAPIReminderRegistry *)self _unitTesting_testingEventListener];
  [_unitTesting_testingEventListener droppedReminder:reminderCopy];
}

- (BOOL)_queue_isAnyReminderInFlight
{
  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingReminderIDsToReminders = [(HDHealthRecordsAPIReminderRegistry *)self pendingReminderIDsToReminders];
  LOBYTE(queue) = [pendingReminderIDsToReminders count] != 0;

  return queue;
}

- (void)_firePendingReminderIfEligible
{
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A8520();
  }

  v3 = objc_alloc_init(NSUUID);
  uUIDString = [v3 UUIDString];
  v5 = [HDDaemonTransaction transactionWithOwner:self activityName:uUIDString];

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A855C();
  }

  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8B6D8;
  block[3] = &unk_1088D0;
  block[4] = self;
  v10 = v3;
  v11 = v5;
  v7 = v5;
  v8 = v3;
  dispatch_async(queue, block);
}

- (void)_queue_firePendingReminderIfEligibleUsingPendingReminderID:(id)d transaction:(id)transaction
{
  dCopy = d;
  transactionCopy = transaction;
  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(HDHealthRecordsAPIReminderRegistry *)self _queue_isAnyReminderInFlight])
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A863C();
    }

    [(HDHealthRecordsAPIReminderRegistry *)self _didProcessPendingReminderID:dCopy transaction:transactionCopy];
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
        [(HDHealthRecordsAPIReminderRegistry *)self _queue_firePendingReminderIfEligibleUsingPendingReminderID:dCopy transaction:transactionCopy];
      }

      else
      {
        pendingReminderIDsToReminders = [(HDHealthRecordsAPIReminderRegistry *)self pendingReminderIDsToReminders];
        [pendingReminderIDsToReminders setObject:v10 forKeyedSubscript:dCopy];

        [(HDHealthRecordsAPIReminderRegistry *)self _displayUnlimitedAuthorizationModeConfirmationForPendingReminderID:dCopy transaction:transactionCopy reminder:v10];
      }
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
      {
        sub_A85CC();
      }

      [(HDHealthRecordsAPIReminderRegistry *)self _didProcessPendingReminderID:dCopy transaction:transactionCopy];
    }
  }
}

- (void)_displayStopAlertForPendingReminderID:(id)d transaction:(id)transaction title:(id)title body:(id)body defaultButtonTitle:(id)buttonTitle alternateButtonTitle:(id)alternateButtonTitle
{
  dCopy = d;
  transactionCopy = transaction;
  alternateButtonTitleCopy = alternateButtonTitle;
  buttonTitleCopy = buttonTitle;
  bodyCopy = body;
  titleCopy = title;
  v20 = objc_alloc_init(HDUserNotification);
  [v20 setTitle:titleCopy];

  [v20 setMessage:bodyCopy];
  [v20 setCancelButton:alternateButtonTitleCopy];

  [v20 setOtherButton:buttonTitleCopy];
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
  selfCopy = self;
  v30 = dCopy;
  v31 = transactionCopy;
  v22 = transactionCopy;
  v23 = dCopy;
  [v20 presentWithResponseHandler:&v25];
  v24 = [(HDHealthRecordsAPIReminderRegistry *)self _unitTesting_testingEventListener:v25];
  [v24 displayedAlertForPendingReminderID:v23];
}

- (void)_handleUserNotificationResponse:(int64_t)response pendingReminderID:(id)d transaction:(id)transaction
{
  dCopy = d;
  transactionCopy = transaction;
  _HKInitializeLogging();
  v10 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A86AC(v10, response, dCopy);
  }

  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_8BBBC;
  v14[3] = &unk_1076D8;
  v14[4] = self;
  v15 = dCopy;
  v16 = transactionCopy;
  responseCopy = response;
  v12 = transactionCopy;
  v13 = dCopy;
  dispatch_async(queue, v14);
}

- (void)_queue_handleUserNotificationResponse:(int64_t)response pendingReminderID:(id)d transaction:(id)transaction
{
  dCopy = d;
  transactionCopy = transaction;
  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingReminderIDsToReminders = [(HDHealthRecordsAPIReminderRegistry *)self pendingReminderIDsToReminders];
  v13 = [pendingReminderIDsToReminders objectForKeyedSubscript:dCopy];
  [pendingReminderIDsToReminders setObject:0 forKeyedSubscript:dCopy];
  if (!v13)
  {
    sub_A8760(a2, self, dCopy);
  }

  v14 = objc_alloc_init(NSDate);
  profile = [(HDHealthRecordsAPIReminderRegistry *)self profile];
  v18 = 0;
  v16 = [HDClinicalAPIReminderEntity setReminderPosted:v13 postDate:v14 profile:profile error:&v18];
  v17 = v18;

  if (v16)
  {
    [(HDHealthRecordsAPIReminderRegistry *)self _queue_performUserActionForReminder:v16 userResponse:response];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A87E0();
    }
  }

  [(HDHealthRecordsAPIReminderRegistry *)self _didProcessPendingReminderID:dCopy transaction:transactionCopy];
}

- (void)_queue_performUserActionForReminder:(id)reminder userResponse:(int64_t)response
{
  reminderCopy = reminder;
  v7 = reminderCopy;
  if (response == 1)
  {
    source = [reminderCopy source];
    [(HDHealthRecordsAPIReminderRegistry *)self _showClinicalAPISettingsForAppSource:source];
  }

  else if (!response)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A8848();
    }
  }
}

- (void)_showClinicalAPISettingsForAppSource:(id)source
{
  sourceCopy = source;
  if (([sourceCopy _isApplication] & 1) == 0)
  {
    sub_A88B0();
  }

  v4 = sourceCopy;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (void)_didProcessPendingReminderID:(id)d transaction:(id)transaction
{
  dCopy = d;
  transactionCopy = transaction;
  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8C1E0;
  block[3] = &unk_1088D0;
  block[4] = self;
  v13 = dCopy;
  v14 = transactionCopy;
  v9 = transactionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);

  _unitTesting_testingEventListener = [(HDHealthRecordsAPIReminderRegistry *)self _unitTesting_testingEventListener];
  [_unitTesting_testingEventListener didFinishProcessingPendingReminderID:v10];
}

- (void)registerAppSourceForUnlimitedAuthorizationModeConfirmation:(id)confirmation completion:(id)completion
{
  confirmationCopy = confirmation;
  completionCopy = completion;
  if (([confirmationCopy _isApplication] & 1) == 0)
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

  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8C3E0;
  block[3] = &unk_107190;
  v15 = confirmationCopy;
  selfCopy = self;
  v17 = completionCopy;
  v12 = completionCopy;
  v13 = confirmationCopy;
  dispatch_async(queue, block);
}

- (void)deregisterAppSourceFromUnlimitedAuthorizationModeConfirmation:(id)confirmation completion:(id)completion
{
  confirmationCopy = confirmation;
  completionCopy = completion;
  if (([confirmationCopy _isApplication] & 1) == 0)
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

  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8C628;
  block[3] = &unk_107190;
  block[4] = self;
  v15 = confirmationCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = confirmationCopy;
  dispatch_async(queue, block);
}

- (BOOL)_queue_shouldDropUnlimitedAuthorizationModeReminder:(id)reminder
{
  source = [reminder source];
  bundleIdentifier = [source bundleIdentifier];
  v6 = [NSSet alloc];
  v7 = +[HKClinicalType allTypes];
  v8 = [v6 initWithArray:v7];
  profile = [(HDHealthRecordsAPIReminderRegistry *)self profile];
  v19 = 0;
  v10 = [HDAuthorizationEntity authorizationRecordsByTypeForBundleIdentifier:bundleIdentifier types:v8 profile:profile error:&v19];
  v11 = v19;

  if (!v10)
  {
    _HKInitializeLogging();
    v13 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A8D80(v13, source, v11);
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

- (void)_displayUnlimitedAuthorizationModeConfirmationForPendingReminderID:(id)d transaction:(id)transaction reminder:(id)reminder
{
  transactionCopy = transaction;
  dCopy = d;
  source = [reminder source];
  name = [source name];
  v10 = [NSString alloc];
  v11 = HDHealthRecordsPluginBundle();
  v12 = [v11 localizedStringForKey:@"UNLIMITED_AUTHORIZATION_REMINDER_TITLE_APP_%@" value:&stru_1090E8 table:@"HealthRecordsPlugin-Localizable"];
  v13 = [v10 initWithFormat:v12, name];

  v14 = [NSString alloc];
  v15 = HDHealthRecordsPluginBundle();
  v16 = [v15 localizedStringForKey:@"UNLIMITED_AUTHORIZATION_REMINDER_BODY_APP_%@" value:&stru_1090E8 table:@"HealthRecordsPlugin-Localizable"];
  v17 = [v14 initWithFormat:v16, name];

  v18 = HDHealthRecordsPluginBundle();
  v19 = [v18 localizedStringForKey:@"UNLIMITED_AUTHORIZATION_REMINDER_BUTTON_KEEP" value:&stru_1090E8 table:@"HealthRecordsPlugin-Localizable"];
  v20 = HDHealthRecordsPluginBundle();
  v21 = [v20 localizedStringForKey:@"UNLIMITED_AUTHORIZATION_REMINDER_BUTTON_MANAGE_ACCESS" value:&stru_1090E8 table:@"HealthRecordsPlugin-Localizable"];
  [(HDHealthRecordsAPIReminderRegistry *)self _displayStopAlertForPendingReminderID:dCopy transaction:transactionCopy title:v13 body:v17 defaultButtonTitle:v19 alternateButtonTitle:v21];
}

- (int64_t)_authorizationModeForRecordsByType:(id)type
{
  typeCopy = type;
  if (![typeCopy count])
  {
    sub_A8E34();
  }

  memset(v8, 0, sizeof(v8));
  v4 = typeCopy;
  if ([v4 countByEnumeratingWithState:v8 objects:v9 count:16])
  {
    v5 = [v4 objectForKeyedSubscript:{**(&v8[0] + 1), *&v8[0]}];
    mode = [v5 mode];
  }

  else
  {
    mode = 0;
  }

  return mode;
}

- (BOOL)_readAuthorizationAllowedForAnyTypeInRecordsByType:(id)type
{
  typeCopy = type;
  if (![typeCopy count])
  {
    sub_A8EA8();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = typeCopy;
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
  profile = [(HDHealthRecordsAPIReminderRegistry *)self profile];
  daemon = [profile daemon];
  [v6 addObserver:self selector:"_applicationsUninstalledNotification:" name:v3 object:daemon];
}

- (void)_applicationsUninstalledNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:HDHealthDaemonApplicationsUninstalledBundleIdentifiersKey];

  if (!v5)
  {
    sub_A8F1C();
  }

  v6 = [HDDaemonTransaction transactionWithOwner:self activityName:@"ApplicationsUninstalled"];
  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8CE88;
  block[3] = &unk_1088D0;
  v11 = v5;
  selfCopy = self;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(queue, block);
}

- (BOOL)_queue_deregisterAppWithBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(queue);

  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A8F90(v8);
  }

  profile = [(HDHealthRecordsAPIReminderRegistry *)self profile];
  v10 = [HDClinicalAPIReminderEntity deleteRemindersForSourceWithBundleIdentifier:identifierCopy profile:profile error:error];

  return v10;
}

- (void)_queue_startListeningForHomescreenUnlockNotifications
{
  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(queue);

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A9030();
  }

  profile = [(HDHealthRecordsAPIReminderRegistry *)self profile];
  daemon = [profile daemon];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_handleHomescreenUnlockedNotification:" name:HDDaemonHomescreenUnlockedNotification object:daemon];

  [daemon registerForLaunchNotification:"com.apple.springboard.homescreenunlocked"];
  _unitTesting_testingEventListener = [(HDHealthRecordsAPIReminderRegistry *)self _unitTesting_testingEventListener];
  [_unitTesting_testingEventListener startedListeningForHomescreenUnlockedNotifications];
}

- (void)_queue_stopListeningForHomescreenUnlockNotifications
{
  queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
  dispatch_assert_queue_V2(queue);

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A906C();
  }

  profile = [(HDHealthRecordsAPIReminderRegistry *)self profile];
  daemon = [profile daemon];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:HDDaemonHomescreenUnlockedNotification object:daemon];

  [daemon unregisterForLaunchNotification:"com.apple.springboard.homescreenunlocked"];
  _unitTesting_testingEventListener = [(HDHealthRecordsAPIReminderRegistry *)self _unitTesting_testingEventListener];
  [_unitTesting_testingEventListener stoppedListeningForHomescreenUnlockedNotifications];
}

- (void)_handleHomescreenUnlockedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:HDDaemonHomescreenUnlockedAtHomescreenKey];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A90A8();
    }

    _unitTesting_testingEventListener = [(HDHealthRecordsAPIReminderRegistry *)self _unitTesting_testingEventListener];
    [_unitTesting_testingEventListener receivedHomescreenUnlockedAtHomescreenNotification];

    queue = [(HDHealthRecordsAPIReminderRegistry *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_8D408;
    block[3] = &unk_107A88;
    block[4] = self;
    dispatch_async(queue, block);

    [(HDHealthRecordsAPIReminderRegistry *)self _firePendingReminderIfEligible];
  }
}

- (void)_checkInForFirstUnlockActivity
{
  _criteriaForFirstUnlockActivity = [(HDHealthRecordsAPIReminderRegistry *)self _criteriaForFirstUnlockActivity];
  _criteriaForFirstUnlockActivityCompleted = [(HDHealthRecordsAPIReminderRegistry *)self _criteriaForFirstUnlockActivityCompleted];
  objc_initWeak(&location, self);
  uTF8String = [@"com.apple.healthd.healthrecords.HDHealthRecordsAPIReminderRegistry-FirstUnlock" UTF8String];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_8D560;
  handler[3] = &unk_108920;
  v9 = @"com.apple.healthd.healthrecords.HDHealthRecordsAPIReminderRegistry-FirstUnlock";
  v6 = _criteriaForFirstUnlockActivity;
  v10 = v6;
  objc_copyWeak(&v12, &location);
  v7 = _criteriaForFirstUnlockActivityCompleted;
  v11 = v7;
  xpc_activity_register(uTF8String, XPC_ACTIVITY_CHECK_IN, handler);

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
  _unitTesting_deferralPeriodOverride = [(HDHealthRecordsAPIReminderRegistry *)self _unitTesting_deferralPeriodOverride];
  v4 = _unitTesting_deferralPeriodOverride;
  if (_unitTesting_deferralPeriodOverride)
  {
    [_unitTesting_deferralPeriodOverride doubleValue];
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
  _unitTesting_schedulerGracePeriodOverride = [(HDHealthRecordsAPIReminderRegistry *)self _unitTesting_schedulerGracePeriodOverride];
  v4 = _unitTesting_schedulerGracePeriodOverride;
  if (_unitTesting_schedulerGracePeriodOverride)
  {
    [_unitTesting_schedulerGracePeriodOverride doubleValue];
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
  _unitTesting_throttlingIntervalOverride = [(HDHealthRecordsAPIReminderRegistry *)self _unitTesting_throttlingIntervalOverride];
  v4 = _unitTesting_throttlingIntervalOverride;
  if (_unitTesting_throttlingIntervalOverride)
  {
    [_unitTesting_throttlingIntervalOverride doubleValue];
  }

  else
  {
    [(HDHealthRecordsAPIReminderRegistry *)self _timeIntervalForDefaultsKey:@"HealthRecordsAPIReminderThrottlingInterval" fallbackInterval:86400.0];
  }

  v6 = v5;

  return v6;
}

- (double)_timeIntervalForDefaultsKey:(id)key fallbackInterval:(double)interval
{
  keyCopy = key;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:keyCopy];

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
        interval = v10;
      }

      else
      {
        _HKInitializeLogging();
        v12 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_A9154(keyCopy, v12, v11);
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

  return interval;
}

- (void)_unitTesting_setDeferralPeriodOverride:(double)override
{
  if (override <= 0.0)
  {
    sub_A9244();
  }

  v5 = [NSNumber numberWithDouble:override];
  [(HDHealthRecordsAPIReminderRegistry *)self set_unitTesting_deferralPeriodOverride:v5];
}

- (void)_unitTesting_setSchedulerGracePeriodOverride:(double)override
{
  if (override <= 0.0)
  {
    sub_A92B8();
  }

  v5 = [NSNumber numberWithDouble:override];
  [(HDHealthRecordsAPIReminderRegistry *)self set_unitTesting_schedulerGracePeriodOverride:v5];
}

- (void)_unitTesting_setThrottlingIntervalOverride:(double)override
{
  if (override <= 0.0)
  {
    sub_A932C();
  }

  v5 = [NSNumber numberWithDouble:override];
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