@interface ASFetchActivityStream
- (ASFetchActivityStream)fetchActivityStreamWithPredicate:(id)a3 completion:(id)a4;
- (void)performWithCompletion:(id)a3;
@end

@implementation ASFetchActivityStream

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ASFetchActivityStream *)self fromDate];
  v6 = [(ASFetchActivityStream *)self toDate];
  v7 = [ASDateUtils predicateForEventsWithDateRangeFromDate:v5 toDate:v6];

  if (v7)
  {
    v8 = +[NSMutableArray array];
    [v8 addObject:v7];
    v9 = [(ASFetchActivityStream *)self activityType];

    if (v9)
    {
      v10 = [(ASFetchActivityStream *)self activityType];
      v11 = [_DKAnyStringIdentifier withValue:v10];
      v12 = [_DKQuery predicateForEventsWithIdentifierValue:v11];

      if (v12)
      {
        [v8 addObject:v12];
      }
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = [(ASFetchActivityStream *)self matchingMetadataKeys];
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        v17 = 0;
        do
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [_DKQuery predicateForObjectsWithMetadataKey:*(*(&v27 + 1) + 8 * v17)];
          if (v18)
          {
            [v8 addObject:v18];
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v15);
    }

    v19 = [(ASFetchActivityStream *)self matchingMetadataKeysAndStringValues];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1700;
    v25[3] = &unk_C3B0;
    v20 = v8;
    v26 = v20;
    [v19 enumerateKeysAndObjectsUsingBlock:v25];

    v21 = [NSCompoundPredicate andPredicateWithSubpredicates:v20];
    v22 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v32 = "[ASFetchActivityStream performWithCompletion:]";
      v33 = 2112;
      v34 = v21;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "%s fetch activity predicate %@", buf, 0x16u);
    }

    [(ASFetchActivityStream *)self fetchActivityStreamWithPredicate:v21 completion:v4];

    v23 = v26;
    goto LABEL_21;
  }

  v20 = [NSString stringWithFormat:@"Invalid ace command %@", self];
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
  {
    sub_7084();
    if (!v4)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v4)
  {
LABEL_20:
    v23 = [[SACommandFailed alloc] initWithReason:v20];
    v24 = [v23 dictionary];
    v4[2](v4, v24);

LABEL_21:
  }

LABEL_22:
}

- (ASFetchActivityStream)fetchActivityStreamWithPredicate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [ASStorageUtils duetStoreForCommand:self];
  v9 = [(ASFetchActivityStream *)self limit];
  v10 = [v9 integerValue];

  if (!v10)
  {
    v11 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v55 = "[ASFetchActivityStream fetchActivityStreamWithPredicate:completion:]";
      v56 = 2048;
      v10 = &stru_3D8 + 16;
      v57 = 1000;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%s limit is 0. Defaulting to kMaxActivityStreamSize = %zu", buf, 0x16u);
    }

    else
    {
      v10 = &stru_3D8 + 16;
    }
  }

  v45 = objc_alloc_init(SAActivityStream);
  v12 = &AFSharedResourcesDirectory_ptr;
  v13 = [(ASFetchActivityStream *)self streamTypes];
  v14 = [v13 count];
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v16 = [NSMutableArray arrayWithCapacity:v15];

  v17 = [(ASFetchActivityStream *)self streamTypes];
  v18 = [v17 count];

  if (v18)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v20 = [(ASFetchActivityStream *)self streamTypes];
    v21 = [v20 countByEnumeratingWithState:&v50 objects:v64 count:16];
    if (v21)
    {
      v22 = v21;
      v44 = v7;
      v23 = v8;
      v24 = v6;
      v25 = *v51;
      do
      {
        v26 = 0;
        do
        {
          if (*v51 != v25)
          {
            objc_enumerationMutation(v20);
          }

          v27 = sub_1C40(v21, *(*(&v50 + 1) + 8 * v26));
          [v16 addObject:v27];

          v26 = v26 + 1;
        }

        while (v22 != v26);
        v21 = [v20 countByEnumeratingWithState:&v50 objects:v64 count:16];
        v22 = v21;
      }

      while (v21);
      v6 = v24;
      v8 = v23;
      v7 = v44;
      v12 = &AFSharedResourcesDirectory_ptr;
    }
  }

  else
  {
    v20 = sub_1C40(v19, @"com.apple.internal.siri.guidance");
    [v16 addObject:v20];
  }

  v28 = objc_alloc_init(v12[103]);
  v29 = [(ASFetchActivityStream *)self sortBy];
  v30 = [v29 isEqualToString:SAActivityStreamSortDescriptorStartDateValue];

  if (v30)
  {
    v31 = [_DKQuery startDateSortDescriptorAscending:[(ASFetchActivityStream *)self ascending]];
  }

  else
  {
    v32 = [(ASFetchActivityStream *)self sortBy];
    v33 = [v32 isEqualToString:SAActivityStreamSortDescriptorEndDateValue];

    if (!v33)
    {
      goto LABEL_23;
    }

    v31 = [_DKQuery endDateSortDescriptorAscending:[(ASFetchActivityStream *)self ascending]];
  }

  v34 = v31;
  [v28 addObject:v31];

LABEL_23:
  v35 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
  {
    v36 = v35;
    v37 = [(ASFetchActivityStream *)self streamTypes];
    v38 = v37;
    v39 = @"com.apple.internal.siri.guidance";
    if (v37)
    {
      v39 = v37;
    }

    *buf = 136316162;
    v55 = "[ASFetchActivityStream fetchActivityStreamWithPredicate:completion:]";
    v56 = 2112;
    v57 = v39;
    v58 = 2112;
    v59 = v6;
    v60 = 2048;
    v61 = v10;
    v62 = 2112;
    v63 = v28;
    _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%s querying streams [%@] with predicate [%@] limit [%zd] sortDescriptors [%@]", buf, 0x34u);
  }

  [_DKEventQuery eventQueryWithPredicate:v6 eventStreams:v16 offset:0 limit:v10 sortDescriptors:v28];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1CC0;
  v47 = v46[3] = &unk_C3D8;
  v48 = v45;
  v49 = v7;
  v40 = v7;
  v41 = v45;
  v42 = v47;
  [v8 executeQuery:v42 responseQueue:0 withCompletion:v46];

  return result;
}

@end