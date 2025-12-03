@interface AppUpdatesDatabaseSession
- (AppUpdatesDatabaseSession)initWithConnection:(id)connection;
@end

@implementation AppUpdatesDatabaseSession

- (AppUpdatesDatabaseSession)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = AppUpdatesDatabaseSession;
  v6 = [(AppUpdatesDatabaseSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

@end