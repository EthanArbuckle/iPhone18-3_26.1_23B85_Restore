@interface PDUserNotificationManager
- (PDUserNotificationManager)initWithDatabase:(id)a3;
- (void)_scheduleWithNotificationData:(id)a3;
- (void)clearTriggers;
- (void)dealloc;
- (void)invalidate;
- (void)registerForAccountChangedDarwinNotification;
- (void)registerForNotifications;
- (void)resetTriggers;
- (void)triggerDidFire:(id)a3 notificationData:(id)a4;
@end

@implementation PDUserNotificationManager

- (PDUserNotificationManager)initWithDatabase:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PDUserNotificationManager;
  v6 = [(PDUserNotificationManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, a3);
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
  v2 = self;
  objc_sync_enter(v2);
  [(PDUserNotificationManager *)v2 clearTriggers];
  v3 = [(PDUserNotificationManager *)v2 database];
  v4 = sub_1000717E8(v3);

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
    v8 = [(PDUserNotificationManager *)v2 database];
    v9 = [(PDHandoutAssignedNotificationTrigger *)v7 initWithDatabase:v8];
    [(PDUserNotificationManager *)v2 setHandoutAssignedTrigger:v9];

    v10 = [(PDUserNotificationManager *)v2 handoutAssignedTrigger];
    [v10 setDelegate:v2];

    v11 = [PDHandoutCompletedNotificationTrigger alloc];
    v12 = [(PDUserNotificationManager *)v2 database];
    v13 = [(PDHandoutCompletedNotificationTrigger *)v11 initWithDatabase:v12];
    [(PDUserNotificationManager *)v2 setHandoutCompletedTrigger:v13];

    v14 = [(PDUserNotificationManager *)v2 handoutCompletedTrigger];
    [v14 setDelegate:v2];

    v15 = [PDAttachmentUpdatedNotificationTrigger alloc];
    v16 = [(PDUserNotificationManager *)v2 database];
    v17 = [(PDAttachmentUpdatedNotificationTrigger *)v15 initWithDatabase:v16];
    [(PDUserNotificationManager *)v2 setAttachmentUpdatedTrigger:v17];

    v18 = [(PDUserNotificationManager *)v2 attachmentUpdatedTrigger];
    [v18 setDelegate:v2];

    v19 = [PDHandoutDueSoonNotificationTrigger alloc];
    v20 = [(PDUserNotificationManager *)v2 database];
    v21 = [(PDUserNotificationTimeBasedTrigger *)v19 initWithDatabase:v20];
    [(PDUserNotificationManager *)v2 setHandoutDueSoonTrigger:v21];

    v22 = [(PDUserNotificationManager *)v2 handoutDueSoonTrigger];
    [v22 setDelegate:v2];

    v23 = [(PDUserNotificationManager *)v2 handoutDueSoonTrigger];
    [v23 checkTriggerNow];

    v24 = [PDHandoutPastDueSummaryNotificationTrigger alloc];
    v25 = [(PDUserNotificationManager *)v2 database];
    v26 = [(PDUserNotificationTimeBasedTrigger *)v24 initWithDatabase:v25];
    [(PDUserNotificationManager *)v2 setHandoutPastDueTrigger:v26];

    v27 = [(PDUserNotificationManager *)v2 handoutPastDueTrigger];
    [v27 setDelegate:v2];

    v28 = [(PDUserNotificationManager *)v2 handoutPastDueTrigger];
    [v28 checkTriggerNow];

    v29 = [PDRevisionRequestedNotificationTrigger alloc];
    v30 = [(PDUserNotificationManager *)v2 database];
    v31 = [(PDRevisionRequestedNotificationTrigger *)v29 initWithDatabase:v30];
    [(PDUserNotificationManager *)v2 setRevisionNeededTrigger:v31];

    v32 = [(PDUserNotificationManager *)v2 revisionNeededTrigger];
    [v32 setDelegate:v2];
LABEL_7:

    goto LABEL_8;
  }

  if ((v4 & 2) != 0)
  {
    v33 = [PDReviewDueHandoutsNotificationTrigger alloc];
    v34 = [(PDUserNotificationManager *)v2 database];
    v35 = [(PDUserNotificationTimeBasedTrigger *)v33 initWithDatabase:v34];
    [(PDUserNotificationManager *)v2 setReviewDueHandoutsTrigger:v35];

    v36 = [(PDUserNotificationManager *)v2 reviewDueHandoutsTrigger];
    [v36 setDelegate:v2];

    v37 = [(PDUserNotificationManager *)v2 reviewDueHandoutsTrigger];
    [v37 checkTriggerNow];

    v38 = [PDRevisedSubmissionNotificationTrigger alloc];
    v39 = [(PDUserNotificationManager *)v2 database];
    v40 = [(PDRevisedSubmissionNotificationTrigger *)v38 initWithDatabase:v39];
    [(PDUserNotificationManager *)v2 setRevisedSubmissionTrigger:v40];

    v32 = [(PDUserNotificationManager *)v2 revisedSubmissionTrigger];
    [v32 setDelegate:v2];
    goto LABEL_7;
  }

