@interface ADService
- (ADServiceDelegate)delegate;
- (NSString)description;
- (void)beginSyncForInfo:(id)a3 chunkHandler:(id)a4;
- (void)getInfoWithCompletion:(id)a3;
- (void)handleCommand:(id)a3 forDomain:(id)a4 executionContext:(id)a5 reply:(id)a6;
- (void)handleResponse:(id)a3 toCommand:(id)a4 completion:(id)a5;
- (void)runMaintenanceWorkWithCompletion:(id)a3;
@end

@implementation ADService

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = ADService;
  v3 = [(ADService *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" %@", self->_identifier];

  return v4;
}

- (ADServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)getInfoWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v5 = +[NSMutableDictionary dictionary];
    v6 = [(ADService *)self domains];
    if (v6)
    {
      [v5 setObject:v6 forKey:@"Domains"];
    }

    v7 = [(ADService *)self firstUnlockRestrictedCommands];

    if (v7)
    {
      [v5 setObject:v7 forKey:@"First Unlock Restricted Commands"];
    }

    v8 = [(ADService *)self controlCenterLockRestrictedCommands];

    if (v8)
    {
      [v5 setObject:v8 forKey:@"Control Center Lock Restricted Commands"];
    }

    v9 = [(NSSet *)self->_managedStorageDomains allObjects];

    if (v9)
    {
      [v5 setObject:v9 forKey:@"Managed Storage Domains"];
    }

    v10 = [(ADService *)self syncKeys];

    if (v10)
    {
      [v5 setObject:v10 forKey:@"Sync Keys"];
    }

    v11 = [(ADService *)self lockRestrictedCommands];

    if (v11)
    {
      [v5 setObject:v11 forKey:@"Lock Restricted Commands"];
    }

    v12[2](v12, v5);

    v4 = v12;
  }
}

- (void)runMaintenanceWorkWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)beginSyncForInfo:(id)a3 chunkHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0, 0, 0);
  }
}

- (void)handleResponse:(id)a3 toCommand:(id)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5);
  }
}

- (void)handleCommand:(id)a3 forDomain:(id)a4 executionContext:(id)a5 reply:(id)a6
{
  if (a6)
  {
    v7 = a6;
    v8 = [NSError errorWithDomain:@"ADServiceError" code:-1 userInfo:0];
    (*(a6 + 2))(v7, 0, v8);
  }
}

@end