@interface INBundleAccessGrant
- (INBundleAccessGrant)initWithSecurityScopedURLs:(id)ls;
- (NSSet)bundleIdentifiers;
- (void)acquire;
- (void)dealloc;
- (void)relinquish;
@end

@implementation INBundleAccessGrant

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = INBundleAccessGrant;
  [(INBundleAccessGrant *)&v3 dealloc];
}

- (void)relinquish
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_acquireCount - 1;
  self->_acquireCount = v3;
  if (!v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    securityScopedURLs = [(INBundleAccessGrant *)self securityScopedURLs];
    allValues = [securityScopedURLs allValues];

    v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v11 + 1) + 8 * v9++) stopAccessingSecurityScopedResource];
        }

        while (v7 != v9);
        v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)acquire
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  acquireCount = self->_acquireCount;
  if (!acquireCount)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    securityScopedURLs = [(INBundleAccessGrant *)self securityScopedURLs];
    allValues = [securityScopedURLs allValues];

    v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v11 + 1) + 8 * v9++) startAccessingSecurityScopedResource];
        }

        while (v7 != v9);
        v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    acquireCount = self->_acquireCount;
  }

  self->_acquireCount = acquireCount + 1;
  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x1E69E9840];
}

- (NSSet)bundleIdentifiers
{
  v2 = MEMORY[0x1E695DFD8];
  securityScopedURLs = [(INBundleAccessGrant *)self securityScopedURLs];
  allKeys = [securityScopedURLs allKeys];
  v5 = [v2 setWithArray:allKeys];

  return v5;
}

- (INBundleAccessGrant)initWithSecurityScopedURLs:(id)ls
{
  lsCopy = ls;
  v10.receiver = self;
  v10.super_class = INBundleAccessGrant;
  v5 = [(INBundleAccessGrant *)&v10 init];
  if (v5)
  {
    v6 = [lsCopy copy];
    securityScopedURLs = v5->_securityScopedURLs;
    v5->_securityScopedURLs = v6;

    v5->_lock._os_unfair_lock_opaque = 0;
    v8 = v5;
  }

  return v5;
}

@end