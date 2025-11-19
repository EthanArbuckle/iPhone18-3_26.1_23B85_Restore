@interface PDHandoutCompletedNotificationTrigger
- (BOOL)containsiCloudReport:(id)a3;
- (BOOL)shouldTriggerNotificationFromCurrentState:(id)a3 toNextState:(id)a4;
- (PDHandoutCompletedNotificationTrigger)initWithDatabase:(id)a3;
- (id)composeNotificationData:(id)a3;
- (void)collaborationStateWillChange:(id)a3;
- (void)dealloc;
@end

@implementation PDHandoutCompletedNotificationTrigger

- (PDHandoutCompletedNotificationTrigger)initWithDatabase:(id)a3
{
  v6.receiver = self;
  v6.super_class = PDHandoutCompletedNotificationTrigger;
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
  v4.super_class = PDHandoutCompletedNotificationTrigger;
  [(PDHandoutCompletedNotificationTrigger *)&v4 dealloc];
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
    v13 = 136315394;
    v14 = "/Library/Caches/com.apple.xbs/Sources/ClassKitSwift/progressd/UserNotifications/PDHandoutCompletedNotificationTrigger.m";
    v15 = 2080;
    v16 = "[PDHandoutCompletedNotificationTrigger collaborationStateWillChange:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s.%s.", &v13, 0x16u);
  }

  v8 = [v4 object];
  if (sub_100050844(v8))
  {
    v9 = objc_opt_class();
    v10 = [v6 objectID];
    v11 = [v8 select:v9 identity:v10];

    if ([(PDHandoutCompletedNotificationTrigger *)self shouldTriggerNotificationFromCurrentState:v11 toNextState:v6])
    {
      v12 = [(PDHandoutCompletedNotificationTrigger *)self composeNotificationData:v4];
      [(PDUserNotificationTrigger *)self fireTriggerWithNotificationData:v12];
    }
  }
}

- (id)composeNotificationData:(id)a3
{
  v3 = a3;
  v4 = [v3 object];
  v5 = [v3 userInfo];

  v6 = [v5 objectForKeyedSubscript:@"newEntity"];

  v7 = objc_opt_class();
  v46 = v6;
  v8 = [v6 parentObjectID];
  v9 = [v4 select:v7 identity:v8];

  v10 = [v9 objectID];
  v48 = v9;
  v11 = [v9 title];
  v12 = objc_opt_class();
  v59 = v10;
  v13 = [NSArray arrayWithObjects:&v59 count:1];
  v14 = [v4 select:v12 where:@"parentObjectID = ?" bindings:v13];

  CLSInitLog();
  v15 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    v17 = [v14 classID];
    *buf = 136316162;
    v50 = "/Library/Caches/com.apple.xbs/Sources/ClassKitSwift/progressd/UserNotifications/PDHandoutCompletedNotificationTrigger.m";
    v51 = 2080;
    v52 = "[PDHandoutCompletedNotificationTrigger composeNotificationData:]";
    v53 = 2112;
    v54 = v17;
    v55 = 2112;
    v56 = v10;
    v57 = 2112;
    v58 = v11;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s.%s. Class: %@ HandoutID: %@ HandoutTitle: %@", buf, 0x34u);
  }

  newValue = v10;
  v18 = objc_opt_class();
  v19 = [v14 classID];
  v47 = v4;
  v20 = [v4 select:v18 identity:v19];

  v43 = v20;
  v21 = [v20 displayName];
  v22 = v21;
  v23 = @" ";
  if (v21)
  {
    v23 = v21;
  }

  v24 = v23;

  if (v11)
  {
    v25 = v11;
  }

  else
  {
    v25 = &stru_100206880;
  }

  v26 = v25;

  v27 = [NSBundle bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"NOTIFICATION_STUDENT_HANDOUT_INFO_UPDATED_TITLE_FORMAT" value:&stru_100206880 table:@"ClassKit"];
  v29 = [NSString stringWithFormat:v28, v24];

  v30 = [(PDHandoutCompletedNotificationTrigger *)self containsiCloudReport:v48];
  v31 = [NSBundle bundleForClass:objc_opt_class()];
  v32 = v31;
  if (v30)
  {
    v33 = @"NOTIFICATION_STUDENT_HANDOUT_COMPLETED_WITH_ATTACHMENT_FORMAT";
  }

  else
  {
    v33 = @"NOTIFICATION_STUDENT_HANDOUT_COMPLETED_NO_ATTACHMENT_FORMAT";
  }

  v34 = [v31 localizedStringForKey:v33 value:&stru_100206880 table:@"ClassKit"];
  v35 = [NSString stringWithFormat:v34, v26, v24];

  v36 = sub_10012F04C([PDUserNotificationData alloc], 7, v29, v35);
  v37 = [v14 classID];
  v39 = v37;
  if (v36)
  {
    objc_setProperty_nonatomic_copy(v36, v38, v37, 32);

    v40 = newValue;
    objc_setProperty_nonatomic_copy(v36, v41, newValue, 24);
  }

  else
  {

    v40 = newValue;
  }

  return v36;
}

- (BOOL)containsiCloudReport:(id)a3
{
  v4 = a3;
  v5 = [(PDUserNotificationTrigger *)self database];
  v6 = objc_opt_class();
  v7 = [v4 objectID];

  v11[2] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:3];
  v9 = [v5 count:v6 where:@"type IN(? bindings:{?) AND parentObjectID = ?", v8}];

  return v9 > 0;
}

- (BOOL)shouldTriggerNotificationFromCurrentState:(id)a3 toNextState:(id)a4
{
  result = 0;
  if (a3)
  {
    if (a4)
    {
      v5 = a3;
      v6 = a4;
      LOBYTE(v5) = [v5 isCompletedHandout];
      v7 = [v6 isCompletedHandout];

      return (v5 ^ 1) & v7;
    }
  }

  return result;
}

@end