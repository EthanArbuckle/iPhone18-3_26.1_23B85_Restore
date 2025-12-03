@interface ASRecordActivity
- (ASRecordActivity)recordActivityWithCompletion:(id)completion;
- (id)duetEvent;
- (id)duetEventStream;
- (void)_recordActivityWithCompletion:(id)completion;
- (void)deleteActivitiesOlderThanDays:(int64_t)days withCompletion:(id)completion;
- (void)deleteOlderSessionActivities:(id)activities withCompletion:(id)completion;
- (void)performWithCompletion:(id)completion;
@end

@implementation ASRecordActivity

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  activity = [(ASRecordActivity *)self activity];
  userActivity = [activity userActivity];

  if (userActivity)
  {
    v7 = [NSUserActivity alloc];
    activity2 = [(ASRecordActivity *)self activity];
    type = [activity2 type];
    v10 = [v7 initWithActivityType:type];

    activity3 = [(ASRecordActivity *)self activity];
    userActivity2 = [activity3 userActivity];
    title = [userActivity2 title];
    [v10 setTitle:title];

    activity4 = [(ASRecordActivity *)self activity];
    userActivity3 = [activity4 userActivity];
    userInfo = [userActivity3 userInfo];
    [v10 setUserInfo:userInfo];

    activity5 = [(ASRecordActivity *)self activity];
    userActivity4 = [activity5 userActivity];
    keywords = [userActivity4 keywords];
    v20 = [NSSet setWithArray:keywords];
    [v10 setKeywords:v20];

    activity6 = [(ASRecordActivity *)self activity];
    userActivity5 = [activity6 userActivity];
    requiredUserInfoKeys = [userActivity5 requiredUserInfoKeys];
    v24 = [NSSet setWithArray:requiredUserInfoKeys];
    [v10 setRequiredUserInfoKeys:v24];

    [v10 setEligibleForHandoff:0];
    [v10 setEligibleForSearch:0];
    [v10 setEligibleForPublicIndexing:0];
    [v10 becomeCurrent];
  }

  activity7 = [(ASRecordActivity *)self activity];
  type2 = [activity7 type];

  if (!type2)
  {
    v27 = [NSString stringWithFormat:@"Invalid ace command %@", self];
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
    {
      sub_7310();
      if (!completionCopy)
      {
        goto LABEL_8;
      }
    }

    else if (!completionCopy)
    {
LABEL_8:

      goto LABEL_9;
    }

    v28 = [[SACommandFailed alloc] initWithReason:v27];
    dictionary = [v28 dictionary];
    completionCopy[2](completionCopy, dictionary);

    goto LABEL_8;
  }

  [(ASRecordActivity *)self recordActivityWithCompletion:completionCopy];
LABEL_9:
}

- (id)duetEventStream
{
  activity = [(ASRecordActivity *)self activity];
  streamType = [activity streamType];
  v4 = streamType;
  v5 = @"com.apple.internal.siri.guidance";
  if (streamType)
  {
    v5 = streamType;
  }

  v6 = v5;

  v7 = +[_DKAnyStringIdentifier type];
  v8 = [_DKEventStream eventStreamWithName:v6 valueType:v7];

  return v8;
}

- (id)duetEvent
{
  activity = [(ASRecordActivity *)self activity];
  type = [activity type];
  v5 = [_DKAnyStringIdentifier withValue:type];

  activity2 = [(ASRecordActivity *)self activity];
  metadata = [activity2 metadata];
  allKeys = [metadata allKeys];
  v9 = [allKeys count];

  if (v9)
  {
    activity3 = [(ASRecordActivity *)self activity];
    metadata2 = [activity3 metadata];
    duetEventStream2 = [NSMutableDictionary dictionaryWithDictionary:metadata2];

    v13 = +[NSDate date];
    v14 = [v13 dateByAddingTimeInterval:960.0];
    v15 = +[_DKApplicationActivityMetadataKey expirationDate];
    [duetEventStream2 setObject:v14 forKeyedSubscript:v15];

    duetEventStream = [(ASRecordActivity *)self duetEventStream];
    activity4 = [(ASRecordActivity *)self activity];
    startDate = [activity4 startDate];
    activity6 = [ASDateUtils eventStartDateFromDate:startDate];
    activity5 = [(ASRecordActivity *)self activity];
    endDate = [activity5 endDate];
    v21 = [ASDateUtils eventEndDateFromDate:endDate];
    v22 = [NSDictionary dictionaryWithDictionary:duetEventStream2];
    v23 = [_DKEvent eventWithStream:duetEventStream startDate:activity6 endDate:v21 value:v5 metadata:v22];

    v24 = v23;
    startDate2 = activity4;
  }

  else
  {
    duetEventStream2 = [(ASRecordActivity *)self duetEventStream];
    duetEventStream = [(ASRecordActivity *)self activity];
    startDate2 = [duetEventStream startDate];
    startDate = [ASDateUtils eventStartDateFromDate:startDate2];
    activity6 = [(ASRecordActivity *)self activity];
    activity5 = [activity6 endDate];
    endDate = [ASDateUtils eventEndDateFromDate:activity5];
    v24 = [_DKEvent eventWithStream:duetEventStream2 startDate:startDate endDate:endDate value:v5];
  }

  return v24;
}

