@interface MZKeyValueStoreSerializer
- (BOOL)_isGetAllSinceDomainVersionRequest;
- (BOOL)_isRemoveAllSinceDomainVersion;
- (MZKeyValueStoreDataVerionPair)objectVersionPairForKey:(id)a3;
- (MZKeyValueStoreSerializer)initWithTransaction:(id)a3;
- (id)baseDictionary;
- (id)dataWithNodes:(id)a3;
- (id)keys;
- (id)payload;
- (id)sinceDomainVersion;
@end

@implementation MZKeyValueStoreSerializer

- (MZKeyValueStoreSerializer)initWithTransaction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MZKeyValueStoreSerializer;
  v6 = [(MZKeyValueStoreSerializer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, a3);
  }

  return v7;
}

- (id)payload
{
  v21 = +[NSMutableArray array];
  v2 = [(MZKeyValueStoreSerializer *)self keys];
  v3 = [(MZKeyValueStoreSerializer *)self transaction];
  v4 = [v3 type];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v2;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [(MZKeyValueStoreSerializer *)self objectVersionPairForKey:v8];
        v12 = v11;
        v13 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v8, @"key", v11, @"base-version", 0];
        if (v10)
        {
          v14 = v4 == 2;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        if (v4 == 3 || v15)
        {
          v16 = v10;
          v17 = [v16 MZDataByDeflatingWithGZip];

          if (v17)
          {
            [v13 setValue:v17 forKey:@"value"];
          }

          [v21 addObject:v13];
        }

        else if (v4 == 1)
        {
          [v21 addObject:v13];
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  v18 = [(MZKeyValueStoreSerializer *)self dataWithNodes:v21];

  return v18;
}

- (id)sinceDomainVersion
{
  v3 = [(MZKeyValueStoreSerializer *)self transaction];
  v4 = [v3 sinceDomainVersion];

  v5 = [(MZKeyValueStoreSerializer *)self transaction];
  v6 = [v5 processor];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(MZKeyValueStoreSerializer *)self transaction];
    v9 = [v8 processor];
    v10 = [(MZKeyValueStoreSerializer *)self transaction];
    v11 = [v9 sinceDomainVersionForTransaction:v10];

    v4 = v11;
  }

  return v4;
}

- (BOOL)_isGetAllSinceDomainVersionRequest
{
  v3 = [(MZKeyValueStoreSerializer *)self transaction];
  if ([v3 type] == 1)
  {
    v4 = [(MZKeyValueStoreSerializer *)self sinceDomainVersion];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isRemoveAllSinceDomainVersion
{
  v3 = [(MZKeyValueStoreSerializer *)self transaction];
  if ([v3 type] == 3)
  {
    v4 = [(MZKeyValueStoreSerializer *)self sinceDomainVersion];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)baseDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(MZKeyValueStoreSerializer *)self transaction];
  v5 = [v4 domain];
  [v3 setObject:v5 forKey:@"domain"];

  if ([(MZKeyValueStoreSerializer *)self _isGetAllSinceDomainVersionRequest]|| [(MZKeyValueStoreSerializer *)self _isRemoveAllSinceDomainVersion])
  {
    v6 = [(MZKeyValueStoreSerializer *)self sinceDomainVersion];
    if ([(__CFString *)v6 isEqualToString:@"0"])
    {

      v6 = @"0";
    }

    [v3 setObject:v6 forKey:@"since-domain-version"];
  }

  return v3;
}

- (id)dataWithNodes:(id)a3
{
  v4 = a3;
  if ([v4 count] || -[MZKeyValueStoreSerializer _isGetAllSinceDomainVersionRequest](self, "_isGetAllSinceDomainVersionRequest") || -[MZKeyValueStoreSerializer _isRemoveAllSinceDomainVersion](self, "_isRemoveAllSinceDomainVersion"))
  {
    v5 = [(MZKeyValueStoreSerializer *)self baseDictionary];
    if (!v4)
    {
      v4 = +[NSArray array];
    }

    [v5 setValue:v4 forKey:@"keys"];
    if (v5)
    {
      v6 = [NSPropertyListSerialization dataWithPropertyList:v5 format:kMZKeyValueStorePlistFormatNetworkData options:0 error:0];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)keys
{
  v3 = [(MZKeyValueStoreSerializer *)self transaction];
  v4 = [v3 keys];

  v5 = [(MZKeyValueStoreSerializer *)self transaction];
  v6 = [v5 processor];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(MZKeyValueStoreSerializer *)self transaction];
    v9 = [v8 processor];
    v10 = [(MZKeyValueStoreSerializer *)self transaction];
    v11 = [v9 keysForTransaction:v10];

    v4 = v11;
  }

  return v4;
}

- (MZKeyValueStoreDataVerionPair)objectVersionPairForKey:(id)a3
{
  v4 = a3;
  v5 = [(MZKeyValueStoreSerializer *)self transaction];
  v6 = [v5 type];

  if (v6 == 1)
  {
    v7 = [(MZKeyValueStoreSerializer *)self transaction];
    v8 = [v7 processor];
    v9 = [(MZKeyValueStoreSerializer *)self transaction];
    v10 = [v8 versionForGetTransaction:v9 key:v4];

    v11 = 0;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = @"0";
    }
  }

  else if ((v6 & 0xFFFFFFFE) == 2)
  {
    v13 = [(MZKeyValueStoreSerializer *)self transaction];
    v14 = [v13 processor];
    v15 = [(MZKeyValueStoreSerializer *)self transaction];
    v19 = 0;
    v11 = [v14 dataForSetTransaction:v15 key:v4 version:&v19];
    v16 = v19;

    if (v16)
    {
      v12 = v16;
    }

    else
    {
      v12 = @"1";
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v17 = v11;
  v18 = v12;
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

@end