@interface BKLibraryDataSourceJaliscoDAAPClientProxy
+ (id)sharedproxy;
- (BKLibraryDataSourceJaliscoDAAPClientProxy)init;
- (void)clientDetectedPredicateChange:(id)change;
- (void)clientDetectedStoreChange:(id)change;
- (void)registerDataSource:(id)source;
- (void)unregisterDataSource:(id)source;
@end

@implementation BKLibraryDataSourceJaliscoDAAPClientProxy

+ (id)sharedproxy
{
  if (qword_100AF7888[0] != -1)
  {
    sub_100020318();
  }

  v3 = qword_100AF7880;

  return v3;
}

- (BKLibraryDataSourceJaliscoDAAPClientProxy)init
{
  v6.receiver = self;
  v6.super_class = BKLibraryDataSourceJaliscoDAAPClientProxy;
  v2 = [(BKLibraryDataSourceJaliscoDAAPClientProxy *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dataSources = v2->_dataSources;
    v2->_dataSources = v3;
  }

  return v2;
}

- (void)registerDataSource:(id)source
{
  sourceCopy = source;
  dataSources = [(BKLibraryDataSourceJaliscoDAAPClientProxy *)self dataSources];
  [dataSources addObject:sourceCopy];
}

- (void)unregisterDataSource:(id)source
{
  sourceCopy = source;
  dataSources = [(BKLibraryDataSourceJaliscoDAAPClientProxy *)self dataSources];
  [dataSources removeObject:sourceCopy];
}

- (void)clientDetectedStoreChange:(id)change
{
  changeCopy = change;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  dataSources = [(BKLibraryDataSourceJaliscoDAAPClientProxy *)self dataSources];
  v6 = [dataSources countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(dataSources);
        }

        [*(*(&v10 + 1) + 8 * v9) clientDetectedStoreChange:changeCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [dataSources countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)clientDetectedPredicateChange:(id)change
{
  changeCopy = change;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  dataSources = [(BKLibraryDataSourceJaliscoDAAPClientProxy *)self dataSources];
  v6 = [dataSources countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(dataSources);
        }

        [*(*(&v10 + 1) + 8 * v9) clientDetectedPredicateChange:changeCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [dataSources countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end