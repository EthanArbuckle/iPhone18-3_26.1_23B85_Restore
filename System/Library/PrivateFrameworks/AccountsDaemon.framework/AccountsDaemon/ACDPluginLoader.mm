@interface ACDPluginLoader
+ (id)_buildPluginCache;
+ (id)_currentSystemVersion;
+ (id)gameCenterPluginNameFromPlugins:(id)plugins modernPluginEnabled:(BOOL)enabled fallbackPluginID:(id)d modernPluginID:(id)iD;
+ (id)pluginForIdentifier:(id)identifier subpath:(id)subpath;
+ (void)_buildPluginCache;
@end

@implementation ACDPluginLoader

+ (id)_currentSystemVersion
{
  v2 = _CFCopySystemVersionDictionary();
  if (v2)
  {
    v3 = v2;
    Value = CFDictionaryGetValue(v2, *MEMORY[0x277CBEC70]);
    v5 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_buildPluginCache
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  selfCopy = self;
  v4 = [self pluginBundlesAtSubpath:@"Authentication"];
  v5 = _ACDLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[ACDPluginLoader _buildPluginCache];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v4;
  v28 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v28)
  {
    v27 = *v35;
    do
    {
      v6 = 0;
      do
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v6;
        v7 = *(*(&v34 + 1) + 8 * v6);
        bundlePath = [v7 bundlePath];
        lastPathComponent = [bundlePath lastPathComponent];

        v10 = [v7 objectForInfoDictionaryKey:@"ACSupportedAccountTypes"];
        v11 = v10;
        if (v10)
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v12 = [v10 countByEnumeratingWithState:&v30 objects:v44 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v31;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v31 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v30 + 1) + 8 * i);
                v17 = _ACDLogSystem();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v39 = lastPathComponent;
                  v40 = 2112;
                  v41 = v16;
                  _os_log_debug_impl(&dword_221D2F000, v17, OS_LOG_TYPE_DEBUG, "Adding %@ to cache as supporting %@", buf, 0x16u);
                }

                v18 = [v3 objectForKeyedSubscript:v16];

                if (v18)
                {
                  v19 = _ACDLogSystem();
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                  {
                    v20 = [v3 objectForKeyedSubscript:v16];
                    *buf = 138412802;
                    v39 = v20;
                    v40 = 2112;
                    v41 = v16;
                    v42 = 2112;
                    v43 = lastPathComponent;
                    _os_log_error_impl(&dword_221D2F000, v19, OS_LOG_TYPE_ERROR, "The plugin %@ for accountType %@ is being overwritten with plugin %@", buf, 0x20u);
                  }
                }

                [v3 setObject:lastPathComponent forKey:v16];
              }

              v13 = [v11 countByEnumeratingWithState:&v30 objects:v44 count:16];
            }

            while (v13);
          }
        }

        else
        {
          v21 = _ACDLogSystem();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v39 = lastPathComponent;
            _os_log_error_impl(&dword_221D2F000, v21, OS_LOG_TYPE_ERROR, "Plugin %@ does not have any supported account types in its plist!", buf, 0xCu);
          }
        }

        v6 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
    }

    while (v28);
  }

  v22 = [selfCopy gameCenterPluginNameFromPlugins:obj modernPluginEnabled:_os_feature_enabled_impl() fallbackPluginID:@"com.apple.AAGKAuthenticationPlugin" modernPluginID:@"com.apple.gamecenter.GameCenterAccountAuthenticationPlugin"];
  [v3 setObject:v22 forKeyedSubscript:*MEMORY[0x277CB8C38]];

  v23 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)gameCenterPluginNameFromPlugins:(id)plugins modernPluginEnabled:(BOOL)enabled fallbackPluginID:(id)d modernPluginID:(id)iD
{
  enabledCopy = enabled;
  v36 = *MEMORY[0x277D85DE8];
  pluginsCopy = plugins;
  dCopy = d;
  iDCopy = iD;
  v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(pluginsCopy, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = pluginsCopy;
  v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        bundleIdentifier = [v18 bundleIdentifier];

        if (bundleIdentifier)
        {
          bundleIdentifier2 = [v18 bundleIdentifier];
          [v12 setObject:v18 forKeyedSubscript:bundleIdentifier2];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v15);
  }

  v21 = [v12 objectForKeyedSubscript:iDCopy];
  bundlePath = [v21 bundlePath];
  lastPathComponent = [bundlePath lastPathComponent];

  if (enabledCopy && [lastPathComponent length])
  {
    v24 = _ACDLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      +[ACDPluginLoader gameCenterPluginNameFromPlugins:modernPluginEnabled:fallbackPluginID:modernPluginID:];
    }

    lastPathComponent2 = lastPathComponent;
  }

  else
  {
    v26 = _ACDLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      +[ACDPluginLoader gameCenterPluginNameFromPlugins:modernPluginEnabled:fallbackPluginID:modernPluginID:];
    }

    v27 = [v12 objectForKeyedSubscript:dCopy];
    bundlePath2 = [v27 bundlePath];
    lastPathComponent2 = [bundlePath2 lastPathComponent];
  }

  v29 = *MEMORY[0x277D85DE8];

  return lastPathComponent2;
}

