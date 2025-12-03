@interface NNArticleIdentifierSyncManager
+ (id)savedManager;
+ (id)seenManager;
- (NNArticleIdentifierSyncManager)initWithReadonlyResetKey:(id)key readwriteResetKey:(id)resetKey readonlyKey:(id)readonlyKey readwriteKey:(id)readwriteKey;
- (NSSet)articleIdentifiers;
- (NSSet)readonlyArticleIdentifiers;
- (id)_lookupIdentifiersForKey:(id)key;
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
  if (qword_CD18 != -1)
  {
    sub_4074();
  }

  v3 = qword_CD10;

  return v3;
}

+ (id)seenManager
{
  if (qword_CD28 != -1)
  {
    sub_4088();
  }

  v3 = qword_CD20;

  return v3;
}

- (NNArticleIdentifierSyncManager)initWithReadonlyResetKey:(id)key readwriteResetKey:(id)resetKey readonlyKey:(id)readonlyKey readwriteKey:(id)readwriteKey
{
  keyCopy = key;
  resetKeyCopy = resetKey;
  readonlyKeyCopy = readonlyKey;
  readwriteKeyCopy = readwriteKey;
  v30.receiver = self;
  v30.super_class = NNArticleIdentifierSyncManager;
  v14 = [(NNArticleIdentifierSyncManager *)&v30 init];
  if (v14)
  {
    v15 = [keyCopy copy];
    readonlyResetKey = v14->_readonlyResetKey;
    v14->_readonlyResetKey = v15;

    v17 = [resetKeyCopy copy];
    readwriteResetKey = v14->_readwriteResetKey;
    v14->_readwriteResetKey = v17;

    v19 = [readonlyKeyCopy copy];
    readonlyKey = v14->_readonlyKey;
    v14->_readonlyKey = v19;

    v21 = [readwriteKeyCopy copy];
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
  readwriteResetKey = [(NNArticleIdentifierSyncManager *)self readwriteResetKey];
  v4 = [readwriteResetKey length];

  if (v4)
  {
    v8 = +[NSDate date];
    v5 = +[NSUserDefaults nanoNewsSyncDefaults];
    readwriteResetKey2 = [(NNArticleIdentifierSyncManager *)self readwriteResetKey];
    [v5 setObject:v8 forKey:readwriteResetKey2];

    readwriteKey = [(NNArticleIdentifierSyncManager *)self readwriteKey];
    [v5 setObject:&__NSDictionary0__struct forKey:readwriteKey];

    [(NNArticleIdentifierSyncManager *)self synchronize];
  }
}

- (void)synchronize
{
  v4 = +[NSUserDefaults nanoNewsSyncDefaults];
  [v4 synchronize];
  synchronizedKeys = [(NNArticleIdentifierSyncManager *)self synchronizedKeys];
  [v4 nn_synchronizeKeys:synchronizedKeys];
}

- (NSSet)articleIdentifiers
{
  v3 = +[NSMutableSet set];
  _readonlyArticleStateLookup = [(NNArticleIdentifierSyncManager *)self _readonlyArticleStateLookup];
  _readonlyResetDate = [(NNArticleIdentifierSyncManager *)self _readonlyResetDate];
  _readwriteResetDate = [(NNArticleIdentifierSyncManager *)self _readwriteResetDate];
  v43 = _readonlyResetDate;
  [_readonlyResetDate timeIntervalSinceReferenceDate];
  v8 = v7;
  v42 = _readwriteResetDate;
  [_readwriteResetDate timeIntervalSinceReferenceDate];
  if (v8 >= v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  _readwriteArticleStateLookup = [(NNArticleIdentifierSyncManager *)self _readwriteArticleStateLookup];
  allKeys = [_readonlyArticleStateLookup allKeys];
  allKeys2 = [_readwriteArticleStateLookup allKeys];
  v14 = [allKeys arrayByAddingObjectsFromArray:allKeys2];

  v15 = _readwriteArticleStateLookup;
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
    v45 = _readonlyArticleStateLookup;
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
        v21 = [_readonlyArticleStateLookup objectForKeyedSubscript:v20];
        v22 = [v15 objectForKeyedSubscript:v20];
        nn_date = [v21 nn_date];
        [nn_date timeIntervalSinceReferenceDate];
        v25 = v24;

        if (v25 < v10)
        {

          v21 = 0;
        }

        nn_date2 = [v22 nn_date];
        [nn_date2 timeIntervalSinceReferenceDate];
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

        nn_active = [v21 nn_active];
        nn_active2 = [v22 nn_active];
        if (nn_active == nn_active2)
        {
          v30 = v21;
          goto LABEL_26;
        }

        v33 = v3;
        nn_date3 = [v22 nn_date];
        nn_date4 = [v21 nn_date];
        v36 = [nn_date3 compare:nn_date4];

        v37 = v21;
        if ((v36 + 1) >= 2)
        {
          if (v36 != &dword_0 + 1)
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

        _readonlyArticleStateLookup = v45;
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
  _readonlyArticleStateLookup = [(NNArticleIdentifierSyncManager *)self _readonlyArticleStateLookup];
  _readwriteArticleStateLookup = [(NNArticleIdentifierSyncManager *)self _readwriteArticleStateLookup];
  allKeys = [_readonlyArticleStateLookup allKeys];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [allKeys countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v27 = *v31;
    v28 = allKeys;
    v26 = _readwriteArticleStateLookup;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [_readonlyArticleStateLookup objectForKeyedSubscript:{v10, v26, v27, v28}];
        v12 = [_readwriteArticleStateLookup objectForKeyedSubscript:v10];
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

        nn_active = [v11 nn_active];
        nn_active2 = [v13 nn_active];
        if (nn_active == nn_active2)
        {
          v15 = v11;
          goto LABEL_19;
        }

        v18 = _readonlyArticleStateLookup;
        nn_date = [v13 nn_date];
        nn_date2 = [v11 nn_date];
        v21 = [nn_date compare:nn_date2];

        v22 = v11;
        if ((v21 + 1) >= 2)
        {
          if (v21 != &dword_0 + 1)
          {
            v23 = 0;
            goto LABEL_22;
          }

          v22 = v13;
        }

        v23 = v22;
LABEL_22:
        _readonlyArticleStateLookup = v18;
        if ([v23 nn_active])
        {
          [v29 addObject:v10];
        }

        _readwriteArticleStateLookup = v26;
        v8 = v27;
        allKeys = v28;
LABEL_25:
      }

      v7 = [allKeys countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  v24 = [v29 copy];

  return v24;
}

- (id)_readonlyArticleStateLookup
{
  readonlyKey = [(NNArticleIdentifierSyncManager *)self readonlyKey];
  v4 = [(NNArticleIdentifierSyncManager *)self _lookupIdentifiersForKey:readonlyKey];

  return v4;
}

- (id)_readwriteArticleStateLookup
{
  readwriteKey = [(NNArticleIdentifierSyncManager *)self readwriteKey];
  v4 = [(NNArticleIdentifierSyncManager *)self _lookupIdentifiersForKey:readwriteKey];

  return v4;
}

- (id)_lookupIdentifiersForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy length])
  {
    v4 = +[NSUserDefaults nanoNewsSyncDefaults];
    [v4 synchronize];
    v5 = keyCopy;
    v6 = [v4 dictionaryForKey:keyCopy];
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

    keyCopy = v5;
  }

  else
  {
    v9 = +[NSDictionary dictionary];
  }

  return v9;
}

- (id)_readonlyResetDate
{
  readonlyResetKey = [(NNArticleIdentifierSyncManager *)self readonlyResetKey];
  NSLog(@"_readonlyResetDate for %@", readonlyResetKey);

  v4 = +[NSUserDefaults nanoNewsSyncDefaults];
  [v4 synchronize];
  readonlyResetKey2 = [(NNArticleIdentifierSyncManager *)self readonlyResetKey];
  v6 = [v4 objectForKey:readonlyResetKey2];

  return v6;
}

- (id)_readwriteResetDate
{
  readwriteResetKey = [(NNArticleIdentifierSyncManager *)self readwriteResetKey];
  NSLog(@"_readwriteResetDate for %@", readwriteResetKey);

  v4 = +[NSUserDefaults nanoNewsSyncDefaults];
  [v4 synchronize];
  readwriteResetKey2 = [(NNArticleIdentifierSyncManager *)self readwriteResetKey];
  v6 = [v4 objectForKey:readwriteResetKey2];

  return v6;
}

@end