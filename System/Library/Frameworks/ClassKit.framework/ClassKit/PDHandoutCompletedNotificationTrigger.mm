@interface PDHandoutCompletedNotificationTrigger
- (BOOL)containsiCloudReport:(id)report;
- (BOOL)shouldTriggerNotificationFromCurrentState:(id)state toNextState:(id)nextState;
- (PDHandoutCompletedNotificationTrigger)initWithDatabase:(id)database;
- (id)composeNotificationData:(id)data;
- (void)collaborationStateWillChange:(id)change;
- (void)dealloc;
@end

@implementation PDHandoutCompletedNotificationTrigger

- (PDHandoutCompletedNotificationTrigger)initWithDatabase:(id)database
{
  v6.receiver = self;
  v6.super_class = PDHandoutCompletedNotificationTrigger;
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
  v4.super_class = PDHandoutCompletedNotificationTrigger;
  [(PDHandoutCompletedNotificationTrigger *)&v4 dealloc];
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
    v13 = 136315394;
    v14 = "/Library/Caches/com.apple.xbs/Sources/ClassKitSwift/progressd/UserNotifications/PDHandoutCompletedNotificationTrigger.m";
    v15 = 2080;
    v16 = "[PDHandoutCompletedNotificationTrigger collaborationStateWillChange:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s.%s.", &v13, 0x16u);
  }

  object = [changeCopy object];
  if (sub_100050844(object))
  {
    v9 = objc_opt_class();
    objectID = [v6 objectID];
    v11 = [object select:v9 identity:objectID];

    if ([(PDHandoutCompletedNotificationTrigger *)self shouldTriggerNotificationFromCurrentState:v11 toNextState:v6])
    {
      v12 = [(PDHandoutCompletedNotificationTrigger *)self composeNotificationData:changeCopy];
      [(PDUserNotificationTrigger *)self fireTriggerWithNotificationData:v12];
    }
  }
}

- (id)composeNotificationData:(id)data
{
  dataCopy = data;
  object = [dataCopy object];
  userInfo = [dataCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:@"newEntity"];

  v7 = objc_opt_class();
  v46 = v6;
  parentObjectID = [v6 parentObjectID];
  v9 = [object select:v7 identity:parentObjectID];

  objectID = [v9 objectID];
  v48 = v9;
  title = [v9 title];
  v12 = objc_opt_class();
  v59 = objectID;
  v13 = [NSArray arrayWithObjects:&v59 count:1];
  v14 = [object select:v12 where:@"parentObjectID = ?" bindings:v13];

  CLSInitLog();
  v15 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    classID = [v14 classID];
    *buf = 136316162;
    v50 = "/Library/Caches/com.apple.xbs/Sources/ClassKitSwift/progressd/UserNotifications/PDHandoutCompletedNotificationTrigger.m";
    v51 = 2080;
    v52 = "[PDHandoutCompletedNotificationTrigger composeNotificationData:]";
    v53 = 2112;
    v54 = classID;
    v55 = 2112;
    v56 = objectID;
    v57 = 2112;
    v58 = title;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s.%s. Class: %@ HandoutID: %@ HandoutTitle: %@", buf, 0x34u);
  }

  newValue = objectID;
  v18 = objc_opt_class();
  classID2 = [v14 classID];
  v47 = object;
  v20 = [object select:v18 identity:classID2];

  v43 = v20;
  displayName = [v20 displayName];
  v22 = displayName;
  v23 = @" ";
  if (displayName)
  {
    v23 = displayName;
  }

  v24 = v23;

  if (title)
  {
    v25 = title;
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
  classID3 = [v14 classID];
  v39 = classID3;
  if (v36)
  {
    objc_setProperty_nonatomic_copy(v36, v38, classID3, 32);

    v40 = newValue;
    objc_setProperty_nonatomic_copy(v36, v41, newValue, 24);
  }

  else
  {

    v40 = newValue;
  }

  return v36;
}

- (BOOL)containsiCloudReport:(id)report
{
  reportCopy = report;
  database = [(PDUserNotificationTrigger *)self database];
  v6 = objc_opt_class();
  objectID = [reportCopy objectID];

  v11[2] = objectID;
  v8 = [NSArray arrayWithObjects:v11 count:3];
  v9 = [database count:v6 where:@"type IN(? bindings:{?) AND parentObjectID = ?", v8}];

  return v9 > 0;
}

- (BOOL)shouldTriggerNotificationFromCurrentState:(id)state toNextState:(id)nextState
{
  result = 0;
  if (state)
  {
    if (nextState)
    {
      stateCopy = state;
      nextStateCopy = nextState;
      LOBYTE(stateCopy) = [stateCopy isCompletedHandout];
      isCompletedHandout = [nextStateCopy isCompletedHandout];

      return (stateCopy ^ 1) & isCompletedHandout;
    }
  }

  return result;
}

@end