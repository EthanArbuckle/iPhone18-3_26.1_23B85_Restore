@interface InAppPromotionManager
+ (id)manager;
- (BOOL)setPromotionInfo:(id)a3 forBundleID:(id)a4 error:(id *)a5;
- (InAppPromotionManager)init;
- (id)databaseStore;
- (id)promotionInfoForProductIdentifiers:(id)a3 bundleID:(id)a4 error:(id *)a5;
- (void)_migrateITunesStoreDDatabase;
@end

@implementation InAppPromotionManager

+ (id)manager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F790;
  block[3] = &unk_10037F9B0;
  block[4] = a1;
  if (qword_1003D4878 != -1)
  {
    dispatch_once(&qword_1003D4878, block);
  }

  v2 = qword_1003D4870;

  return v2;
}

- (InAppPromotionManager)init
{
  v4.receiver = self;
  v4.super_class = InAppPromotionManager;
  v2 = [(InAppPromotionManager *)&v4 init];
  [(InAppPromotionManager *)v2 _migrateITunesStoreDDatabase];
  return v2;
}

- (void)_migrateITunesStoreDDatabase
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 sk_iTunesStoreLibraryDataURL];

  v5 = [v4 path];
  v6 = [v5 stringByAppendingPathComponent:@"promoted_iaps.sqlitedb"];
  v7 = [v4 path];
  v8 = [v7 stringByAppendingPathComponent:@"promoted_iaps.sqlitedb-shm"];
  v9 = [v4 path];
  v10 = [v9 stringByAppendingPathComponent:@"promoted_iaps.sqlitedb-wal"];
  v11 = [NSArray arrayWithObjects:v6, v8, v10, 0];

  v12 = +[NSFileManager defaultManager];
  v13 = [v11 objectAtIndexedSubscript:0];
  LOBYTE(v7) = [v12 fileExistsAtPath:v13];

  if (v7)
  {
    if (qword_1003D48C8 != -1)
    {
      sub_1002D10AC();
    }

    v14 = qword_1003D4880;
    if (os_log_type_enabled(qword_1003D4880, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Detected promoted IAPs are still using the database in itunesstored, migrating to internal StoreKit database", buf, 2u);
    }

    v15 = [(InAppPromotionManager *)self databaseStore];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10006FA8C;
    v17[3] = &unk_100382E20;
    v18 = v11;
    [v15 modifyUsingTransaction:v17];
  }

  else
  {
    if (qword_1003D48C8 != -1)
    {
      sub_1002D10AC();
    }

    v16 = qword_1003D4880;
    if (os_log_type_enabled(qword_1003D4880, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "iTunesStoreD promoted IAP database file not found, assuming migration is already complete", buf, 2u);
    }
  }
}

- (id)databaseStore
{
  v2 = self;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&v2->_databaseStore);
  if (!WeakRetained)
  {
    v4 = +[Environment sharedInstance];
    v5 = [v4 userDatabase];
    WeakRetained = [(SQLiteDatabaseStore *)[InAppPromotionDatabaseStore alloc] initWithDatabase:v5];
    objc_storeWeak(&v2->_databaseStore, WeakRetained);
  }

  objc_sync_exit(v2);

  return WeakRetained;
}

- (BOOL)setPromotionInfo:(id)a3 forBundleID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10006FF68;
  v22 = sub_10006FF78;
  v23 = 0;
  v10 = [(InAppPromotionManager *)self databaseStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006FF80;
  v14[3] = &unk_100382E48;
  v11 = v8;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v17 = &v18;
  [v10 modifyUsingTransaction:v14];

  if (a5)
  {
    *a5 = v19[5];
  }

  _Block_object_dispose(&v18, 8);
  return 1;
}

- (id)promotionInfoForProductIdentifiers:(id)a3 bundleID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10006FF68;
  v30 = sub_10006FF78;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10006FF68;
  v24 = sub_10006FF78;
  v25 = 0;
  v10 = [(InAppPromotionManager *)self databaseStore];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000701D4;
  v15[3] = &unk_100382E70;
  v18 = &v20;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v19 = &v26;
  [v10 readUsingSession:v15];

  if (a5)
  {
    *a5 = v27[5];
  }

  v13 = v21[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

@end