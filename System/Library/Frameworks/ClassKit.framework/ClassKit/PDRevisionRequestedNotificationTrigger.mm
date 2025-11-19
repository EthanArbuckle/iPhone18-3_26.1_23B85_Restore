@interface PDRevisionRequestedNotificationTrigger
- (BOOL)shouldTriggerNotificationFromCurrentState:(id)a3 toNextState:(id)a4;
- (PDRevisionRequestedNotificationTrigger)initWithDatabase:(id)a3;
- (id)notificationDataWithDatabase:(id)a3 recipient:(id)a4 attachmentID:(id)a5;
- (void)collaborationStateWillChange:(id)a3;
- (void)dealloc;
@end

@implementation PDRevisionRequestedNotificationTrigger

- (PDRevisionRequestedNotificationTrigger)initWithDatabase:(id)a3
{
  v6.receiver = self;
  v6.super_class = PDRevisionRequestedNotificationTrigger;
  v3 = [(PDUserNotificationTrigger *)&v6 initWithDatabase:a3];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"collaborationStateWillChange:" name:@"PDDatabaseEntityCollaborationWillChangeNotification" object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PDRevisionRequestedNotificationTrigger;
  [(PDRevisionRequestedNotificationTrigger *)&v4 dealloc];
}

- (id)notificationDataWithDatabase:(id)a3 recipient:(id)a4 attachmentID:(id)a5
{
  v7 = a4;
  v8 = a5;
  CLSInitLog();
  v9 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [v7 classID];
    *buf = 138412546;
    v51 = v11;
    v52 = 2112;
    v53 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "PDRevisionRequestedNotificationTrigger.notificationDataWithDatabase. Class: %@ AttachmentID: %@.", buf, 0x16u);
  }

  v12 = [(PDUserNotificationTrigger *)self database];
  v13 = objc_opt_class();
  v14 = [v7 classID];
  v15 = [v12 select:v13 identity:v14];

  v16 = [v15 displayName];
  v17 = [v12 select:objc_opt_class() identity:v8];
  v18 = objc_opt_class();
  v19 = [v17 parentObjectID];
  v20 = [v12 select:v18 identity:v19];

  v21 = [v20 title];
  v49 = v16;
  if ([v16 length])
  {
    v48 = v8;
    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"NOTIFICATION_STUDENT_REVISION_NEEDED_MESSAGE_FORMAT" value:&stru_100206880 table:@"ClassKit"];

    v24 = [v20 objectID];
    v25 = sub_100176270(v12, v24);

    v26 = [NSBundle bundleForClass:objc_opt_class()];
    v27 = v26;
    if (v25)
    {
      v28 = @"NOTIFICATION_STUDENT_REVISION_ASSESSMENT_NEEDED_TITLE";
    }

    else
    {
      v28 = @"NOTIFICATION_STUDENT_REVISION_NEEDED_TITLE";
    }

    v29 = [v26 localizedStringForKey:v28 value:&stru_100206880 table:@"ClassKit"];

    v46 = v17;
    v30 = v17;
    v31 = v23;
    v32 = [v30 title];
    v47 = v21;
    v33 = [NSString stringWithFormat:v31, v32, v21];

    v34 = sub_10012F04C([PDUserNotificationData alloc], 0, v29, v33);
    v36 = [v7 classID];
    if (v34)
    {
      objc_setProperty_nonatomic_copy(v34, v35, v36, 32);
    }

    v38 = [v20 objectID];
    if (v34)
    {
      objc_setProperty_nonatomic_copy(v34, v37, v38, 24);
    }

    v8 = v48;
    v17 = v46;
    v21 = v47;
  }

  else
  {
    CLSInitLog();
    v39 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      v40 = v39;
      [v7 classID];
      v41 = v17;
      v43 = v42 = v21;
      v44 = [v20 objectID];
      *buf = 138412546;
      v51 = v43;
      v52 = 2112;
      v53 = v44;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "PDRevisionRequestedNotificationTrigger.notificationDataWithDatabase. Could not find class or empty class name. ClassID: %@ HandoutID: %@", buf, 0x16u);

      v21 = v42;
      v17 = v41;
    }

    v34 = 0;
  }

  return v34;
}

