@interface PDRevisionRequestedNotificationTrigger
- (BOOL)shouldTriggerNotificationFromCurrentState:(id)state toNextState:(id)nextState;
- (PDRevisionRequestedNotificationTrigger)initWithDatabase:(id)database;
- (id)notificationDataWithDatabase:(id)database recipient:(id)recipient attachmentID:(id)d;
- (void)collaborationStateWillChange:(id)change;
- (void)dealloc;
@end

@implementation PDRevisionRequestedNotificationTrigger

- (PDRevisionRequestedNotificationTrigger)initWithDatabase:(id)database
{
  v6.receiver = self;
  v6.super_class = PDRevisionRequestedNotificationTrigger;
  v3 = [(PDUserNotificationTrigger *)&v6 initWithDatabase:database];
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

- (id)notificationDataWithDatabase:(id)database recipient:(id)recipient attachmentID:(id)d
{
  recipientCopy = recipient;
  dCopy = d;
  CLSInitLog();
  v9 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    classID = [recipientCopy classID];
    *buf = 138412546;
    v51 = classID;
    v52 = 2112;
    v53 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "PDRevisionRequestedNotificationTrigger.notificationDataWithDatabase. Class: %@ AttachmentID: %@.", buf, 0x16u);
  }

  database = [(PDUserNotificationTrigger *)self database];
  v13 = objc_opt_class();
  classID2 = [recipientCopy classID];
  v15 = [database select:v13 identity:classID2];

  displayName = [v15 displayName];
  v17 = [database select:objc_opt_class() identity:dCopy];
  v18 = objc_opt_class();
  parentObjectID = [v17 parentObjectID];
  v20 = [database select:v18 identity:parentObjectID];

  title = [v20 title];
  v49 = displayName;
  if ([displayName length])
  {
    v48 = dCopy;
    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"NOTIFICATION_STUDENT_REVISION_NEEDED_MESSAGE_FORMAT" value:&stru_100206880 table:@"ClassKit"];

    objectID = [v20 objectID];
    v25 = sub_100176270(database, objectID);

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
    title2 = [v30 title];
    v47 = title;
    v33 = [NSString stringWithFormat:v31, title2, title];

    v34 = sub_10012F04C([PDUserNotificationData alloc], 0, v29, v33);
    classID3 = [recipientCopy classID];
    if (v34)
    {
      objc_setProperty_nonatomic_copy(v34, v35, classID3, 32);
    }

    objectID2 = [v20 objectID];
    if (v34)
    {
      objc_setProperty_nonatomic_copy(v34, v37, objectID2, 24);
    }

    dCopy = v48;
    v17 = v46;
    title = v47;
  }

  else
  {
    CLSInitLog();
    v39 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      v40 = v39;
      [recipientCopy classID];
      v41 = v17;
      v43 = v42 = title;
      objectID3 = [v20 objectID];
      *buf = 138412546;
      v51 = v43;
      v52 = 2112;
      v53 = objectID3;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "PDRevisionRequestedNotificationTrigger.notificationDataWithDatabase. Could not find class or empty class name. ClassID: %@ HandoutID: %@", buf, 0x16u);

      title = v42;
      v17 = v41;
    }

    v34 = 0;
  }

  return v34;
}

- (void)collaborationStateWillChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"newEntity"];

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

  object = [changeCopy object];

  if (sub_100050844(object))
  {
    v9 = objc_opt_class();
    objectID = [v6 objectID];
    v11 = [object select:v9 identity:objectID];

    if ([(PDRevisionRequestedNotificationTrigger *)self shouldTriggerNotificationFromCurrentState:v11 toNextState:v6])
    {
      v12 = objc_opt_class();
      parentObjectID = [v6 parentObjectID];
      v14 = [object select:v12 identity:parentObjectID];

      if (v14)
      {
        title = [v14 title];
        newValue = [v14 objectID];
        v16 = objc_opt_class();
        parentObjectID2 = [v14 parentObjectID];
        v18 = [object select:v16 identity:parentObjectID2];

        if (v18)
        {
          title2 = [v18 title];
          objectID2 = [v18 objectID];
          v21 = [(PDUserNotificationTrigger *)self classIDFromHandout:v18];

          if (title && title2)
          {
            v22 = sub_100176270(object, objectID2);
            v50 = title;
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
            [NSString stringWithFormat:v27, v50, title2];
            v28 = v48 = v21;

            v29 = [PDUserNotificationData alloc];
            v49 = v28;
            v30 = v28;
            v21 = v48;
            v31 = sub_10012F04C(&v29->super.isa, 4, v47, v30);
            v33 = v31;
            if (v31)
            {
              objc_setProperty_nonatomic_copy(v31, v32, objectID2, 24);
              objc_setProperty_nonatomic_copy(v33, v34, v48, 32);
              objc_setProperty_nonatomic_copy(v33, v35, newValue, 48);
            }

            [(PDUserNotificationTrigger *)self fireTriggerWithNotificationData:v33];

            title = v50;
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
            parentObjectID3 = [v14 parentObjectID];
            *buf = 138543618;
            v53 = v44;
            v54 = 2112;
            v55 = parentObjectID3;
            _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "'%{public}@': Failed to find handout with object ID: %@", buf, 0x16u);
          }

          title2 = 0;
          objectID2 = 0;
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
          parentObjectID4 = [v6 parentObjectID];
          *buf = 138543618;
          v53 = v40;
          v54 = 2112;
          v55 = parentObjectID4;
          _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "'%{public}@': Failed to find attachment from Collaboration State parent object ID: %@", buf, 0x16u);
        }

        title = 0;
        title2 = 0;
        objectID2 = 0;
        v21 = 0;
        v37 = 0;
      }
    }
  }
}

- (BOOL)shouldTriggerNotificationFromCurrentState:(id)state toNextState:(id)nextState
{
  stateCopy = state;
  nextStateCopy = nextState;
  domain = [nextStateCopy domain];
  v9 = [nextStateCopy state] != 1 || (objc_msgSend(nextStateCopy, "flags") & 2) == 0;
  if ([stateCopy state] == 2)
  {
    v10 = [stateCopy flags] & 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  senderPersonID = [nextStateCopy senderPersonID];
  if (senderPersonID || ([nextStateCopy recipientPersonID], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    senderPersonID2 = [nextStateCopy senderPersonID];
    if (senderPersonID2)
    {
      v13 = senderPersonID2;
      recipientPersonID = [nextStateCopy recipientPersonID];
      if (recipientPersonID)
      {
        v15 = recipientPersonID;
        [nextStateCopy senderPersonID];
        v16 = v25 = domain;
        [nextStateCopy recipientPersonID];
        v24 = stateCopy;
        v17 = v4;
        v18 = v10;
        v20 = v19 = v9;
        v21 = [v16 isEqualToString:v20] ^ 1;

        v9 = v19;
        LOBYTE(v10) = v18;
        v4 = v17;
        stateCopy = v24;

        domain = v25;
        if (senderPersonID)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    LOBYTE(v21) = 1;
    if (senderPersonID)
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
    v27 = stateCopy;
    v28 = 2112;
    v29 = nextStateCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "PDRevisionRequestedNotificationTrigger.shouldTriggerNotificationFromCurrentState. CurrentState: %@ NextState: %@", buf, 0x16u);
  }

  return (domain == 1) & !v9 & v10 & v21;
}

@end