@interface SLRemoteSession
- (BOOL)clientHasEntitlement:(id)a3;
- (SLRemoteSession)initWithConnection:(id)a3 database:(id)a4;
@end

@implementation SLRemoteSession

- (SLRemoteSession)initWithConnection:(id)a3 database:(id)a4
{
  v7 = a3;
  v8 = a4;
  _SLLog(v4, 7, @"SLRemoteSession initializer called with connection %@ and database");
  v12.receiver = self;
  v12.super_class = SLRemoteSession;
  v9 = [(SLRemoteSession *)&v12 init:v7];
  v10 = v9;
  if (v9)
  {
    [(SLRemoteSession *)v9 setConnection:v7];
    [(SLRemoteSession *)v10 setDatabase:v8];
  }

  return v10;
}

- (BOOL)clientHasEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(SLRemoteSession *)self connection];
  v6 = [v5 sl_clientHasEntitlement:v4];

  return v6;
}

@end