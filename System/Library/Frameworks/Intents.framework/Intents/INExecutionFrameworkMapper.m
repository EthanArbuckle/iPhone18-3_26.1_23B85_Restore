@interface INExecutionFrameworkMapper
+ (void)initialize;
- (INExecutionFrameworkMapper)init;
- (id)appBundleIdentifierForSystemExtensionBundleIdentifier:(id)a3;
- (id)displayableAppBundleIdentifierForSystemExtensionBundleIdentifier:(id)a3;
- (id)extensionBundleIdentifiersForSystemAppIdentifier:(id)a3;
- (id)launchableAppBundleIdentifierForSystemExtensionBundleIdentifier:(id)a3;
- (void)_addExtensionBundleIdentifier:(id)a3 forAppBundleIdentifier:(id)a4;
- (void)dealloc;
- (void)installedApplicationsDidChange:(id)a3;
- (void)loadSystemExtensionInformation;
- (void)reset;
@end

@implementation INExecutionFrameworkMapper

- (INExecutionFrameworkMapper)init
{
  v7.receiver = self;
  v7.super_class = INExecutionFrameworkMapper;
  v2 = [(INExecutionFrameworkMapper *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v4 addObserver:v3 selector:sel_installedApplicationsDidChange_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [v4 addObserver:v3 selector:sel_installedApplicationsDidChange_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
    [(INExecutionFrameworkMapper *)v3 reset];
    v5 = v3;
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self name:@"com.apple.LaunchServices.applicationRegistered" object:0];
  [v3 removeObserver:self name:@"com.apple.LaunchServices.applicationUnregistered" object:0];

  v4.receiver = self;
  v4.super_class = INExecutionFrameworkMapper;
  [(INExecutionFrameworkMapper *)&v4 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1 && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

- (void)reset
{
  os_unfair_lock_lock(&self->_lock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__INExecutionFrameworkMapper_reset__block_invoke;
  v8[3] = &unk_1E72882F8;
  v8[4] = self;
  v3 = MEMORY[0x193AD7780](v8);
  v4 = objc_opt_new();
  appToExtensionIdentifiers = self->_appToExtensionIdentifiers;
  self->_appToExtensionIdentifiers = v4;

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__INExecutionFrameworkMapper_reset__block_invoke_2;
  v7[3] = &unk_1E7287008;
  v7[4] = self;
  [&unk_1F02E0D28 enumerateKeysAndObjectsUsingBlock:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__INExecutionFrameworkMapper_reset__block_invoke_3;
  v6[3] = &unk_1E7287008;
  v6[4] = self;
  [&unk_1F02E0D50 enumerateKeysAndObjectsUsingBlock:v6];
  self->_filled = 0;
  v3[2](v3);
}

- (id)appBundleIdentifierForSystemExtensionBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INExecutionFrameworkMapper *)self launchableAppBundleIdentifierForSystemExtensionBundleIdentifier:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(INExecutionFrameworkMapper *)self displayableAppBundleIdentifierForSystemExtensionBundleIdentifier:v4];
  }

  v8 = v7;

  return v8;
}

- (id)displayableAppBundleIdentifierForSystemExtensionBundleIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [&unk_1F02E0D50 objectForKey:v3];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else if (INThisProcessCanMapLSDatabase(0))
    {
      v7 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v3 error:0];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 infoDictionary];
        v6 = [v9 objectForKey:@"INDisplayableApplicationBundleIdentifier" ofClass:objc_opt_class()];
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

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)launchableAppBundleIdentifierForSystemExtensionBundleIdentifier:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = [&unk_1F02E0D28 objectForKey:v3];
  if (v4)
  {
    goto LABEL_10;
  }

  if (INThisProcessCanMapLSDatabase(0))
  {
    v5 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v3 error:0];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 infoDictionary];
      v4 = [v7 objectForKey:@"INLaunchableApplicationBundleIdentifier" ofClass:objc_opt_class()];

      if (!v4)
      {
        v8 = [v6 infoDictionary];
        v4 = [v8 objectForKey:@"INLaunchableAApplicationBundleIdentifier" ofClass:objc_opt_class()];

        if (!v4)
        {
          v4 = [v6 containingBundleRecord];

          if (v4)
          {
            v9 = [v6 containingBundleRecord];
            v4 = [v9 bundleIdentifier];
          }
        }
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
LABEL_9:
    v4 = 0;
  }

