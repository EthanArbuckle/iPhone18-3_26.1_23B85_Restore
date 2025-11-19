@interface SQLiteDatabaseSession
- (SQLiteDatabaseSession)initWithConnection:(id)a3;
@end

@implementation SQLiteDatabaseSession

- (SQLiteDatabaseSession)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SQLiteDatabaseSession;
  v6 = [(SQLiteDatabaseSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

@end