@interface PDReviewDueHandoutsNotificationTrigger
- (id)defaultRecurringTriggerDateComponents;
- (id)dueYesterdayUserNotificationDataFromHandouts:(id)a3;
- (id)fetchHandoutsDueYesterdayFromDate:(id)a3;
- (id)nextTriggerDateFromReferenceDate:(id)a3;
- (void)checkForTriggerAtDate:(id)a3;
@end

@implementation PDReviewDueHandoutsNotificationTrigger

- (id)nextTriggerDateFromReferenceDate:(id)a3
{
  v4 = a3;
  v5 = [(PDUserNotificationTimeBasedTrigger *)self calendar];
  v6 = [(PDUserNotificationTimeBasedTrigger *)self recurringTriggerDateComponents];
  v7 = [v5 nextDateAfterDate:v4 matchingHour:objc_msgSend(v6 minute:"hour") second:0 options:{0, 1024}];

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

- (void)checkForTriggerAtDate:(id)a3
{
  v4 = a3;
  CLSInitLog();
  v5 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v22 = 138412290;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "PDReviewDueHandoutsNotificationTrigger.checkForTriggerAtDate %@", &v22, 0xCu);
  }

  v6 = [(PDUserNotificationTimeBasedTrigger *)self calendar];
  v7 = [v6 components:32 fromDate:v4];
  v8 = [v7 hour];

  v9 = [(PDUserNotificationTimeBasedTrigger *)self recurringTriggerDateComponents];
  v10 = [v9 hour];

  if (v8 >= v10)
  {
    v11 = [(PDUserNotificationTrigger *)self database];
    v12 = sub_10016A65C(v11, @"reviewDueHandoutsLastTriggerDate");

    CLSInitLog();
    v13 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      v22 = 138543362;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "PDReviewDueHandoutsNotificationTrigger.checkForTriggerAtDate. Last trigger time: %{public}@", &v22, 0xCu);
    }

    if (!v12 || (-[PDUserNotificationTimeBasedTrigger calendar](self, "calendar"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 compareDate:v12 toDate:v4 toUnitGranularity:16], v14, v15))
    {
      v16 = [(PDUserNotificationTrigger *)self database];
      sub_10016A5AC(v16, v4, @"reviewDueHandoutsLastTriggerDate");

      v17 = [(PDReviewDueHandoutsNotificationTrigger *)self fetchHandoutsDueYesterdayFromDate:v4];
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

- (id)fetchHandoutsDueYesterdayFromDate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSDateComponents);
  [v5 setHour:0];
  [v5 setMinute:0];
  [v5 setSecond:0];
  v6 = [(PDUserNotificationTimeBasedTrigger *)self calendar];
  v7 = [v6 nextDateAfterDate:v4 matchingHour:0 minute:0 second:0 options:1028];

  v8 = [(PDUserNotificationTimeBasedTrigger *)self calendar];
  v9 = [v8 nextDateAfterDate:v7 matchingHour:0 minute:0 second:0 options:1028];

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
  v13 = [(PDUserNotificationTrigger *)self database];
  v14 = objc_opt_class();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000FC1D8;
  v17[3] = &unk_100205370;
  v15 = v12;
  v18 = v15;
  [v13 selectAll:v14 where:@"dueDate NOT NULL AND dueDate >= ? AND dueDate < ? AND state = ? AND reviewed = 0" bindings:v11 block:v17];

  return v15;
}

- (id)dueYesterdayUserNotificationDataFromHandouts:(id)a3
{
  v4 = a3;
  v5 = [(PDUserNotificationTrigger *)self database];
  v6 = &sqlite3_bind_blob_ptr;
  v7 = &CLSLogAsset_ptr;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"NOTIFICATION_TEACHER_REVIEW_HANDOUT_TITLE" value:&stru_100206880 table:@"ClassKit"];

  if ([v4 count] == 1)
  {
    v10 = [v4 firstObject];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"NOTIFICATION_TEACHER_REVIEW_HANDOUT_MESSAGE_FORMAT" value:&stru_100206880 table:@"ClassKit"];
    v13 = [v10 title];
    v14 = [NSString stringWithFormat:v12, v13];

    v15 = sub_10012F04C([PDUserNotificationData alloc], 3, v9, v14);
    v17 = [v10 objectID];
    if (v15)
    {
      objc_setProperty_nonatomic_copy(v15, v16, v17, 24);
    }

    v19 = [(PDUserNotificationTrigger *)self classIDFromHandout:v10];
    if (v15)
    {
      objc_setProperty_nonatomic_copy(v15, v18, v19, 32);
    }
  }

  else if ([v4 count] < 2)
  {
    v15 = 0;
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v20 = v4;
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

          v27 = [*(*(&v36 + 1) + 8 * i) objectID];
          v28 = sub_100176270(v5, v27);

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