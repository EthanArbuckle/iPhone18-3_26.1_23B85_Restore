@interface ODRDatabaseStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema;
+ (id)storeDescriptor;
- (void)asyncModifyUsingTransaction:(id)transaction completion:(id)completion;
- (void)modifyUsingTransaction:(id)transaction;
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

+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema
{
  if (schema)
  {
    return sub_100252C84(schema, 14000, &stru_10051CF90, 0);
  }

  else
  {
    return 0;
  }
}

- (void)modifyUsingTransaction:(id)transaction
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002092A0;
  v6[3] = &unk_10051CFB8;
  transactionCopy = transaction;
  v5.receiver = self;
  v5.super_class = ODRDatabaseStore;
  v4 = transactionCopy;
  [(SQLiteDatabaseStore *)&v5 modifyUsingTransaction:v6];
}

- (void)asyncModifyUsingTransaction:(id)transaction completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002093B0;
  v8[3] = &unk_10051CFB8;
  transactionCopy = transaction;
  v7.receiver = self;
  v7.super_class = ODRDatabaseStore;
  v6 = transactionCopy;
  [(SQLiteDatabaseStore *)&v7 asyncModifyUsingTransaction:v8 completion:completion];
}

@end