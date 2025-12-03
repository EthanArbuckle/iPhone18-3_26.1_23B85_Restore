@interface ASUSQLiteDatabaseStore
- (ASUSQLiteDatabaseStore)initWithDatabase:(id)database;
@end

@implementation ASUSQLiteDatabaseStore

- (ASUSQLiteDatabaseStore)initWithDatabase:(id)database
{
  databaseCopy = database;
  v9.receiver = self;
  v9.super_class = ASUSQLiteDatabaseStore;
  v6 = [(ASUSQLiteDatabaseStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
  }

  return v7;
}

@end