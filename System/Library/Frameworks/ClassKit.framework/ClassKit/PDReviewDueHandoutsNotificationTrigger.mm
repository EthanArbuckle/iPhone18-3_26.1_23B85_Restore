@interface PDReviewDueHandoutsNotificationTrigger
- (id)defaultRecurringTriggerDateComponents;
- (id)dueYesterdayUserNotificationDataFromHandouts:(id)handouts;
- (id)fetchHandoutsDueYesterdayFromDate:(id)date;
- (id)nextTriggerDateFromReferenceDate:(id)date;
- (void)checkForTriggerAtDate:(id)date;
@end

@implementation PDReviewDueHandoutsNotificationTrigger

- (id)nextTriggerDateFromReferenceDate:(id)date
{
  dateCopy = date;
  calendar = [(PDUserNotificationTimeBasedTrigger *)self calendar];
  recurringTriggerDateComponents = [(PDUserNotificationTimeBasedTrigger *)self recurringTriggerDateComponents];
  v7 = [calendar nextDateAfterDate:dateCopy matchingHour:objc_msgSend(recurringTriggerDateComponents minute:"hour") second:0 options:{0, 1024}];

  return v7;
}

- (id)defaultRecurringTriggerDateComponents
{
  if (qword_10024DAE8 != -1)
  {
    dispatch_once(&qword_10024DAE8, &stru_100205348);
  }

  v3 = qword_10024DAF0;

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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "PDReviewDueHandoutsNotificationTrigger.checkForTriggerAtDate %@", &v22, 0xCu);
  }

  calendar = [(PDUserNotificationTimeBasedTrigger *)self calendar];
  v7 = [calendar components:32 fromDate:dateCopy];
  hour = [v7 hour];

  recurringTriggerDateComponents = [(PDUserNotificationTimeBasedTrigger *)self recurringTriggerDateComponents];
  hour2 = [recurringTriggerDateComponents hour];

  if (hour >= hour2)
  {
    database = [(PDUserNotificationTrigger *)self database];
    v12 = sub_10016A65C(database, @"reviewDueHandoutsLastTriggerDate");

    CLSInitLog();
    v13 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      v22 = 138543362;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "PDReviewDueHandoutsNotificationTrigger.checkForTriggerAtDate. Last trigger time: %{public}@", &v22, 0xCu);
    }

    if (!v12 || (-[PDUserNotificationTimeBasedTrigger calendar](self, "calendar"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 compareDate:v12 toDate:dateCopy toUnitGranularity:16], v14, v15))
    {
      database2 = [(PDUserNotificationTrigger *)self database];
      sub_10016A5AC(database2, dateCopy, @"reviewDueHandoutsLastTriggerDate");

      v17 = [(PDReviewDueHandoutsNotificationTrigger *)self fetchHandoutsDueYesterdayFromDate:dateCopy];
      CLSInitLog();
      v18 = CLSLogNotifications;
      if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
      {
        v19 = v18;
        v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 count]);
        v22 = 138543362;
        v23 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "PDReviewDueHandoutsNotificationTrigger.checkForTriggerAtDate. Found %{public}@ handouts due yesterday", &v22, 0xCu);
      }

      v21 = [(PDReviewDueHandoutsNotificationTrigger *)self dueYesterdayUserNotificationDataFromHandouts:v17];
      [(PDUserNotificationTrigger *)self fireTriggerWithNotificationData:v21];
    }
  }
}

