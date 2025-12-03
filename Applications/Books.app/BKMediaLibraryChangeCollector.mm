@interface BKMediaLibraryChangeCollector
+ (void)logAssets:(id)assets message:(id)message;
- (BKMediaLibraryChangeCollector)initWithAssetCache:(id)cache;
- (void)finalizeChangeProcessing;
@end

@implementation BKMediaLibraryChangeCollector

- (void)finalizeChangeProcessing
{
  beforeChangesCacheIDSet = [(BKMediaLibraryChangeCollector *)self beforeChangesCacheIDSet];
  afterChangesCacheIDSet = [(BKMediaLibraryChangeCollector *)self afterChangesCacheIDSet];
  [beforeChangesCacheIDSet minusSet:afterChangesCacheIDSet];

  beforeChangesCacheIDSet2 = [(BKMediaLibraryChangeCollector *)self beforeChangesCacheIDSet];
  v6 = [NSSet setWithSet:beforeChangesCacheIDSet2];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001D4194;
  v22[3] = &unk_100A0B518;
  v22[4] = self;
  [v6 enumerateObjectsUsingBlock:v22];
  removed = [(BKMediaLibraryChangeCollector *)self removed];
  v8 = [removed count];

  if (v8)
  {
    v9 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100794108(self);
    }

    removed2 = [(BKMediaLibraryChangeCollector *)self removed];
    allValues = [removed2 allValues];
    [BKMediaLibraryChangeCollector logAssets:allValues message:@"removing"];
  }

  added = [(BKMediaLibraryChangeCollector *)self added];
  v13 = [added count];

  if (v13)
  {
    v14 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1007941CC(self);
    }

    added2 = [(BKMediaLibraryChangeCollector *)self added];
    allValues2 = [added2 allValues];
    [BKMediaLibraryChangeCollector logAssets:allValues2 message:@"adding"];
  }

  updated = [(BKMediaLibraryChangeCollector *)self updated];
  v18 = [updated count];

  if (v18)
  {
    v19 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100794290(self);
    }

    updated2 = [(BKMediaLibraryChangeCollector *)self updated];
    allValues3 = [updated2 allValues];
    [BKMediaLibraryChangeCollector logAssets:allValues3 message:@"updating"];
  }
}

- (BKMediaLibraryChangeCollector)initWithAssetCache:(id)cache
{
  cacheCopy = cache;
  v18.receiver = self;
  v18.super_class = BKMediaLibraryChangeCollector;
  v6 = [(BKMediaLibraryChangeCollector *)&v18 init];
  if (v6)
  {
    v7 = +[NSMutableDictionary dictionary];
    added = v6->_added;
    v6->_added = v7;

    v9 = +[NSMutableDictionary dictionary];
    updated = v6->_updated;
    v6->_updated = v9;

    v11 = +[NSMutableDictionary dictionary];
    removed = v6->_removed;
    v6->_removed = v11;

    objc_storeStrong(&v6->_assetCache, cache);
    mutableCacheIDSet = [cacheCopy mutableCacheIDSet];
    beforeChangesCacheIDSet = v6->_beforeChangesCacheIDSet;
    v6->_beforeChangesCacheIDSet = mutableCacheIDSet;

    v15 = objc_opt_new();
    afterChangesCacheIDSet = v6->_afterChangesCacheIDSet;
    v6->_afterChangesCacheIDSet = v15;
  }

  return v6;
}

+ (void)logAssets:(id)assets message:(id)message
{
  assetsCopy = assets;
  messageCopy = message;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [assetsCopy countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = BKLibraryDataSourceMediaLibraryLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          assetID = [v11 assetID];
          title = [v11 title];
          *buf = 138543874;
          v20 = messageCopy;
          v21 = 2112;
          v22 = assetID;
          v23 = 2112;
          v24 = title;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}@ assetID: %@, title: %@", buf, 0x20u);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [assetsCopy countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v8);
  }
}

@end