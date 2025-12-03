@interface PurchaseHistoryDatabaseSession
- (PurchaseHistoryDatabaseSession)initWithConnection:(id)connection;
@end

@implementation PurchaseHistoryDatabaseSession

- (PurchaseHistoryDatabaseSession)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = PurchaseHistoryDatabaseSession;
  v6 = [(PurchaseHistoryDatabaseSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

@end