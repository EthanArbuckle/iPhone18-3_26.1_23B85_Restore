@interface TestFlightFeedbackDatabaseStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema;
+ (id)storeDescriptor;
@end

@implementation TestFlightFeedbackDatabaseStore

+ (id)storeDescriptor
{
  v2 = [SQLiteDatabaseStoreDescriptor alloc];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = sub_100399680(v2, @"testflight_feedback", &off_100549338, v3, v4);

  return v5;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema
{
  if (schema)
  {
    return sub_100252C84(schema, 19000, &stru_10051E1B8, 0);
  }

  else
  {
    return 0;
  }
}

@end