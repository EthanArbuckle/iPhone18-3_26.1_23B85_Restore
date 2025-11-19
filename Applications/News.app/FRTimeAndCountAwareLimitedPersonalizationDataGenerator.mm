@interface FRTimeAndCountAwareLimitedPersonalizationDataGenerator
- (FRTimeAndCountAwareLimitedPersonalizationDataGenerator)init;
- (FRTimeAndCountAwareLimitedPersonalizationDataGenerator)initWithGenerator:(id)a3 configurationManager:(id)a4;
- (id)generateDerivedDataWithMaxAggregateCount:(unint64_t)a3;
@end

@implementation FRTimeAndCountAwareLimitedPersonalizationDataGenerator

- (FRTimeAndCountAwareLimitedPersonalizationDataGenerator)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRTimeAndCountAwareLimitedPersonalizationDataGenerator init]";
    v8 = 2080;
    v9 = "FRLimitedPersonalizationDataGenerator.m";
    v10 = 1024;
    v11 = 23;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRTimeAndCountAwareLimitedPersonalizationDataGenerator init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRTimeAndCountAwareLimitedPersonalizationDataGenerator)initWithGenerator:(id)a3 configurationManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000735B0();
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100073690();
  }

LABEL_6:
  v12.receiver = self;
  v12.super_class = FRTimeAndCountAwareLimitedPersonalizationDataGenerator;
  v9 = [(FRTimeAndCountAwareLimitedPersonalizationDataGenerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_generator, a3);
    objc_storeStrong(&v10->_configurationManager, a4);
  }

  return v10;
}

- (id)generateDerivedDataWithMaxAggregateCount:(unint64_t)a3
{
  v5 = [(FRTimeAndCountAwareLimitedPersonalizationDataGenerator *)self generator];
  v6 = [v5 generateDerivedData];

  v7 = v6;
  v8 = v7;
  if (v7)
  {
    v36 = self;
    v37 = a3;
    v9 = [v7 allAggregates];
    v10 = [v9 allValues];
    v11 = [v10 mutableCopy];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = 0;
      v17 = *v42;
      v18 = -1;
      v19 = -1;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v21 = *(*(&v41 + 1) + 8 * i);
          v22 = [v21 timestamp];
          if (v22 < v19)
          {
            v19 = v22;
          }

          v23 = [v21 timestamp];
          if (v23 > v16)
          {
            v16 = v23;
          }

          v24 = [v21 eventCount];
          if (v24 < v18)
          {
            v18 = v24;
          }

          v25 = [v21 eventCount];
          if (v25 > v15)
          {
            v15 = v25;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v18 = -1;
      v19 = -1;
    }

    v27 = [(FRTimeAndCountAwareLimitedPersonalizationDataGenerator *)v36 configurationManager];
    v28 = [v27 configuration];
    [v28 derivedPersonalizationDataBalanceValue];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10005920C;
    v40[3] = &unk_1000C5B88;
    v40[4] = &v16[-v19];
    v40[5] = v19;
    v40[6] = &v15[-v18];
    v40[7] = v18;
    v40[8] = v29;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000592B0;
    v38[3] = &unk_1000C5BB0;
    v39 = objc_retainBlock(v40);
    v30 = v39;
    [v12 sortUsingComparator:v38];
    v31 = [v12 fc_safeSubarrayWithCountFromBack:v37];
    v32 = [v31 fc_dictionaryWithKeyBlock:&stru_1000C5BF0];
    v33 = [FCDerivedPersonalizationData alloc];
    v34 = [v8 scoringType];
    [v8 decayRate];
    v26 = [v33 initWithAggregates:v32 scoringType:v34 decayRate:?];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end