LABEL_8:
  objc_sync_exit(v2);
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
    v4 = self;
    v5 = [(PDUserNotificationManager *)v4 handoutCompletedTrigger];
    [v5 setDelegate:0];

    [(PDUserNotificationManager *)v4 setHandoutCompletedTrigger:0];
    v6 = [(PDUserNotificationManager *)v4 handoutAssignedTrigger];
    [v6 setDelegate:0];

    [(PDUserNotificationManager *)v4 setHandoutAssignedTrigger:0];
    v7 = [(PDUserNotificationManager *)v4 attachmentUpdatedTrigger];
    [v7 setDelegate:0];

    [(PDUserNotificationManager *)v4 setAttachmentUpdatedTrigger:0];
    v8 = [(PDUserNotificationManager *)v4 handoutDueSoonTrigger];
    [v8 resetTrigger];

    v9 = [(PDUserNotificationManager *)v4 handoutDueSoonTrigger];
    [v9 setDelegate:0];

    [(PDUserNotificationManager *)v4 setHandoutDueSoonTrigger:0];
    v10 = [(PDUserNotificationManager *)v4 handoutPastDueTrigger];
    [v10 resetTrigger];

    v11 = [(PDUserNotificationManager *)v4 handoutPastDueTrigger];
    [v11 setDelegate:0];

    [(PDUserNotificationManager *)v4 setHandoutPastDueTrigger:0];
    v12 = [(PDUserNotificationManager *)v4 revisionNeededTrigger];
    [v12 setDelegate:0];

    [(PDUserNotificationManager *)v4 setRevisionNeededTrigger:0];
    v13 = [(PDUserNotificationManager *)v4 reviewDueHandoutsTrigger];
    [v13 resetTrigger];

    v14 = [(PDUserNotificationManager *)v4 reviewDueHandoutsTrigger];
    [v14 setDelegate:0];

    [(PDUserNotificationManager *)v4 setReviewDueHandoutsTrigger:0];
    v15 = [(PDUserNotificationManager *)v4 revisedSubmissionTrigger];
    [v15 setDelegate:0];

    [(PDUserNotificationManager *)v4 setRevisedSubmissionTrigger:0];
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

- (void)_scheduleWithNotificationData:(id)a3
{
  v4 = a3;
  CLSInitLog();
  v5 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v33 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "PDUserNotificationManager.scheduleWithNotificationData. Data: %@", buf, 0xCu);
  }

  v6 = objc_opt_new();
  v7 = v6;
  if (v4)
  {
    v8 = v4[1];
    [v7 setTitle:v8];

    v9 = v4[2];
  }

  else
  {
    [v6 setTitle:0];
    v9 = 0;
  }

  v10 = v9;
  [v7 setBody:v10];

  v11 = objc_opt_new();
  if (v4)
  {
    v12 = v4[6];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    if (v4)
    {
      v14 = v4[6];
      [v11 setObject:v14 forKey:@"attachmentID"];

      v15 = v4[6];
    }

    else
    {
      [v11 setObject:0 forKey:@"attachmentID"];
      v15 = 0;
    }

    v13 = v15;
  }

  if (v4)
  {
    v16 = v4[3];
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    v18 = v4 ? v4[3] : 0;
    v19 = v18;
    [v11 setObject:v19 forKey:@"handoutID"];

    if (!v13)
    {
      if (v4)
      {
        v20 = v4[3];
      }

      else
      {
        v20 = 0;
      }

      v13 = v20;
    }
  }

  if (v4)
  {
    v21 = v4[4];
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (v22)
  {
    if (v4)
    {
      v23 = v4[4];
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    [v11 setObject:v24 forKey:@"classID"];

    if (v13)
    {
      goto LABEL_31;
    }

    if (v4)
    {
      v25 = v4[4];
    }

    else
    {
      v25 = 0;
    }

    v13 = v25;
  }

  if (!v13)
  {
    v26 = +[NSUUID UUID];
    v13 = [v26 UUIDString];
  }

LABEL_31:
  [v7 setUserInfo:v11];
  if (v4)
  {
    v27 = v4[5];
  }

  else
  {
    v27 = 0;
  }

  v28 = [NSNumber numberWithInteger:v27];
  v29 = [NSString stringWithFormat:@"com.apple.progressd.notification.%@-%@", v28, v13];

  v30 = [UNNotificationRequest requestWithIdentifier:v29 content:v7 trigger:0];
  v31 = [(PDUserNotificationManager *)self userNotificationCenter];
  [v31 addNotificationRequest:v30 withCompletionHandler:&stru_100205740];
}

- (void)triggerDidFire:(id)a3 notificationData:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "PDUserNotificationManager.triggerDidFire. Trigger: %{public}@ Data: %@", &v12, 0x16u);
  }

  [(PDUserNotificationManager *)self _scheduleWithNotificationData:v7];
}

@end