LABEL_10:

  return v4;
}

- (id)extensionBundleIdentifiersForSystemAppIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];
  v6 = [v5 compatibilityObject];
  v7 = 0;
  if ([v6 if_isSystem])
  {
    [(INExecutionFrameworkMapper *)self loadSystemExtensionInformation];
    os_unfair_lock_lock(&self->_lock);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __79__INExecutionFrameworkMapper_extensionBundleIdentifiersForSystemAppIdentifier___block_invoke;
    v14[3] = &unk_1E72882F8;
    v14[4] = self;
    v8 = MEMORY[0x193AD7780](v14);
    v9 = [v5 applicationExtensionRecords];
    v10 = [v9 if_compactMap:&__block_literal_global_119894];

    v11 = [(INExecutionFrameworkMapper *)self _appToExtensionIdentifiers];
    v12 = [v11 objectForKey:v4];

    v7 = [v10 setByAddingObjectsFromSet:v12];

    v8[2](v8);
  }

  return v7;
}

- (void)loadSystemExtensionInformation
{
  v25 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __60__INExecutionFrameworkMapper_loadSystemExtensionInformation__block_invoke;
  v23[3] = &unk_1E72882F8;
  v3 = self;
  v23[4] = self;
  v17 = MEMORY[0x193AD7780](v23);
  if (!self->_filled)
  {
    [MEMORY[0x1E69635D0] enumeratorWithOptions:1];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    obj = v20 = 0u;
    v4 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v4)
    {
      v5 = *v20;
      do
      {
        v6 = 0;
        do
        {
          if (*v20 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v19 + 1) + 8 * v6);
          v8 = objc_autoreleasePoolPush();
          v9 = [v7 bundleIdentifier];
          if (v9)
          {
            v10 = [v7 infoDictionary];
            v11 = [v10 objectForKey:@"INLaunchableApplicationBundleIdentifier" ofClass:objc_opt_class()];

            if (v11)
            {
              [(INExecutionFrameworkMapper *)v3 _addExtensionBundleIdentifier:v9 forAppBundleIdentifier:v11];
            }

            v12 = [v7 infoDictionary];
            v13 = [v12 objectForKey:@"INLaunchableAApplicationBundleIdentifier" ofClass:objc_opt_class()];

            if (v13)
            {
              [(INExecutionFrameworkMapper *)v3 _addExtensionBundleIdentifier:v9 forAppBundleIdentifier:v13];
            }

            v14 = [v7 infoDictionary];
            v15 = [v14 objectForKey:@"INDisplayableApplicationBundleIdentifier" ofClass:objc_opt_class()];

            if (v15)
            {
              [(INExecutionFrameworkMapper *)v3 _addExtensionBundleIdentifier:v9 forAppBundleIdentifier:v15];
            }
          }

          objc_autoreleasePoolPop(v8);
          ++v6;
        }

        while (v4 != v6);
        v4 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v4);
    }

    v3->_filled = 1;
  }

  v17[2]();

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_addExtensionBundleIdentifier:(id)a3 forAppBundleIdentifier:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_appToExtensionIdentifiers objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = objc_opt_new();
    [(NSMutableDictionary *)self->_appToExtensionIdentifiers setObject:v7 forKeyedSubscript:v6];
  }

  [v7 addObject:v8];
}

- (void)installedApplicationsDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"isPlaceholder"];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
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

  v7 = v6;

  v8 = [v7 BOOLValue];
  if ((v8 & 1) == 0)
  {

    [(INExecutionFrameworkMapper *)self reset];
  }
}

@end