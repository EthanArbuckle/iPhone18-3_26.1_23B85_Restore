@interface PDHandoutDueSoonNotificationTrigger
- (id)defaultRecurringTriggerDateComponents;
- (id)dueTomorrowUserNotificationDataFromHandouts:(id)handouts;
- (id)fetchHandoutsDueNextDayFromDate:(id)date;
- (id)nextTriggerDateFromReferenceDate:(id)date;
- (void)checkForTriggerAtDate:(id)date;
@end

@implementation PDHandoutDueSoonNotificationTrigger

- (id)nextTriggerDateFromReferenceDate:(id)date
{
  dateCopy = date;
  calendar = [(PDUserNotificationTimeBasedTrigger *)self calendar];
  recurringTriggerDateComponents = [(PDUserNotificationTimeBasedTrigger *)self recurringTriggerDateComponents];
  v7 = [calendar nextDateAfterDate:dateCopy matchingComponents:recurringTriggerDateComponents options:1024];

  return v7;
}

- (id)defaultRecurringTriggerDateComponents
{
  if (qword_10024D990 != -1)
  {
    dispatch_once(&qword_10024D990, &stru_100203D70);
  }

  v3 = qword_10024D998;

  return v3;
}

- (void)checkForTriggerAtDate:(id)date
{
  dateCopy = date;
  CLSInitLog();
  v5 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v22 = 138412290;
    v23 = dateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "PDHandoutDueSoonNotificationTrigger.checkForTriggerAtDate %@", &v22, 0xCu);
  }

  calendar = [(PDUserNotificationTimeBasedTrigger *)self calendar];
  v7 = [calendar components:32 fromDate:dateCopy];
  hour = [v7 hour];

  recurringTriggerDateComponents = [(PDUserNotificationTimeBasedTrigger *)self recurringTriggerDateComponents];
  hour2 = [recurringTriggerDateComponents hour];

  if (hour >= hour2)
  {
    database = [(PDUserNotificationTrigger *)self database];
    v12 = sub_10016A65C(database, @"handoutDueSoonLastTriggerDate");

    CLSInitLog();
    v13 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      v22 = 138543362;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "PDHandoutDueSoonNotificationTrigger.checkForTriggerAtDate. Last trigger time: %{public}@", &v22, 0xCu);
    }

    if (!v12 || (-[PDUserNotificationTimeBasedTrigger calendar](self, "calendar"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 compareDate:v12 toDate:dateCopy toUnitGranularity:16], v14, v15))
    {
      database2 = [(PDUserNotificationTrigger *)self database];
      sub_10016A5AC(database2, dateCopy, @"handoutDueSoonLastTriggerDate");

      v17 = [(PDHandoutDueSoonNotificationTrigger *)self fetchHandoutsDueNextDayFromDate:dateCopy];
      CLSInitLog();
      v18 = CLSLogNotifications;
      if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
      {
        v19 = v18;
        v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 count]);
        v22 = 138543362;
        v23 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "PDHandoutDueSoonNotificationTrigger.checkForTriggerAtDate. Found %{public}@ handouts due soon", &v22, 0xCu);
      }

      v21 = [(PDHandoutDueSoonNotificationTrigger *)self dueTomorrowUserNotificationDataFromHandouts:v17];
      [(PDUserNotificationTrigger *)self fireTriggerWithNotificationData:v21];
    }
  }
}

- (id)fetchHandoutsDueNextDayFromDate:(id)date
{
  dateCopy = date;
  v5 = objc_alloc_init(NSDateComponents);
  [v5 setHour:0];
  [v5 setMinute:0];
  [v5 setSecond:0];
  calendar = [(PDUserNotificationTimeBasedTrigger *)self calendar];
  v7 = [calendar nextDateAfterDate:dateCopy matchingHour:0 minute:0 second:0 options:1024];

  calendar2 = [(PDUserNotificationTimeBasedTrigger *)self calendar];
  v9 = [calendar2 nextDateAfterDate:v7 matchingHour:0 minute:0 second:0 options:1024];

  CLSInitLog();
  v10 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v23 = v7;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "PDHandoutDueSoonNotificationTrigger.fetchHandoutsDueNextDayFromDate. Query handouts due between %@ and %@", buf, 0x16u);
  }

  v21[0] = v7;
  v21[1] = v9;
  v11 = [NSArray arrayWithObjects:v21 count:2];
  v12 = objc_opt_new();
  database = [(PDUserNotificationTrigger *)self database];
  v14 = objc_opt_class();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000824F0;
  v19[3] = &unk_100203D98;
  v19[4] = self;
  v15 = v12;
  v20 = v15;
  [database selectAll:v14 where:@"dueDate NOT NULL AND dueDate >= ? AND dueDate < ?" bindings:v11 block:v19];

  v16 = v20;
  v17 = v15;

  return v15;
}

