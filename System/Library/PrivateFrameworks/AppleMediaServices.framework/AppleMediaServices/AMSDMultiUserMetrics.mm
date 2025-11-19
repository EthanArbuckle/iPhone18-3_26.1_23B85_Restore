@interface AMSDMultiUserMetrics
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)_eventWithTopic:(id)a3;
+ (id)_metricsInstanceWithBag:(id)a3;
+ (id)createBagForSubProfile;
- (AMSDMultiUserMetrics)init;
- (AMSDMultiUserMetrics)initWithBag:(id)a3;
- (BOOL)_isTopicDefined:(id)a3;
- (id)_clampTimeStampValue:(id)a3;
- (id)_durationSinceDate:(id)a3;
- (id)_enqueueEventWithTopic:(id)a3 properties:(id)a4;
- (id)_enqueueEvents:(id)a3;
- (id)_enqueueProperties:(id)a3 account:(id)a4;
- (id)_eventTime;
- (id)_topicFromBag;
- (id)_userIdForBagNamespace:(id)a3;
- (id)enqueueCloudKitFetchBeganEvent;
- (id)enqueueCloudKitFetchFinishEventWithError:(id)a3;
- (id)enqueueCloudKitSaveReceivedEvent;
- (id)enqueueCloudKitSaveRecordEvent;
- (id)enqueueCloudKitSaveRecordFinishEventWithError:(id)a3;
- (id)enqueueGenerateMultiUserTokenBeginEvent;
- (id)enqueueGenerateMultiUserTokenFinishEventWithError:(id)a3;
- (id)enqueueHomeKitChangedReceivedEvent;
- (id)enqueueHomeKitRepairRequestCompletedFinishEventWithError:(id)a3;
- (id)enqueueHomeKitRepairRequestReceivedEvent;
- (id)enqueueHomeKitRepairRequestSentEventForAccount:(id)a3;
- (id)enqueueMultiUserAuthenticationTokenFetchBeginEventForAccount:(id)a3;
- (id)enqueueMultiUserAuthenticationTokenFetchFinishEventForAccount:(id)a3 error:(id)a4;
- (id)enqueueMultiUserRefreshBeginEventWithOptions:(id)a3;
- (void)flushEvents;
- (void)homeKitRepairRequestUpdateTokenBegin;
@end

@implementation AMSDMultiUserMetrics

- (AMSDMultiUserMetrics)init
{
  v3 = [objc_opt_class() createBagForSubProfile];
  v4 = [(AMSDMultiUserMetrics *)self initWithBag:v3];

  return v4;
}

- (AMSDMultiUserMetrics)initWithBag:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = AMSDMultiUserMetrics;
  v6 = [(AMSDMultiUserMetrics *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, a3);
    v8 = [AMSDMultiUserMetrics _metricsInstanceWithBag:v7->_bag];
    metrics = v7->_metrics;
    v7->_metrics = v8;

    v10 = +[NSUUID UUID];
    v11 = [v10 UUIDString];
    metricsIdentifier = v7->_metricsIdentifier;
    v7->_metricsIdentifier = v11;
  }

  return v7;
}

- (void)flushEvents
{
  v3 = [(AMSDMultiUserMetrics *)self metrics];
  v4 = [v3 flush];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006B2D0;
  v5[3] = &unk_1002B1318;
  v5[4] = self;
  [v4 addFinishBlock:v5];
}

- (id)enqueueCloudKitFetchBeganEvent
{
  v3 = +[NSDate date];
  [(AMSDMultiUserMetrics *)self setCloudKitFetchBeginDate:v3];

  v7 = @"eventType";
  v8 = @"MultiUserTokenFetchCloudKitBegin";
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [(AMSDMultiUserMetrics *)self _enqueueProperties:v4];

  return v5;
}

