@interface AEPluginRegistry
+ (id)sharedInstance;
- (AEPluginRegistry)init;
- (id)pluginForExtension:(id)extension;
- (id)pluginForURL:(id)l;
- (void)prewarmSharedResourcesWithCompletion:(id)completion;
- (void)registerAssetEnginePlugin:(id)plugin;
- (void)registerAssetEnginePlugin:(id)plugin forExtension:(id)extension;
@end

@implementation AEPluginRegistry

+ (id)sharedInstance
{
  if (qword_345FF0 != -1)
  {
    sub_1EBBE8();
  }

  v3 = qword_345FE8;

  return v3;
}

- (AEPluginRegistry)init
{
  v10.receiver = self;
  v10.super_class = AEPluginRegistry;
  v2 = [(AEPluginRegistry *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    extensionPlugins = v2->_extensionPlugins;
    v2->_extensionPlugins = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    schemePlugins = v2->_schemePlugins;
    v2->_schemePlugins = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    assetTypePlugins = v2->_assetTypePlugins;
    v2->_assetTypePlugins = v7;
  }

  return v2;
}

- (void)registerAssetEnginePlugin:(id)plugin forExtension:(id)extension
{
  pluginCopy = plugin;
  assetTypePlugins = self->_assetTypePlugins;
  extensionCopy = extension;
  associatedAssetType = [pluginCopy associatedAssetType];
  [(NSMutableDictionary *)assetTypePlugins setObject:pluginCopy forKey:associatedAssetType];

  lowercaseString = [extensionCopy lowercaseString];

  v10 = [(NSMutableDictionary *)self->_extensionPlugins objectForKey:lowercaseString];
  if (v10)
  {
    objc_opt_class();
    v11 = BUDynamicCast();
    if (!v11)
    {
      v11 = [[AEAggregationPlugin alloc] initWithFileExtension:lowercaseString];
      [(AEAggregationPlugin *)v11 addPlugin:v10];
      [(NSMutableDictionary *)self->_extensionPlugins setValue:v11 forKey:lowercaseString];
    }

    [(AEAggregationPlugin *)v11 addPlugin:pluginCopy];
  }

  else
  {
    [(NSMutableDictionary *)self->_extensionPlugins setValue:pluginCopy forKey:lowercaseString];
  }
}

- (void)registerAssetEnginePlugin:(id)plugin
{
  pluginCopy = plugin;
  supportedFileExtensions = [pluginCopy supportedFileExtensions];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [supportedFileExtensions countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(supportedFileExtensions);
        }

        [(AEPluginRegistry *)self registerAssetEnginePlugin:pluginCopy forExtension:*(*(&v23 + 1) + 8 * i)];
      }

      v7 = [supportedFileExtensions countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v18 = supportedFileExtensions;
  supportedUrlSchemes = [pluginCopy supportedUrlSchemes];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [supportedUrlSchemes countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(supportedUrlSchemes);
        }

        v15 = *(*(&v19 + 1) + 8 * j);
        v16 = [(NSMutableDictionary *)self->_schemePlugins objectForKey:v15];
        if (v16)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            v17 = [[AEAggregationPlugin alloc] initWithUrlScheme:v15];
            [(AEAggregationPlugin *)v17 addPlugin:v16];
            [(NSMutableDictionary *)self->_schemePlugins setValue:v17 forKey:v15];
          }

          [(AEAggregationPlugin *)v17 addPlugin:pluginCopy];
        }

        else
        {
          [(NSMutableDictionary *)self->_schemePlugins setValue:pluginCopy forKey:v15];
        }
      }

      v12 = [supportedUrlSchemes countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v12);
  }
}

- (void)prewarmSharedResourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = dispatch_group_create();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allValues = [(NSMutableDictionary *)self->_assetTypePlugins allValues];
  v6 = [allValues countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v10 description];
          *buf = 138412290;
          v24 = v11;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Begin AEBookPlugin prewarm for %@", buf, 0xCu);
        }

        if (objc_opt_respondsToSelector())
        {
          dispatch_group_enter(v4);
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_154A64;
          v17[3] = &unk_2C7BE8;
          v17[4] = v10;
          v18 = v4;
          [v10 prewarmSharedResourcesWithCompletion:v17];
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v10 description];
          *buf = 138543362;
          v24 = v12;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Skipped AEBookPlugin prewarm for %{public}@", buf, 0xCu);
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_154B20;
  block[3] = &unk_2C8398;
  v16 = completionCopy;
  v13 = completionCopy;
  dispatch_group_notify(v4, &_dispatch_main_q, block);
}

- (id)pluginForExtension:(id)extension
{
  extensionCopy = extension;
  if (-[NSMutableDictionary count](self->_extensionPlugins, "count") && [extensionCopy length])
  {
    lowercaseString = [extensionCopy lowercaseString];
    v6 = [(NSMutableDictionary *)self->_extensionPlugins objectForKey:lowercaseString];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pluginForURL:(id)l
{
  lCopy = l;
  pathExtension = [lCopy pathExtension];
  v6 = [(AEPluginRegistry *)self pluginForExtension:pathExtension];

  if (!v6)
  {
    if ([(NSMutableDictionary *)self->_schemePlugins count])
    {
      scheme = [lCopy scheme];
      if ([scheme length])
      {
        v6 = [(NSMutableDictionary *)self->_schemePlugins objectForKey:scheme];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end