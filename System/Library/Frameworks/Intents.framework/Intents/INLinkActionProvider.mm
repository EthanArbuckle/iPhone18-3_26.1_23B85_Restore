@interface INLinkActionProvider
+ (INLinkActionProvider)sharedProvider;
- (INLinkActionProvider)init;
- (NSDictionary)actionsGroupedByBundleIdentifier;
- (NSDictionary)entitiesGroupedByBundleIdentifier;
- (id)bundleIdentifiers;
- (id)cachedActionIdentifiersForBundleIdentifier:(id)identifier;
- (id)cachedActions;
- (id)cachedBundleIdentifiers;
- (id)cachedEntities;
- (id)cachedEntityIdentifiersForBundleIdentifier:(id)identifier;
- (id)supportedActionIdentifiersForBundleIdentifier:(id)identifier;
- (id)supportedEntityIdentifiersForBundleIdentifier:(id)identifier;
- (void)cacheActionIdentifiers:(id)identifiers forBundleIdentifier:(id)identifier;
- (void)cacheActions:(id)actions;
- (void)cacheBundleIdentifiers:(id)identifiers;
- (void)cacheEntities:(id)entities;
- (void)cacheEntityIdentifiers:(id)identifiers forBundleIdentifier:(id)identifier;
- (void)evictCache;
- (void)metadataProvider;
- (void)setLockCachedActions:(uint64_t)actions;
- (void)setLockCachedBundleIdentifiers:(uint64_t)identifiers;
- (void)setLockCachedEntities:(uint64_t)entities;
@end

@implementation INLinkActionProvider

- (void)evictCache
{
  os_unfair_lock_lock(&self->_lock);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__INLinkActionProvider_evictCache__block_invoke;
  v6[3] = &unk_1E72882F8;
  v6[4] = self;
  v3 = MEMORY[0x193AD7780](v6);
  [(INLinkActionProvider *)self setLockCachedBundleIdentifiers:?];
  [(INLinkActionProvider *)self setLockCachedActions:?];
  [(INLinkActionProvider *)self setLockCachedEntities:?];
  v4 = objc_opt_new();
  if (self)
  {
    objc_storeStrong(&self->_lockCachedActionIdentifiers, v4);
  }

  v5 = objc_opt_new();
  if (self)
  {
    objc_storeStrong(&self->_lockCachedEntityIdentifiers, v5);
  }

  v3[2](v3);
}

- (void)setLockCachedBundleIdentifiers:(uint64_t)identifiers
{
  if (identifiers)
  {
    objc_storeStrong((identifiers + 24), a2);
  }
}

- (void)setLockCachedActions:(uint64_t)actions
{
  if (actions)
  {
    objc_storeStrong((actions + 48), a2);
  }
}

- (void)setLockCachedEntities:(uint64_t)entities
{
  if (entities)
  {
    objc_storeStrong((entities + 56), a2);
  }
}

- (void)cacheEntityIdentifiers:(id)identifiers forBundleIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__INLinkActionProvider_cacheEntityIdentifiers_forBundleIdentifier___block_invoke;
  v11[3] = &unk_1E72882F8;
  v11[4] = self;
  v8 = MEMORY[0x193AD7780](v11);
  if (self)
  {
    lockCachedEntityIdentifiers = self->_lockCachedEntityIdentifiers;
  }

  else
  {
    lockCachedEntityIdentifiers = 0;
  }

  v10 = lockCachedEntityIdentifiers;
  [(NSMutableDictionary *)v10 setObject:identifiersCopy forKey:identifierCopy];

  v8[2](v8);
}

- (void)cacheActionIdentifiers:(id)identifiers forBundleIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__INLinkActionProvider_cacheActionIdentifiers_forBundleIdentifier___block_invoke;
  v11[3] = &unk_1E72882F8;
  v11[4] = self;
  v8 = MEMORY[0x193AD7780](v11);
  if (self)
  {
    lockCachedActionIdentifiers = self->_lockCachedActionIdentifiers;
  }

  else
  {
    lockCachedActionIdentifiers = 0;
  }

  v10 = lockCachedActionIdentifiers;
  [(NSMutableDictionary *)v10 setObject:identifiersCopy forKey:identifierCopy];

  v8[2](v8);
}

- (void)cacheEntities:(id)entities
{
  entitiesCopy = entities;
  os_unfair_lock_lock(&self->_lock);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__INLinkActionProvider_cacheEntities___block_invoke;
  v6[3] = &unk_1E72882F8;
  v6[4] = self;
  v5 = MEMORY[0x193AD7780](v6);
  [(INLinkActionProvider *)self setLockCachedEntities:entitiesCopy];

  v5[2](v5);
}

- (void)cacheActions:(id)actions
{
  actionsCopy = actions;
  os_unfair_lock_lock(&self->_lock);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__INLinkActionProvider_cacheActions___block_invoke;
  v6[3] = &unk_1E72882F8;
  v6[4] = self;
  v5 = MEMORY[0x193AD7780](v6);
  [(INLinkActionProvider *)self setLockCachedActions:actionsCopy];

  v5[2](v5);
}

