@interface ODRDatabaseSession
- (ODRDatabaseSession)initWithConnection:(id)a3;
@end

@implementation ODRDatabaseSession

- (ODRDatabaseSession)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ODRDatabaseSession;
  v6 = [(ODRDatabaseSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

@end