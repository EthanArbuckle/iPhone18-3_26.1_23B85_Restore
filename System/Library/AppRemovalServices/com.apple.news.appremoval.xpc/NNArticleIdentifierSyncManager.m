@interface NNArticleIdentifierSyncManager
+ (id)savedManager;
+ (id)seenManager;
- (NNArticleIdentifierSyncManager)initWithReadonlyResetKey:(id)a3 readwriteResetKey:(id)a4 readonlyKey:(id)a5 readwriteKey:(id)a6;
- (NSSet)articleIdentifiers;
- (NSSet)readonlyArticleIdentifiers;
- (id)_lookupIdentifiersForKey:(id)a3;
- (id)_readonlyArticleStateLookup;
- (id)_readonlyResetDate;
- (id)_readwriteArticleStateLookup;
- (id)_readwriteResetDate;
- (void)clearAllIdentifiers;
- (void)synchronize;
@end

@implementation NNArticleIdentifierSyncManager

+ (id)savedManager
{
  if (qword_10000CDA0 != -1)
  {
    sub_100003544();
  }

  v3 = qword_10000CD98;

  return v3;
}

+ (id)seenManager
{
  if (qword_10000CDB0 != -1)
  {
    sub_100003558();
  }

  v3 = qword_10000CDA8;

  return v3;
}

- (NNArticleIdentifierSyncManager)initWithReadonlyResetKey:(id)a3 readwriteResetKey:(id)a4 readonlyKey:(id)a5 readwriteKey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v30.receiver = self;
  v30.super_class = NNArticleIdentifierSyncManager;
  v14 = [(NNArticleIdentifierSyncManager *)&v30 init];
  if (v14)
  {
    v15 = [v10 copy];
    readonlyResetKey = v14->_readonlyResetKey;
    v14->_readonlyResetKey = v15;

    v17 = [v11 copy];
    readwriteResetKey = v14->_readwriteResetKey;
    v14->_readwriteResetKey = v17;

    v19 = [v12 copy];
    readonlyKey = v14->_readonlyKey;
    v14->_readonlyKey = v19;

    v21 = [v13 copy];
    readwriteKey = v14->_readwriteKey;
    v14->_readwriteKey = v21;

    v23 = +[NSMutableSet set];
    v24 = v23;
    if (v14->_readwriteKey)
    {
      [v23 addObject:?];
    }

    if (v14->_readwriteResetKey)
    {
      [v24 addObject:?];
    }

    v25 = [v24 copy];
    synchronizedKeys = v14->_synchronizedKeys;
    v14->_synchronizedKeys = v25;
  }

  v27 = v14->_readonlyResetKey;
  v28 = v14->_readonlyKey;
  NSLog(@"Created manager with RO Reset: %@, RW Reset: %@, RO Key: %@, RW Key: %@", v27, v14->_readwriteResetKey, v28, v14->_readwriteKey);

  return v14;
}

- (void)clearAllIdentifiers
{
  v3 = [(NNArticleIdentifierSyncManager *)self readwriteResetKey];
  v4 = [v3 length];

  if (v4)
  {
    v8 = +[NSDate date];
    v5 = +[NSUserDefaults nanoNewsSyncDefaults];
    v6 = [(NNArticleIdentifierSyncManager *)self readwriteResetKey];
    [v5 setObject:v8 forKey:v6];

    v7 = [(NNArticleIdentifierSyncManager *)self readwriteKey];
    [v5 setObject:&__NSDictionary0__struct forKey:v7];

    [(NNArticleIdentifierSyncManager *)self synchronize];
  }
}

- (void)synchronize
{
  v4 = +[NSUserDefaults nanoNewsSyncDefaults];
  [v4 synchronize];
  v3 = [(NNArticleIdentifierSyncManager *)self synchronizedKeys];
  [v4 nn_synchronizeKeys:v3];
}

- (NSSet)articleIdentifiers
{
  v3 = +[NSMutableSet set];
  v4 = [(NNArticleIdentifierSyncManager *)self _readonlyArticleStateLookup];
  v5 = [(NNArticleIdentifierSyncManager *)self _readonlyResetDate];
  v6 = [(NNArticleIdentifierSyncManager *)self _readwriteResetDate];
  v43 = v5;
  [v5 timeIntervalSinceReferenceDate];
  v8 = v7;
  v42 = v6;
  [v6 timeIntervalSinceReferenceDate];
  if (v8 >= v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = [(NNArticleIdentifierSyncManager *)self _readwriteArticleStateLookup];
  v12 = [v4 allKeys];
  v13 = [v11 allKeys];
  v14 = [v12 arrayByAddingObjectsFromArray:v13];

  v15 = v11;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v14;
  v16 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v48;
    v44 = v15;
    v45 = v4;
    do
    {
      v19 = 0;
      do
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v47 + 1) + 8 * v19);
        v21 = [v4 objectForKeyedSubscript:v20];
        v22 = [v15 objectForKeyedSubscript:v20];
        v23 = [v21 nn_date];
        [v23 timeIntervalSinceReferenceDate];
        v25 = v24;

        if (v25 < v10)
        {

          v21 = 0;
        }

        v26 = [v22 nn_date];
        [v26 timeIntervalSinceReferenceDate];
        v28 = v27;

        if (v28 < v10)
        {

          v22 = 0;
LABEL_18:
          if (([v21 nn_active] & 1) == 0)
          {
            v30 = v22;
LABEL_26:
            if (![v30 nn_active])
            {
              goto LABEL_28;
            }
          }

          [v3 addObject:v20];
          goto LABEL_28;
        }

        if (v21)
        {
          v29 = v22 == 0;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          goto LABEL_18;
        }

        v31 = [v21 nn_active];
        v32 = [v22 nn_active];
        if (v31 == v32)
        {
          v30 = v21;
          goto LABEL_26;
        }

        v33 = v3;
        v34 = [v22 nn_date];
        v35 = [v21 nn_date];
        v36 = [v34 compare:v35];

        v37 = v21;
        if (v36 + 1 >= 2)
        {
          if (v36 != 1)
          {
            v38 = 0;
            goto LABEL_31;
          }

          v37 = v22;
        }

        v38 = v37;
LABEL_31:
        v3 = v33;
        v15 = v44;
        if ([v38 nn_active])
        {
          [v33 addObject:v20];
        }

        v4 = v45;
LABEL_28:

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v39 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      v17 = v39;
    }

    while (v39);
  }

  v40 = [v3 copy];

  return v40;
}