- (void)cacheBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__INLinkActionProvider_cacheBundleIdentifiers___block_invoke;
  v6[3] = &unk_1E72882F8;
  v6[4] = self;
  v5 = MEMORY[0x193AD7780](v6);
  [(INLinkActionProvider *)self setLockCachedBundleIdentifiers:identifiersCopy];

  v5[2](v5);
}

- (id)cachedEntityIdentifiersForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__INLinkActionProvider_cachedEntityIdentifiersForBundleIdentifier___block_invoke;
  v10[3] = &unk_1E72882F8;
  v10[4] = self;
  v5 = MEMORY[0x193AD7780](v10);
  if (self)
  {
    lockCachedEntityIdentifiers = self->_lockCachedEntityIdentifiers;
  }

  else
  {
    lockCachedEntityIdentifiers = 0;
  }

  v7 = lockCachedEntityIdentifiers;
  v8 = [(NSMutableDictionary *)v7 objectForKey:identifierCopy];

  v5[2](v5);

  return v8;
}

- (id)cachedActionIdentifiersForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__INLinkActionProvider_cachedActionIdentifiersForBundleIdentifier___block_invoke;
  v10[3] = &unk_1E72882F8;
  v10[4] = self;
  v5 = MEMORY[0x193AD7780](v10);
  if (self)
  {
    lockCachedActionIdentifiers = self->_lockCachedActionIdentifiers;
  }

  else
  {
    lockCachedActionIdentifiers = 0;
  }

  v7 = lockCachedActionIdentifiers;
  v8 = [(NSMutableDictionary *)v7 objectForKey:identifierCopy];

  v5[2](v5);

  return v8;
}

- (id)cachedEntities
{
  os_unfair_lock_lock(&self->_lock);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__INLinkActionProvider_cachedEntities__block_invoke;
  v7[3] = &unk_1E72882F8;
  v7[4] = self;
  v3 = MEMORY[0x193AD7780](v7);
  if (self)
  {
    lockCachedEntities = self->_lockCachedEntities;
  }

  else
  {
    lockCachedEntities = 0;
  }

  v5 = lockCachedEntities;
  v3[2](v3);

  return v5;
}

- (id)cachedActions
{
  os_unfair_lock_lock(&self->_lock);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__INLinkActionProvider_cachedActions__block_invoke;
  v7[3] = &unk_1E72882F8;
  v7[4] = self;
  v3 = MEMORY[0x193AD7780](v7);
  if (self)
  {
    lockCachedActions = self->_lockCachedActions;
  }

  else
  {
    lockCachedActions = 0;
  }

  v5 = lockCachedActions;
  v3[2](v3);

  return v5;
}

- (id)cachedBundleIdentifiers
{
  os_unfair_lock_lock(&self->_lock);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__INLinkActionProvider_cachedBundleIdentifiers__block_invoke;
  v7[3] = &unk_1E72882F8;
  v7[4] = self;
  v3 = MEMORY[0x193AD7780](v7);
  if (self)
  {
    lockCachedBundleIdentifiers = self->_lockCachedBundleIdentifiers;
  }

  else
  {
    lockCachedBundleIdentifiers = 0;
  }

  v5 = lockCachedBundleIdentifiers;
  v3[2](v3);

  return v5;
}

- (id)supportedEntityIdentifiersForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cachedEntities = [(INLinkActionProvider *)self cachedEntities];

  if (cachedEntities)
  {
    cachedEntities2 = [(INLinkActionProvider *)self cachedEntities];
    v7 = [cachedEntities2 objectForKey:identifierCopy];

    allKeys = [v7 allKeys];

    goto LABEL_13;
  }

  v9 = [(INLinkActionProvider *)self cachedEntityIdentifiersForBundleIdentifier:identifierCopy];
  v10 = v9;
  if (!v9)
  {
    metadataProvider = [(INLinkActionProvider *)self metadataProvider];
    if (objc_opt_respondsToSelector())
    {
      v16 = 0;
      allKeys = [metadataProvider entityIdentifiersForBundleIdentifier:identifierCopy error:&v16];
      v12 = v16;
      if (!allKeys)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15 = 0;
      v13 = [metadataProvider entitiesForBundleIdentifier:identifierCopy error:&v15];
      v12 = v15;
      allKeys = [v13 if_compactMap:&__block_literal_global_9];

      if (!allKeys)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    if ([(INLinkActionProvider *)self isCachingLinkMetadata])
    {
      [(INLinkActionProvider *)self cacheEntityIdentifiers:allKeys forBundleIdentifier:identifierCopy];
    }

    goto LABEL_11;
  }

  allKeys = v9;
LABEL_12:

LABEL_13:

  return allKeys;
}