+ (id)pluginForIdentifier:(id)identifier subpath:(id)subpath
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  subpathCopy = subpath;
  _currentSystemVersion = [self _currentSystemVersion];
  if (_currentSystemVersion)
  {
    subpathCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@PluginCache", subpathCopy];
    v10 = CFPreferencesCopyAppValue(subpathCopy, @"com.apple.accountsd");
    v11 = CFPreferencesCopyAppValue(@"LastSystemVersion", @"com.apple.accountsd");
    if (v11 && [v10 count] && CFStringCompare(_currentSystemVersion, v11, 1uLL) == kCFCompareEqualTo)
    {
      v14 = 0;
    }

    else
    {
      v12 = _ACDLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = v11;
        v23 = 2112;
        v24 = _currentSystemVersion;
        _os_log_impl(&dword_221D2F000, v12, OS_LOG_TYPE_DEFAULT, "System build version changed from %@ to %@", buf, 0x16u);
      }

      _buildPluginCache = [self _buildPluginCache];

      CFPreferencesSetAppValue(subpathCopy, _buildPluginCache, @"com.apple.accountsd");
      CFPreferencesSetAppValue(@"LastSystemVersion", _currentSystemVersion, @"com.apple.accountsd");
      v14 = 1;
      v10 = _buildPluginCache;
    }

    v15 = [v10 objectForKey:identifierCopy];
    if (v15)
    {
      v16 = [(ACPluginLoader *)ACDPluginLoader pluginWithName:v15 inSubpath:@"Authentication"];
      v17 = _ACDLogSystem();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
      if (v16)
      {
        if (v18)
        {
          +[ACDPluginLoader pluginForIdentifier:subpath:];
        }

        goto LABEL_20;
      }

      if (v18)
      {
        +[ACDPluginLoader pluginForIdentifier:subpath:];
      }
    }

    else
    {
      v17 = _ACDLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        +[ACDPluginLoader pluginForIdentifier:subpath:];
      }
    }

    v16 = 0;
LABEL_20:

    if (v11)
    {
      CFRelease(v11);
    }

    if (v14)
    {
      CFPreferencesAppSynchronize(@"com.apple.accountsd");
    }

    goto LABEL_25;
  }

  subpathCopy = _ACDLogSystem();
  if (os_log_type_enabled(subpathCopy, OS_LOG_TYPE_ERROR))
  {
    +[ACDPluginLoader pluginForIdentifier:subpath:];
  }

  v16 = 0;
LABEL_25:

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (void)_buildPluginCache
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)gameCenterPluginNameFromPlugins:modernPluginEnabled:fallbackPluginID:modernPluginID:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)gameCenterPluginNameFromPlugins:modernPluginEnabled:fallbackPluginID:modernPluginID:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)pluginForIdentifier:subpath:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)pluginForIdentifier:subpath:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)pluginForIdentifier:subpath:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end