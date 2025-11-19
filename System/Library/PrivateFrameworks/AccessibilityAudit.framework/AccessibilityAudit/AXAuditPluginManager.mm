@interface AXAuditPluginManager
+ (id)sharedManager;
- (void)_loadAuditBundle:(id)a3;
- (void)loadAuditBundles;
@end

@implementation AXAuditPluginManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__AXAuditPluginManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken_2 != -1)
  {
    dispatch_once(&sharedManager_onceToken_2, block);
  }

  v2 = sharedManager_instance_2;

  return v2;
}

uint64_t __37__AXAuditPluginManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedManager_instance_2 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)_loadAuditBundle:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.accessibility.AccessibilityAuditUI"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = @"YES";
    *buf = 136315650;
    v20 = "[AXAuditPluginManager _loadAuditBundle:]";
    v21 = 2112;
    if (v6)
    {
      v7 = @"NO";
    }

    v22 = v7;
    v23 = 2112;
    v24 = v3;
    _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: shouldLoad: %@, %@ ", buf, 0x20u);
  }

  if ((v6 & 1) == 0)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleWithPath:v3];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "[AXAuditPluginManager _loadAuditBundle:]";
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: plugin: %@ ", buf, 0x16u);
    }

    if (v8)
    {
      v9 = [(__CFString *)v8 principalClass];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v20 = "[AXAuditPluginManager _loadAuditBundle:]";
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: principalClass: %@ ", buf, 0x16u);
      }

      if ([(__CFString *)v9 isSubclassOfClass:objc_opt_class()])
      {
        v18 = 0;
        v10 = [(__CFString *)v8 loadAndReturnError:&v18];
        v11 = v18;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          if (v10)
          {
            v12 = @"YES";
          }

          else
          {
            v12 = @"NO";
          }

          v13 = [(__CFString *)v8 isLoaded];
          *buf = 136315906;
          v20 = "[AXAuditPluginManager _loadAuditBundle:]";
          if (v13)
          {
            v14 = @"YES";
          }

          else
          {
            v14 = @"NO";
          }

          v21 = 2112;
          v22 = v12;
          v23 = 2112;
          v24 = v11;
          v25 = 2112;
          v26 = v14;
          _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: loaded: %@, error: %@, plugin.isLoaded: %@", buf, 0x2Au);
        }

        if ([(__CFString *)v8 isLoaded])
        {
          objc_storeStrong(&_PluginBundle, v8);
          v15 = objc_opt_new();
          v16 = _Plugin;
          _Plugin = v15;
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)loadAuditBundles
{
  v18 = *MEMORY[0x277D85DE8];
  if (![(AXAuditPluginManager *)self _didLoadBundles])
  {
    [(AXAuditPluginManager *)self set_didLoadBundles:1];
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 pathsForResourcesOfType:@"bundle" inDirectory:0];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 lastPathComponent];
          v11 = [v10 hasPrefix:@"AccessibilityAudit"];

          if (v11)
          {
            [(AXAuditPluginManager *)self _loadAuditBundle:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end