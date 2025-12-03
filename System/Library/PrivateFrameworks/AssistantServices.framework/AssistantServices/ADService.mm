@interface ADService
- (ADServiceDelegate)delegate;
- (NSString)description;
- (void)beginSyncForInfo:(id)info chunkHandler:(id)handler;
- (void)getInfoWithCompletion:(id)completion;
- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply;
- (void)handleResponse:(id)response toCommand:(id)command completion:(id)completion;
- (void)runMaintenanceWorkWithCompletion:(id)completion;
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

- (void)getInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v12 = completionCopy;
    v5 = +[NSMutableDictionary dictionary];
    domains = [(ADService *)self domains];
    if (domains)
    {
      [v5 setObject:domains forKey:@"Domains"];
    }

    firstUnlockRestrictedCommands = [(ADService *)self firstUnlockRestrictedCommands];

    if (firstUnlockRestrictedCommands)
    {
      [v5 setObject:firstUnlockRestrictedCommands forKey:@"First Unlock Restricted Commands"];
    }

    controlCenterLockRestrictedCommands = [(ADService *)self controlCenterLockRestrictedCommands];

    if (controlCenterLockRestrictedCommands)
    {
      [v5 setObject:controlCenterLockRestrictedCommands forKey:@"Control Center Lock Restricted Commands"];
    }

    allObjects = [(NSSet *)self->_managedStorageDomains allObjects];

    if (allObjects)
    {
      [v5 setObject:allObjects forKey:@"Managed Storage Domains"];
    }

    syncKeys = [(ADService *)self syncKeys];

    if (syncKeys)
    {
      [v5 setObject:syncKeys forKey:@"Sync Keys"];
    }

    lockRestrictedCommands = [(ADService *)self lockRestrictedCommands];

    if (lockRestrictedCommands)
    {
      [v5 setObject:lockRestrictedCommands forKey:@"Lock Restricted Commands"];
    }

    v12[2](v12, v5);

    completionCopy = v12;
  }
}

- (void)runMaintenanceWorkWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)beginSyncForInfo:(id)info chunkHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0, 0, 0);
  }
}

- (void)handleResponse:(id)response toCommand:(id)command completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply
{
  if (reply)
  {
    replyCopy = reply;
    v8 = [NSError errorWithDomain:@"ADServiceError" code:-1 userInfo:0];
    (*(reply + 2))(replyCopy, 0, v8);
  }
}

@end