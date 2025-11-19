@interface AMSUIWebPluginLoader
- (AMSUIWebClientContext)context;
- (AMSUIWebPluginLoader)initWithContext:(id)a3;
- (NSArray)loadedPlugins;
- (id)_loadInstalledPlugins;
- (id)pluginForBundleIdentifier:(id)a3;
@end

@implementation AMSUIWebPluginLoader

- (AMSUIWebPluginLoader)initWithContext:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AMSUIWebPluginLoader;
  v5 = [(AMSUIWebPluginLoader *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, v4);
    v7 = [(AMSUIWebPluginLoader *)v6 _loadInstalledPlugins];
    installedPluginURLs = v6->_installedPluginURLs;
    v6->_installedPluginURLs = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    loadedPluginsMap = v6->_loadedPluginsMap;
    v6->_loadedPluginsMap = v9;
  }

  return v6;
}

- (NSArray)loadedPlugins
{
  v2 = [(AMSUIWebPluginLoader *)self loadedPluginsMap];
  v3 = [v2 allValues];

  return v3;
}

- (id)pluginForBundleIdentifier:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSUIWebPluginLoader *)self loadedPluginsMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(AMSUIWebPluginLoader *)self loadedPluginsMap];
    v8 = [v7 objectForKeyedSubscript:v4];

    goto LABEL_40;
  }

  v9 = [(AMSUIWebPluginLoader *)self installedPluginURLs];
  v10 = [v9 objectForKeyedSubscript:v4];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:v10];
    v12 = v11;
    if (v11)
    {
      if ([v11 load])
      {
        v13 = [v12 principalClass];
        if (v13)
        {
          v14 = v13;
          if (([(objc_class *)v13 conformsToProtocol:&unk_1F39C5B68]& 1) != 0)
          {
            objc_initWeak(location, self);
            v15 = [v14 alloc];
            v38 = [(AMSUIWebPluginLoader *)self context];
            v37 = [v38 bag];
            v16 = [(AMSUIWebPluginLoader *)self context];
            v17 = [v16 account];
            v18 = [(AMSUIWebPluginLoader *)self context];
            v19 = [v18 clientInfo];
            v20 = v19;
            if (!v19)
            {
              v20 = [MEMORY[0x1E698CAC8] currentProcess];
            }

            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v39[2] = __50__AMSUIWebPluginLoader_pluginForBundleIdentifier___block_invoke;
            v39[3] = &unk_1E7F24968;
            objc_copyWeak(&v40, location);
            v8 = [v15 initWithBag:v37 account:v17 clientInfo:v20 propertiesChangedHandler:v39];
            if (!v19)
            {
            }

            v21 = [(AMSUIWebPluginLoader *)self loadedPluginsMap];
            [v21 setObject:v8 forKeyedSubscript:v4];

            objc_destroyWeak(&v40);
            objc_destroyWeak(location);
            goto LABEL_39;
          }

          v25 = [MEMORY[0x1E698C968] sharedWebUIConfig];
          if (!v25)
          {
            v25 = [MEMORY[0x1E698C968] sharedConfig];
          }

          v26 = [v25 OSLogObject];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v33 = objc_opt_class();
            v34 = AMSLogKey();
            *location = 138543874;
            *&location[4] = v33;
            v42 = 2114;
            v43 = v34;
            v44 = 2114;
            v45 = v4;
            _os_log_impl(&dword_1BB036000, v26, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Principal class doesn't conform to AMSUIWebPlugin. Bundle identifier: %{public}@", location, 0x20u);
          }
        }

        else
        {
          v25 = [MEMORY[0x1E698C968] sharedWebUIConfig];
          if (!v25)
          {
            v25 = [MEMORY[0x1E698C968] sharedConfig];
          }

          v26 = [v25 OSLogObject];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v31 = objc_opt_class();
            v32 = AMSLogKey();
            *location = 138543874;
            *&location[4] = v31;
            v42 = 2114;
            v43 = v32;
            v44 = 2114;
            v45 = v4;
            _os_log_impl(&dword_1BB036000, v26, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Principal class not found. Bundle identifier: %{public}@", location, 0x20u);
          }
        }
      }

      else
      {
        v25 = [MEMORY[0x1E698C968] sharedWebUIConfig];
        if (!v25)
        {
          v25 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v26 = [v25 OSLogObject];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v30 = AMSLogKey();
          *location = 138543874;
          *&location[4] = v29;
          v42 = 2114;
          v43 = v30;
          v44 = 2114;
          v45 = v4;
          _os_log_impl(&dword_1BB036000, v26, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to load plugin. Bundle identifier: %{public}@", location, 0x20u);
        }
      }
    }

    else
    {
      v25 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v25)
      {
        v25 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v26 = [v25 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = objc_opt_class();
        v28 = AMSLogKey();
        *location = 138543874;
        *&location[4] = v27;
        v42 = 2114;
        v43 = v28;
        v44 = 2114;
        v45 = v4;
        _os_log_impl(&dword_1BB036000, v26, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No plugin bundle found. Bundle identifier: %{public}@", location, 0x20u);
      }
    }
  }

  else
  {
    v12 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v12)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v22 = [v12 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = AMSLogKey();
      *location = 138543874;
      *&location[4] = v23;
      v42 = 2114;
      v43 = v24;
      v44 = 2114;
      v45 = v4;
      _os_log_impl(&dword_1BB036000, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No plugin found. Bundle identifier: %{public}@", location, 0x20u);
    }
  }

  v8 = 0;
LABEL_39:

LABEL_40:
  v35 = *MEMORY[0x1E69E9840];

  return v8;
}

void __50__AMSUIWebPluginLoader_pluginForBundleIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained context];
  v2 = [v1 dataProvider];
  v3 = [v2 syncProperties];
}

- (id)_loadInstalledPlugins
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithPath:@"/System/Library/AppleMediaServices/WebUI/"];
  v4 = [v3 pathsForResourcesOfType:@"bundle" inDirectory:@"PlugIns"];
  v5 = v4;
  if (v4)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithPath:*(*(&v21 + 1) + 8 * i)];
          v11 = [v10 bundleIdentifier];
          v12 = [v10 bundleURL];
          v13 = v12;
          if (v11)
          {
            v14 = v12 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            [v2 setObject:v12 forKeyedSubscript:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v15 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v15)
    {
      v15 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138543618;
      v27 = v17;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_1BB036000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to find plugins bundle", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v2;
}

- (AMSUIWebClientContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end