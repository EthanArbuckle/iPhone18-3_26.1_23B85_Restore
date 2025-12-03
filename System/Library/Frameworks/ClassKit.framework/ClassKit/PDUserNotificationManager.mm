@interface PDUserNotificationManager
- (PDUserNotificationManager)initWithDatabase:(id)database;
- (void)_scheduleWithNotificationData:(id)data;
- (void)clearTriggers;
- (void)dealloc;
- (void)invalidate;
- (void)registerForAccountChangedDarwinNotification;
- (void)registerForNotifications;
- (void)resetTriggers;
- (void)triggerDidFire:(id)fire notificationData:(id)data;
@end

@implementation PDUserNotificationManager

- (PDUserNotificationManager)initWithDatabase:(id)database
{
  databaseCopy = database;
  v11.receiver = self;
  v11.super_class = PDUserNotificationManager;
  v6 = [(PDUserNotificationManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
    v8 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.schoolwork.ClassKitApp"];
    userNotificationCenter = v7->_userNotificationCenter;
    v7->_userNotificationCenter = v8;
  }

  return v7;
}

- (void)dealloc
{
  [(PDUserNotificationManager *)self invalidate];
  v3.receiver = self;
  v3.super_class = PDUserNotificationManager;
  [(PDUserNotificationManager *)&v3 dealloc];
}

- (void)registerForNotifications
{
  [(PDUserNotificationManager *)self registerForAccountChangedDarwinNotification];

  [(PDUserNotificationManager *)self resetTriggers];
}

- (void)invalidate
{
  [(PDUserNotificationManager *)self setUserNotificationCenter:0];
  v3 = +[CLSDarwinNotificationCenter defaultCenter];
  [v3 removeObserver:self notificationName:@"com.apple.progressd.accountChanged"];

  [(PDUserNotificationManager *)self clearTriggers];
}

- (void)resetTriggers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PDUserNotificationManager *)selfCopy clearTriggers];
  database = [(PDUserNotificationManager *)selfCopy database];
  v4 = sub_1000717E8(database);

  CLSInitLog();
  v5 = CLSLogNotifications;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [NSNumber numberWithUnsignedInteger:v4];
    v41 = 138543362;
    v42 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "PDUserNotificationManager.resetTriggers. User role: %{public}@", &v41, 0xCu);
  }

  if ((v4 & 3) == 1)
  {
    v7 = [PDHandoutAssignedNotificationTrigger alloc];
    database2 = [(PDUserNotificationManager *)selfCopy database];
    v9 = [(PDHandoutAssignedNotificationTrigger *)v7 initWithDatabase:database2];
    [(PDUserNotificationManager *)selfCopy setHandoutAssignedTrigger:v9];

    handoutAssignedTrigger = [(PDUserNotificationManager *)selfCopy handoutAssignedTrigger];
    [handoutAssignedTrigger setDelegate:selfCopy];

    v11 = [PDHandoutCompletedNotificationTrigger alloc];
    database3 = [(PDUserNotificationManager *)selfCopy database];
    v13 = [(PDHandoutCompletedNotificationTrigger *)v11 initWithDatabase:database3];
    [(PDUserNotificationManager *)selfCopy setHandoutCompletedTrigger:v13];

    handoutCompletedTrigger = [(PDUserNotificationManager *)selfCopy handoutCompletedTrigger];
    [handoutCompletedTrigger setDelegate:selfCopy];

    v15 = [PDAttachmentUpdatedNotificationTrigger alloc];
    database4 = [(PDUserNotificationManager *)selfCopy database];
    v17 = [(PDAttachmentUpdatedNotificationTrigger *)v15 initWithDatabase:database4];
    [(PDUserNotificationManager *)selfCopy setAttachmentUpdatedTrigger:v17];

    attachmentUpdatedTrigger = [(PDUserNotificationManager *)selfCopy attachmentUpdatedTrigger];
    [attachmentUpdatedTrigger setDelegate:selfCopy];

    v19 = [PDHandoutDueSoonNotificationTrigger alloc];
    database5 = [(PDUserNotificationManager *)selfCopy database];
    v21 = [(PDUserNotificationTimeBasedTrigger *)v19 initWithDatabase:database5];
    [(PDUserNotificationManager *)selfCopy setHandoutDueSoonTrigger:v21];

    handoutDueSoonTrigger = [(PDUserNotificationManager *)selfCopy handoutDueSoonTrigger];
    [handoutDueSoonTrigger setDelegate:selfCopy];

    handoutDueSoonTrigger2 = [(PDUserNotificationManager *)selfCopy handoutDueSoonTrigger];
    [handoutDueSoonTrigger2 checkTriggerNow];

    v24 = [PDHandoutPastDueSummaryNotificationTrigger alloc];
    database6 = [(PDUserNotificationManager *)selfCopy database];
    v26 = [(PDUserNotificationTimeBasedTrigger *)v24 initWithDatabase:database6];
    [(PDUserNotificationManager *)selfCopy setHandoutPastDueTrigger:v26];

    handoutPastDueTrigger = [(PDUserNotificationManager *)selfCopy handoutPastDueTrigger];
    [handoutPastDueTrigger setDelegate:selfCopy];

    handoutPastDueTrigger2 = [(PDUserNotificationManager *)selfCopy handoutPastDueTrigger];
    [handoutPastDueTrigger2 checkTriggerNow];

    v29 = [PDRevisionRequestedNotificationTrigger alloc];
    database7 = [(PDUserNotificationManager *)selfCopy database];
    v31 = [(PDRevisionRequestedNotificationTrigger *)v29 initWithDatabase:database7];
    [(PDUserNotificationManager *)selfCopy setRevisionNeededTrigger:v31];

    revisionNeededTrigger = [(PDUserNotificationManager *)selfCopy revisionNeededTrigger];
    [revisionNeededTrigger setDelegate:selfCopy];
LABEL_7:

    goto LABEL_8;
  }

  if ((v4 & 2) != 0)
  {
    v33 = [PDReviewDueHandoutsNotificationTrigger alloc];
    database8 = [(PDUserNotificationManager *)selfCopy database];
    v35 = [(PDUserNotificationTimeBasedTrigger *)v33 initWithDatabase:database8];
    [(PDUserNotificationManager *)selfCopy setReviewDueHandoutsTrigger:v35];

    reviewDueHandoutsTrigger = [(PDUserNotificationManager *)selfCopy reviewDueHandoutsTrigger];
    [reviewDueHandoutsTrigger setDelegate:selfCopy];

    reviewDueHandoutsTrigger2 = [(PDUserNotificationManager *)selfCopy reviewDueHandoutsTrigger];
    [reviewDueHandoutsTrigger2 checkTriggerNow];

    v38 = [PDRevisedSubmissionNotificationTrigger alloc];
    database9 = [(PDUserNotificationManager *)selfCopy database];
    v40 = [(PDRevisedSubmissionNotificationTrigger *)v38 initWithDatabase:database9];
    [(PDUserNotificationManager *)selfCopy setRevisedSubmissionTrigger:v40];

    revisionNeededTrigger = [(PDUserNotificationManager *)selfCopy revisedSubmissionTrigger];
    [revisionNeededTrigger setDelegate:selfCopy];
    goto LABEL_7;
  }

