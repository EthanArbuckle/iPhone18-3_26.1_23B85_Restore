@interface ASRemoveFromActivityStream
- (ASRemoveFromActivityStream)removeFromActivityStreamWithPredicate:(id)predicate completion:(id)completion;
- (void)performWithCompletion:(id)completion;
@end

@implementation ASRemoveFromActivityStream

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  fromDate = [(ASRemoveFromActivityStream *)self fromDate];
  toDate = [(ASRemoveFromActivityStream *)self toDate];
  v7 = [ASDateUtils predicateForEventsWithDateRangeFromDate:fromDate toDate:toDate];

  if (v7)
  {
    activityType = [(ASRemoveFromActivityStream *)self activityType];

    if (activityType)
    {
      activityType2 = [(ASRemoveFromActivityStream *)self activityType];
      v10 = [_DKAnyStringIdentifier withValue:activityType2];
      v11 = [_DKQuery predicateForEventsWithIdentifierValue:v10];

      v22[0] = v7;
      v22[1] = v11;
      v12 = [NSArray arrayWithObjects:v22 count:2];
      v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];
    }

    else
    {
      v13 = v7;
    }

    v17 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[ASRemoveFromActivityStream performWithCompletion:]";
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "%s remove activity predicate %@", buf, 0x16u);
    }

    [(ASRemoveFromActivityStream *)self removeFromActivityStreamWithPredicate:v13 completion:completionCopy];
  }

  else
  {
    v13 = [NSString stringWithFormat:@"Invalid ace command %@", self];
    v14 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "[ASRemoveFromActivityStream performWithCompletion:]";
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
    }

    if (completionCopy)
    {
      v15 = [[SACommandFailed alloc] initWithReason:v13];
      dictionary = [v15 dictionary];
      completionCopy[2](completionCopy, dictionary);
    }
  }
}

- (ASRemoveFromActivityStream)removeFromActivityStreamWithPredicate:(id)predicate completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
  v8 = [ASStorageUtils duetStoreForCommand:self];
  streamType = [(ASRemoveFromActivityStream *)self streamType];
  v10 = streamType;
  v11 = @"com.apple.internal.siri.guidance";
  if (streamType)
  {
    v11 = streamType;
  }

  v12 = v11;

  v13 = +[_DKAnyStringIdentifier type];
  v14 = [_DKEventStream eventStreamWithName:v12 valueType:v13];

  v15 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v28 = "[ASRemoveFromActivityStream removeFromActivityStreamWithPredicate:completion:]";
    v29 = 2112;
    v30 = v14;
    v31 = 2112;
    v32 = predicateCopy;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%s deleting activities from streams [%@] with predicate [%@]", buf, 0x20u);
  }

  v26 = v14;
  v16 = [NSArray arrayWithObjects:&v26 count:1];
  v17 = [_DKEventQuery eventQueryWithPredicate:predicateCopy eventStreams:v16 offset:0 limit:0 sortDescriptors:0];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_3780;
  v22[3] = &unk_C438;
  v24 = v8;
  v25 = completionCopy;
  v23 = v17;
  v18 = v8;
  v19 = completionCopy;
  v20 = v17;
  [v18 executeQuery:v20 responseQueue:0 withCompletion:v22];

  return result;
}

@end