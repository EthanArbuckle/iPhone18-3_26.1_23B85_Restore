@interface BKSeriesCheck
+ (BOOL)shouldRecheckAdamID:(id)a3 withIntervalInDays:(double)a4 inManagedObjectContext:(id)a5;
+ (id)adamIDsNeedingToBeCheckedFromAdamIDs:(id)a3 inManagedObjectContext:(id)a4;
+ (id)insertSeriesCheckWithAdamId:(id)a3 intoManagedObjectContext:(id)a4;
+ (void)recordAdamIDsAsChecked:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation BKSeriesCheck

+ (id)insertSeriesCheckWithAdamId:(id)a3 intoManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = [NSEntityDescription insertNewObjectForEntityForName:@"BKSeriesCheck" inManagedObjectContext:a4];
  [v6 setAdamId:v5];

  return v6;
}

+ (id)adamIDsNeedingToBeCheckedFromAdamIDs:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BKSeriesCheck: Filtering Adam IDs that need updating", buf, 2u);
  }

  v7 = +[NSMutableArray array];
  if ([v5 count])
  {
    v8 = [NSFetchRequest fetchRequestWithEntityName:@"BKSeriesCheck"];
    [v8 setFetchBatchSize:100];
    v9 = [BKSeriesCheck predicateForSeriesCheckWithAdamIDsInList:v5];
    [v8 setPredicate:v9];

    [v8 setResultType:2];
    v32[0] = @"objectID";
    v32[1] = @"adamId";
    v10 = [NSArray arrayWithObjects:v32 count:2];
    [v8 setPropertiesToFetch:v10];

    v29 = 0;
    v11 = [v6 executeFetchRequest:v8 error:&v29];
    v12 = v29;
    v13 = v12;
    if (v11)
    {
      v23 = v12;
      v24 = v6;
      v14 = [v11 valueForKey:@"adamId"];
      v15 = [NSSet setWithArray:v14];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v16 = v5;
      v17 = [v16 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v26;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v26 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v25 + 1) + 8 * i);
            if (([v15 containsObject:v21] & 1) == 0)
            {
              [v7 addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v25 objects:v31 count:16];
        }

        while (v18);
      }

      v13 = v23;
      v6 = v24;
    }
  }

  return v7;
}

+ (void)recordAdamIDsAsChecked:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BKSeriesCheck: recordAdamIDsAsChecked: %@", buf, 0xCu);
  }

  if ([v5 count])
  {
    v7 = [objc_opt_class() fetchRequest];
    [v7 setFetchBatchSize:100];
    v8 = [objc_opt_class() predicateForSeriesCheckWithAdamIDsInList:v5];
    [v7 setPredicate:v8];

    v38 = 0;
    v9 = [v6 executeFetchRequest:v7 error:&v38];
    v10 = v38;
    v11 = v10;
    if (v9)
    {
      v27 = v10;
      v29 = v7;
      v12 = [NSMutableSet setWithArray:v5];
      v13 = +[NSDate date];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v28 = v9;
      v14 = v9;
      v15 = [v14 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v35;
        do
        {
          v18 = 0;
          do
          {
            if (*v35 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v34 + 1) + 8 * v18);
            if (([v19 isDeleted] & 1) == 0)
            {
              [v19 setDateChecked:v13];
              v20 = [v19 adamId];
              [v12 removeObject:v20];
            }

            v18 = v18 + 1;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v16);
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v21 = v12;
      v22 = [v21 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v31;
        do
        {
          v25 = 0;
          do
          {
            if (*v31 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [BKSeriesCheck insertSeriesCheckWithAdamId:*(*(&v30 + 1) + 8 * v25) intoManagedObjectContext:v6];
            [v26 setDateChecked:v13];

            v25 = v25 + 1;
          }

          while (v23 != v25);
          v23 = [v21 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v23);
      }

      v9 = v28;
      v7 = v29;
      v11 = v27;
    }
  }
}

+ (BOOL)shouldRecheckAdamID:(id)a3 withIntervalInDays:(double)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (v7)
  {
    v9 = +[NSDate date];
    v10 = v9;
    v11 = a4 * -86400.0;
    if (a4 < 0.0)
    {
      v11 = a4;
    }

    v12 = [v9 dateByAddingTimeInterval:v11];

    v13 = [objc_opt_class() fetchRequest];
    v14 = objc_opt_class();
    v34 = v7;
    v15 = [NSArray arrayWithObjects:&v34 count:1];
    v16 = [v14 predicateForSeriesCheckWithAdamIDsInList:v15];
    [v13 setPredicate:v16];

    v32 = 0;
    v17 = [v8 executeFetchRequest:v13 error:&v32];
    v18 = v32;
    if (v17)
    {
      if ([v17 count])
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v19 = v17;
        v20 = [v19 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v20)
        {
          v26 = v18;
          v27 = v8;
          v21 = *v29;
          while (2)
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v29 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = [*(*(&v28 + 1) + 8 * i) dateChecked];
              v24 = [v23 compare:v12];

              if (v24 == -1)
              {
                LOBYTE(v20) = 1;
                goto LABEL_18;
              }
            }

            v20 = [v19 countByEnumeratingWithState:&v28 objects:v33 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }

LABEL_18:
          v18 = v26;
          v8 = v27;
        }
      }

      else
      {
        LOBYTE(v20) = 1;
      }
    }

    else
    {
      LOBYTE(v20) = 0;
    }
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  return v20;
}

@end