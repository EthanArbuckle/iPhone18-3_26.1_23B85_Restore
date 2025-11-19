@interface PDHandoutPastDueSummaryNotificationTrigger
- (id)defaultRecurringTriggerDateComponents;
- (id)fetchActiveHandoutsPastDueFromDate:(id)a3;
- (id)nextTriggerDateFromReferenceDate:(id)a3;
- (id)pastDueUserNotificationDataFromHandouts:(id)a3;
- (void)checkForTriggerAtDate:(id)a3;
@end

@implementation PDHandoutPastDueSummaryNotificationTrigger

- (id)nextTriggerDateFromReferenceDate:(id)a3
{
  v4 = a3;
  v5 = [(PDUserNotificationTimeBasedTrigger *)self calendar];
  v6 = [(PDUserNotificationTimeBasedTrigger *)self recurringTriggerDateComponents];
  v7 = [v5 nextDateAfterDate:v4 matchingComponents:v6 options:1024];

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

- (void)checkForTriggerAtDate:(id)a3
{
  v4 = a3;
  CLSInitLog();
  v5 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v23 = 138412290;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "PDHandoutPastDueSummaryNotificationTrigger.checkForTriggerAtDate %@", &v23, 0xCu);
  }

  v6 = [(PDUserNotificationTimeBasedTrigger *)self calendar];
  v7 = [v6 components:544 fromDate:v4];

  v8 = [v7 hour];
  v9 = [v7 weekday];
  v10 = [(PDUserNotificationTimeBasedTrigger *)self recurringTriggerDateComponents];
  if (v9 != [v10 weekday])
  {
    goto LABEL_12;
  }

  v11 = [(PDUserNotificationTimeBasedTrigger *)self recurringTriggerDateComponents];
  v12 = [v11 hour];

  if (v8 >= v12)
  {
    v13 = [(PDUserNotificationTrigger *)self database];
    v10 = sub_10016A65C(v13, @"handoutPastDueSummaryLastTriggerDate");

    CLSInitLog();
    v14 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      v23 = 138543362;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "PDHandoutPastDueSummaryNotificationTrigger.checkForTriggerAtDate. Last trigger time: %{public}@", &v23, 0xCu);
    }

    if (!v10 || (-[PDUserNotificationTimeBasedTrigger calendar](self, "calendar"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 compareDate:v10 toDate:v4 toUnitGranularity:16], v15, v16))
    {
      v17 = [(PDUserNotificationTrigger *)self database];
      sub_10016A5AC(v17, v4, @"handoutPastDueSummaryLastTriggerDate");

      v18 = [(PDHandoutPastDueSummaryNotificationTrigger *)self fetchActiveHandoutsPastDueFromDate:v4];
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

- (id)fetchActiveHandoutsPastDueFromDate:(id)a3
{
  v4 = a3;
  CLSInitLog();
  v5 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "PDHandoutPastDueSummaryNotificationTrigger.fetchActiveHandoutsPastDueFromDate. Query handouts due before %@", &v11, 0xCu);
  }

  v6 = [(PDUserNotificationTrigger *)self database];
  v7 = sub_100175F4C(v6, v4);

  v8 = [(PDUserNotificationTrigger *)self database];
  v9 = sub_10016091C(v8, v7);

  return v9;
}

- (id)pastDueUserNotificationDataFromHandouts:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  v6 = [(PDUserNotificationTrigger *)self database];
  if (v5)
  {
    v41 = v4;
    if (v5 == 1)
    {
      v7 = [v4 firstObject];
      v8 = [v7 objectID];
      v9 = sub_100176270(v6, v8);

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
      v17 = [v7 title];
      v18 = [NSString stringWithFormat:v16, v17];

      v19 = sub_10012F04C([PDUserNotificationData alloc], 2, v14, v18);
      v21 = [v7 objectID];
      if (v19)
      {
        objc_setProperty_nonatomic_copy(v19, v20, v21, 24);
      }

      v23 = [(PDUserNotificationTrigger *)self classIDFromHandout:v7];
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
      v24 = v4;
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

            v31 = [*(*(&v42 + 1) + 8 * i) objectID];
            v32 = sub_100176270(v6, v31);

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

    v4 = v41;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end