- (id)fetchHandoutsDueYesterdayFromDate:(id)date
{
  dateCopy = date;
  v5 = objc_alloc_init(NSDateComponents);
  [v5 setHour:0];
  [v5 setMinute:0];
  [v5 setSecond:0];
  calendar = [(PDUserNotificationTimeBasedTrigger *)self calendar];
  v7 = [calendar nextDateAfterDate:dateCopy matchingHour:0 minute:0 second:0 options:1028];

  calendar2 = [(PDUserNotificationTimeBasedTrigger *)self calendar];
  v9 = [calendar2 nextDateAfterDate:v7 matchingHour:0 minute:0 second:0 options:1028];

  CLSInitLog();
  v10 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v21 = v9;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "PDReviewDueHandoutsNotificationTrigger.fetchHandoutsDueYesterdayFromDate. Query handouts due between %@ and %@", buf, 0x16u);
  }

  v19[0] = v9;
  v19[1] = v7;
  v19[2] = &off_10021B750;
  v11 = [NSArray arrayWithObjects:v19 count:3];
  v12 = objc_opt_new();
  database = [(PDUserNotificationTrigger *)self database];
  v14 = objc_opt_class();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000FC1D8;
  v17[3] = &unk_100205370;
  v15 = v12;
  v18 = v15;
  [database selectAll:v14 where:@"dueDate NOT NULL AND dueDate >= ? AND dueDate < ? AND state = ? AND reviewed = 0" bindings:v11 block:v17];

  return v15;
}

- (id)dueYesterdayUserNotificationDataFromHandouts:(id)handouts
{
  handoutsCopy = handouts;
  database = [(PDUserNotificationTrigger *)self database];
  v6 = &sqlite3_bind_blob_ptr;
  v7 = &CLSLogAsset_ptr;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"NOTIFICATION_TEACHER_REVIEW_HANDOUT_TITLE" value:&stru_100206880 table:@"ClassKit"];

  if ([handoutsCopy count] == 1)
  {
    firstObject = [handoutsCopy firstObject];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"NOTIFICATION_TEACHER_REVIEW_HANDOUT_MESSAGE_FORMAT" value:&stru_100206880 table:@"ClassKit"];
    title = [firstObject title];
    v14 = [NSString stringWithFormat:v12, title];

    v15 = sub_10012F04C([PDUserNotificationData alloc], 3, v9, v14);
    objectID = [firstObject objectID];
    if (v15)
    {
      objc_setProperty_nonatomic_copy(v15, v16, objectID, 24);
    }

    v19 = [(PDUserNotificationTrigger *)self classIDFromHandout:firstObject];
    if (v15)
    {
      objc_setProperty_nonatomic_copy(v15, v18, v19, 32);
    }
  }

  else if ([handoutsCopy count] < 2)
  {
    v15 = 0;
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v20 = handoutsCopy;
    v21 = [v20 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v21)
    {
      v22 = v21;
      v35 = v9;
      v23 = 0;
      v24 = 0;
      v25 = *v37;
      while (2)
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v37 != v25)
          {
            objc_enumerationMutation(v20);
          }

          objectID2 = [*(*(&v36 + 1) + 8 * i) objectID];
          v28 = sub_100176270(database, objectID2);

          v23 |= !v28;
          v24 |= v28;
          if (v23 & 1) != 0 && (v24)
          {

            v29 = @"NOTIFICATION_TEACHER_REVIEW_HANDOUTS_AND_ASSESSMENTS_MESSAGE_FORMAT";
            v9 = v35;
            v6 = &sqlite3_bind_blob_ptr;
            v7 = &CLSLogAsset_ptr;
            goto LABEL_23;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }

      v9 = v35;
      v6 = &sqlite3_bind_blob_ptr;
      v7 = &CLSLogAsset_ptr;
      if (v24)
      {
        v29 = @"NOTIFICATION_TEACHER_REVIEW_ASSESSMENTS_MESSAGE_FORMAT";
        goto LABEL_23;
      }
    }

    else
    {
    }

    v29 = @"NOTIFICATION_TEACHER_REVIEW_HANDOUTS_MESSAGE_FORMAT";
LABEL_23:
    v30 = v7[99];
    v31 = [v6[450] bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:v29 value:&stru_100206880 table:@"ClassKit"];
    v33 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v32, [v20 count]);

    v15 = sub_10012F04C([PDUserNotificationData alloc], 3, v9, v33);
  }

  return v15;
}

@end