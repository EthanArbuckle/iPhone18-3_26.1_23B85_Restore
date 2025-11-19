@interface NELaunchServices
+ (id)lookupIdentifier:(id)a3 plugins:(id *)a4;
+ (id)pluginClassToExtensionPoint:(int64_t)a3;
+ (id)pluginProxyWithIdentifier:(id)a3 type:(id)a4 pluginClass:(int64_t)a5 extensionPoint:(id)a6;
@end

@implementation NELaunchServices

+ (id)lookupIdentifier:(id)a3 plugins:(id *)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E6963618] bundleProxyForIdentifier:v5];
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  if (v6)
  {
    v44 = a4;
    v8 = [v6 objectForInfoDictionaryKey:*MEMORY[0x1E695E120] ofClass:objc_opt_class()];
    if (!v8)
    {
      v8 = [v7 objectForInfoDictionaryKey:*MEMORY[0x1E695E4F8] ofClass:objc_opt_class()];
    }

    [v7 entitlementValueForKey:@"com.apple.security.application-groups" ofClass:objc_opt_class()];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v9 = v52 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v49 objects:v54 count:16];
    v11 = v9;
    if (v10)
    {
      v12 = v10;
      v13 = v8;
      v14 = *v50;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v50 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v49 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v11 = 0;
            goto LABEL_16;
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v11 = v9;
LABEL_16:
      v8 = v13;
    }

    v17 = [NEBundleProxy alloc];
    v18 = [v7 bundleIdentifier];
    v19 = [v7 bundleURL];
    v20 = [v7 machOUUIDs];
    v21 = [(NEBundleProxy *)v17 initWithIdentifier:v18 url:v19 machOUUIDs:v20 name:v8 appGroups:v11];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v44)
    {
      if (isKindOfClass)
      {
        v23 = [v7 plugInKitPlugins];
        v24 = [v23 count];

        if (v24)
        {
          v39 = v21;
          v40 = v11;
          v41 = v8;
          v43 = v5;
          v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v42 = v7;
          v26 = [v7 plugInKitPlugins];
          v27 = [v26 countByEnumeratingWithState:&v45 objects:v53 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v46;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v46 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v45 + 1) + 8 * j);
                v32 = [NEBundleProxy alloc];
                v33 = [v31 bundleIdentifier];
                v34 = [v31 bundleURL];
                v35 = [v31 machOUUIDs];
                v36 = [(NEBundleProxy *)v32 initWithIdentifier:v33 url:v34 machOUUIDs:v35 name:0 appGroups:0];

                [v25 addObject:v36];
              }

              v28 = [v26 countByEnumeratingWithState:&v45 objects:v53 count:16];
            }

            while (v28);
          }

          *v44 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v25];
          v7 = v42;
          v5 = v43;
          v11 = v40;
          v8 = v41;
          v21 = v39;
        }
      }
    }
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v5;
      _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "Failed to find %@ in LaunchServices", buf, 0xCu);
    }

    v21 = 0;
  }

  v37 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)pluginProxyWithIdentifier:(id)a3 type:(id)a4 pluginClass:(int64_t)a5 extensionPoint:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (v9)
  {
    v12 = [MEMORY[0x1E6963678] pluginKitProxyForIdentifier:v9];
    goto LABEL_23;
  }

  v13 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v10];
  v14 = v13;
  if (!v13)
  {
    v27 = ne_log_obj();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
LABEL_22:

      v12 = 0;
      goto LABEL_23;
    }

    *buf = 138412290;
    v39 = v10;
    v28 = "Failed to find application with bundle identifier %@";
LABEL_30:
    _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, v28, buf, 0xCu);
    goto LABEL_22;
  }

  v15 = [v13 appState];
  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = v15;
  v17 = [v14 appState];
  if (([v17 isInstalled] & 1) == 0)
  {

    goto LABEL_21;
  }

  v18 = [v14 appState];
  v19 = [v18 isValid];

  if ((v19 & 1) == 0)
  {
LABEL_21:
    v27 = ne_log_obj();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 138412290;
    v39 = v10;
    v28 = "App %@ is not installed or is not valid";
    goto LABEL_30;
  }

  v20 = v11;
  if (!v20)
  {
    v20 = [NELaunchServices pluginClassToExtensionPoint:a5];
    if (!v20)
    {
      v27 = ne_log_obj();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      *buf = 134217984;
      v39 = a5;
      v28 = "Failed to map plugin class %ld to an extension point";
      goto LABEL_30;
    }
  }

  v21 = v20;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [v14 plugInKitPlugins];
  v12 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v31 = v14;
    v22 = *v34;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v33 + 1) + 8 * i);
        v25 = [v24 protocol];
        v26 = [v25 isEqualToString:v21];

        if (v26)
        {
          v12 = v24;
          goto LABEL_27;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

LABEL_27:
    v14 = v31;
  }

LABEL_23:
  v29 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)pluginClassToExtensionPoint:(int64_t)a3
{
  if ((a3 - 2) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7F09620[a3 - 2];
  }
}

@end