LABEL_8:
  objc_sync_exit(selfCopy);
}

- (void)clearTriggers
{
  CLSInitLog();
  v3 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "UserNotificationManager.clearTriggers", v16, 2u);
  }

  if (self)
  {
    selfCopy = self;
    handoutCompletedTrigger = [(PDUserNotificationManager *)selfCopy handoutCompletedTrigger];
    [handoutCompletedTrigger setDelegate:0];

    [(PDUserNotificationManager *)selfCopy setHandoutCompletedTrigger:0];
    handoutAssignedTrigger = [(PDUserNotificationManager *)selfCopy handoutAssignedTrigger];
    [handoutAssignedTrigger setDelegate:0];

    [(PDUserNotificationManager *)selfCopy setHandoutAssignedTrigger:0];
    attachmentUpdatedTrigger = [(PDUserNotificationManager *)selfCopy attachmentUpdatedTrigger];
    [attachmentUpdatedTrigger setDelegate:0];

    [(PDUserNotificationManager *)selfCopy setAttachmentUpdatedTrigger:0];
    handoutDueSoonTrigger = [(PDUserNotificationManager *)selfCopy handoutDueSoonTrigger];
    [handoutDueSoonTrigger resetTrigger];

    handoutDueSoonTrigger2 = [(PDUserNotificationManager *)selfCopy handoutDueSoonTrigger];
    [handoutDueSoonTrigger2 setDelegate:0];

    [(PDUserNotificationManager *)selfCopy setHandoutDueSoonTrigger:0];
    handoutPastDueTrigger = [(PDUserNotificationManager *)selfCopy handoutPastDueTrigger];
    [handoutPastDueTrigger resetTrigger];

    handoutPastDueTrigger2 = [(PDUserNotificationManager *)selfCopy handoutPastDueTrigger];
    [handoutPastDueTrigger2 setDelegate:0];

    [(PDUserNotificationManager *)selfCopy setHandoutPastDueTrigger:0];
    revisionNeededTrigger = [(PDUserNotificationManager *)selfCopy revisionNeededTrigger];
    [revisionNeededTrigger setDelegate:0];

    [(PDUserNotificationManager *)selfCopy setRevisionNeededTrigger:0];
    reviewDueHandoutsTrigger = [(PDUserNotificationManager *)selfCopy reviewDueHandoutsTrigger];
    [reviewDueHandoutsTrigger resetTrigger];

    reviewDueHandoutsTrigger2 = [(PDUserNotificationManager *)selfCopy reviewDueHandoutsTrigger];
    [reviewDueHandoutsTrigger2 setDelegate:0];

    [(PDUserNotificationManager *)selfCopy setReviewDueHandoutsTrigger:0];
    revisedSubmissionTrigger = [(PDUserNotificationManager *)selfCopy revisedSubmissionTrigger];
    [revisedSubmissionTrigger setDelegate:0];

    [(PDUserNotificationManager *)selfCopy setRevisedSubmissionTrigger:0];
  }
}