- (id)dueTomorrowUserNotificationDataFromHandouts:(id)handouts
{
  handoutsCopy = handouts;
  v5 = [handoutsCopy count];
  database = [(PDUserNotificationTrigger *)self database];
  if (v5)
  {
    v40 = handoutsCopy;
    if (v5 == 1)
    {
      firstObject = [handoutsCopy firstObject];
      objectID = [firstObject objectID];
      v9 = sub_100176270(database, objectID);

      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = v10;
      if (v9)
      {
        v12 = @"NOTIFICATION_STUDENT_SINGLE_ASSESSMENT_DUE_TOMORROW_TITLE";
      }

      else
      {
        v12 = @"NOTIFICATION_STUDENT_SINGLE_HANDOUT_DUE_TOMORROW_TITLE";
      }

      if (v9)
      {
        v13 = @"NOTIFICATION_STUDENT_ASSESSMENT_DUE_TOMORROW_MESSAGE_FORMAT";
      }

      else
      {
        v13 = @"NOTIFICATION_STUDENT_HANDOUT_DUE_TOMORROW_MESSAGE_FORMAT";
      }

      v14 = [v10 localizedStringForKey:v12 value:&stru_100206880 table:@"ClassKit"];

      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:v13 value:&stru_100206880 table:@"ClassKit"];
      title = [firstObject title];
      v18 = [NSString stringWithFormat:v16, title];

      v19 = sub_10012F04C([PDUserNotificationData alloc], 1, v14, v18);
      objectID2 = [firstObject objectID];
      if (v19)
      {
        objc_setProperty_nonatomic_copy(v19, v20, objectID2, 24);
      }

      v23 = [(PDUserNotificationTrigger *)self classIDFromHandout:firstObject];
      if (v19)
      {
        objc_setProperty_nonatomic_copy(v19, v22, v23, 32);
      }
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v24 = handoutsCopy;
      v25 = [v24 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = 0;
        v28 = 0;
        v29 = *v42;
        while (2)
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v42 != v29)
            {
              objc_enumerationMutation(v24);
            }

            objectID3 = [*(*(&v41 + 1) + 8 * i) objectID];
            v32 = sub_100176270(database, objectID3);

            v27 |= v32;
            v28 |= !v32;
            if (v28 & 1) != 0 && (v27)
            {

              v33 = @"NOTIFICATION_STUDENT_ASSESSMENTS_AND_ASSIGNMENTS_DUE_TOMORROW_MESSAGE_FORMAT";
              v34 = @"NOTIFICATION_STUDENT_MULTIPLE_ASSESSMENTS_AND_ASSIGNMENTS_DUE_TOMORROW_TITLE";
              goto LABEL_29;
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }

        if (v27)
        {
          v33 = @"NOTIFICATION_STUDENT_ASSESSMENTS_DUE_TOMORROW_MESSAGE_FORMAT";
          v34 = @"NOTIFICATION_STUDENT_MULTIPLE_ASSESSMENTS_DUE_TOMORROW_TITLE";
          goto LABEL_29;
        }
      }

      else
      {
      }

      v33 = @"NOTIFICATION_STUDENT_HANDOUTS_DUE_TOMORROW_MESSAGE_FORMAT";
      v34 = @"NOTIFICATION_STUDENT_MULTIPLE_HANDOUTS_DUE_TOMORROW_TITLE";
LABEL_29:
      v35 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = [v35 localizedStringForKey:v34 value:&stru_100206880 table:@"ClassKit"];

      v36 = [NSBundle bundleForClass:objc_opt_class()];
      v37 = [v36 localizedStringForKey:v33 value:&stru_100206880 table:@"ClassKit"];
      v38 = [NSString stringWithFormat:v37, v5];

      v19 = sub_10012F04C([PDUserNotificationData alloc], 1, v14, v38);
    }

    handoutsCopy = v40;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end