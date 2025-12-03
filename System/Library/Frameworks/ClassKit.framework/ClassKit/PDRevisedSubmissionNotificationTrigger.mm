@interface PDRevisedSubmissionNotificationTrigger
- (BOOL)shouldTriggerNotificationFromCurrentState:(id)state toNextState:(id)nextState;
- (PDRevisedSubmissionNotificationTrigger)initWithDatabase:(id)database;
- (id)getStudentNameFromID:(id)d;
- (void)collaborationStateWillChange:(id)change;
- (void)dealloc;
@end

@implementation PDRevisedSubmissionNotificationTrigger

- (PDRevisedSubmissionNotificationTrigger)initWithDatabase:(id)database
{
  v6.receiver = self;
  v6.super_class = PDRevisedSubmissionNotificationTrigger;
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
  v4.super_class = PDRevisedSubmissionNotificationTrigger;
  [(PDRevisedSubmissionNotificationTrigger *)&v4 dealloc];
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
    v52 = "/Library/Caches/com.apple.xbs/Sources/ClassKitSwift/progressd/UserNotifications/PDRevisedSubmissionNotificationTrigger.m";
    v53 = 2080;
    v54 = "[PDRevisedSubmissionNotificationTrigger collaborationStateWillChange:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s.%s.", buf, 0x16u);
  }

  object = [changeCopy object];

  if (sub_100050844(object))
  {
    v9 = objc_opt_class();
    objectID = [v6 objectID];
    v11 = [object select:v9 identity:objectID];

    if ([(PDRevisedSubmissionNotificationTrigger *)self shouldTriggerNotificationFromCurrentState:v11 toNextState:v6])
    {
      v12 = [NSBundle bundleForClass:objc_opt_class()];
      v50 = [v12 localizedStringForKey:@"NOTIFICATION_TEACHER_REVIEW_REVISED_WORK_TITLE" value:&stru_100206880 table:@"ClassKit"];

      senderPersonID = [v6 senderPersonID];
      v14 = [(PDRevisedSubmissionNotificationTrigger *)self getStudentNameFromID:senderPersonID];

      database = [(PDUserNotificationTrigger *)self database];
      v16 = objc_opt_class();
      parentObjectID = [v6 parentObjectID];
      v18 = [database select:v16 identity:parentObjectID];

      if (v18)
      {
        v49 = v14;
        title = [v18 title];
        newValue = [v18 objectID];
        database2 = [(PDUserNotificationTrigger *)self database];
        v21 = objc_opt_class();
        parentObjectID2 = [v18 parentObjectID];
        v23 = [database2 select:v21 identity:parentObjectID2];

        if (v23)
        {
          objectID2 = [v23 objectID];
          v25 = [(PDUserNotificationTrigger *)self classIDFromHandout:v23];
        }

        else
        {
          CLSInitLog();
          v28 = CLSLogNotifications;
          if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_ERROR))
          {
            v43 = v28;
            v44 = objc_opt_class();
            v47 = v44;
            parentObjectID3 = [v18 parentObjectID];
            *buf = 138543618;
            v52 = v44;
            v53 = 2112;
            v54 = parentObjectID3;
            _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "'%{public}@': Failed to find handout with object ID: %@", buf, 0x16u);
          }

          v25 = 0;
          objectID2 = 0;
        }

        v14 = v49;
        if (v49 && title)
        {
          v29 = [NSBundle bundleForClass:objc_opt_class()];
          v30 = [v29 localizedStringForKey:@"NOTIFICATION_TEACHER_REVIEW_REVISED_WORK_MESSAGE_FORMAT" value:&stru_100206880 table:@"ClassKit"];
          v31 = title;
          v32 = v30;
          v46 = v31;
          v33 = [NSString stringWithFormat:v30, v49, v31];

          v34 = sub_10012F04C([PDUserNotificationData alloc], 5, v50, v33);
          v36 = v34;
          if (v34)
          {
            objc_setProperty_nonatomic_copy(v34, v35, objectID2, 24);
            objc_setProperty_nonatomic_copy(v36, v37, v25, 32);
            objc_setProperty_nonatomic_copy(v36, v38, newValue, 48);
          }

          [(PDUserNotificationTrigger *)self fireTriggerWithNotificationData:v36];

          v14 = v49;
          title = v46;
        }

        v27 = newValue;
      }

      else
      {
        CLSInitLog();
        v26 = CLSLogNotifications;
        if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_ERROR))
        {
          v39 = v26;
          v40 = objc_opt_class();
          v41 = v40;
          parentObjectID4 = [v6 parentObjectID];
          *buf = 138543618;
          v52 = v40;
          v53 = 2112;
          v54 = parentObjectID4;
          _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "'%{public}@': Failed to find attachment from Collaboration State parent object ID: %@", buf, 0x16u);
        }

        title = 0;
        objectID2 = 0;
        v25 = 0;
        v27 = 0;
      }
    }
  }
}

- (BOOL)shouldTriggerNotificationFromCurrentState:(id)state toNextState:(id)nextState
{
  stateCopy = state;
  nextStateCopy = nextState;
  domain = [nextStateCopy domain];
  v9 = [nextStateCopy state] != 2 || (objc_msgSend(nextStateCopy, "flags") & 1) == 0;
  v10 = [stateCopy state] == 1 && (objc_msgSend(stateCopy, "flags") & 2) != 0 && (objc_msgSend(stateCopy, "flags") & 1) == 0;
  senderPersonID = [nextStateCopy senderPersonID];
  database = [(PDUserNotificationTrigger *)self database];
  v13 = sub_1000712CC(database);
  v14 = [v13 isEqualToString:senderPersonID];

  CLSInitLog();
  v15 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v18 = 138412546;
    v19 = stateCopy;
    v20 = 2112;
    v21 = nextStateCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "PDRevisedSubmissionNotificationTrigger.shouldTriggerNotificationFromCurrentState. CurrentState: %@ NextState: %@", &v18, 0x16u);
  }

  if (domain != 1 || v9)
  {
    v16 = 0;
  }

  else
  {
    v16 = v10 & (v14 ^ 1);
  }

  return v16;
}

- (id)getStudentNameFromID:(id)d
{
  dCopy = d;
  database = [(PDUserNotificationTrigger *)self database];
  v6 = objc_opt_class();
  v22 = dCopy;
  v7 = [NSArray arrayWithObjects:&v22 count:1];
  v8 = [database select:v6 where:@"objectID = ?" bindings:v7];

  if (v8)
  {
    familyName = [v8 familyName];
    givenName = [v8 givenName];
    v11 = givenName;
    if (self)
    {
      v12 = givenName;
      v13 = familyName;
      v14 = objc_alloc_init(NSPersonNameComponentsFormatter);
      [v14 setStyle:2];
      v15 = objc_alloc_init(NSPersonNameComponents);
      [v15 setFamilyName:v13];

      [v15 setGivenName:v12];
      self = [v14 stringFromPersonNameComponents:v15];
    }
  }

  else
  {
    CLSInitLog();
    v16 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_ERROR))
    {
      v18 = v16;
      v20 = 138543362;
      v21 = objc_opt_class();
      v19 = v21;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "'%{public}@': Failed to find student from Collaboration State", &v20, 0xCu);
    }

    self = 0;
  }

  return self;
}

@end