- (void)metadataProvider
{
  if (self)
  {
    selfCopy = self;
    v2 = self[2];
    if (!v2)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2050000000;
      v3 = getLNMetadataProviderClass_softClass;
      v12 = getLNMetadataProviderClass_softClass;
      if (!getLNMetadataProviderClass_softClass)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __getLNMetadataProviderClass_block_invoke;
        v8[3] = &unk_1E72888B8;
        v8[4] = &v9;
        __getLNMetadataProviderClass_block_invoke(v8);
        v3 = v10[3];
      }

      v4 = v3;
      _Block_object_dispose(&v9, 8);
      v5 = objc_alloc_init(v3);
      v6 = selfCopy[2];
      selfCopy[2] = v5;

      v2 = selfCopy[2];
    }

    self = v2;
  }

  return self;
}

void *__70__INLinkActionProvider_supportedEntityIdentifiersForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKey:@"identifier"];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)supportedActionIdentifiersForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cachedActions = [(INLinkActionProvider *)self cachedActions];

  if (cachedActions)
  {
    cachedActions2 = [(INLinkActionProvider *)self cachedActions];
    v7 = [cachedActions2 objectForKey:identifierCopy];

    allKeys = [v7 allKeys];

    goto LABEL_13;
  }

  v9 = [(INLinkActionProvider *)self cachedActionIdentifiersForBundleIdentifier:identifierCopy];
  v10 = v9;
  if (!v9)
  {
    metadataProvider = [(INLinkActionProvider *)self metadataProvider];
    if (objc_opt_respondsToSelector())
    {
      v16 = 0;
      allKeys = [metadataProvider actionIdentifiersForBundleIdentifier:identifierCopy error:&v16];
      v12 = v16;
      if (!allKeys)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15 = 0;
      v13 = [metadataProvider actionsForBundleIdentifier:identifierCopy error:&v15];
      v12 = v15;
      allKeys = [v13 if_compactMap:&__block_literal_global_158298];

      if (!allKeys)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    if ([(INLinkActionProvider *)self isCachingLinkMetadata])
    {
      [(INLinkActionProvider *)self cacheActionIdentifiers:allKeys forBundleIdentifier:identifierCopy];
    }

    goto LABEL_11;
  }

  allKeys = v9;
LABEL_12:

LABEL_13:

  return allKeys;
}

void *__70__INLinkActionProvider_supportedActionIdentifiersForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKey:@"identifier"];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)bundleIdentifiers
{
  metadataProvider = [(INLinkActionProvider *)self metadataProvider];
  v6 = 0;
  v4 = [metadataProvider bundlesWithError:&v6];
  if (v4 && [(INLinkActionProvider *)self isCachingLinkMetadata])
  {
    [(INLinkActionProvider *)self cacheBundleIdentifiers:v4];
  }

  return v4;
}

- (NSDictionary)entitiesGroupedByBundleIdentifier
{
  cachedEntities = [(INLinkActionProvider *)self cachedEntities];

  if (cachedEntities)
  {
    cachedEntities2 = [(INLinkActionProvider *)self cachedEntities];
  }

  else
  {
    metadataProvider = [(INLinkActionProvider *)self metadataProvider];
    v7 = 0;
    cachedEntities2 = [metadataProvider entitiesWithError:&v7];
    if (cachedEntities2 && [(INLinkActionProvider *)self isCachingLinkMetadata])
    {
      [(INLinkActionProvider *)self cacheEntities:cachedEntities2];
    }
  }

  return cachedEntities2;
}

- (NSDictionary)actionsGroupedByBundleIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  cachedActions = [(INLinkActionProvider *)self cachedActions];
  os_unfair_lock_unlock(&self->_lock);
  if (cachedActions)
  {
    v4 = cachedActions;
  }

  else
  {
    metadataProvider = [(INLinkActionProvider *)self metadataProvider];
    v7 = 0;
    v4 = [metadataProvider actionsWithError:&v7];
    if (v4 && [(INLinkActionProvider *)self isCachingLinkMetadata])
    {
      [(INLinkActionProvider *)self cacheActions:v4];
    }
  }

  return v4;
}

- (INLinkActionProvider)init
{
  v10.receiver = self;
  v10.super_class = INLinkActionProvider;
  v2 = [(INLinkActionProvider *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_cacheLinkMetadata = 1;
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    lockCachedActionIdentifiers = v3->_lockCachedActionIdentifiers;
    v3->_lockCachedActionIdentifiers = v4;

    v6 = objc_opt_new();
    lockCachedEntityIdentifiers = v3->_lockCachedEntityIdentifiers;
    v3->_lockCachedEntityIdentifiers = v6;

    v8 = v3;
  }

  return v3;
}

+ (INLinkActionProvider)sharedProvider
{
  if (sharedProvider_onceToken_158309 != -1)
  {
    dispatch_once(&sharedProvider_onceToken_158309, &__block_literal_global_12_158310);
  }

  v3 = sharedProvider_provider;

  return v3;
}

uint64_t __38__INLinkActionProvider_sharedProvider__block_invoke()
{
  v0 = objc_alloc_init(INLinkActionProvider);
  v1 = sharedProvider_provider;
  sharedProvider_provider = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end