- (void)deleteActivitiesOlderThanDays:(int64_t)days withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = [ASStorageUtils duetStoreForCommand:self];
  v8 = +[NSDate date];
  v9 = [ASDateUtils subtractDays:days fromDate:v8];
  v10 = +[NSDate distantPast];
  v11 = [_DKQuery predicateForEventsWithStartAndEndInDateRangeFrom:v10 to:v9];

  duetEventStream = [(ASRecordActivity *)self duetEventStream];
  v20 = duetEventStream;
  v13 = [NSArray arrayWithObjects:&v20 count:1];
  v14 = [_DKEventQuery eventQueryWithPredicate:v11 eventStreams:v13 offset:0 limit:0 sortDescriptors:0];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_4538;
  v17[3] = &unk_C460;
  v18 = v7;
  v19 = completionCopy;
  v15 = v7;
  v16 = completionCopy;
  [v15 executeQuery:v14 responseQueue:0 withCompletion:v17];
}

- (void)deleteOlderSessionActivities:(id)activities withCompletion:(id)completion
{
  activitiesCopy = activities;
  completionCopy = completion;
  v8 = [ASStorageUtils duetStoreForCommand:self];
  duetEventStream = [(ASRecordActivity *)self duetEventStream];
  v19 = duetEventStream;
  v10 = [NSArray arrayWithObjects:&v19 count:1];
  v11 = [_DKEventQuery eventQueryWithPredicate:0 eventStreams:v10 offset:0 limit:0 sortDescriptors:0];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_48DC;
  v15[3] = &unk_C4B0;
  v17 = v8;
  v18 = completionCopy;
  v16 = activitiesCopy;
  v12 = v8;
  v13 = activitiesCopy;
  v14 = completionCopy;
  [v12 executeQuery:v11 responseQueue:0 withCompletion:v15];
}

- (ASRecordActivity)recordActivityWithCompletion:(id)completion
{
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_4E38;
  v17 = &unk_C4D8;
  selfCopy = self;
  completionCopy = completion;
  v19 = completionCopy;
  v5 = objc_retainBlock(&v14);
  selfCopy = [ASStorageUtils duetStoreForCommand:self, v14, v15, v16, v17, selfCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    (v5[2])(v5, 1, 0);
  }

  else
  {
    activity = [(ASRecordActivity *)self activity];
    metadata = [activity metadata];
    v10 = [metadata objectForKey:@"sessionId"];

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

- (void)_recordActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [ASStorageUtils duetStoreForCommand:self];
  duetEvent = [(ASRecordActivity *)self duetEvent];
  v7 = AFSiriLogContextService;
  if (duetEvent)
  {
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "[ASRecordActivity _recordActivityWithCompletion:]";
      v23 = 2112;
      v24 = duetEvent;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s asking CoreDuet to save event %@", buf, 0x16u);
    }

    v20 = duetEvent;
    v8 = [NSArray arrayWithObjects:&v20 count:1];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_51A8;
    v18[3] = &unk_C500;
    v19 = completionCopy;
    [v5 saveObjects:v8 responseQueue:0 withCompletion:v18];

    v9 = v19;
    goto LABEL_8;
  }

  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
  {
    sub_746C(v7, v10, v11, v12, v13, v14, v15, v16);
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (completionCopy)
  {
LABEL_7:
    v9 = [[SACommandFailed alloc] initWithReason:@"can't create Duet event"];
    dictionary = [v9 dictionary];
    (*(completionCopy + 2))(completionCopy, dictionary);

LABEL_8:
  }

LABEL_9:
}

@end