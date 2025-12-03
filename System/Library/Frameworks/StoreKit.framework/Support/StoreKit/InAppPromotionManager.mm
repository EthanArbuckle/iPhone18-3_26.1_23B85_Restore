@interface InAppPromotionManager
+ (id)manager;
- (BOOL)setPromotionInfo:(id)info forBundleID:(id)d error:(id *)error;
- (InAppPromotionManager)init;
- (id)databaseStore;
- (id)promotionInfoForProductIdentifiers:(id)identifiers bundleID:(id)d error:(id *)error;
- (void)_migrateITunesStoreDDatabase;
@end

@implementation InAppPromotionManager

+ (id)manager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F790;
  block[3] = &unk_10037F9B0;
  block[4] = self;
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
  sk_iTunesStoreLibraryDataURL = [v3 sk_iTunesStoreLibraryDataURL];

  path = [sk_iTunesStoreLibraryDataURL path];
  v6 = [path stringByAppendingPathComponent:@"promoted_iaps.sqlitedb"];
  path2 = [sk_iTunesStoreLibraryDataURL path];
  v8 = [path2 stringByAppendingPathComponent:@"promoted_iaps.sqlitedb-shm"];
  path3 = [sk_iTunesStoreLibraryDataURL path];
  v10 = [path3 stringByAppendingPathComponent:@"promoted_iaps.sqlitedb-wal"];
  v11 = [NSArray arrayWithObjects:v6, v8, v10, 0];

  v12 = +[NSFileManager defaultManager];
  v13 = [v11 objectAtIndexedSubscript:0];
  LOBYTE(path2) = [v12 fileExistsAtPath:v13];

  if (path2)
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

    databaseStore = [(InAppPromotionManager *)self databaseStore];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10006FA8C;
    v17[3] = &unk_100382E20;
    v18 = v11;
    [databaseStore modifyUsingTransaction:v17];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_databaseStore);
  if (!WeakRetained)
  {
    v4 = +[Environment sharedInstance];
    userDatabase = [v4 userDatabase];
    WeakRetained = [(SQLiteDatabaseStore *)[InAppPromotionDatabaseStore alloc] initWithDatabase:userDatabase];
    objc_storeWeak(&selfCopy->_databaseStore, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (BOOL)setPromotionInfo:(id)info forBundleID:(id)d error:(id *)error
{
  infoCopy = info;
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10006FF68;
  v22 = sub_10006FF78;
  v23 = 0;
  databaseStore = [(InAppPromotionManager *)self databaseStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006FF80;
  v14[3] = &unk_100382E48;
  v11 = infoCopy;
  v15 = v11;
  v12 = dCopy;
  v16 = v12;
  v17 = &v18;
  [databaseStore modifyUsingTransaction:v14];

  if (error)
  {
    *error = v19[5];
  }

  _Block_object_dispose(&v18, 8);
  return 1;
}

- (id)promotionInfoForProductIdentifiers:(id)identifiers bundleID:(id)d error:(id *)error
{
  identifiersCopy = identifiers;
  dCopy = d;
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
  databaseStore = [(InAppPromotionManager *)self databaseStore];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000701D4;
  v15[3] = &unk_100382E70;
  v18 = &v20;
  v11 = identifiersCopy;
  v16 = v11;
  v12 = dCopy;
  v17 = v12;
  v19 = &v26;
  [databaseStore readUsingSession:v15];

  if (error)
  {
    *error = v27[5];
  }

  v13 = v21[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

@end