- (NSSet)readonlyArticleIdentifiers
{
  v29 = +[NSMutableSet set];
  v3 = [(NNArticleIdentifierSyncManager *)self _readonlyArticleStateLookup];
  v4 = [(NNArticleIdentifierSyncManager *)self _readwriteArticleStateLookup];
  v5 = [v3 allKeys];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v27 = *v31;
    v28 = v5;
    v26 = v4;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:{v10, v26, v27, v28}];
        v12 = [v4 objectForKeyedSubscript:v10];
        v13 = v12;
        if (v11)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          if (([v11 nn_active] & 1) == 0)
          {
            v15 = v13;
LABEL_19:
            if (![v15 nn_active])
            {
              goto LABEL_25;
            }
          }

          [v29 addObject:v10];
          goto LABEL_25;
        }

        v16 = [v11 nn_active];
        v17 = [v13 nn_active];
        if (v16 == v17)
        {
          v15 = v11;
          goto LABEL_19;
        }

        v18 = v3;
        v19 = [v13 nn_date];
        v20 = [v11 nn_date];
        v21 = [v19 compare:v20];

        v22 = v11;
        if (v21 + 1 >= 2)
        {
          if (v21 != 1)
          {
            v23 = 0;
            goto LABEL_22;
          }

          v22 = v13;
        }

        v23 = v22;
LABEL_22:
        v3 = v18;
        if ([v23 nn_active])
        {
          [v29 addObject:v10];
        }

        v4 = v26;
        v8 = v27;
        v5 = v28;
LABEL_25:
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  v24 = [v29 copy];

  return v24;
}

- (id)_readonlyArticleStateLookup
{
  v3 = [(NNArticleIdentifierSyncManager *)self readonlyKey];
  v4 = [(NNArticleIdentifierSyncManager *)self _lookupIdentifiersForKey:v3];

  return v4;
}

- (id)_readwriteArticleStateLookup
{
  v3 = [(NNArticleIdentifierSyncManager *)self readwriteKey];
  v4 = [(NNArticleIdentifierSyncManager *)self _lookupIdentifiersForKey:v3];

  return v4;
}

- (id)_lookupIdentifiersForKey:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = +[NSUserDefaults nanoNewsSyncDefaults];
    [v4 synchronize];
    v5 = v3;
    v6 = [v4 dictionaryForKey:v3];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = +[NSDictionary dictionary];
    }

    v10 = v8;

    v11 = +[NSMutableArray array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v10;
    v12 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          v17 = [v9 objectForKeyedSubscript:v16];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            NSLog(@"Unknown value %@ for key %@ in lookup %@", v17, v16, v5);
            [v11 addObject:v16];
          }
        }

        v13 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    if ([v11 count])
    {
      v18 = [v9 mutableCopy];
      [v18 removeObjectsForKeys:v11];
      v19 = [v18 copy];

      v9 = v19;
    }

    v3 = v5;
  }

  else
  {
    v9 = +[NSDictionary dictionary];
  }

  return v9;
}

- (id)_readonlyResetDate
{
  v3 = [(NNArticleIdentifierSyncManager *)self readonlyResetKey];
  NSLog(@"_readonlyResetDate for %@", v3);

  v4 = +[NSUserDefaults nanoNewsSyncDefaults];
  [v4 synchronize];
  v5 = [(NNArticleIdentifierSyncManager *)self readonlyResetKey];
  v6 = [v4 objectForKey:v5];

  return v6;
}

- (id)_readwriteResetDate
{
  v3 = [(NNArticleIdentifierSyncManager *)self readwriteResetKey];
  NSLog(@"_readwriteResetDate for %@", v3);

  v4 = +[NSUserDefaults nanoNewsSyncDefaults];
  [v4 synchronize];
  v5 = [(NNArticleIdentifierSyncManager *)self readwriteResetKey];
  v6 = [v4 objectForKey:v5];

  return v6;
}

@end