- (id)enqueueCloudKitFetchFinishEventWithError:(id)a3
{
  v4 = a3;
  v12 = @"duration";
  v5 = [(AMSDMultiUserMetrics *)self cloudKitFetchBeginDate];
  v6 = [(AMSDMultiUserMetrics *)self _durationSinceDate:v5];
  v13 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [NSMutableDictionary dictionaryWithDictionary:v7];

  if (v4)
  {
    [v8 setObject:@"MultiUserTokenFetchCloudKitFailure" forKey:@"eventType"];
    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
    [v8 setObject:v9 forKey:@"errorCode"];
  }

  else
  {
    [v8 setObject:@"MultiUserTokenFetchCloudKitSuccess" forKey:@"eventType"];
  }

  v10 = [(AMSDMultiUserMetrics *)self _enqueueProperties:v8];

  return v10;
}

- (id)enqueueCloudKitSaveRecordEvent
{
  v3 = +[NSDate date];
  [(AMSDMultiUserMetrics *)self setCloudKitSaveBeginDate:v3];

  v7 = @"eventType";
  v8 = @"MultiUserTokenGenerationCloudKitSave";
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [(AMSDMultiUserMetrics *)self _enqueueProperties:v4];

  return v5;
}

- (id)enqueueCloudKitSaveRecordFinishEventWithError:(id)a3
{
  v4 = a3;
  v12 = @"duration";
  v5 = [(AMSDMultiUserMetrics *)self cloudKitSaveBeginDate];
  v6 = [(AMSDMultiUserMetrics *)self _durationSinceDate:v5];
  v13 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [NSMutableDictionary dictionaryWithDictionary:v7];

  if (v4)
  {
    [v8 setObject:@"MultiUserTokenGenerationCloudKitSaveFailed" forKey:@"eventType"];
    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
    [v8 setObject:v9 forKey:@"errorCode"];
  }

  else
  {
    [v8 setObject:@"MultiUserTokenGenerationCloudKitSaveSuccess" forKey:@"eventType"];
  }

  v10 = [(AMSDMultiUserMetrics *)self _enqueueProperties:v8];

  return v10;
}

- (id)enqueueCloudKitSaveReceivedEvent
{
  v6 = @"eventType";
  v7 = @"MultiUserTokenGenerationCloudKitNotificationReceived";
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [(AMSDMultiUserMetrics *)self _enqueueProperties:v3];

  return v4;
}

- (id)enqueueGenerateMultiUserTokenBeginEvent
{
  v3 = +[NSDate date];
  [(AMSDMultiUserMetrics *)self setMultiUserGenerateTokenBeginDate:v3];

  v7 = @"eventType";
  v8 = @"MultiUserTokenGenerationBegin";
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [(AMSDMultiUserMetrics *)self _enqueueProperties:v4];

  return v5;
}

- (id)enqueueGenerateMultiUserTokenFinishEventWithError:(id)a3
{
  v4 = a3;
  v12 = @"duration";
  v5 = [(AMSDMultiUserMetrics *)self multiUserGenerateTokenBeginDate];
  v6 = [(AMSDMultiUserMetrics *)self _durationSinceDate:v5];
  v13 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [NSMutableDictionary dictionaryWithDictionary:v7];

  if (v4)
  {
    [v8 setObject:@"MultiUserTokenGenerationFailure" forKey:@"eventType"];
    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
    [v8 setObject:v9 forKey:@"errorCode"];
  }

  else
  {
    [v8 setObject:@"MultiUserTokenGenerationSuccess" forKey:@"eventType"];
  }

  v10 = [(AMSDMultiUserMetrics *)self _enqueueProperties:v8];

  return v10;
}

- (id)enqueueHomeKitChangedReceivedEvent
{
  v6 = @"eventType";
  v7 = @"HomeKitChangedNotificationReceived";
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [(AMSDMultiUserMetrics *)self _enqueueProperties:v3];

  return v4;
}

- (id)enqueueHomeKitRepairRequestReceivedEvent
{
  v6 = @"eventType";
  v7 = @"HomeKitRepairRequestNotificationReceived";
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [(AMSDMultiUserMetrics *)self _enqueueProperties:v3];

  return v4;
}

