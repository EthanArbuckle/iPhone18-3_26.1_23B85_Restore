@interface BKMediaLibraryChangeCollector
+ (void)logAssets:(id)a3 message:(id)a4;
- (BKMediaLibraryChangeCollector)initWithAssetCache:(id)a3;
- (void)finalizeChangeProcessing;
@end

@implementation BKMediaLibraryChangeCollector

- (void)finalizeChangeProcessing
{
  v3 = [(BKMediaLibraryChangeCollector *)self beforeChangesCacheIDSet];
  v4 = [(BKMediaLibraryChangeCollector *)self afterChangesCacheIDSet];
  [v3 minusSet:v4];

  v5 = [(BKMediaLibraryChangeCollector *)self beforeChangesCacheIDSet];
  v6 = [NSSet setWithSet:v5];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001D4194;
  v22[3] = &unk_100A0B518;
  v22[4] = self;
  [v6 enumerateObjectsUsingBlock:v22];
  v7 = [(BKMediaLibraryChangeCollector *)self removed];
  v8 = [v7 count];

  if (v8)
  {
    v9 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100794108(self);
    }

    v10 = [(BKMediaLibraryChangeCollector *)self removed];
    v11 = [v10 allValues];
    [BKMediaLibraryChangeCollector logAssets:v11 message:@"removing"];
  }

  v12 = [(BKMediaLibraryChangeCollector *)self added];
  v13 = [v12 count];

  if (v13)
  {
    v14 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1007941CC(self);
    }

    v15 = [(BKMediaLibraryChangeCollector *)self added];
    v16 = [v15 allValues];
    [BKMediaLibraryChangeCollector logAssets:v16 message:@"adding"];
  }

  v17 = [(BKMediaLibraryChangeCollector *)self updated];
  v18 = [v17 count];

  if (v18)
  {
    v19 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100794290(self);
    }

    v20 = [(BKMediaLibraryChangeCollector *)self updated];
    v21 = [v20 allValues];
    [BKMediaLibraryChangeCollector logAssets:v21 message:@"updating"];
  }
}

- (BKMediaLibraryChangeCollector)initWithAssetCache:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v6->_assetCache, a3);
    v13 = [v5 mutableCacheIDSet];
    beforeChangesCacheIDSet = v6->_beforeChangesCacheIDSet;
    v6->_beforeChangesCacheIDSet = v13;

    v15 = objc_opt_new();
    afterChangesCacheIDSet = v6->_afterChangesCacheIDSet;
    v6->_afterChangesCacheIDSet = v15;
  }

  return v6;
}

+ (void)logAssets:(id)a3 message:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v15 objects:v25 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = BKLibraryDataSourceMediaLibraryLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = [v11 assetID];
          v14 = [v11 title];
          *buf = 138543874;
          v20 = v6;
          v21 = 2112;
          v22 = v13;
          v23 = 2112;
          v24 = v14;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}@ assetID: %@, title: %@", buf, 0x20u);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v8);
  }
}

@end