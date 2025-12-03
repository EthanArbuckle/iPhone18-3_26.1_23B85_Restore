@interface BSPluginManagerCoordinator
+ (id)sharedInstance;
- (id)mainPluginManager;
- (id)pluginManagerForBundle:(id)bundle;
- (void)registerPlugins;
- (void)registerPluginsFromBundle:(id)bundle;
@end

@implementation BSPluginManagerCoordinator

+ (id)sharedInstance
{
  if (qword_1ED44FDD0 != -1)
  {
    dispatch_once(&qword_1ED44FDD0, &__block_literal_global_12);
  }

  v3 = _MergedGlobals_12;

  return v3;
}

void __44__BSPluginManagerCoordinator_sharedInstance__block_invoke()
{
  v0 = [BSPluginManagerCoordinator alloc];
  if (v0)
  {
    v5.receiver = v0;
    v5.super_class = BSPluginManagerCoordinator;
    v1 = objc_msgSendSuper2(&v5, sel_init);
    if (v1)
    {
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v3 = v1[1];
      v1[1] = v2;
    }
  }

  else
  {
    v1 = 0;
  }

  v4 = _MergedGlobals_12;
  _MergedGlobals_12 = v1;
}

- (void)registerPlugins
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  [(BSPluginManagerCoordinator *)self registerPluginsFromBundle:?];
}

- (void)registerPluginsFromBundle:(id)bundle
{
  bundleCopy = bundle;
  bundleIdentifier = [bundleCopy bundleIdentifier];
  if (bundleIdentifier)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_managersByBundleID objectForKey:bundleIdentifier];
    if (!v6)
    {
      v6 = [BSPluginManager managerForBundle:bundleCopy];
      if (v6)
      {
        [(NSMutableDictionary *)selfCopy->_managersByBundleID setObject:v6 forKey:bundleIdentifier];
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (id)mainPluginManager
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [(BSPluginManagerCoordinator *)self pluginManagerForBundle:mainBundle];

  return v4;
}

- (id)pluginManagerForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = bundleCopy;
  if (bundleCopy)
  {
    bundleIdentifier = [bundleCopy bundleIdentifier];
    if (bundleIdentifier)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      [(BSPluginManagerCoordinator *)selfCopy registerPluginsFromBundle:v5];
      v8 = [(NSMutableDictionary *)selfCopy->_managersByBundleID objectForKey:bundleIdentifier];
      objc_sync_exit(selfCopy);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end