- (id)enqueueHomeKitRepairRequestCompletedFinishEventWithError:(id)a3
{
  v4 = a3;
  v12 = @"duration";
  v5 = [(AMSDMultiUserMetrics *)self homeKitRepairRequestBeginDate];
  v6 = [(AMSDMultiUserMetrics *)self _durationSinceDate:v5];
  v13 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [NSMutableDictionary dictionaryWithDictionary:v7];

  if (v4)
  {
    [v8 setObject:@"HomeKitRepairRequestCompletedFailure" forKey:@"eventType"];
    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
    [v8 setObject:v9 forKey:@"errorCode"];
  }

  else
  {
    [v8 setObject:@"HomeKitRepairRequestCompletedSuccess" forKey:@"eventType"];
  }

  v10 = [(AMSDMultiUserMetrics *)self _enqueueProperties:v8];

  return v10;
}

- (id)enqueueHomeKitRepairRequestSentEventForAccount:(id)a3
{
  v9 = @"eventType";
  v10 = @"HomeKitRepairRequestSend";
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v6 = [NSMutableDictionary dictionaryWithDictionary:v5];

  v7 = [(AMSDMultiUserMetrics *)self _enqueueProperties:v6 account:v4];

  return v7;
}

- (void)homeKitRepairRequestUpdateTokenBegin
{
  v3 = +[NSDate date];
  [(AMSDMultiUserMetrics *)self setHomeKitRepairRequestBeginDate:v3];
}

- (id)enqueueMultiUserAuthenticationTokenFetchBeginEventForAccount:(id)a3
{
  v4 = a3;
  v5 = +[NSDate date];
  [(AMSDMultiUserMetrics *)self setMultiUserAuthBeginDate:v5];

  v9 = @"eventType";
  v10 = @"MultiUserTokenFetchBegin";
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [(AMSDMultiUserMetrics *)self _enqueueProperties:v6 account:v4];

  return v7;
}

- (id)enqueueMultiUserAuthenticationTokenFetchFinishEventForAccount:(id)a3 error:(id)a4
{
  v6 = a4;
  v16 = @"duration";
  v7 = a3;
  v8 = [(AMSDMultiUserMetrics *)self multiUserAuthBeginDate];
  v9 = [(AMSDMultiUserMetrics *)self _durationSinceDate:v8];
  v17 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v11 = [NSMutableDictionary dictionaryWithDictionary:v10];

  if (v6)
  {
    [v11 setObject:@"MultiUserTokenFetchFailure" forKey:@"eventType"];
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
    [v11 setObject:v12 forKey:@"errorCode"];
  }

  else
  {
    [v11 setObject:@"MultiUserTokenFetchSuccess" forKey:@"eventType"];
  }

  v13 = [v11 copy];
  v14 = [(AMSDMultiUserMetrics *)self _enqueueProperties:v13 account:v7];

  return v14;
}

- (id)enqueueMultiUserRefreshBeginEventWithOptions:(id)a3
{
  v8[0] = @"eventType";
  v8[1] = @"refreshReason";
  v9[0] = @"MultiUserRefreshBegin";
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a3 reasonType]);
  v9[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = [(AMSDMultiUserMetrics *)self _enqueueProperties:v5];

  return v6;
}

+ (NSString)bagSubProfile
{
  if (qword_1002E3278 != -1)
  {
    sub_10021B288();
  }

  v3 = qword_1002E3280;

  return v3;
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1002E3288 != -1)
  {
    sub_10021B29C();
  }

  v3 = qword_1002E3290;

  return v3;
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

- (id)_clampTimeStampValue:(id)a3
{
  v3 = [a3 longLongValue];
  v4 = v3 / qword_1002D9DA0 * qword_1002D9DA0;

  return [NSNumber numberWithLongLong:v4];
}

- (id)_durationSinceDate:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = +[NSDate date];
    [v5 timeIntervalSinceDate:v4];
    v7 = v6;

    v8 = [NSNumber numberWithDouble:v7];
  }

  else
  {
    v8 = &off_1002C6720;
  }

  return v8;
}

