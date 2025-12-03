@interface GaletteStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema;
+ (id)shared;
+ (id)storeDescriptor;
@end

@implementation GaletteStore

+ (id)shared
{
  if (qword_1005AAA70 != -1)
  {
    dispatch_once(&qword_1005AAA70, &stru_100520380);
  }

  v3 = qword_1005AAA68;

  return v3;
}

+ (id)storeDescriptor
{
  v2 = [SQLiteDatabaseStoreDescriptor alloc];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = sub_100399680(v2, @"galette", &off_1005493E0, v3, v4);

  return v5;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema
{
  if (schema)
  {
    return sub_100252C84(schema, 15500, &stru_1005203A0, 0);
  }

  else
  {
    return 0;
  }
}

@end