@interface SLRemoteSession
- (BOOL)clientHasEntitlement:(id)entitlement;
- (SLRemoteSession)initWithConnection:(id)connection database:(id)database;
@end

@implementation SLRemoteSession

- (SLRemoteSession)initWithConnection:(id)connection database:(id)database
{
  connectionCopy = connection;
  databaseCopy = database;
  _SLLog(v4, 7, @"SLRemoteSession initializer called with connection %@ and database");
  v12.receiver = self;
  v12.super_class = SLRemoteSession;
  v9 = [(SLRemoteSession *)&v12 init:connectionCopy];
  v10 = v9;
  if (v9)
  {
    [(SLRemoteSession *)v9 setConnection:connectionCopy];
    [(SLRemoteSession *)v10 setDatabase:databaseCopy];
  }

  return v10;
}

- (BOOL)clientHasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  connection = [(SLRemoteSession *)self connection];
  v6 = [connection sl_clientHasEntitlement:entitlementCopy];

  return v6;
}

@end