- (void)registerForAccountChangedDarwinNotification
{
  objc_initWeak(&location, self);
  v3 = +[CLSDarwinNotificationCenter defaultCenter];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100113FD8;
  v4[3] = &unk_100205720;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [v3 addObserver:self notificationName:@"com.apple.progressd.accountChanged" block:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_scheduleWithNotificationData:(id)data
{
  dataCopy = data;
  CLSInitLog();
  v5 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v33 = dataCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "PDUserNotificationManager.scheduleWithNotificationData. Data: %@", buf, 0xCu);
  }

  v6 = objc_opt_new();
  v7 = v6;
  if (dataCopy)
  {
    v8 = dataCopy[1];
    [v7 setTitle:v8];

    v9 = dataCopy[2];
  }

  else
  {
    [v6 setTitle:0];
    v9 = 0;
  }

  v10 = v9;
  [v7 setBody:v10];

  v11 = objc_opt_new();
  if (dataCopy)
  {
    v12 = dataCopy[6];
  }

  else
  {
    v12 = 0;
  }

  uUIDString = v12;

  if (uUIDString)
  {
    if (dataCopy)
    {
      v14 = dataCopy[6];
      [v11 setObject:v14 forKey:@"attachmentID"];

      v15 = dataCopy[6];
    }

    else
    {
      [v11 setObject:0 forKey:@"attachmentID"];
      v15 = 0;
    }

    uUIDString = v15;
  }

  if (dataCopy)
  {
    v16 = dataCopy[3];
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    v18 = dataCopy ? dataCopy[3] : 0;
    v19 = v18;
    [v11 setObject:v19 forKey:@"handoutID"];

    if (!uUIDString)
    {
      if (dataCopy)
      {
        v20 = dataCopy[3];
      }

      else
      {
        v20 = 0;
      }

      uUIDString = v20;
    }
  }

  if (dataCopy)
  {
    v21 = dataCopy[4];
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (v22)
  {
    if (dataCopy)
    {
      v23 = dataCopy[4];
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    [v11 setObject:v24 forKey:@"classID"];

    if (uUIDString)
    {
      goto LABEL_31;
    }

    if (dataCopy)
    {
      v25 = dataCopy[4];
    }

    else
    {
      v25 = 0;
    }

    uUIDString = v25;
  }

  if (!uUIDString)
  {
    v26 = +[NSUUID UUID];
    uUIDString = [v26 UUIDString];
  }

LABEL_31:
  [v7 setUserInfo:v11];
  if (dataCopy)
  {
    v27 = dataCopy[5];
  }

  else
  {
    v27 = 0;
  }

  v28 = [NSNumber numberWithInteger:v27];
  v29 = [NSString stringWithFormat:@"com.apple.progressd.notification.%@-%@", v28, uUIDString];

  v30 = [UNNotificationRequest requestWithIdentifier:v29 content:v7 trigger:0];
  userNotificationCenter = [(PDUserNotificationManager *)self userNotificationCenter];
  [userNotificationCenter addNotificationRequest:v30 withCompletionHandler:&stru_100205740];
}

- (void)triggerDidFire:(id)fire notificationData:(id)data
{
  fireCopy = fire;
  dataCopy = data;
  CLSInitLog();
  v8 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = dataCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "PDUserNotificationManager.triggerDidFire. Trigger: %{public}@ Data: %@", &v12, 0x16u);
  }

  [(PDUserNotificationManager *)self _scheduleWithNotificationData:dataCopy];
}

@end