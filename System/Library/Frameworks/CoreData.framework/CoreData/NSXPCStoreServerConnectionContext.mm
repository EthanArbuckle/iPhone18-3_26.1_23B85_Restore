@interface NSXPCStoreServerConnectionContext
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (NSXPCStoreServerConnectionContext)initWithConnectionInfo:(id)a3;
- (id)cache;
- (id)description;
- (id)entitlements;
- (id)inverseIsToOnePrefetchRequestForRelationshipNamed:(id)a3 onEntity:(id)a4;
- (id)managedObjectContext;
- (id)manyToManyPrefetchRequestsForRelationshipNamed:(id)a3 onEntity:(id)a4;
- (id)manyToOnePrefetchRequestForRelationshipNamed:(id)a3 onEntity:(id)a4;
- (id)notificationManager;
- (id)persistentStoreCoordinator;
- (void)dealloc;
- (void)setActiveStore:(uint64_t)a1;
- (void)setManagedObjectContext:(id)a3;
- (void)setNotificationManager:(id)a3;
- (void)setUserInfo:(id)a3;
@end

@implementation NSXPCStoreServerConnectionContext

- (id)persistentStoreCoordinator
{
  v2 = [(NSXPCStoreConnectionInfo *)self->_info persistentStoreCoordinator];

  return v2;
}

- (id)managedObjectContext
{
  v2 = self->_context;

  return v2;
}

- (void)dealloc
{
  self->_activeStore = 0;

  self->_info = 0;
  self->_context = 0;
  v3.receiver = self;
  v3.super_class = NSXPCStoreServerConnectionContext;
  [(NSXPCStoreServerConnectionContext *)&v3 dealloc];
}

- (id)entitlements
{
  v2 = [(NSXPCStoreConnectionInfo *)self->_info entitlements];

  return v2;
}

- (void)setActiveStore:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 32) != a2)
    {
      v4 = a2;

      *(a1 + 32) = a2;
    }
  }
}

- (NSXPCStoreServerConnectionContext)initWithConnectionInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSXPCStoreServerConnectionContext;
  v4 = [(NSXPCStoreServerConnectionContext *)&v6 init];
  if (v4)
  {
    v4->_info = a3;
  }

  return v4;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSXPCStoreServerConnectionContext: \n\tentitlements = %@ ;\n\tcontext = %@ ;\n\tinfo = %@>", -[NSXPCStoreServerConnectionContext entitlements](self, "entitlements"), self->_context, self->_info];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  result = self->_info;
  if (result)
  {
    return [($115C4C562B26FF47E01F9F4EA65B5887 *)result auditToken];
  }

  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return result;
}

- (void)setManagedObjectContext:(id)a3
{
  if (self->_context != a3)
  {
    v5 = a3;

    self->_context = a3;
  }
}

- (void)setUserInfo:(id)a3
{
  info = self->_info;
  if (info)
  {
    v5 = a3;
    os_unfair_lock_lock_with_options();
    userInfo = info->_userInfo;
    info->_userInfo = a3;
    os_unfair_lock_unlock(&info->_lock);
  }
}

- (id)notificationManager
{
  v2 = self->_manager;

  return v2;
}

- (void)setNotificationManager:(id)a3
{
  if (self->_manager != a3)
  {
    v5 = a3;

    self->_manager = a3;
  }
}

- (id)cache
{
  info = self->_info;
  if (info)
  {
    return info->_cache;
  }

  else
  {
    return 0;
  }
}

- (id)inverseIsToOnePrefetchRequestForRelationshipNamed:(id)a3 onEntity:(id)a4
{
  v6 = [(NSXPCStoreServerConnectionContext *)self cache];

  return [v6 inverseIsToOnePrefetchRequestForRelationshipNamed:a3 onEntity:a4];
}

- (id)manyToOnePrefetchRequestForRelationshipNamed:(id)a3 onEntity:(id)a4
{
  v6 = [(NSXPCStoreServerConnectionContext *)self cache];

  return [v6 manyToOnePrefetchRequestForRelationshipNamed:a3 onEntity:a4];
}

- (id)manyToManyPrefetchRequestsForRelationshipNamed:(id)a3 onEntity:(id)a4
{
  v6 = [(NSXPCStoreServerConnectionContext *)self cache];

  return [v6 manyToManyPrefetchRequestsForRelationshipNamed:a3 onEntity:a4];
}

@end