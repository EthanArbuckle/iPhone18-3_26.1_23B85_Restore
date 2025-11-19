@interface ASRecordActivity
- (ASRecordActivity)recordActivityWithCompletion:(id)a3;
- (id)duetEvent;
- (id)duetEventStream;
- (void)_recordActivityWithCompletion:(id)a3;
- (void)deleteActivitiesOlderThanDays:(int64_t)a3 withCompletion:(id)a4;
- (void)deleteOlderSessionActivities:(id)a3 withCompletion:(id)a4;
- (void)performWithCompletion:(id)a3;
@end

@implementation ASRecordActivity

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ASRecordActivity *)self activity];
  v6 = [v5 userActivity];

  if (v6)
  {
    v7 = [NSUserActivity alloc];
    v8 = [(ASRecordActivity *)self activity];
    v9 = [v8 type];
    v10 = [v7 initWithActivityType:v9];

    v11 = [(ASRecordActivity *)self activity];
    v12 = [v11 userActivity];
    v13 = [v12 title];
    [v10 setTitle:v13];

    v14 = [(ASRecordActivity *)self activity];
    v15 = [v14 userActivity];
    v16 = [v15 userInfo];
    [v10 setUserInfo:v16];

    v17 = [(ASRecordActivity *)self activity];
    v18 = [v17 userActivity];
    v19 = [v18 keywords];
    v20 = [NSSet setWithArray:v19];
    [v10 setKeywords:v20];

    v21 = [(ASRecordActivity *)self activity];
    v22 = [v21 userActivity];
    v23 = [v22 requiredUserInfoKeys];
    v24 = [NSSet setWithArray:v23];
    [v10 setRequiredUserInfoKeys:v24];

    [v10 setEligibleForHandoff:0];
    [v10 setEligibleForSearch:0];
    [v10 setEligibleForPublicIndexing:0];
    [v10 becomeCurrent];
  }

  v25 = [(ASRecordActivity *)self activity];
  v26 = [v25 type];

  if (!v26)
  {
    v27 = [NSString stringWithFormat:@"Invalid ace command %@", self];
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
    {
      sub_7310();
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else if (!v4)
    {
LABEL_8:

      goto LABEL_9;
    }

    v28 = [[SACommandFailed alloc] initWithReason:v27];
    v29 = [v28 dictionary];
    v4[2](v4, v29);

    goto LABEL_8;
  }

  [(ASRecordActivity *)self recordActivityWithCompletion:v4];
LABEL_9:
}

- (id)duetEventStream
{
  v2 = [(ASRecordActivity *)self activity];
  v3 = [v2 streamType];
  v4 = v3;
  v5 = @"com.apple.internal.siri.guidance";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = +[_DKAnyStringIdentifier type];
  v8 = [_DKEventStream eventStreamWithName:v6 valueType:v7];

  return v8;
}

- (id)duetEvent
{
  v3 = [(ASRecordActivity *)self activity];
  v4 = [v3 type];
  v5 = [_DKAnyStringIdentifier withValue:v4];

  v6 = [(ASRecordActivity *)self activity];
  v7 = [v6 metadata];
  v8 = [v7 allKeys];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(ASRecordActivity *)self activity];
    v11 = [v10 metadata];
    v12 = [NSMutableDictionary dictionaryWithDictionary:v11];

    v13 = +[NSDate date];
    v14 = [v13 dateByAddingTimeInterval:960.0];
    v15 = +[_DKApplicationActivityMetadataKey expirationDate];
    [v12 setObject:v14 forKeyedSubscript:v15];

    v16 = [(ASRecordActivity *)self duetEventStream];
    v27 = [(ASRecordActivity *)self activity];
    v17 = [v27 startDate];
    v18 = [ASDateUtils eventStartDateFromDate:v17];
    v19 = [(ASRecordActivity *)self activity];
    v20 = [v19 endDate];
    v21 = [ASDateUtils eventEndDateFromDate:v20];
    v22 = [NSDictionary dictionaryWithDictionary:v12];
    v23 = [_DKEvent eventWithStream:v16 startDate:v18 endDate:v21 value:v5 metadata:v22];

    v24 = v23;
    v25 = v27;
  }

  else
  {
    v12 = [(ASRecordActivity *)self duetEventStream];
    v16 = [(ASRecordActivity *)self activity];
    v25 = [v16 startDate];
    v17 = [ASDateUtils eventStartDateFromDate:v25];
    v18 = [(ASRecordActivity *)self activity];
    v19 = [v18 endDate];
    v20 = [ASDateUtils eventEndDateFromDate:v19];
    v24 = [_DKEvent eventWithStream:v12 startDate:v17 endDate:v20 value:v5];
  }

  return v24;
}

