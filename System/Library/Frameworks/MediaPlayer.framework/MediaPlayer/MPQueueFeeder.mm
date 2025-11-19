@interface MPQueueFeeder
- (BOOL)identifierRegistryWithExclusiveAccessReturningBOOL:(id)a3;
- (MPQueueFeeder)init;
- (id)identifierRegistryWithExclusiveAccessReturningObject:(id)a3;
- (int64_t)identifierRegistryWithExclusiveAccessReturningInteger:(id)a3;
- (void)getRepresentativeMetadataForPlaybackContext:(id)a3 properties:(id)a4 completion:(id)a5;
- (void)identifierRegistryWithExclusiveAccess:(id)a3;
- (void)replaceIdentifierRegistry:(id)a3;
@end

@implementation MPQueueFeeder

- (void)getRepresentativeMetadataForPlaybackContext:(id)a3 properties:(id)a4 completion:(id)a5
{
  v7 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v7 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    [v11 handleFailureInMethod:a2 object:self file:@"MPQueueFeeder.m" lineNumber:90 description:{@"Subclass %@ must implement -%@ defined in %@.", v9, v10, @"[MPQueueFeeder class]"}];
  }
}

- (int64_t)identifierRegistryWithExclusiveAccessReturningInteger:(id)a3
{
  v5 = a3;
  if (([objc_opt_class() usesIdentifierRegistry] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MPQueueFeeder.m" lineNumber:74 description:@"Invalid attempt to use identifierRegistry"];
  }

  os_unfair_lock_lock(&self->_identifierRegistryLock);
  v6 = v5[2](v5, self->_identifierRegistry);

  os_unfair_lock_unlock(&self->_identifierRegistryLock);
  return v6;
}

- (BOOL)identifierRegistryWithExclusiveAccessReturningBOOL:(id)a3
{
  v5 = a3;
  if (([objc_opt_class() usesIdentifierRegistry] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MPQueueFeeder.m" lineNumber:66 description:@"Invalid attempt to use identifierRegistry"];
  }

  os_unfair_lock_lock(&self->_identifierRegistryLock);
  v6 = v5[2](v5, self->_identifierRegistry);

  os_unfair_lock_unlock(&self->_identifierRegistryLock);
  return v6;
}

- (id)identifierRegistryWithExclusiveAccessReturningObject:(id)a3
{
  v5 = a3;
  if (([objc_opt_class() usesIdentifierRegistry] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MPQueueFeeder.m" lineNumber:58 description:@"Invalid attempt to use identifierRegistry"];
  }

  os_unfair_lock_lock(&self->_identifierRegistryLock);
  v6 = v5[2](v5, self->_identifierRegistry);

  os_unfair_lock_unlock(&self->_identifierRegistryLock);

  return v6;
}

- (void)identifierRegistryWithExclusiveAccess:(id)a3
{
  v5 = a3;
  if (([objc_opt_class() usesIdentifierRegistry] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MPQueueFeeder.m" lineNumber:51 description:@"Invalid attempt to use identifierRegistry"];
  }

  os_unfair_lock_lock(&self->_identifierRegistryLock);
  v5[2](v5, self->_identifierRegistry);

  os_unfair_lock_unlock(&self->_identifierRegistryLock);
}

- (void)replaceIdentifierRegistry:(id)a3
{
  v5 = a3;
  if (([objc_opt_class() usesIdentifierRegistry] & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MPQueueFeeder.m" lineNumber:44 description:@"Invalid attempt to use identifierRegistry"];
  }

  os_unfair_lock_lock(&self->_identifierRegistryLock);
  identifierRegistry = self->_identifierRegistry;
  self->_identifierRegistry = v5;

  os_unfair_lock_unlock(&self->_identifierRegistryLock);
}

- (MPQueueFeeder)init
{
  v6.receiver = self;
  v6.super_class = MPQueueFeeder;
  v2 = [(MPQueueFeeder *)&v6 init];
  if (v2 && [objc_opt_class() usesIdentifierRegistry])
  {
    v3 = objc_alloc_init(MPQueueFeederIdentifierRegistry);
    identifierRegistry = v2->_identifierRegistry;
    v2->_identifierRegistry = v3;

    v2->_identifierRegistryLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

@end