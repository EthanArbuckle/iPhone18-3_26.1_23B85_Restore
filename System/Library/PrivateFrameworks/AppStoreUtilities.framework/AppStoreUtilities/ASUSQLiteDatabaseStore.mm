@interface ASUSQLiteDatabaseStore
- (ASUSQLiteDatabaseStore)initWithDatabase:(id)a3;
@end

@implementation ASUSQLiteDatabaseStore

- (ASUSQLiteDatabaseStore)initWithDatabase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASUSQLiteDatabaseStore;
  v6 = [(ASUSQLiteDatabaseStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, a3);
  }

  return v7;
}

@end