- (void)deleteActivitiesOlderThanDays:(int64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [ASStorageUtils duetStoreForCommand:self];
  v8 = +[NSDate date];
  v9 = [ASDateUtils subtractDays:a3 fromDate:v8];
  v10 = +[NSDate distantPast];
  v11 = [_DKQuery predicateForEventsWithStartAndEndInDateRangeFrom:v10 to:v9];

  v12 = [(ASRecordActivity *)self duetEventStream];
  v20 = v12;
  v13 = [NSArray arrayWithObjects:&v20 count:1];
  v14 = [_DKEventQuery eventQueryWithPredicate:v11 eventStreams:v13 offset:0 limit:0 sortDescriptors:0];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_4538;
  v17[3] = &unk_C460;
  v18 = v7;
  v19 = v6;
  v15 = v7;
  v16 = v6;
  [v15 executeQuery:v14 responseQueue:0 withCompletion:v17];
}

- (void)deleteOlderSessionActivities:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [ASStorageUtils duetStoreForCommand:self];
  v9 = [(ASRecordActivity *)self duetEventStream];
  v19 = v9;
  v10 = [NSArray arrayWithObjects:&v19 count:1];
  v11 = [_DKEventQuery eventQueryWithPredicate:0 eventStreams:v10 offset:0 limit:0 sortDescriptors:0];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_48DC;
  v15[3] = &unk_C4B0;
  v17 = v8;
  v18 = v7;
  v16 = v6;
  v12 = v8;
  v13 = v6;
  v14 = v7;
  [v12 executeQuery:v11 responseQueue:0 withCompletion:v15];
}

- (ASRecordActivity)recordActivityWithCompletion:(id)a3
{
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_4E38;
  v17 = &unk_C4D8;
  v18 = self;
  v4 = a3;
  v19 = v4;
  v5 = objc_retainBlock(&v14);
  v6 = [ASStorageUtils duetStoreForCommand:self, v14, v15, v16, v17, v18];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    (v5[2])(v5, 1, 0);
  }

  else
  {
    v8 = [(ASRecordActivity *)self activity];
    v9 = [v8 metadata];
    v10 = [v9 objectForKey:@"sessionId"];

    v11 = AFSiriLogContextService;
    v12 = os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 136315394;
        v21 = "[ASRecordActivity recordActivityWithCompletion:]";
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%s deleting activities recorded for session id %@", buf, 0x16u);
      }

      [(ASRecordActivity *)self deleteOlderSessionActivities:v10 withCompletion:v5];
    }

    else
    {
      if (v12)
      {
        *buf = 136315394;
        v21 = "[ASRecordActivity recordActivityWithCompletion:]";
        v22 = 2048;
        v23 = 3;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%s deleting activities older than %zd days", buf, 0x16u);
      }

      [(ASRecordActivity *)self deleteActivitiesOlderThanDays:3 withCompletion:v5];
    }
  }

  return result;
}

- (void)_recordActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [ASStorageUtils duetStoreForCommand:self];
  v6 = [(ASRecordActivity *)self duetEvent];
  v7 = AFSiriLogContextService;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "[ASRecordActivity _recordActivityWithCompletion:]";
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s asking CoreDuet to save event %@", buf, 0x16u);
    }

    v20 = v6;
    v8 = [NSArray arrayWithObjects:&v20 count:1];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_51A8;
    v18[3] = &unk_C500;
    v19 = v4;
    [v5 saveObjects:v8 responseQueue:0 withCompletion:v18];

    v9 = v19;
    goto LABEL_8;
  }

  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
  {
    sub_746C(v7, v10, v11, v12, v13, v14, v15, v16);
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v4)
  {
LABEL_7:
    v9 = [[SACommandFailed alloc] initWithReason:@"can't create Duet event"];
    v17 = [v9 dictionary];
    (*(v4 + 2))(v4, v17);

LABEL_8:
  }

LABEL_9:
}

@end