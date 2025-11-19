@interface LSDPluginManager
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)endpointForServiceIdentifier:(id)a3 reply:(id)a4;
- (void)loadPluginsAtURL:(id)a3;
- (void)startPlugins;
@end

@implementation LSDPluginManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[LSDPluginManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

void __34__LSDPluginManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(LSDPluginManager);
  v1 = sharedInstance_sharedInstance_1;
  sharedInstance_sharedInstance_1 = v0;
}

- (void)loadPluginsAtURL:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v31 = v4;
  v6 = [v5 enumeratorAtURL:v4 includingPropertiesForKeys:0 options:7 errorHandler:&__block_literal_global_5_0];

  v7 = [MEMORY[0x1E695DF90] dictionary];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    v11 = @"lsdplugin";
    v32 = *v36;
    do
    {
      v12 = 0;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * v12);
        v14 = [v13 pathExtension];
        v15 = [v14 isEqualToString:v11];

        if (!v15)
        {
          v20 = 0;
          v17 = 0;
          goto LABEL_22;
        }

        v16 = [MEMORY[0x1E696AAE8] bundleWithURL:v13];
        v17 = v16;
        if (!v16)
        {
          v20 = 0;
          goto LABEL_22;
        }

        v18 = v7;
        v19 = v11;
        v20 = [v16 bundleIdentifier];
        if (!v20)
        {
          v22 = 0;
LABEL_16:
          v25 = _LSDefaultLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v40 = v13;
            v41 = 2112;
            v42 = v20;
            v43 = 2112;
            v44 = v22;
            _os_log_impl(&dword_18162D000, v25, OS_LOG_TYPE_DEFAULT, "Failed to load plugin with URL: %@ bundle identifier %@ error: %@", buf, 0x20u);
          }

LABEL_19:
          v11 = v19;
          v7 = v18;
          goto LABEL_20;
        }

        v34 = 0;
        v21 = [v17 loadAndReturnError:&v34];
        v22 = v34;
        if ((v21 & 1) == 0)
        {
          goto LABEL_16;
        }

        v23 = [v17 principalClass];
        if (![v23 conformsToProtocol:&unk_1EEFB2250])
        {
          goto LABEL_19;
        }

        v24 = objc_alloc_init(v23);

        v11 = v19;
        if (!v24)
        {
          v7 = v18;
          goto LABEL_21;
        }

        v7 = v18;
        [v18 setObject:v24 forKey:v20];
        v22 = v24;
LABEL_20:

LABEL_21:
        v10 = v32;
LABEL_22:
        v26 = [v7 copy];
        pluginsByBundleIentifier = self->_pluginsByBundleIentifier;
        self->_pluginsByBundleIentifier = v26;

        ++v12;
      }

      while (v9 != v12);
      v28 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      v9 = v28;
    }

    while (v28);
  }

  objc_autoreleasePoolPop(context);
  v29 = *MEMORY[0x1E69E9840];
}

uint64_t __37__LSDPluginManager_loadPluginsAtURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = _LSDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "Error enumerating URL: %@ error: %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)startPlugins
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_pluginsByBundleIentifier;
  v4 = [(NSDictionary *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSDictionary *)self->_pluginsByBundleIentifier objectForKey:*(*(&v13 + 1) + 8 * v7), v13];
        [v8 start];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSDictionary *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v9 = [__LSDefaultsGetSharedInstance() serviceNameForConnectionType:4];
  v10 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v9];
  listener = self->_listener;
  self->_listener = v10;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener resume];

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = MEMORY[0x1E696B0D0];
  v6 = a4;
  v7 = [v5 interfaceWithProtocol:&unk_1EEFA4CC8];
  [v6 setExportedInterface:v7];
  [v6 setExportedObject:self];
  [v6 resume];

  return 1;
}

- (void)endpointForServiceIdentifier:(id)a3 reply:(id)a4
{
  pluginsByBundleIentifier = self->_pluginsByBundleIentifier;
  v6 = a4;
  v8 = [(NSDictionary *)pluginsByBundleIentifier objectForKey:a3];
  v7 = [v8 XPCListenerEndpoint];
  v6[2](v6, v7);
}

@end