@interface SQLiteDatabaseStore
- (SQLiteDatabaseStore)initWithDatabase:(id)database;
@end

@implementation SQLiteDatabaseStore

- (SQLiteDatabaseStore)initWithDatabase:(id)database
{
  databaseCopy = database;
  v9.receiver = self;
  v9.super_class = SQLiteDatabaseStore;
  v6 = [(SQLiteDatabaseStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
  }

  return v7;
}

@end