- (void)collaborationStateWillChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"newEntity"];

  CLSInitLog();
  v7 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v53 = "/Library/Caches/com.apple.xbs/Sources/ClassKitSwift/progressd/UserNotifications/PDRevisionRequestedNotificationTrigger.m";
    v54 = 2080;
    v55 = "[PDRevisionRequestedNotificationTrigger collaborationStateWillChange:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s.%s.", buf, 0x16u);
  }

  v8 = [v4 object];

  if (sub_100050844(v8))
  {
    v9 = objc_opt_class();
    v10 = [v6 objectID];
    v11 = [v8 select:v9 identity:v10];

    if ([(PDRevisionRequestedNotificationTrigger *)self shouldTriggerNotificationFromCurrentState:v11 toNextState:v6])
    {
      v12 = objc_opt_class();
      v13 = [v6 parentObjectID];
      v14 = [v8 select:v12 identity:v13];

      if (v14)
      {
        v15 = [v14 title];
        newValue = [v14 objectID];
        v16 = objc_opt_class();
        v17 = [v14 parentObjectID];
        v18 = [v8 select:v16 identity:v17];

        if (v18)
        {
          v19 = [v18 title];
          v20 = [v18 objectID];
          v21 = [(PDUserNotificationTrigger *)self classIDFromHandout:v18];

          if (v15 && v19)
          {
            v22 = sub_100176270(v8, v20);
            v50 = v15;
            v23 = [NSBundle bundleForClass:objc_opt_class()];
            v24 = v23;
            if (v22)
            {
              v25 = @"NOTIFICATION_STUDENT_REVISION_ASSESSMENT_NEEDED_TITLE";
            }

            else
            {
              v25 = @"NOTIFICATION_STUDENT_REVISION_NEEDED_TITLE";
            }

            v47 = [v23 localizedStringForKey:v25 value:&stru_100206880 table:@"ClassKit"];

            v26 = [NSBundle bundleForClass:objc_opt_class()];
            v27 = [v26 localizedStringForKey:@"NOTIFICATION_STUDENT_REVISION_NEEDED_MESSAGE_FORMAT" value:&stru_100206880 table:@"ClassKit"];
            [NSString stringWithFormat:v27, v50, v19];
            v28 = v48 = v21;

            v29 = [PDUserNotificationData alloc];
            v49 = v28;
            v30 = v28;
            v21 = v48;
            v31 = sub_10012F04C(&v29->super.isa, 4, v47, v30);
            v33 = v31;
            if (v31)
            {
              objc_setProperty_nonatomic_copy(v31, v32, v20, 24);
              objc_setProperty_nonatomic_copy(v33, v34, v48, 32);
              objc_setProperty_nonatomic_copy(v33, v35, newValue, 48);
            }

            [(PDUserNotificationTrigger *)self fireTriggerWithNotificationData:v33];

            v15 = v50;
          }
        }

        else
        {
          CLSInitLog();
          v38 = CLSLogNotifications;
          if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_ERROR))
          {
            v43 = v38;
            v44 = objc_opt_class();
            v45 = v44;
            v46 = [v14 parentObjectID];
            *buf = 138543618;
            v53 = v44;
            v54 = 2112;
            v55 = v46;
            _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "'%{public}@': Failed to find handout with object ID: %@", buf, 0x16u);
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
        }

        v37 = newValue;
      }

      else
      {
        CLSInitLog();
        v36 = CLSLogNotifications;
        if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_ERROR))
        {
          v39 = v36;
          v40 = objc_opt_class();
          v41 = v40;
          v42 = [v6 parentObjectID];
          *buf = 138543618;
          v53 = v40;
          v54 = 2112;
          v55 = v42;
          _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "'%{public}@': Failed to find attachment from Collaboration State parent object ID: %@", buf, 0x16u);
        }

        v15 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v37 = 0;
      }
    }
  }
}

- (BOOL)shouldTriggerNotificationFromCurrentState:(id)a3 toNextState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 domain];
  v9 = [v7 state] != 1 || (objc_msgSend(v7, "flags") & 2) == 0;
  if ([v6 state] == 2)
  {
    v10 = [v6 flags] & 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  v11 = [v7 senderPersonID];
  if (v11 || ([v7 recipientPersonID], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [v7 senderPersonID];
    if (v12)
    {
      v13 = v12;
      v14 = [v7 recipientPersonID];
      if (v14)
      {
        v15 = v14;
        [v7 senderPersonID];
        v16 = v25 = v8;
        [v7 recipientPersonID];
        v24 = v6;
        v17 = v4;
        v18 = v10;
        v20 = v19 = v9;
        v21 = [v16 isEqualToString:v20] ^ 1;

        v9 = v19;
        LOBYTE(v10) = v18;
        v4 = v17;
        v6 = v24;

        v8 = v25;
        if (v11)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    LOBYTE(v21) = 1;
    if (v11)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  LOBYTE(v21) = 0;
LABEL_17:

LABEL_18:
  CLSInitLog();
  v22 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v27 = v6;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "PDRevisionRequestedNotificationTrigger.shouldTriggerNotificationFromCurrentState. CurrentState: %@ NextState: %@", buf, 0x16u);
  }

  return (v8 == 1) & !v9 & v10 & v21;
}

@end