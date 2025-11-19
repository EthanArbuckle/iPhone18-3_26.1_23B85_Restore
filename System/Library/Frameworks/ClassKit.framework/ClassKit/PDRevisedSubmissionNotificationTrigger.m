@interface PDRevisedSubmissionNotificationTrigger
- (BOOL)shouldTriggerNotificationFromCurrentState:(id)a3 toNextState:(id)a4;
- (PDRevisedSubmissionNotificationTrigger)initWithDatabase:(id)a3;
- (id)getStudentNameFromID:(id)a3;
- (void)collaborationStateWillChange:(id)a3;
- (void)dealloc;
@end

@implementation PDRevisedSubmissionNotificationTrigger

- (PDRevisedSubmissionNotificationTrigger)initWithDatabase:(id)a3
{
  v6.receiver = self;
  v6.super_class = PDRevisedSubmissionNotificationTrigger;
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
  v4.super_class = PDRevisedSubmissionNotificationTrigger;
  [(PDRevisedSubmissionNotificationTrigger *)&v4 dealloc];
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
    v52 = "/Library/Caches/com.apple.xbs/Sources/ClassKitSwift/progressd/UserNotifications/PDRevisedSubmissionNotificationTrigger.m";
    v53 = 2080;
    v54 = "[PDRevisedSubmissionNotificationTrigger collaborationStateWillChange:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s.%s.", buf, 0x16u);
  }

  v8 = [v4 object];

  if (sub_100050844(v8))
  {
    v9 = objc_opt_class();
    v10 = [v6 objectID];
    v11 = [v8 select:v9 identity:v10];

    if ([(PDRevisedSubmissionNotificationTrigger *)self shouldTriggerNotificationFromCurrentState:v11 toNextState:v6])
    {
      v12 = [NSBundle bundleForClass:objc_opt_class()];
      v50 = [v12 localizedStringForKey:@"NOTIFICATION_TEACHER_REVIEW_REVISED_WORK_TITLE" value:&stru_100206880 table:@"ClassKit"];

      v13 = [v6 senderPersonID];
      v14 = [(PDRevisedSubmissionNotificationTrigger *)self getStudentNameFromID:v13];

      v15 = [(PDUserNotificationTrigger *)self database];
      v16 = objc_opt_class();
      v17 = [v6 parentObjectID];
      v18 = [v15 select:v16 identity:v17];

      if (v18)
      {
        v49 = v14;
        v19 = [v18 title];
        newValue = [v18 objectID];
        v20 = [(PDUserNotificationTrigger *)self database];
        v21 = objc_opt_class();
        v22 = [v18 parentObjectID];
        v23 = [v20 select:v21 identity:v22];

        if (v23)
        {
          v24 = [v23 objectID];
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
            v45 = [v18 parentObjectID];
            *buf = 138543618;
            v52 = v44;
            v53 = 2112;
            v54 = v45;
            _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "'%{public}@': Failed to find handout with object ID: %@", buf, 0x16u);
          }

          v25 = 0;
          v24 = 0;
        }

        v14 = v49;
        if (v49 && v19)
        {
          v29 = [NSBundle bundleForClass:objc_opt_class()];
          v30 = [v29 localizedStringForKey:@"NOTIFICATION_TEACHER_REVIEW_REVISED_WORK_MESSAGE_FORMAT" value:&stru_100206880 table:@"ClassKit"];
          v31 = v19;
          v32 = v30;
          v46 = v31;
          v33 = [NSString stringWithFormat:v30, v49, v31];

          v34 = sub_10012F04C([PDUserNotificationData alloc], 5, v50, v33);
          v36 = v34;
          if (v34)
          {
            objc_setProperty_nonatomic_copy(v34, v35, v24, 24);
            objc_setProperty_nonatomic_copy(v36, v37, v25, 32);
            objc_setProperty_nonatomic_copy(v36, v38, newValue, 48);
          }

          [(PDUserNotificationTrigger *)self fireTriggerWithNotificationData:v36];

          v14 = v49;
          v19 = v46;
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
          v42 = [v6 parentObjectID];
          *buf = 138543618;
          v52 = v40;
          v53 = 2112;
          v54 = v42;
          _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "'%{public}@': Failed to find attachment from Collaboration State parent object ID: %@", buf, 0x16u);
        }

        v19 = 0;
        v24 = 0;
        v25 = 0;
        v27 = 0;
      }
    }
  }
}

- (BOOL)shouldTriggerNotificationFromCurrentState:(id)a3 toNextState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 domain];
  v9 = [v7 state] != 2 || (objc_msgSend(v7, "flags") & 1) == 0;
  v10 = [v6 state] == 1 && (objc_msgSend(v6, "flags") & 2) != 0 && (objc_msgSend(v6, "flags") & 1) == 0;
  v11 = [v7 senderPersonID];
  v12 = [(PDUserNotificationTrigger *)self database];
  v13 = sub_1000712CC(v12);
  v14 = [v13 isEqualToString:v11];

  CLSInitLog();
  v15 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v18 = 138412546;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "PDRevisedSubmissionNotificationTrigger.shouldTriggerNotificationFromCurrentState. CurrentState: %@ NextState: %@", &v18, 0x16u);
  }

  if (v8 != 1 || v9)
  {
    v16 = 0;
  }

  else
  {
    v16 = v10 & (v14 ^ 1);
  }

  return v16;
}

- (id)getStudentNameFromID:(id)a3
{
  v4 = a3;
  v5 = [(PDUserNotificationTrigger *)self database];
  v6 = objc_opt_class();
  v22 = v4;
  v7 = [NSArray arrayWithObjects:&v22 count:1];
  v8 = [v5 select:v6 where:@"objectID = ?" bindings:v7];

  if (v8)
  {
    v9 = [v8 familyName];
    v10 = [v8 givenName];
    v11 = v10;
    if (self)
    {
      v12 = v10;
      v13 = v9;
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