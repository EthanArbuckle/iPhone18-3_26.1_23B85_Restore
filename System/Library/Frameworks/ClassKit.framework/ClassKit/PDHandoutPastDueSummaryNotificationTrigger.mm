@interface PDHandoutPastDueSummaryNotificationTrigger
- (id)defaultRecurringTriggerDateComponents;
- (id)fetchActiveHandoutsPastDueFromDate:(id)date;
- (id)nextTriggerDateFromReferenceDate:(id)date;
- (id)pastDueUserNotificationDataFromHandouts:(id)handouts;
- (void)checkForTriggerAtDate:(id)date;
@end

@implementation PDHandoutPastDueSummaryNotificationTrigger

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
  if (qword_10024D950 != -1)
  {
    dispatch_once(&qword_10024D950, &stru_100203798);
  }

  v3 = qword_10024D958;

  return v3;
}

- (void)checkForTriggerAtDate:(id)date
{
  dateCopy = date;
  CLSInitLog();
  v5 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v23 = 138412290;
    v24 = dateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "PDHandoutPastDueSummaryNotificationTrigger.checkForTriggerAtDate %@", &v23, 0xCu);
  }

  calendar = [(PDUserNotificationTimeBasedTrigger *)self calendar];
  v7 = [calendar components:544 fromDate:dateCopy];

  hour = [v7 hour];
  weekday = [v7 weekday];
  recurringTriggerDateComponents = [(PDUserNotificationTimeBasedTrigger *)self recurringTriggerDateComponents];
  if (weekday != [recurringTriggerDateComponents weekday])
  {
    goto LABEL_12;
  }

  recurringTriggerDateComponents2 = [(PDUserNotificationTimeBasedTrigger *)self recurringTriggerDateComponents];
  hour2 = [recurringTriggerDateComponents2 hour];

  if (hour >= hour2)
  {
    database = [(PDUserNotificationTrigger *)self database];
    recurringTriggerDateComponents = sub_10016A65C(database, @"handoutPastDueSummaryLastTriggerDate");

    CLSInitLog();
    v14 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      v23 = 138543362;
      v24 = recurringTriggerDateComponents;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "PDHandoutPastDueSummaryNotificationTrigger.checkForTriggerAtDate. Last trigger time: %{public}@", &v23, 0xCu);
    }

    if (!recurringTriggerDateComponents || (-[PDUserNotificationTimeBasedTrigger calendar](self, "calendar"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 compareDate:recurringTriggerDateComponents toDate:dateCopy toUnitGranularity:16], v15, v16))
    {
      database2 = [(PDUserNotificationTrigger *)self database];
      sub_10016A5AC(database2, dateCopy, @"handoutPastDueSummaryLastTriggerDate");

      v18 = [(PDHandoutPastDueSummaryNotificationTrigger *)self fetchActiveHandoutsPastDueFromDate:dateCopy];
      CLSInitLog();
      v19 = CLSLogNotifications;
      if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
      {
        v20 = v19;
        v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v18 count]);
        v23 = 138543362;
        v24 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "PDHandoutPastDueSummaryNotificationTrigger.checkForTriggerAtDate. Found %{public}@ handouts past due", &v23, 0xCu);
      }

      v22 = [(PDHandoutPastDueSummaryNotificationTrigger *)self pastDueUserNotificationDataFromHandouts:v18];
      [(PDUserNotificationTrigger *)self fireTriggerWithNotificationData:v22];
    }

LABEL_12:
  }
}

- (id)fetchActiveHandoutsPastDueFromDate:(id)date
{
  dateCopy = date;
  CLSInitLog();
  v5 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = dateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "PDHandoutPastDueSummaryNotificationTrigger.fetchActiveHandoutsPastDueFromDate. Query handouts due before %@", &v11, 0xCu);
  }

  database = [(PDUserNotificationTrigger *)self database];
  v7 = sub_100175F4C(database, dateCopy);

  database2 = [(PDUserNotificationTrigger *)self database];
  v9 = sub_10016091C(database2, v7);

  return v9;
}

- (id)pastDueUserNotificationDataFromHandouts:(id)handouts
{
  handoutsCopy = handouts;
  v5 = [handoutsCopy count];
  database = [(PDUserNotificationTrigger *)self database];
  if (v5)
  {
    v41 = handoutsCopy;
    if (v5 == 1)
    {
      firstObject = [handoutsCopy firstObject];
      objectID = [firstObject objectID];
      v9 = sub_100176270(database, objectID);

      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = v10;
      if (v9)
      {
        v12 = @"NOTIFICATION_STUDENT_SINGLE_ASSESSMENT_PAST_DUE_TITLE";
      }

      else
      {
        v12 = @"NOTIFICATION_STUDENT_SINGLE_HANDOUT_PAST_DUE_TITLE";
      }

      if (v9)
      {
        v13 = @"NOTIFICATION_STUDENT_ASSESSMENT_PAST_DUE_MESSAGE_FORMAT";
      }

      else
      {
        v13 = @"NOTIFICATION_STUDENT_HANDOUT_PAST_DUE_MESSAGE_FORMAT";
      }

      v14 = [v10 localizedStringForKey:v12 value:&stru_100206880 table:@"ClassKit"];

      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:v13 value:&stru_100206880 table:@"ClassKit"];
      title = [firstObject title];
      v18 = [NSString stringWithFormat:v16, title];

      v19 = sub_10012F04C([PDUserNotificationData alloc], 2, v14, v18);
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
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v24 = handoutsCopy;
      v25 = [v24 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = 0;
        v28 = 0;
        v29 = *v43;
        while (2)
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v43 != v29)
            {
              objc_enumerationMutation(v24);
            }

            objectID3 = [*(*(&v42 + 1) + 8 * i) objectID];
            v32 = sub_100176270(database, objectID3);

            v27 |= v32;
            v28 |= !v32;
            if (v28 & 1) != 0 && (v27)
            {

              v33 = @"NOTIFICATION_STUDENT_ASSESSMENTS_AND_ASSIGNMENTS_PAST_DUE_MESSAGE_FORMAT";
              v34 = @"NOTIFICATION_STUDENT_MULTIPLE_ASSESSMENTS_AND_ASSIGNMENTS_PAST_DUE_TITLE";
              goto LABEL_29;
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v42 objects:v46 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }

        if (v27)
        {
          v33 = @"NOTIFICATION_STUDENT_ASSESSMENTS_PAST_DUE_MESSAGE_FORMAT";
          v34 = @"NOTIFICATION_STUDENT_MULTIPLE_ASSESSMENTS_PAST_DUE_TITLE";
          goto LABEL_29;
        }
      }

      else
      {
      }

      v33 = @"NOTIFICATION_STUDENT_HANDOUTS_PAST_DUE_MESSAGE_FORMAT";
      v34 = @"NOTIFICATION_STUDENT_MULTIPLE_HANDOUTS_PAST_DUE_TITLE";
LABEL_29:
      v35 = [NSBundle bundleForClass:objc_opt_class()];
      v36 = [v35 localizedStringForKey:v34 value:&stru_100206880 table:@"ClassKit"];

      v37 = [NSBundle bundleForClass:objc_opt_class()];
      v38 = [v37 localizedStringForKey:v33 value:&stru_100206880 table:@"ClassKit"];
      v39 = [NSString stringWithFormat:v38, v5];

      v19 = sub_10012F04C([PDUserNotificationData alloc], 2, v36, v39);
    }

    handoutsCopy = v41;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end