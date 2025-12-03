@interface NSXPCStoreServerConnectionContext
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (NSXPCStoreServerConnectionContext)initWithConnectionInfo:(id)info;
- (id)cache;
- (id)description;
- (id)entitlements;
- (id)inverseIsToOnePrefetchRequestForRelationshipNamed:(id)named onEntity:(id)entity;
- (id)managedObjectContext;
- (id)manyToManyPrefetchRequestsForRelationshipNamed:(id)named onEntity:(id)entity;
- (id)manyToOnePrefetchRequestForRelationshipNamed:(id)named onEntity:(id)entity;
- (id)notificationManager;
- (id)persistentStoreCoordinator;
- (void)dealloc;
- (void)setActiveStore:(uint64_t)store;
- (void)setManagedObjectContext:(id)context;
- (void)setNotificationManager:(id)manager;
- (void)setUserInfo:(id)info;
@end

@implementation NSXPCStoreServerConnectionContext

- (id)persistentStoreCoordinator
{
  persistentStoreCoordinator = [(NSXPCStoreConnectionInfo *)self->_info persistentStoreCoordinator];

  return persistentStoreCoordinator;
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
  entitlements = [(NSXPCStoreConnectionInfo *)self->_info entitlements];

  return entitlements;
}

- (void)setActiveStore:(uint64_t)store
{
  if (store)
  {
    if (*(store + 32) != a2)
    {
      v4 = a2;

      *(store + 32) = a2;
    }
  }
}

- (NSXPCStoreServerConnectionContext)initWithConnectionInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = NSXPCStoreServerConnectionContext;
  v4 = [(NSXPCStoreServerConnectionContext *)&v6 init];
  if (v4)
  {
    v4->_info = info;
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

- (void)setManagedObjectContext:(id)context
{
  if (self->_context != context)
  {
    contextCopy = context;

    self->_context = context;
  }
}

- (void)setUserInfo:(id)info
{
  info = self->_info;
  if (info)
  {
    infoCopy = info;
    os_unfair_lock_lock_with_options();
    userInfo = info->_userInfo;
    info->_userInfo = info;
    os_unfair_lock_unlock(&info->_lock);
  }
}

- (id)notificationManager
{
  v2 = self->_manager;

  return v2;
}

- (void)setNotificationManager:(id)manager
{
  if (self->_manager != manager)
  {
    managerCopy = manager;

    self->_manager = manager;
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

- (id)inverseIsToOnePrefetchRequestForRelationshipNamed:(id)named onEntity:(id)entity
{
  cache = [(NSXPCStoreServerConnectionContext *)self cache];

  return [cache inverseIsToOnePrefetchRequestForRelationshipNamed:named onEntity:entity];
}

- (id)manyToOnePrefetchRequestForRelationshipNamed:(id)named onEntity:(id)entity
{
  cache = [(NSXPCStoreServerConnectionContext *)self cache];

  return [cache manyToOnePrefetchRequestForRelationshipNamed:named onEntity:entity];
}

- (id)manyToManyPrefetchRequestsForRelationshipNamed:(id)named onEntity:(id)entity
{
  cache = [(NSXPCStoreServerConnectionContext *)self cache];

  return [cache manyToManyPrefetchRequestsForRelationshipNamed:named onEntity:entity];
}

@end