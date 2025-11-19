@interface BAAppStoreProgressConfiguration
- (BAAppStoreProgressConfiguration)init;
- (BAAppStoreProgressConfiguration)initWithCoder:(id)a3;
- (id)appBundleIdentifiers;
- (void)encodeWithCoder:(id)a3;
- (void)invokeHandlerWithAppBundleIdentifier:(void *)a3 progressInfo:;
- (void)setAppBundleIdentifiers:(id)a3;
- (void)setHandlerQueue:(id)a3;
- (void)setUpdateHandler:(id)a3;
@end

@implementation BAAppStoreProgressConfiguration

- (BAAppStoreProgressConfiguration)init
{
  v13.receiver = self;
  v13.super_class = BAAppStoreProgressConfiguration;
  v2 = [(BAAppStoreProgressConfiguration *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    appBundleIdentifiers = v3->_appBundleIdentifiers;
    v3->_appBundleIdentifiers = v4;

    updateHandler = v3->_updateHandler;
    v3->_updateHandler = 0;

    v7 = qos_class_self();
    v8 = dispatch_get_global_queue(v7, 0);
    handlerQueue = v3->_handlerQueue;
    v3->_handlerQueue = v8;

    v10 = objc_opt_new();
    duplicateEventCache = v3->_duplicateEventCache;
    v3->_duplicateEventCache = v10;
  }

  return v3;
}

- (BAAppStoreProgressConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = BAAppStoreProgressConfiguration;
  v5 = [(BAAppStoreProgressConfiguration *)&v15 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"BA_AppBundleIdentifiers"];
    appBundleIdentifiers = v6->_appBundleIdentifiers;
    v6->_appBundleIdentifiers = v10;

    v12 = objc_opt_new();
    duplicateEventCache = v6->_duplicateEventCache;
    v6->_duplicateEventCache = v12;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v4 encodeObject:self->_appBundleIdentifiers forKey:@"BA_AppBundleIdentifiers"];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setAppBundleIdentifiers:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 copy];
  appBundleIdentifiers = self->_appBundleIdentifiers;
  self->_appBundleIdentifiers = v5;

  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_duplicateEventCache, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(NSMutableDictionary *)self->_duplicateEventCache allKeys];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (![(NSSet *)self->_appBundleIdentifiers containsObject:v14])
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [(NSMutableDictionary *)self->_duplicateEventCache removeObjectsForKeys:v8];
  objc_autoreleasePoolPop(v7);
  os_unfair_lock_unlock(&self->_lock);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setUpdateHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 copy];

  updateHandler = self->_updateHandler;
  self->_updateHandler = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setHandlerQueue:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  handlerQueue = self->_handlerQueue;
  self->_handlerQueue = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)appBundleIdentifiers
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v2 = *(a1 + 32);
    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)invokeHandlerWithAppBundleIdentifier:(void *)a3 progressInfo:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v7 = *(a1 + 16);
    v8 = _Block_copy(*(a1 + 24));
    v9 = [*(a1 + 40) objectForKey:v5];
    [*(a1 + 40) setObject:v6 forKey:v5];
    os_unfair_lock_unlock((a1 + 8));
    if (([v9 isEqual:v6] & 1) == 0 && v8)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __85__BAAppStoreProgressConfiguration_invokeHandlerWithAppBundleIdentifier_progressInfo___block_invoke;
      block[3] = &unk_278A0D1B8;
      v13 = v8;
      v11 = v5;
      v12 = v6;
      dispatch_async(v7, block);
    }
  }
}

@end