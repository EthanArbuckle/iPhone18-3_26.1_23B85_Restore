@interface BAPrivateDataSource
- (BAPrivateDataSource)init;
- (BAPrivateDataSourceDelegate)delegate;
- (id)generatePrivateData;
- (void)_BCCloudSecureUserDataManagerChanged:(id)a3;
- (void)dealloc;
- (void)fetchPrivateData:(id)a3;
- (void)fetchPrivateDataForKey:(id)a3 completion:(id)a4;
- (void)syncPrivateData:(id)a3 toCloudWithCompletion:(id)a4;
@end

@implementation BAPrivateDataSource

- (BAPrivateDataSource)init
{
  v8.receiver = self;
  v8.super_class = BAPrivateDataSource;
  v2 = [(BAPrivateDataSource *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("BAPrivateDataSource.workQueue", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;

    v6 = +[NSDistributedNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_BCCloudSecureUserDataManagerChanged:" name:BCCloudSecureUserDataManagerChanged object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self name:BCCloudSecureUserDataManagerChanged object:0];

  v4.receiver = self;
  v4.super_class = BAPrivateDataSource;
  [(BAPrivateDataSource *)&v4 dealloc];
}

- (void)_BCCloudSecureUserDataManagerChanged:(id)a3
{
  v4 = [(BAPrivateDataSource *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_204C;
  block[3] = &unk_25EBD0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)fetchPrivateData:(id)a3
{
  v4 = a3;
  v5 = [(BAPrivateDataSource *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_27AC;
  v7[3] = &unk_25EC48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)fetchPrivateDataForKey:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[BDSSecureManager sharedManager];
  v8 = [v7 userDataManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2B70;
  v11[3] = &unk_25EC98;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  [v8 userDatumForKey:v10 completion:v11];
}

- (id)generatePrivateData
{
  v2 = BAPrivateAllKeys();
  v3 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v2 count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v18;
    *&v6 = 138412546;
    v16 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 isEqualToString:{@"userPrivateSeed", v16, v17}] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"contentPrivateSeed"))
        {
          v11 = BAGenerateSeed();
        }

        else
        {
          v12 = +[NSUUID UUID];
          v11 = [v12 UUIDString];
        }

        v13 = BALog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = v16;
          v22 = v10;
          v23 = 2112;
          v24 = v11;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "generatePrivateData: key: %@ value: %@", buf, 0x16u);
        }

        [v3 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v7);
  }

  v14 = [v3 copy];

  return v14;
}

- (void)syncPrivateData:(id)a3 toCloudWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BAPrivateDataSource *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_31CC;
  block[3] = &unk_25ED38;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (BAPrivateDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end