@interface ODRDatabaseStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3;
+ (id)storeDescriptor;
- (void)asyncModifyUsingTransaction:(id)a3 completion:(id)a4;
- (void)modifyUsingTransaction:(id)a3;
@end

@implementation ODRDatabaseStore

+ (id)storeDescriptor
{
  v2 = [SQLiteDatabaseStoreDescriptor alloc];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = sub_100399680(v2, @"on_demand_resources", &off_1005492F0, v3, v4);

  return v5;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3
{
  if (a3)
  {
    return sub_100252C84(a3, 14000, &stru_10051CF90, 0);
  }

  else
  {
    return 0;
  }
}

- (void)modifyUsingTransaction:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002092A0;
  v6[3] = &unk_10051CFB8;
  v7 = a3;
  v5.receiver = self;
  v5.super_class = ODRDatabaseStore;
  v4 = v7;
  [(SQLiteDatabaseStore *)&v5 modifyUsingTransaction:v6];
}

- (void)asyncModifyUsingTransaction:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002093B0;
  v8[3] = &unk_10051CFB8;
  v9 = a3;
  v7.receiver = self;
  v7.super_class = ODRDatabaseStore;
  v6 = v9;
  [(SQLiteDatabaseStore *)&v7 asyncModifyUsingTransaction:v8 completion:a4];
}

@end