@interface MPQueueFeeder
- (BOOL)identifierRegistryWithExclusiveAccessReturningBOOL:(id)l;
- (MPQueueFeeder)init;
- (id)identifierRegistryWithExclusiveAccessReturningObject:(id)object;
- (int64_t)identifierRegistryWithExclusiveAccessReturningInteger:(id)integer;
- (void)getRepresentativeMetadataForPlaybackContext:(id)context properties:(id)properties completion:(id)completion;
- (void)identifierRegistryWithExclusiveAccess:(id)access;
- (void)replaceIdentifierRegistry:(id)registry;
@end

@implementation MPQueueFeeder

- (void)getRepresentativeMetadataForPlaybackContext:(id)context properties:(id)properties completion:(id)completion
{
  v7 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v7 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPQueueFeeder.m" lineNumber:90 description:{@"Subclass %@ must implement -%@ defined in %@.", v9, v10, @"[MPQueueFeeder class]"}];
  }
}

- (int64_t)identifierRegistryWithExclusiveAccessReturningInteger:(id)integer
{
  integerCopy = integer;
  if (([objc_opt_class() usesIdentifierRegistry] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPQueueFeeder.m" lineNumber:74 description:@"Invalid attempt to use identifierRegistry"];
  }

  os_unfair_lock_lock(&self->_identifierRegistryLock);
  v6 = integerCopy[2](integerCopy, self->_identifierRegistry);

  os_unfair_lock_unlock(&self->_identifierRegistryLock);
  return v6;
}

- (BOOL)identifierRegistryWithExclusiveAccessReturningBOOL:(id)l
{
  lCopy = l;
  if (([objc_opt_class() usesIdentifierRegistry] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPQueueFeeder.m" lineNumber:66 description:@"Invalid attempt to use identifierRegistry"];
  }

  os_unfair_lock_lock(&self->_identifierRegistryLock);
  v6 = lCopy[2](lCopy, self->_identifierRegistry);

  os_unfair_lock_unlock(&self->_identifierRegistryLock);
  return v6;
}

- (id)identifierRegistryWithExclusiveAccessReturningObject:(id)object
{
  objectCopy = object;
  if (([objc_opt_class() usesIdentifierRegistry] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPQueueFeeder.m" lineNumber:58 description:@"Invalid attempt to use identifierRegistry"];
  }

  os_unfair_lock_lock(&self->_identifierRegistryLock);
  v6 = objectCopy[2](objectCopy, self->_identifierRegistry);

  os_unfair_lock_unlock(&self->_identifierRegistryLock);

  return v6;
}

- (void)identifierRegistryWithExclusiveAccess:(id)access
{
  accessCopy = access;
  if (([objc_opt_class() usesIdentifierRegistry] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPQueueFeeder.m" lineNumber:51 description:@"Invalid attempt to use identifierRegistry"];
  }

  os_unfair_lock_lock(&self->_identifierRegistryLock);
  accessCopy[2](accessCopy, self->_identifierRegistry);

  os_unfair_lock_unlock(&self->_identifierRegistryLock);
}

- (void)replaceIdentifierRegistry:(id)registry
{
  registryCopy = registry;
  if (([objc_opt_class() usesIdentifierRegistry] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPQueueFeeder.m" lineNumber:44 description:@"Invalid attempt to use identifierRegistry"];
  }

  os_unfair_lock_lock(&self->_identifierRegistryLock);
  identifierRegistry = self->_identifierRegistry;
  self->_identifierRegistry = registryCopy;

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