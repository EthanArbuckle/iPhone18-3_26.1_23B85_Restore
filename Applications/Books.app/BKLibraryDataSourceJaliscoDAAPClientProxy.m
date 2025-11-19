@interface BKLibraryDataSourceJaliscoDAAPClientProxy
+ (id)sharedproxy;
- (BKLibraryDataSourceJaliscoDAAPClientProxy)init;
- (void)clientDetectedPredicateChange:(id)a3;
- (void)clientDetectedStoreChange:(id)a3;
- (void)registerDataSource:(id)a3;
- (void)unregisterDataSource:(id)a3;
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

- (void)registerDataSource:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceJaliscoDAAPClientProxy *)self dataSources];
  [v5 addObject:v4];
}

- (void)unregisterDataSource:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceJaliscoDAAPClientProxy *)self dataSources];
  [v5 removeObject:v4];
}

- (void)clientDetectedStoreChange:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(BKLibraryDataSourceJaliscoDAAPClientProxy *)self dataSources];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) clientDetectedStoreChange:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)clientDetectedPredicateChange:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(BKLibraryDataSourceJaliscoDAAPClientProxy *)self dataSources];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) clientDetectedPredicateChange:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end