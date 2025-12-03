@interface MZKeyValueStoreSerializer
- (BOOL)_isGetAllSinceDomainVersionRequest;
- (BOOL)_isRemoveAllSinceDomainVersion;
- (MZKeyValueStoreDataVerionPair)objectVersionPairForKey:(id)key;
- (MZKeyValueStoreSerializer)initWithTransaction:(id)transaction;
- (id)baseDictionary;
- (id)dataWithNodes:(id)nodes;
- (id)keys;
- (id)payload;
- (id)sinceDomainVersion;
@end

@implementation MZKeyValueStoreSerializer

- (MZKeyValueStoreSerializer)initWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v9.receiver = self;
  v9.super_class = MZKeyValueStoreSerializer;
  v6 = [(MZKeyValueStoreSerializer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, transaction);
  }

  return v7;
}

- (id)payload
{
  v21 = +[NSMutableArray array];
  keys = [(MZKeyValueStoreSerializer *)self keys];
  transaction = [(MZKeyValueStoreSerializer *)self transaction];
  type = [transaction type];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = keys;
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
          v14 = type == 2;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        if (type == 3 || v15)
        {
          v16 = v10;
          mZDataByDeflatingWithGZip = [v16 MZDataByDeflatingWithGZip];

          if (mZDataByDeflatingWithGZip)
          {
            [v13 setValue:mZDataByDeflatingWithGZip forKey:@"value"];
          }

          [v21 addObject:v13];
        }

        else if (type == 1)
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
  transaction = [(MZKeyValueStoreSerializer *)self transaction];
  sinceDomainVersion = [transaction sinceDomainVersion];

  transaction2 = [(MZKeyValueStoreSerializer *)self transaction];
  processor = [transaction2 processor];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    transaction3 = [(MZKeyValueStoreSerializer *)self transaction];
    processor2 = [transaction3 processor];
    transaction4 = [(MZKeyValueStoreSerializer *)self transaction];
    v11 = [processor2 sinceDomainVersionForTransaction:transaction4];

    sinceDomainVersion = v11;
  }

  return sinceDomainVersion;
}

- (BOOL)_isGetAllSinceDomainVersionRequest
{
  transaction = [(MZKeyValueStoreSerializer *)self transaction];
  if ([transaction type] == 1)
  {
    sinceDomainVersion = [(MZKeyValueStoreSerializer *)self sinceDomainVersion];
    v5 = sinceDomainVersion != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isRemoveAllSinceDomainVersion
{
  transaction = [(MZKeyValueStoreSerializer *)self transaction];
  if ([transaction type] == 3)
  {
    sinceDomainVersion = [(MZKeyValueStoreSerializer *)self sinceDomainVersion];
    v5 = sinceDomainVersion != 0;
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
  transaction = [(MZKeyValueStoreSerializer *)self transaction];
  domain = [transaction domain];
  [v3 setObject:domain forKey:@"domain"];

  if ([(MZKeyValueStoreSerializer *)self _isGetAllSinceDomainVersionRequest]|| [(MZKeyValueStoreSerializer *)self _isRemoveAllSinceDomainVersion])
  {
    sinceDomainVersion = [(MZKeyValueStoreSerializer *)self sinceDomainVersion];
    if ([(__CFString *)sinceDomainVersion isEqualToString:@"0"])
    {

      sinceDomainVersion = @"0";
    }

    [v3 setObject:sinceDomainVersion forKey:@"since-domain-version"];
  }

  return v3;
}

- (id)dataWithNodes:(id)nodes
{
  nodesCopy = nodes;
  if ([nodesCopy count] || -[MZKeyValueStoreSerializer _isGetAllSinceDomainVersionRequest](self, "_isGetAllSinceDomainVersionRequest") || -[MZKeyValueStoreSerializer _isRemoveAllSinceDomainVersion](self, "_isRemoveAllSinceDomainVersion"))
  {
    baseDictionary = [(MZKeyValueStoreSerializer *)self baseDictionary];
    if (!nodesCopy)
    {
      nodesCopy = +[NSArray array];
    }

    [baseDictionary setValue:nodesCopy forKey:@"keys"];
    if (baseDictionary)
    {
      v6 = [NSPropertyListSerialization dataWithPropertyList:baseDictionary format:kMZKeyValueStorePlistFormatNetworkData options:0 error:0];
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
  transaction = [(MZKeyValueStoreSerializer *)self transaction];
  keys = [transaction keys];

  transaction2 = [(MZKeyValueStoreSerializer *)self transaction];
  processor = [transaction2 processor];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    transaction3 = [(MZKeyValueStoreSerializer *)self transaction];
    processor2 = [transaction3 processor];
    transaction4 = [(MZKeyValueStoreSerializer *)self transaction];
    v11 = [processor2 keysForTransaction:transaction4];

    keys = v11;
  }

  return keys;
}

- (MZKeyValueStoreDataVerionPair)objectVersionPairForKey:(id)key
{
  keyCopy = key;
  transaction = [(MZKeyValueStoreSerializer *)self transaction];
  type = [transaction type];

  if (type == 1)
  {
    transaction2 = [(MZKeyValueStoreSerializer *)self transaction];
    processor = [transaction2 processor];
    transaction3 = [(MZKeyValueStoreSerializer *)self transaction];
    v10 = [processor versionForGetTransaction:transaction3 key:keyCopy];

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

  else if ((type & 0xFFFFFFFE) == 2)
  {
    transaction4 = [(MZKeyValueStoreSerializer *)self transaction];
    processor2 = [transaction4 processor];
    transaction5 = [(MZKeyValueStoreSerializer *)self transaction];
    v19 = 0;
    v11 = [processor2 dataForSetTransaction:transaction5 key:keyCopy version:&v19];
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