- (id)_enqueueEventWithTopic:(id)a3 properties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [objc_opt_class() _eventWithTopic:v6];
    [v9 addPropertiesWithDictionary:v8];
    v26 = v9;
    v10 = [NSArray arrayWithObjects:&v26 count:1];
    v11 = [(AMSDMultiUserMetrics *)self _enqueueEvents:v10];
  }

  else
  {
    v12 = +[AMSLogConfig sharedAccountsConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = AMSHashIfNeeded();
      v18 = 138544130;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      v22 = 2114;
      v23 = v6;
      v24 = 2114;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attempted to enqueue event without topic or properties. topic = %{public}@ properties = %{public}@", &v18, 0x2Au);
    }

    v9 = AMSError();
    v11 = [AMSBinaryPromise promiseWithError:v9];
  }

  return v11;
}

- (id)_enqueueEvents:(id)a3
{
  v4 = a3;
  v5 = [(AMSDMultiUserMetrics *)self metrics];
  v6 = [v5 promiseForEnqueueingEvents:v4];

  return v6;
}

- (id)_enqueueProperties:(id)a3 account:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [a3 mutableCopy];
    if ([(AMSDMultiUserMetrics *)self _accountIsSecondaryHomeUser:v6])
    {
      v8 = @"authPerformanceSecondary";
    }

    else
    {
      v8 = @"authPerformance";
    }

    v9 = [(AMSDMultiUserMetrics *)self metricsIdentifier];
    [v7 setObject:v9 forKey:@"multiUserIdentifier"];

    v10 = +[AMSLogConfig sharedAccountsConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v14 = AMSHashIfNeeded();
      v15 = AMSHashIfNeeded();
      *buf = 138544130;
      v33 = v12;
      v34 = 2114;
      v35 = v13;
      v36 = 2114;
      v37 = v14;
      v38 = 2114;
      v39 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating Event with properties = %{public}@ using account = %{public}@", buf, 0x2Au);
    }

    v16 = objc_alloc_init(AMSMutableBinaryPromise);
    v17 = [(AMSDMultiUserMetrics *)self _topicFromBag];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10006CBE4;
    v27[3] = &unk_1002B1380;
    v18 = v16;
    v28 = v18;
    v29 = self;
    v30 = v8;
    v31 = v7;
    v19 = v7;
    [v17 resultWithCompletion:v27];

    v20 = v31;
    v21 = v18;
  }

  else
  {
    v22 = +[AMSLogConfig sharedAccountsConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      *buf = 138543618;
      v33 = v24;
      v34 = 2114;
      v35 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attempted to enqueue event without properties.", buf, 0x16u);
    }

    v19 = AMSError();
    v21 = [AMSBinaryPromise promiseWithError:v19];
  }

  return v21;
}

- (id)_eventTime
{
  v3 = +[NSDate date];
  v4 = [AMSMetrics serverTimeFromDate:v3];
  v5 = [(AMSDMultiUserMetrics *)self _clampTimeStampValue:v4];

  return v5;
}

+ (id)_eventWithTopic:(id)a3
{
  v3 = a3;
  v4 = [[AMSMetricsEvent alloc] initWithTopic:v3];

  [v4 setCheckDiagnosticsAndUsageSetting:1];

  return v4;
}

- (BOOL)_isTopicDefined:(id)a3
{
  v4 = [a3 isEqualToString:@"_topic_not_defined_"] ^ 1;
  if (a3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

+ (id)_metricsInstanceWithBag:(id)a3
{
  v3 = a3;
  v4 = [[AMSMetrics alloc] initWithContainerID:@"com.apple.AppleMediaServices" bag:v3];

  return v4;
}

- (id)_topicFromBag
{
  v3 = [(AMSDMultiUserMetrics *)self bag];
  objc_opt_class();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(AMSDMultiUserMetrics *)self bag];
    [v5 setDefaultValue:@"_topic_not_defined_" forKey:@"authPerfTopicName"];
  }

  v6 = [(AMSDMultiUserMetrics *)self bag];
  v7 = [v6 stringForKey:@"authPerfTopicName"];
  v8 = [v7 valuePromise];

  return v8;
}

- (id)_userIdForBagNamespace:(id)a3
{
  v4 = a3;
  v5 = [(AMSDMultiUserMetrics *)self bag];
  v6 = [AMSMetricsIdentifierStore identifierForAccount:0 bag:v5 bagNamespace:v4 keyName:@"userId"];

  return v6;
}

@end