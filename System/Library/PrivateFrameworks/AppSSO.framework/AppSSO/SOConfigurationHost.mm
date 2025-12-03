@interface SOConfigurationHost
+ (id)_loadProfilesFromDict:(id)dict;
+ (id)_loadProfilesFromURL:(id)l logFileError:(BOOL)error;
+ (id)defaultManager;
+ (id)maskRegistrationTokenInConfigurationData:(id)data;
+ (id)maskRegistrationTokenInProfileList:(id)list;
+ (void)defaultManager;
- (BOOL)_initCachePath:(id)path ifNeededWithError:(id *)error;
- (BOOL)_initDataVaultIfNeededWithError:(id *)error;
- (BOOL)_isConfigFileAvailable;
- (BOOL)_saveCacheToFile:(id)file error:(id *)error;
- (BOOL)_saveConfigToFile:(id)file error:(id *)error;
- (BOOL)hasAnyMDMProfileForExtension:(id)extension;
- (BOOL)isPlatformSSOProfile:(id)profile;
- (BOOL)saveConfiguration:(id)configuration error:(id *)error;
- (BOOL)saveConfigurationData:(id)data error:(id *)error;
- (SOConfigurationHost)init;
- (id)_checkAssociatedDomainForProfiles:(id)profiles;
- (id)_checkExtensionsExistenceForProfiles:(id)profiles;
- (id)_defaultCacheFile;
- (id)_defaultConfigurationFile;
- (id)_mergeProfile:(id)profile userProfiles:(id)profiles;
- (id)_removeNotSupportedUserProfiles:(id)profiles;
- (id)_stringWithReason:(int64_t)reason;
- (id)configurationForClientWithError:(id *)error;
- (id)findPlatformSSOProfile:(id)profile;
- (id)findProfileForExtension:(id)extension profiles:(id)profiles;
- (id)platformSSOProfile;
- (id)profileForURL:(id)l responseCode:(int64_t)code;
- (id)profilesWithExtensionBundleIdentifier:(id)identifier;
- (id)realms;
- (id)removedProfileForExtensionBundleIdentifier:(id)identifier;
- (id)systemMDMProfileForExtension:(id)extension;
- (id)validatedProfileForPlatformSSO;
- (int64_t)willHandleURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier;
- (void)_checkNewVersion;
- (void)_configurationLoadedWithReason:(int64_t)reason;
- (void)_extensionsLoaded:(id)loaded;
- (void)_isConfigFileAvailable;
- (void)_isConfigurationActiveForExtensionIdentifier:(id)identifier runningAsAgent:(BOOL)agent completion:(id)completion;
- (void)_loadCacheFromDisk;
- (void)_loadConfigForFirstTime;
- (void)_reloadConfigWithReason:(int64_t)reason;
- (void)_startKeyBagObserverForReloadingConfiguration;
- (void)dealloc;
- (void)platformSSOProfile;
@end

@implementation SOConfigurationHost

+ (id)defaultManager
{
  if (defaultManager_onceToken_0 != -1)
  {
    +[SOConfigurationHost defaultManager];
  }

  v2 = defaultManager_manager_0;
  if (!defaultManager_manager_0)
  {
    v3 = SO_LOG_SOConfigurationHost();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[SOConfigurationHost defaultManager];
    }

    v2 = defaultManager_manager_0;
  }

  return v2;
}

- (void)_checkNewVersion
{
  if ([(SOConfigurationVersion *)self->_configurationVersion checkVersion]== 1)
  {
    configurationPendingLock = [(SOConfigurationHost *)self configurationPendingLock];
    objc_sync_enter(configurationPendingLock);
    [(SOConfigurationHost *)self setConfigurationPending:1];
    objc_sync_exit(configurationPendingLock);

    [(SOConfigurationHost *)self _reloadConfigWithReason:2];
  }
}

uint64_t __37__SOConfigurationHost_defaultManager__block_invoke()
{
  v0 = objc_alloc_init(SOConfigurationHost);
  v1 = defaultManager_manager_0;
  defaultManager_manager_0 = v0;

  v2 = defaultManager_manager_0;

  return [v2 _loadConfigForFirstTime];
}

- (SOConfigurationHost)init
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SOConfigurationHost init]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v15.receiver = self;
  v15.super_class = SOConfigurationHost;
  v4 = [(SOConfigurationHost *)&v15 init];
  if (v4)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v5 = getSOConfigurationVersionClass_softClass;
    v19 = getSOConfigurationVersionClass_softClass;
    if (!getSOConfigurationVersionClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSOConfigurationVersionClass_block_invoke;
      v21 = &unk_1E813E230;
      v22 = &v16;
      __getSOConfigurationVersionClass_block_invoke(buf);
      v5 = v17[3];
    }

    v6 = v5;
    _Block_object_dispose(&v16, 8);
    v7 = [[v5 alloc] initWithMode:0];
    configurationVersion = v4->_configurationVersion;
    v4->_configurationVersion = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    associatedDomainCache = v4->_associatedDomainCache;
    v4->_associatedDomainCache = v9;

    v4->_configurationPending = 0;
    v11 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    configurationPendingLock = v4->_configurationPendingLock;
    v4->_configurationPendingLock = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SOConfigurationHost;
  [(SOConfigurationHost *)&v4 dealloc];
}

- (BOOL)saveConfiguration:(id)configuration error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v7 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() maskRegistrationTokenInProfileList:configurationCopy];
    *buf = 136315651;
    v22 = "[SOConfigurationHost saveConfiguration:error:]";
    v23 = 2113;
    v24 = v8;
    v25 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s saving new configuration: %{private}@ on %@", buf, 0x20u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v10 = [objc_opt_class() _loadProfilesFromDict:configurationCopy];
  if (v10)
  {
    v11 = [(SOConfigurationHost *)selfCopy2 _saveConfigToFile:configurationCopy error:error];
    if (v11)
    {
      [(SOConfigurationVersion *)selfCopy2->_configurationVersion increaseVersionWithMessage:@"NewConfiguration"];
    }

    if (!getuid())
    {
      _defaultCacheFile = [(SOConfigurationHost *)selfCopy2 _defaultCacheFile];
      stringByDeletingLastPathComponent = [_defaultCacheFile stringByDeletingLastPathComponent];

      v20 = 0;
      v14 = [(SOConfigurationHost *)selfCopy2 _initCachePath:stringByDeletingLastPathComponent ifNeededWithError:&v20];
      v15 = v20;
      if (!v14)
      {
        v16 = SO_LOG_SOConfigurationHost();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [SOConfigurationHost saveConfiguration:error:];
        }
      }
    }
  }

  else
  {
    v17 = SO_LOG_SOConfigurationHost();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationHost saveConfiguration:error:];
    }

    if (error)
    {
      [getSOErrorHelperClass_3() parameterErrorWithMessage:@"invalid configuration format"];
      *error = LOBYTE(v11) = 0;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  objc_sync_exit(selfCopy2);
  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)saveConfigurationData:(id)data error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() maskRegistrationTokenInProfileList:dataCopy];
    v19 = 136315651;
    v20 = "[SOConfigurationHost saveConfigurationData:error:]";
    v21 = 2113;
    v22 = v8;
    v23 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s saving new configuration=%{private}@ on %@", &v19, 0x20u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v10 = [objc_opt_class() _loadProfilesFromDict:dataCopy];
  if (!v10)
  {
    v15 = SO_LOG_SOConfigurationHost();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [objc_opt_class() maskRegistrationTokenInProfileList:dataCopy];
      [SOConfigurationHost saveConfigurationData:v16 error:&v19];
    }

    if (error)
    {
      [getSOErrorHelperClass_3() parameterErrorWithMessage:@"invalid configuration format"];
      v10 = 0;
      *error = v14 = 0;
      goto LABEL_12;
    }

    v10 = 0;
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  if (![(SOConfigurationHost *)selfCopy2 _saveConfigToFile:dataCopy error:error])
  {
    goto LABEL_11;
  }

  v11 = [(SOConfigurationHost *)selfCopy2 _checkAssociatedDomainForProfiles:v10];

  v12 = [objc_alloc(getSOConfigurationClass()) initWithProfiles:v11];
  configuration = selfCopy2->_configuration;
  selfCopy2->_configuration = v12;

  [(SOConfigurationVersion *)selfCopy2->_configurationVersion increaseVersionWithMessage:@"NewConfiguration"];
  v14 = 1;
  v10 = v11;
LABEL_12:

  objc_sync_exit(selfCopy2);
  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)profileForURL:(id)l responseCode:(int64_t)code
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[SOConfigurationHost profileForURL:responseCode:]";
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v16, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  [(SOConfigurationHost *)selfCopy2 _checkNewVersion];
  v9 = [(SOConfiguration *)selfCopy2->_configuration profileForURL:lCopy responseCode:code];
  if (v9 && (getSOFullProfileClass(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = SO_LOG_SOConfigurationHost();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationHost profileForURL:responseCode:];
    }

    v11 = 0;
  }

  else
  {
    v10 = SO_LOG_SOConfigurationHost();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      profiles = [(SOConfiguration *)selfCopy2->_configuration profiles];
      v16 = 141558787;
      v17 = 1752392040;
      v18 = 2117;
      selfCopy = lCopy;
      v20 = 2114;
      v21 = v9;
      v22 = 2114;
      v23 = profiles;
      _os_log_debug_impl(&dword_1C1317000, v10, OS_LOG_TYPE_DEBUG, "profile for URL %{sensitive, mask.hash}@ => %{public}@ in %{public}@", &v16, 0x2Au);
    }

    v11 = v9;
  }

  objc_sync_exit(selfCopy2);
  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)removedProfileForExtensionBundleIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[SOConfigurationHost removedProfileForExtensionBundleIdentifier:]";
    v24 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = selfCopy2->_removedProfiles;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v8)
  {
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        extensionBundleIdentifier = [v11 extensionBundleIdentifier];
        v13 = [extensionBundleIdentifier isEqualToString:identifierCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_13;
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v14 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    removedProfiles = selfCopy2->_removedProfiles;
    *buf = 138543874;
    v23 = identifierCopy;
    v24 = 2114;
    selfCopy = v8;
    v26 = 2114;
    v27 = removedProfiles;
    _os_log_debug_impl(&dword_1C1317000, v14, OS_LOG_TYPE_DEBUG, "removed profile for extension bundle ID %{public}@ => %{public}@ in %{public}@", buf, 0x20u);
  }

  if (v8)
  {
    [(NSMutableArray *)selfCopy2->_removedProfiles removeObject:v8];
  }

  objc_sync_exit(selfCopy2);

  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)configurationForClientWithError:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[SOConfigurationHost configurationForClientWithError:]";
    v23 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  [(SOConfigurationHost *)selfCopy2 _checkNewVersion];
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  profiles = [(SOConfiguration *)selfCopy2->_configuration profiles];
  v9 = [profiles countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(profiles);
        }

        copyProfileForClient = [*(*(&v16 + 1) + 8 * i) copyProfileForClient];
        [array addObject:copyProfileForClient];
      }

      v9 = [profiles countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  if (error)
  {
    *error = 0;
  }

  v13 = [objc_alloc(getSOConfigurationClass()) initWithProfiles:array];

  objc_sync_exit(selfCopy2);
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)profilesWithExtensionBundleIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v24 = "[SOConfigurationHost profilesWithExtensionBundleIdentifier:]";
    v25 = 2114;
    v26 = identifierCopy;
    v27 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s extensionBundleIdentifier: %{public}@ on %@", buf, 0x20u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  profiles = [(SOConfiguration *)selfCopy2->_configuration profiles];
  v9 = [profiles countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(profiles);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        extensionBundleIdentifier = [v12 extensionBundleIdentifier];
        v14 = [extensionBundleIdentifier isEqualToString:identifierCopy];

        if (v14)
        {
          copyProfile = [v12 copyProfile];
          [array addObject:copyProfile];
        }
      }

      v9 = [profiles countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  objc_sync_exit(selfCopy2);
  v16 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)validatedProfileForPlatformSSO
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[SOConfigurationHost validatedProfileForPlatformSSO]";
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  profiles = [(SOConfiguration *)selfCopy2->_configuration profiles];
  copyProfile = [profiles countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (copyProfile)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != copyProfile; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(profiles);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([(SOConfigurationHost *)selfCopy2 isPlatformSSOProfile:v9])
        {
          copyProfile = [v9 copyProfile];
          pssoRegistrationToken = [v9 pssoRegistrationToken];
          [copyProfile setPssoRegistrationToken:pssoRegistrationToken];

          goto LABEL_13;
        }
      }

      copyProfile = [profiles countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (copyProfile)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  objc_sync_exit(selfCopy2);
  v11 = *MEMORY[0x1E69E9840];

  return copyProfile;
}

- (id)platformSSOProfile
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "[SOConfigurationHost platformSSOProfile]";
    v27 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  _defaultConfigurationFile = [(SOConfigurationHost *)self _defaultConfigurationFile];
  v5 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost platformSSOProfile];
  }

  v6 = objc_opt_class();
  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:_defaultConfigurationFile];
  v8 = [v6 _loadProfilesFromURL:v7 logFileError:1];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if ([(SOConfigurationHost *)self isPlatformSSOProfile:v14, v20])
        {
          v17 = SO_LOG_SOConfigurationHost();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [(SOConfigurationHost *)v14 platformSSOProfile];
          }

          v16 = v14;
          v15 = v9;
          goto LABEL_19;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost platformSSOProfile];
  }

  v16 = 0;
LABEL_19:

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)findPlatformSSOProfile:(id)profile
{
  v24 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  v5 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[SOConfigurationHost findPlatformSSOProfile:]";
    v22 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = profileCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([(SOConfigurationHost *)self isPlatformSSOProfile:v11, v15])
        {
          v12 = v11;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_13:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)findProfileForExtension:(id)extension profiles:(id)profiles
{
  v27 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  profilesCopy = profiles;
  v8 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[SOConfigurationHost findProfileForExtension:profiles:]";
    v25 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = profilesCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        extensionBundleIdentifier = [v13 extensionBundleIdentifier];
        v15 = [extensionBundleIdentifier isEqualToString:extensionCopy];

        if (v15)
        {
          v10 = v13;
          goto LABEL_13;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isPlatformSSOProfile:(id)profile
{
  profileCopy = profile;
  SOFullProfileClass = getSOFullProfileClass();
  platformSSO = [profileCopy platformSSO];
  v6 = [platformSSO objectForKeyedSubscript:@"AuthenticationMethod"];
  v7 = [SOFullProfileClass authMethodWithString:v6];

  v8 = v7 != 1000 && [profileCopy type] == 1;
  return v8;
}

- (id)_removeNotSupportedUserProfiles:(id)profiles
{
  v28 = *MEMORY[0x1E69E9840];
  profilesCopy = profiles;
  v5 = [profilesCopy mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = profilesCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v22;
    *&v8 = 138543362;
    v20 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if ([(SOConfigurationHost *)self isPlatformSSOProfile:v13, v20, v21])
        {
          if (v10)
          {
            v14 = SO_LOG_SOConfigurationHost();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = v20;
              v26 = v13;
              _os_log_error_impl(&dword_1C1317000, v14, OS_LOG_TYPE_ERROR, "More than one Platform SSO profile is not supported (rejected): %{public}@", buf, 0xCu);
            }

            [v5 removeObject:v13];
          }

          else
          {
            platformSSO = [v13 platformSSO];
            v16 = [platformSSO objectForKeyedSubscript:@"UseSharedDeviceKeys"];

            if ([v16 BOOLValue])
            {
              v17 = SO_LOG_SOConfigurationHost();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = v20;
                v26 = v13;
                _os_log_error_impl(&dword_1C1317000, v17, OS_LOG_TYPE_ERROR, "Platform SSO shared device keys require a system profile (rejected): %{public}@", buf, 0xCu);
              }

              [v5 removeObject:v13];
            }
          }

          v10 = 1;
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)hasAnyMDMProfileForExtension:(id)extension
{
  v32 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  v5 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "[SOConfigurationHost hasAnyMDMProfileForExtension:]";
    v30 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  _defaultConfigurationFile = [(SOConfigurationHost *)self _defaultConfigurationFile];
  v7 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost platformSSOProfile];
  }

  v8 = objc_opt_class();
  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:_defaultConfigurationFile];
  v10 = [v8 _loadProfilesFromURL:v9 logFileError:1];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        extensionBundleIdentifier = [*(*(&v23 + 1) + 8 * i) extensionBundleIdentifier];
        v17 = [extensionBundleIdentifier isEqualToString:extensionCopy];

        if (v17)
        {
          v20 = SO_LOG_SOConfigurationHost();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            [SOConfigurationHost hasAnyMDMProfileForExtension:];
          }

          v19 = 1;
          v18 = v11;
          goto LABEL_19;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v18 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost hasAnyMDMProfileForExtension:];
  }

  v19 = 0;
LABEL_19:

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)systemMDMProfileForExtension:(id)extension
{
  v33 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  v5 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = "[SOConfigurationHost systemMDMProfileForExtension:]";
    v31 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  _defaultConfigurationFile = [(SOConfigurationHost *)self _defaultConfigurationFile];
  v7 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost platformSSOProfile];
  }

  v8 = objc_opt_class();
  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:_defaultConfigurationFile];
  v10 = [v8 _loadProfilesFromURL:v9 logFileError:1];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        extensionBundleIdentifier = [v16 extensionBundleIdentifier];
        v18 = [extensionBundleIdentifier isEqualToString:extensionCopy];

        if (v18)
        {
          v21 = SO_LOG_SOConfigurationHost();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            [SOConfigurationHost hasAnyMDMProfileForExtension:];
          }

          v20 = v16;
          v19 = v11;
          goto LABEL_19;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost hasAnyMDMProfileForExtension:];
  }

  v20 = 0;
LABEL_19:

  v22 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)realms
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SOConfigurationHost realms]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  realms = [(SOConfiguration *)selfCopy2->_configuration realms];
  objc_sync_exit(selfCopy2);

  v6 = *MEMORY[0x1E69E9840];

  return realms;
}

- (int64_t)willHandleURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier
{
  v42 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  v10 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316163;
    v33 = "[SOConfigurationHost willHandleURL:responseCode:callerBundleIdentifier:]";
    v34 = 2160;
    v35 = 1752392040;
    v36 = 2117;
    v37 = lCopy;
    v38 = 2114;
    v39 = identifierCopy;
    v40 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_1C1317000, v10, OS_LOG_TYPE_DEBUG, "%s URL: %{sensitive, mask.hash}@, callerBundleIdentifier: %{public}@ on %@", buf, 0x34u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  configuration = selfCopy2->_configuration;
  v31 = 0;
  v13 = [(SOConfiguration *)configuration willHandleURL:lCopy responseCode:code callerBundleIdentifier:identifierCopy profile:&v31];
  v14 = v31;
  v15 = v14;
  if (!v13)
  {
    if ([v14 type] == 1)
    {
      extensionBundleIdentifier = [v15 extensionBundleIdentifier];
      if ([SOExtensionManager isAppleConnectExtensionBundleIdentifier:extensionBundleIdentifier])
      {
        v13 = 0;
LABEL_19:

        goto LABEL_20;
      }

      scheme = [lCopy scheme];
      lowercaseString = [scheme lowercaseString];
      v19 = [lowercaseString isEqualToString:@"ssoid"];

      if ((v19 & 1) == 0)
      {
        extensionBundleIdentifier = +[SOExtensionManager sharedInstance];
        objc_sync_enter(extensionBundleIdentifier);
        v20 = +[SOExtensionManager sharedInstance];
        extensionBundleIdentifier2 = [v15 extensionBundleIdentifier];
        v22 = [v20 loadedExtensionWithBundleIdentifier:extensionBundleIdentifier2];

        if ([v22 hasAssociatedDomainsApproved])
        {
          v13 = 0;
        }

        else
        {
          v23 = SO_LOG_SOConfigurationHost();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [SOConfigurationHost willHandleURL:responseCode:callerBundleIdentifier:];
          }

          v24 = [MEMORY[0x1E695DEC8] arrayWithObject:v15];
          v25 = [(SOConfigurationHost *)selfCopy2 _checkAssociatedDomainForProfiles:v24];

          if ([v22 hasAssociatedDomainsApproved])
          {
            v26 = SO_LOG_SOConfigurationHost();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              [SOConfigurationHost willHandleURL:responseCode:callerBundleIdentifier:];
            }

            [(SOConfigurationHost *)selfCopy2 _reloadConfigWithReason:1];
            v13 = [(SOConfiguration *)selfCopy2->_configuration willHandleURL:lCopy responseCode:code callerBundleIdentifier:identifierCopy profile:0];
          }

          else
          {
            v13 = +[SOPreferences isAssociatedDomainValidated];
          }
        }

        objc_sync_exit(extensionBundleIdentifier);
        goto LABEL_19;
      }
    }

    v13 = 0;
  }

LABEL_20:
  v27 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = [getSOConfigurationClass() stringWithHandleResult:v13];
    *buf = 141558787;
    v33 = 1752392040;
    v34 = 2117;
    v35 = lCopy;
    v36 = 2114;
    v37 = identifierCopy;
    v38 = 2114;
    v39 = v28;
    _os_log_impl(&dword_1C1317000, v27, OS_LOG_TYPE_INFO, "willHandleURL(host): %{sensitive, mask.hash}@ callerBundleIdentifier: %{public}@ result: %{public}@", buf, 0x2Au);
  }

  objc_sync_exit(selfCopy2);
  v29 = *MEMORY[0x1E69E9840];
  return v13;
}

void __93__SOConfigurationHost_isConfigurationActiveForExtensionIdentifier_runningAsAgent_completion___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) _isConfigurationActiveForExtensionIdentifier:*(a1 + 40) runningAsAgent:*(a1 + 56) completion:*(a1 + 48)];
  objc_sync_exit(obj);
}

- (void)_isConfigurationActiveForExtensionIdentifier:(id)identifier runningAsAgent:(BOOL)agent completion:(id)completion
{
  agentCopy = agent;
  v59 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost _isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:];
  }

  v9 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost _isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:];
  }

  if ([(SOConfigurationHost *)self hasAnyMDMProfileForExtension:identifierCopy])
  {
    v10 = 0;
    while (1)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v12 = SO_LOG_SOConfigurationHost();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [SOConfigurationHost _isConfigurationActiveForExtensionIdentifier:v48 runningAsAgent:? completion:?];
      }

      if (agentCopy)
      {
        v13 = +[SOExtensionManager sharedInstance];
        v14 = [v13 loadedExtensionWithBundleIdentifier:identifierCopy];
      }

      else
      {
        v15 = SO_LOG_SOConfigurationHost();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [SOConfigurationHost _isConfigurationActiveForExtensionIdentifier:v46 runningAsAgent:? completion:?];
        }

        v13 = +[SOExtensionManager sharedInstance];
        v14 = [v13 loadExtensionWithBundleIdentifier:identifierCopy];
      }

      v16 = v14;

      objc_sync_exit(selfCopy);
      if (v16)
      {
        break;
      }

      v17 = SO_LOG_SOConfigurationHost();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 67240192;
        *&buf[4] = v10;
        _os_log_impl(&dword_1C1317000, v17, OS_LOG_TYPE_INFO, "Extension not installed. Attempt %{public}d", buf, 8u);
      }

      [MEMORY[0x1E696AF00] sleepForTimeInterval:1.0];
      if (v10++ >= 9)
      {
        v41 = [getSOErrorHelperClass_3() errorWithCode:-14 message:@"Missing extension with extension identifier"];
        completionCopy[2](completionCopy, 0, v41);

        goto LABEL_58;
      }
    }

    v19 = MEMORY[0x1E695DFF8];
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@", @"ssoid", identifierCopy];
    v42 = [v19 URLWithString:identifierCopy];

    v49 = 0;
    v50 = &v49;
    v51 = 0x2050000000;
    v21 = getSOClientClass_softClass;
    v52 = getSOClientClass_softClass;
    if (!getSOClientClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v54 = 3221225472;
      v55 = __getSOClientClass_block_invoke;
      v56 = &unk_1E813E230;
      v57 = &v49;
      __getSOClientClass_block_invoke(buf);
      v21 = v50[3];
    }

    v22 = v21;
    _Block_object_dispose(&v49, 8);
    v40 = objc_alloc_init(v21);
    v23 = 0;
    do
    {
      v24 = selfCopy;
      objc_sync_enter(v24);
      v25 = SO_LOG_SOConfigurationHost();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [SOConfigurationHost _isConfigurationActiveForExtensionIdentifier:&v49 + 1 runningAsAgent:? completion:?];
      }

      if (agentCopy)
      {
        v26 = [(SOConfiguration *)selfCopy->_configuration profileForURL:v42 responseCode:0];
      }

      else
      {
        *buf = 0;
        v54 = buf;
        v55 = 0x3032000000;
        v56 = __Block_byref_object_copy__2;
        v57 = __Block_byref_object_dispose__2;
        v58 = 0;
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __94__SOConfigurationHost__isConfigurationActiveForExtensionIdentifier_runningAsAgent_completion___block_invoke;
        v44[3] = &unk_1E813EDB8;
        v44[4] = buf;
        [v40 configurationWithCompletion:v44];
        v26 = [*(v54 + 40) profileForURL:v42 responseCode:0];

        _Block_object_dispose(buf, 8);
      }

      if (!v26)
      {
        v27 = SO_LOG_SOConfigurationHost();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 67240192;
          *&buf[4] = v23;
          _os_log_impl(&dword_1C1317000, v27, OS_LOG_TYPE_INFO, "Configuration not ready. Attempt %{public}d", buf, 8u);
        }

        [MEMORY[0x1E696AF00] sleepForTimeInterval:1.0];
      }

      objc_sync_exit(v24);
    }

    while (v23++ <= 8 && v26 == 0);
    if (v26)
    {
      v30 = SO_LOG_SOConfigurationHost();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [SOConfigurationHost _isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:];
      }

      [v24 _loadCacheFromDisk];
      v31 = [v24[5] objectForKeyedSubscript:identifierCopy];
      v32 = [v31 mutableCopy];
      v33 = v32;
      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = [MEMORY[0x1E695E0F8] mutableCopy];
      }

      v35 = v34;

      [v16 checkAssociatedDomainsWithCache:v35];
      v36 = SO_LOG_SOConfigurationHost();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [SOConfigurationHost _isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:];
      }

      if ([v16 hasAssociatedDomainsApproved])
      {
        completionCopy[2](completionCopy, 1, 0);
      }

      else
      {
        if (+[SOPreferences isAssociatedDomainValidated])
        {
          if (![SOExtensionManager isAppleConnectExtensionBundleIdentifier:identifierCopy])
          {
            [MEMORY[0x1E696AF00] sleepForTimeInterval:3.0];
            [v16 checkAssociatedDomainsWithCompletion:completionCopy];
            goto LABEL_57;
          }

          v37 = SO_LOG_SOConfigurationHost();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            [SOConfigurationHost _isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:];
          }
        }

        else
        {
          v37 = SO_LOG_SOConfigurationHost();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1C1317000, v37, OS_LOG_TYPE_INFO, "Associated domain: validation is ignored", buf, 2u);
          }
        }

        completionCopy[2](completionCopy, 1, 0);
      }
    }

    else
    {
      v35 = [getSOErrorHelperClass_3() errorWithCode:-14 message:@"Configuration not loaded for extension"];
      completionCopy[2](completionCopy, 0, v35);
    }

LABEL_57:

    goto LABEL_58;
  }

  v16 = [getSOErrorHelperClass_3() errorWithCode:-13 message:@"No profile for extension identifier"];
  completionCopy[2](completionCopy, 0, v16);
LABEL_58:

  v38 = *MEMORY[0x1E69E9840];
}

+ (id)_loadProfilesFromDict:(id)dict
{
  v32 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v4 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "+[SOConfigurationHost _loadProfilesFromDict:]";
    v30 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  obj = self;
  objc_sync_enter(obj);
  v5 = [dictCopy objectForKeyedSubscript:@"Profiles"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    array = SO_LOG_SOConfigurationHost();
    if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
    {
      +[SOConfigurationHost _loadProfilesFromDict:];
    }

LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

  array = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = 0;
  v10 = *v24;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v23 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = SO_LOG_SOConfigurationHost();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v17 = [obj maskRegistrationTokenInConfigurationData:v12];
          [(SOConfigurationHost *)v17 _loadProfilesFromDict:buf];
        }

        goto LABEL_24;
      }

      v13 = [objc_alloc(getSOFullProfileClass()) initWithProfileData:v12];
      v14 = v13;
      if (!v13)
      {
        v18 = SO_LOG_SOConfigurationHost();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          +[SOConfigurationHost _loadProfilesFromDict:];
        }

        goto LABEL_23;
      }

      v15 = [v13 pssoAuthenticationMethod]!= 1000;
      if ((v15 & v9) == 1)
      {
        v18 = SO_LOG_SOConfigurationHost();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          +[SOConfigurationHost _loadProfilesFromDict:];
        }

LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      [array addObject:v14];

      v9 |= v15;
    }

    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_14:

  array = array;
  v16 = array;
LABEL_26:

  objc_sync_exit(obj);
  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)_loadProfilesFromURL:(id)l logFileError:(BOOL)error
{
  errorCopy = error;
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:lCopy error:&v13];
  v9 = v13;
  if (v9)
  {
    if (errorCopy)
    {
      v10 = SO_LOG_SOConfigurationHost();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[SOConfigurationHost _loadProfilesFromURL:logFileError:];
      }
    }

    v11 = 0;
  }

  else
  {
    v11 = [objc_opt_class() _loadProfilesFromDict:v8];
  }

  objc_sync_exit(selfCopy);

  return v11;
}

- (void)_loadCacheFromDisk
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_8(&dword_1C1317000, v0, v1, "failed to load cache at %{private}@, error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_loadConfigForFirstTime
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SOConfigurationHost _loadConfigForFirstTime]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  configurationPendingLock = [(SOConfigurationHost *)self configurationPendingLock];
  objc_sync_enter(configurationPendingLock);
  [(SOConfigurationHost *)self setConfigurationPending:1];
  objc_sync_exit(configurationPendingLock);

  if ([(SOConfigurationHost *)self _isConfigFileAvailable])
  {
    [(SOConfigurationHost *)self _reloadConfigWithReason:0];
  }

  else
  {
    [(SOConfigurationHost *)self _startKeyBagObserverForReloadingConfiguration];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__extensionsLoaded_ name:@"com.apple.AppSSO.SOExtensionManager.ExtensionsChanged" object:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_startKeyBagObserverForReloadingConfiguration
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __68__SOConfigurationHost__startKeyBagObserverForReloadingConfiguration__block_invoke(uint64_t a1, int a2)
{
  v4 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C1317000, v4, OS_LOG_TYPE_INFO, "the device key bag is unlocked, reloading config...", v6, 2u);
  }

  notify_cancel(a2);
  return [*(a1 + 32) _reloadConfigWithReason:0];
}

- (void)_reloadConfigWithReason:(int64_t)reason
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(SOConfigurationHost *)self _stringWithReason:reason];
    *buf = 136315650;
    v72 = "[SOConfigurationHost _reloadConfigWithReason:]";
    v73 = 2112;
    v74 = v5;
    v75 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v4, OS_LOG_TYPE_DEFAULT, "%s reason = %@ on %@", buf, 0x20u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (reason != 1)
  {
    [(SOConfigurationHost *)selfCopy2 _loadCacheFromDisk];
  }

  _defaultConfigurationFile = [(SOConfigurationHost *)selfCopy2 _defaultConfigurationFile];
  v6 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost platformSSOProfile];
  }

  v7 = objc_opt_class();
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:_defaultConfigurationFile];
  v45 = [v7 _loadProfilesFromURL:v8 logFileError:1];

  v9 = [(SOConfigurationHost *)selfCopy2 _mergeProfile:v45 userProfiles:0];
  v10 = [(SOConfigurationHost *)selfCopy2 _checkExtensionsExistenceForProfiles:v9];

  v53 = [(SOConfigurationHost *)selfCopy2 _checkAssociatedDomainForProfiles:v10];

  if (reason == 2)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    profiles = [(SOConfiguration *)selfCopy2->_configuration profiles];
    v12 = [profiles countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (!v12)
    {
      v49 = 0;
      goto LABEL_33;
    }

    v49 = 0;
    v51 = *v63;
    obj = profiles;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v63 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v62 + 1) + 8 * v13);
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v15 = v53;
        v16 = [v15 countByEnumeratingWithState:&v58 objects:v69 count:16];
        if (v16)
        {
          v17 = *v59;
LABEL_15:
          v18 = 0;
          while (1)
          {
            if (*v59 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v58 + 1) + 8 * v18);
            extensionBundleIdentifier = [v14 extensionBundleIdentifier];
            extensionBundleIdentifier2 = [v19 extensionBundleIdentifier];
            LOBYTE(v19) = [extensionBundleIdentifier isEqualToString:extensionBundleIdentifier2];

            if (v19)
            {
              goto LABEL_24;
            }

            if (v16 == ++v18)
            {
              v16 = [v15 countByEnumeratingWithState:&v58 objects:v69 count:16];
              if (v16)
              {
                goto LABEL_15;
              }

              break;
            }
          }
        }

        extensionBundleIdentifier3 = [v14 extensionBundleIdentifier];
        v23 = [SOExtensionManager isAppleConnectExtensionBundleIdentifier:extensionBundleIdentifier3];

        if (v23)
        {
          v15 = SO_LOG_SOConfigurationHost();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            extensionBundleIdentifier4 = [v14 extensionBundleIdentifier];
            *buf = 138543362;
            v72 = extensionBundleIdentifier4;
            _os_log_impl(&dword_1C1317000, v15, OS_LOG_TYPE_INFO, "Removed configuration ignored for extension: %{public}@", buf, 0xCu);
          }

LABEL_24:

          goto LABEL_25;
        }

        array = v49;
        if (!v49)
        {
          array = [MEMORY[0x1E695DF70] array];
        }

        v49 = array;
        [array addObject:{v14, v45}];
LABEL_25:
        ++v13;
      }

      while (v13 != v12);
      profiles = obj;
      v26 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
      v12 = v26;
      if (!v26)
      {
LABEL_33:

        objc_storeStrong(&selfCopy2->_removedProfiles, v49);
        if ([(NSMutableArray *)selfCopy2->_removedProfiles count])
        {
          v27 = SO_LOG_SOConfigurationHost();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            removedProfiles = selfCopy2->_removedProfiles;
            *buf = 138477827;
            v72 = removedProfiles;
            _os_log_impl(&dword_1C1317000, v27, OS_LOG_TYPE_DEFAULT, "removed profiles = %{private}@", buf, 0xCu);
          }

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = selfCopy2->_removedProfiles;
          v29 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v54 objects:v68 count:16];
          if (v29)
          {
            v30 = *v55;
            v31 = MEMORY[0x1E695E0F8];
            do
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v55 != v30)
                {
                  objc_enumerationMutation(v52);
                }

                v33 = *(*(&v54 + 1) + 8 * i);
                v34 = objc_alloc_init(SOAuthorization);
                v66 = @"removedProfileExtensionBundleIdentifier";
                extensionBundleIdentifier5 = [v33 extensionBundleIdentifier];
                v67 = extensionBundleIdentifier5;
                v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
                [(SOAuthorization *)v34 setAuthorizationOptions:v36];

                v37 = objc_alloc_init(SOAuthorizationParameters);
                [(SOAuthorizationParameters *)v37 setOperation:@"configuration_removed"];
                v38 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F408B1A0];
                [(SOAuthorizationParameters *)v37 setUrl:v38];

                [(SOAuthorizationParameters *)v37 setHttpHeaders:v31];
                v39 = objc_opt_new();
                [(SOAuthorizationParameters *)v37 setHttpBody:v39];

                [(SOAuthorizationParameters *)v37 setUseInternalExtensions:0];
                [(SOAuthorization *)v34 beginAuthorizationWithParameters:v37];
              }

              v29 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v54 objects:v68 count:16];
            }

            while (v29);
          }
        }

        break;
      }
    }
  }

  v40 = [objc_alloc(getSOConfigurationClass()) initWithProfiles:v53];
  configuration = selfCopy2->_configuration;
  selfCopy2->_configuration = v40;

  [(SOConfigurationHost *)selfCopy2 _configurationLoadedWithReason:reason];
  v42 = [(SOConfigurationHost *)selfCopy2 _stringWithReason:reason];
  [SOAnalytics analyticsForMDMProfiles:v53 reason:v42];

  configurationPendingLock = [(SOConfigurationHost *)selfCopy2 configurationPendingLock];
  objc_sync_enter(configurationPendingLock);
  [(SOConfigurationHost *)selfCopy2 setConfigurationPending:0];
  objc_sync_exit(configurationPendingLock);

  objc_sync_exit(selfCopy2);
  v44 = *MEMORY[0x1E69E9840];
}

- (id)_mergeProfile:(id)profile userProfiles:(id)profiles
{
  v30 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  profilesCopy = profiles;
  v8 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(profileCopy, "count")}];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(profilesCopy, "count")}];
    v22 = 136315906;
    v23 = "[SOConfigurationHost _mergeProfile:userProfiles:]";
    v24 = 2114;
    v25 = v9;
    v26 = 2114;
    v27 = v10;
    v28 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s systemProfiles = %{public}@, userProfiles = %{public}@ on %@", &v22, 0x2Au);
  }

  v11 = [(SOConfigurationHost *)self _removeNotSupportedUserProfiles:profilesCopy];
  if (![v11 count])
  {
    v19 = profileCopy;
LABEL_14:
    v18 = v19;
    goto LABEL_19;
  }

  if (![profileCopy count] && objc_msgSend(v11, "count"))
  {
    v19 = v11;
    goto LABEL_14;
  }

  if ([profileCopy count] && objc_msgSend(v11, "count"))
  {
    v12 = [(SOConfigurationHost *)self findPlatformSSOProfile:profileCopy];
    v13 = [(SOConfigurationHost *)self findPlatformSSOProfile:v11];
    if (v12)
    {
      extensionBundleIdentifier = [v12 extensionBundleIdentifier];
      v15 = [(SOConfigurationHost *)self findProfileForExtension:extensionBundleIdentifier profiles:v11];

      if (v13 | v15)
      {
        extensionData = [v15 extensionData];
        [v12 setExtensionData:extensionData];

        pssoRegistrationToken = [v15 pssoRegistrationToken];
        [v12 setPssoRegistrationToken:pssoRegistrationToken];

        v18 = [v11 mutableCopy];
        [v18 removeObject:v15];
        [v18 addObject:v12];
      }

      else
      {
        v18 = [v11 arrayByAddingObject:v12];
      }
    }

    else
    {
      v18 = v11;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)_configurationLoadedWithReason:(int64_t)reason
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SOConfigurationHost *)self _stringWithReason:reason];
    configuration = self->_configuration;
    *buf = 136315906;
    v22 = "[SOConfigurationHost _configurationLoadedWithReason:]";
    v23 = 2114;
    v24 = v6;
    v25 = 2114;
    v26 = configuration;
    v27 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s reason = %{public}@, configuration = %{public}@ on %@", buf, 0x2Au);
  }

  if (![(SOConfiguration *)self->_configuration empty])
  {
    if (reason == 1 || !reason && (([(SOConfigurationVersion *)self->_configurationVersion checkVersion], ![(SOConfigurationVersion *)self->_configurationVersion version]) || [(SOConfigurationVersion *)self->_configurationVersion version]== -1))
    {
      configurationVersion = self->_configurationVersion;
      v13 = [(SOConfigurationHost *)self _stringWithReason:reason];
      [(SOConfigurationVersion *)configurationVersion increaseVersionWithMessage:v13];
    }

    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{reason, @"reason"}];
    v18 = v8;
    v9 = MEMORY[0x1E695DF20];
    v10 = &v18;
    v11 = &v17;
    goto LABEL_12;
  }

  [(SOConfigurationVersion *)self->_configurationVersion setAppSSOUnavailable];
  if (reason)
  {
    v19 = @"reason";
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
    v20 = v8;
    v9 = MEMORY[0x1E695DF20];
    v10 = &v20;
    v11 = &v19;
LABEL_12:
    v14 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"com.apple.AppSSO.SOConfigurationHost.ConfigurationChanged" object:self userInfo:v14];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)_checkExtensionsExistenceForProfiles:(id)profiles
{
  v28 = *MEMORY[0x1E69E9840];
  profilesCopy = profiles;
  v5 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = "[SOConfigurationHost _checkExtensionsExistenceForProfiles:]";
    v26 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  obj = self;
  objc_sync_enter(obj);
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = profilesCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = +[SOExtensionManager sharedInstance];
        extensionBundleIdentifier = [v11 extensionBundleIdentifier];
        v14 = [v12 isLoadedExtensionWithBundleIdentifier:extensionBundleIdentifier];

        if (v14)
        {
          [array addObject:v11];
        }

        else
        {
          v15 = SO_LOG_SOConfigurationHost();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v25 = v11;
            _os_log_error_impl(&dword_1C1317000, v15, OS_LOG_TYPE_ERROR, "no extension available for profile (ignored): %{public}@", buf, 0xCu);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  objc_sync_exit(obj);
  v16 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)_checkAssociatedDomainForProfiles:(id)profiles
{
  v95 = *MEMORY[0x1E69E9840];
  profilesCopy = profiles;
  v5 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v85 = "[SOConfigurationHost _checkAssociatedDomainForProfiles:]";
    v86 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v62 = +[SOExtensionManager sharedInstance];
  objc_sync_enter(v62);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = profilesCopy;
  v6 = [obj countByEnumeratingWithState:&v80 objects:v94 count:16];
  if (v6)
  {
    v7 = *v81;
    v8 = MEMORY[0x1E695E0F8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v81 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v80 + 1) + 8 * i);
        if ([v10 type] == 1)
        {
          v11 = +[SOExtensionManager sharedInstance];
          extensionBundleIdentifier = [v10 extensionBundleIdentifier];
          v13 = [v11 loadedExtensionWithBundleIdentifier:extensionBundleIdentifier];

          extensionBundleIdentifier2 = [v10 extensionBundleIdentifier];
          LOBYTE(extensionBundleIdentifier) = [SOExtensionManager isAppleConnectExtensionBundleIdentifier:extensionBundleIdentifier2];

          if ((extensionBundleIdentifier & 1) == 0)
          {
            associatedDomainCache = selfCopy2->_associatedDomainCache;
            extensionBundleIdentifier3 = [v10 extensionBundleIdentifier];
            v17 = [(NSMutableDictionary *)associatedDomainCache objectForKeyedSubscript:extensionBundleIdentifier3];
            v18 = [v17 mutableCopy];
            v19 = v18;
            if (v18)
            {
              v20 = v18;
            }

            else
            {
              v20 = [v8 mutableCopy];
            }

            v21 = v20;

            [v13 checkAssociatedDomainsWithCache:v21];
            v22 = selfCopy2->_associatedDomainCache;
            extensionBundleIdentifier4 = [v10 extensionBundleIdentifier];
            [(NSMutableDictionary *)v22 setObject:v21 forKeyedSubscript:extensionBundleIdentifier4];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v80 objects:v94 count:16];
    }

    while (v6);
  }

  v24 = selfCopy2->_associatedDomainCache;
  v79 = 0;
  v25 = [(SOConfigurationHost *)selfCopy2 _saveCacheToFile:v24 error:&v79];
  v61 = v79;
  if (!v25)
  {
    v26 = SO_LOG_SOConfigurationHost();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationHost _checkAssociatedDomainForProfiles:];
    }
  }

  if (+[SOPreferences isAssociatedDomainValidated])
  {
    array = [MEMORY[0x1E695DF70] array];
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v63 = obj;
    v66 = [v63 countByEnumeratingWithState:&v75 objects:v93 count:16];
    if (v66)
    {
      v65 = *v76;
      do
      {
        for (j = 0; j != v66; ++j)
        {
          if (*v76 != v65)
          {
            objc_enumerationMutation(v63);
          }

          v27 = *(*(&v75 + 1) + 8 * j);
          if ([v27 type] != 1)
          {
            [array addObject:v27];
            continue;
          }

          v28 = +[SOExtensionManager sharedInstance];
          extensionBundleIdentifier5 = [v27 extensionBundleIdentifier];
          v70 = [v28 loadedExtensionWithBundleIdentifier:extensionBundleIdentifier5];

          if (!v70)
          {
            v34 = SO_LOG_SOConfigurationHost();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v85 = v27;
              _os_log_error_impl(&dword_1C1317000, v34, OS_LOG_TYPE_ERROR, "Associated domain: validation failed to find extension for profile: %{public}@, ignoring profile", buf, 0xCu);
            }

            goto LABEL_66;
          }

          extensionBundleIdentifier6 = [v27 extensionBundleIdentifier];
          v31 = [SOExtensionManager isAppleConnectExtensionBundleIdentifier:extensionBundleIdentifier6];

          if (!v31)
          {
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            uRLPrefix = [v27 URLPrefix];
            v36 = [uRLPrefix countByEnumeratingWithState:&v71 objects:v90 count:16];
            if (!v36)
            {
              goto LABEL_64;
            }

            v37 = *v72;
            while (1)
            {
              v38 = 0;
              do
              {
                if (*v72 != v37)
                {
                  objc_enumerationMutation(uRLPrefix);
                }

                v39 = *(*(&v71 + 1) + 8 * v38);
                v40 = [MEMORY[0x1E695DFF8] URLWithString:v39];
                scheme = [v40 scheme];
                if ([scheme isEqualToString:@"http"])
                {
                }

                else
                {
                  scheme2 = [v40 scheme];
                  v43 = [scheme2 isEqualToString:@"https"];

                  if ((v43 & 1) == 0)
                  {
                    v52 = SO_LOG_SOConfigurationHost();
                    if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_55;
                    }

                    *buf = 141558531;
                    v85 = 1752392040;
                    v86 = 2117;
                    selfCopy = v39;
                    v88 = 2114;
                    v89 = v70;
                    v53 = v52;
                    v54 = "Associated domain: validation removed URL: %{sensitive, mask.hash}@ because it is not a http scheme for extension %{public}@";
                    goto LABEL_62;
                  }
                }

                host = [v40 host];
                if ([host rangeOfString:@"*"] != 0x7FFFFFFFFFFFFFFFLL)
                {

LABEL_52:
                  v52 = SO_LOG_SOConfigurationHost();
                  if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_55;
                  }

                  *buf = 141558531;
                  v85 = 1752392040;
                  v86 = 2117;
                  selfCopy = v39;
                  v88 = 2114;
                  v89 = v70;
                  v53 = v52;
                  v54 = "Associated domain: validation removed URL: %{sensitive, mask.hash}@ because it contains a wildcard in the host name for extension %{public}@";
LABEL_62:
                  _os_log_error_impl(&dword_1C1317000, v53, OS_LOG_TYPE_ERROR, v54, buf, 0x20u);
                  goto LABEL_55;
                }

                host2 = [v40 host];
                v46 = [host2 rangeOfString:@"?"] == 0x7FFFFFFFFFFFFFFFLL;

                if (!v46)
                {
                  goto LABEL_52;
                }

                v47 = selfCopy2->_associatedDomainCache;
                extensionBundleIdentifier7 = [v27 extensionBundleIdentifier];
                v49 = [(NSMutableDictionary *)v47 objectForKeyedSubscript:extensionBundleIdentifier7];
                LOBYTE(v47) = [v70 hasURLApprovedAssociatedDomain:v40 cache:v49];

                if (v47)
                {
                  goto LABEL_56;
                }

                hasAssociatedDomainsApproved = [v70 hasAssociatedDomainsApproved];
                v51 = SO_LOG_SOConfigurationHost();
                v52 = v51;
                if (hasAssociatedDomainsApproved)
                {
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 141558531;
                    v85 = 1752392040;
                    v86 = 2117;
                    selfCopy = v39;
                    v88 = 2114;
                    v89 = v70;
                    v53 = v52;
                    v54 = "Associated domain: validation removed URL: %{sensitive, mask.hash}@ because it has no approved associated domains for extensions %{public}@";
                    goto LABEL_62;
                  }

LABEL_55:

                  [v27 removeURLPrefix:v39];
                  goto LABEL_56;
                }

                if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                {
                  *buf = 141558531;
                  v85 = 1752392040;
                  v86 = 2117;
                  selfCopy = v39;
                  v88 = 2114;
                  v89 = v70;
                  _os_log_impl(&dword_1C1317000, v52, OS_LOG_TYPE_INFO, "Associated domain: validation failed for URL: %{sensitive, mask.hash}@ because it has no approved associated domains for extensions %{public}@, it will be checked again when the extension is used", buf, 0x20u);
                }

LABEL_56:
                ++v38;
              }

              while (v36 != v38);
              v55 = [uRLPrefix countByEnumeratingWithState:&v71 objects:v90 count:16];
              v36 = v55;
              if (!v55)
              {
LABEL_64:

                uRLPrefix2 = [v27 URLPrefix];
                v57 = [uRLPrefix2 count] == 0;

                if (!v57)
                {
                  goto LABEL_65;
                }

                goto LABEL_66;
              }
            }
          }

          v32 = SO_LOG_SOConfigurationHost();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            extensionBundleIdentifier8 = [v27 extensionBundleIdentifier];
            [(SOConfigurationHost *)extensionBundleIdentifier8 _checkAssociatedDomainForProfiles:v91, &v92, v32];
          }

LABEL_65:
          [array addObject:v27];
LABEL_66:
        }

        v66 = [v63 countByEnumeratingWithState:&v75 objects:v93 count:16];
      }

      while (v66);
    }
  }

  else
  {
    v58 = SO_LOG_SOConfigurationHost();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C1317000, v58, OS_LOG_TYPE_INFO, "Associated domain: validation is ignored, using all URLs in AppSSO configuration", buf, 2u);
    }

    array = obj;
  }

  objc_sync_exit(v62);
  objc_sync_exit(selfCopy2);

  v59 = *MEMORY[0x1E69E9840];

  return array;
}

- (BOOL)_initDataVaultIfNeededWithError:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v42 = "[SOConfigurationHost _initDataVaultIfNeededWithError:]";
    v43 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  _defaultConfigurationPath = [(SOConfigurationHost *)self _defaultConfigurationPath];
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [defaultManager fileExistsAtPath:_defaultConfigurationPath isDirectory:0];

  if ((v9 & 1) == 0)
  {
    v10 = *MEMORY[0x1E696A328];
    v39[0] = *MEMORY[0x1E696A360];
    v39[1] = v10;
    v40[0] = @"mobile";
    v40[1] = @"mobile";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v38 = 0;
    v13 = [defaultManager2 createDirectoryAtPath:_defaultConfigurationPath withIntermediateDirectories:1 attributes:v11 error:&v38];
    v14 = v38;

    if (v14)
    {
      v13 = 0;
    }

    v15 = SO_LOG_SOConfigurationHost();
    v16 = v15;
    if ((v13 & 1) == 0)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationHost _initDataVaultIfNeededWithError:];
      }

      if (error)
      {
        v26 = v14;
        *error = v14;
      }

      v27 = 0;
      goto LABEL_31;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v42 = _defaultConfigurationPath;
      _os_log_impl(&dword_1C1317000, v16, OS_LOG_TYPE_DEFAULT, "created configuration directory at %{public}@", buf, 0xCu);
    }
  }

  v17 = _defaultConfigurationPath;
  [_defaultConfigurationPath UTF8String];
  v18 = rootless_check_datavault_flag();
  if (v18)
  {
    if (v18 == -1)
    {
      v19 = SO_LOG_SOConfigurationHost();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = __error();
        v21 = strerror(*v20);
        [(SOConfigurationHost *)v21 _initDataVaultIfNeededWithError:buf];
      }

      if (error)
      {
        SOErrorHelperClass_3 = getSOErrorHelperClass_3();
        v23 = MEMORY[0x1E696AEC0];
        v24 = __error();
        v14 = [v23 stringWithFormat:@"failed to check the state of datavault: %s", strerror(*v24)];
        v25 = [SOErrorHelperClass_3 internalErrorWithMessage:v14];
LABEL_30:
        v27 = 0;
        *error = v25;
LABEL_31:

        goto LABEL_32;
      }
    }

    else
    {
      v28 = _defaultConfigurationPath;
      [_defaultConfigurationPath UTF8String];
      v29 = rootless_convert_to_datavault();
      v30 = SO_LOG_SOConfigurationHost();
      v14 = v30;
      if (v29 != -1)
      {
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v42 = _defaultConfigurationPath;
          _os_log_impl(&dword_1C1317000, v14, OS_LOG_TYPE_DEFAULT, "successfully created datavault at %{public}@", buf, 0xCu);
        }

        v27 = 1;
        goto LABEL_31;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = __error();
        v32 = strerror(*v31);
        [(SOConfigurationHost *)v32 _initDataVaultIfNeededWithError:buf];
      }

      if (error)
      {
        v33 = getSOErrorHelperClass_3();
        v34 = MEMORY[0x1E696AEC0];
        v35 = __error();
        v14 = [v34 stringWithFormat:@"failed to convert to datavault: %s", strerror(*v35)];
        v25 = [v33 internalErrorWithMessage:v14];
        goto LABEL_30;
      }
    }

    v27 = 0;
    goto LABEL_32;
  }

  v27 = 1;
LABEL_32:
  objc_sync_exit(selfCopy2);

  v36 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BOOL)_initCachePath:(id)path ifNeededWithError:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v44 = "[SOConfigurationHost _initCachePath:ifNeededWithError:]";
    v45 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v9 = *MEMORY[0x1E696A328];
  v41[0] = *MEMORY[0x1E696A360];
  v41[1] = v9;
  v42[0] = @"mobile";
  v42[1] = @"mobile";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v40 = 0;
  v12 = [defaultManager createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:v10 error:&v40];
  v13 = v40;

  if (v13)
  {
    v12 = 0;
  }

  v14 = SO_LOG_SOConfigurationHost();
  v15 = v14;
  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationHost saveConfiguration:error:];
    }

    if (error)
    {
      v28 = v13;
      *error = v13;
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = pathCopy;
    _os_log_impl(&dword_1C1317000, v15, OS_LOG_TYPE_DEFAULT, "created cache directory at %{public}@", buf, 0xCu);
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v39 = 0;
  v17 = [defaultManager2 setAttributes:v10 ofItemAtPath:pathCopy error:&v39];
  v18 = v39;

  if ((v17 & 1) == 0)
  {
    v29 = SO_LOG_SOConfigurationHost();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationHost _initCachePath:ifNeededWithError:];
    }

    if (error)
    {
      v30 = v18;
      *error = v18;
    }

LABEL_26:
    objc_sync_exit(selfCopy2);
    LOBYTE(v20) = 0;
LABEL_27:

    goto LABEL_28;
  }

  objc_sync_exit(selfCopy2);
  defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = [defaultManager3 fileExistsAtPath:pathCopy isDirectory:0];

  if (v20)
  {
    v21 = pathCopy;
    [pathCopy UTF8String];
    v22 = rootless_check_datavault_flag();
    if (!v22)
    {
      LOBYTE(v20) = 1;
      goto LABEL_28;
    }

    if (v22 == -1)
    {
      v23 = SO_LOG_SOConfigurationHost();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationHost _initCachePath:ifNeededWithError:];
      }

      if (error)
      {
        SOErrorHelperClass_3 = getSOErrorHelperClass_3();
        v25 = MEMORY[0x1E696AEC0];
        v26 = __error();
        selfCopy2 = [v25 stringWithFormat:@"failed to check the state of datavault: %s", strerror(*v26)];
        v27 = [SOErrorHelperClass_3 internalErrorWithMessage:selfCopy2];
LABEL_38:
        LOBYTE(v20) = 0;
        *error = v27;
        goto LABEL_27;
      }
    }

    else
    {
      v33 = pathCopy;
      [pathCopy UTF8String];
      v34 = rootless_convert_to_datavault();
      v35 = SO_LOG_SOConfigurationHost();
      selfCopy2 = v35;
      if (v34 != -1)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v44 = pathCopy;
          _os_log_impl(&dword_1C1317000, &selfCopy2->super, OS_LOG_TYPE_DEFAULT, "successfully created datavault at %{public}@", buf, 0xCu);
        }

        LOBYTE(v20) = 1;
        goto LABEL_27;
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationHost _initCachePath:ifNeededWithError:];
      }

      if (error)
      {
        v36 = getSOErrorHelperClass_3();
        v37 = MEMORY[0x1E696AEC0];
        v38 = __error();
        selfCopy2 = [v37 stringWithFormat:@"failed to convert to datavault: %s", strerror(*v38)];
        v27 = [v36 internalErrorWithMessage:selfCopy2];
        goto LABEL_38;
      }
    }

    LOBYTE(v20) = 0;
  }

LABEL_28:

  v31 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)_saveConfigToFile:(id)file error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v7 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v32 = "[SOConfigurationHost _saveConfigToFile:error:]";
    v33 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if ([(SOConfigurationHost *)selfCopy2 _initDataVaultIfNeededWithError:error])
  {
    _defaultConfigurationFile = [(SOConfigurationHost *)selfCopy2 _defaultConfigurationFile];
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:_defaultConfigurationFile];
    v28 = 0;
    v11 = [fileCopy writeToURL:v10 error:&v28];
    v12 = v28;

    if (v11)
    {
      v13 = *MEMORY[0x1E696A328];
      v29[0] = *MEMORY[0x1E696A360];
      v29[1] = v13;
      v30[0] = @"mobile";
      v30[1] = @"mobile";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v27 = 0;
      v16 = [defaultManager setAttributes:v14 ofItemAtPath:_defaultConfigurationFile error:&v27];
      v17 = v27;

      v18 = SO_LOG_SOConfigurationHost();
      v19 = v18;
      if (v16)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [objc_opt_class() maskRegistrationTokenInProfileList:fileCopy];
          *buf = 138543618;
          v32 = _defaultConfigurationFile;
          v33 = 2112;
          selfCopy = v20;
          _os_log_impl(&dword_1C1317000, v19, OS_LOG_TYPE_DEFAULT, "config written to file: %{public}@, %@", buf, 0x16u);
        }

        v21 = 1;
        goto LABEL_20;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationHost _saveConfigToFile:error:];
      }

      if (error)
      {
        v24 = v17;
        *error = v17;
      }
    }

    else
    {
      v22 = SO_LOG_SOConfigurationHost();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationHost _saveConfigToFile:error:];
      }

      if (error)
      {
        v23 = v12;
        v21 = 0;
        *error = v12;
LABEL_20:

        goto LABEL_21;
      }
    }

    v21 = 0;
    goto LABEL_20;
  }

  v21 = 0;
LABEL_21:
  objc_sync_exit(selfCopy2);

  v25 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)_saveCacheToFile:(id)file error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v7 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "[SOConfigurationHost _saveCacheToFile:error:]";
    v40 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  _defaultCacheFile = [(SOConfigurationHost *)selfCopy2 _defaultCacheFile];
  stringByDeletingLastPathComponent = [_defaultCacheFile stringByDeletingLastPathComponent];

  if ([(SOConfigurationHost *)selfCopy2 _initCachePath:stringByDeletingLastPathComponent ifNeededWithError:error])
  {
    _defaultCacheFile2 = [(SOConfigurationHost *)selfCopy2 _defaultCacheFile];
    v35 = 0;
    v12 = [MEMORY[0x1E696ACB0] dataWithJSONObject:fileCopy options:3 error:&v35];
    v32 = v35;
    if (!v12)
    {
      v24 = SO_LOG_SOConfigurationHost();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationHost _saveCacheToFile:error:];
      }

      if (error)
      {
        v25 = v32;
        v23 = 0;
        *error = v32;
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_26;
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:_defaultCacheFile2];
    [defaultManager removeItemAtURL:v14 error:0];

    v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:_defaultCacheFile2];
    v34 = 0;
    LODWORD(v14) = [v12 writeToURL:v15 options:0 error:&v34];
    v16 = v34;

    if (v14)
    {
      v17 = *MEMORY[0x1E696A328];
      v36[0] = *MEMORY[0x1E696A360];
      v36[1] = v17;
      v37[0] = @"mobile";
      v37[1] = @"mobile";
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v33 = 0;
      v19 = [defaultManager2 setAttributes:v31 ofItemAtPath:_defaultCacheFile2 error:&v33];
      v20 = v33;

      v21 = SO_LOG_SOConfigurationHost();
      v22 = v21;
      if (v19)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v39 = _defaultCacheFile2;
          v40 = 2114;
          selfCopy = fileCopy;
          _os_log_impl(&dword_1C1317000, v22, OS_LOG_TYPE_DEFAULT, "cache written to file: %{public}@, %{public}@", buf, 0x16u);
        }

        v23 = 1;
        goto LABEL_25;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationHost _saveConfigToFile:error:];
      }

      if (error)
      {
        v28 = v20;
        *error = v20;
      }
    }

    else
    {
      v26 = SO_LOG_SOConfigurationHost();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationHost _saveCacheToFile:error:];
      }

      if (error)
      {
        v27 = v16;
        v23 = 0;
        *error = v16;
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }
    }

    v23 = 0;
    goto LABEL_25;
  }

  v23 = 0;
LABEL_27:

  objc_sync_exit(selfCopy2);
  v29 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)_extensionsLoaded:(id)loaded
{
  v56 = *MEMORY[0x1E69E9840];
  loadedCopy = loaded;
  v4 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v51 = "[SOConfigurationHost _extensionsLoaded:]";
    v52 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  userInfo = [loadedCopy userInfo];
  v29 = [userInfo objectForKeyedSubscript:@"extensions"];

  userInfo2 = [loadedCopy userInfo];
  v31 = [userInfo2 objectForKeyedSubscript:@"new"];

  userInfo3 = [loadedCopy userInfo];
  v32 = [userInfo3 objectForKeyedSubscript:@"removed"];

  v8 = SO_LOG_SOConfigurationHost();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v51 = v29;
    v52 = 2114;
    selfCopy = v31;
    v54 = 2114;
    v55 = v32;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_INFO, "extensions changed: %{public}@, new: %{public}@, removed: %{public}@", buf, 0x20u);
  }

  if ([v32 count])
  {
    configurationPendingLock = [(SOConfigurationHost *)selfCopy2 configurationPendingLock];
    objc_sync_enter(configurationPendingLock);
    [(SOConfigurationHost *)selfCopy2 setConfigurationPending:1];
    objc_sync_exit(configurationPendingLock);

    v10 = selfCopy2;
    objc_sync_enter(v10);
    v30 = v10;
    profiles = [v10[1] profiles];
    v12 = [profiles mutableCopy];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v32;
    v37 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v37)
    {
      v36 = *v45;
      do
      {
        v38 = 0;
        do
        {
          if (*v45 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v44 + 1) + 8 * v38);
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v14 = [v12 copy];
          v15 = [v14 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v15)
          {
            v16 = *v41;
            do
            {
              v17 = 0;
              do
              {
                if (*v41 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                v18 = *(*(&v40 + 1) + 8 * v17);
                extensionBundleIdentifier = [v13 extensionBundleIdentifier];
                extensionBundleIdentifier2 = [v18 extensionBundleIdentifier];
                v21 = [extensionBundleIdentifier isEqualToString:extensionBundleIdentifier2];

                if (v21)
                {
                  [v12 removeObject:v18];
                }

                ++v17;
              }

              while (v15 != v17);
              v15 = [v14 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v15);
          }

          ++v38;
        }

        while (v38 != v37);
        v37 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v37);
    }

    v22 = [objc_alloc(getSOConfigurationClass()) initWithProfiles:v12];
    v23 = v30[1];
    v30[1] = v22;

    [v30 _configurationLoadedWithReason:1];
    v24 = [v30 _stringWithReason:1];
    [SOAnalytics analyticsForMDMProfiles:v12 reason:v24];

    configurationPendingLock2 = [v30 configurationPendingLock];
    objc_sync_enter(configurationPendingLock2);
    [v30 setConfigurationPending:0];
    objc_sync_exit(configurationPendingLock2);

    objc_sync_exit(v30);
  }

  if ([(SOConfigurationHost *)v31 count])
  {
    configurationPendingLock3 = [(SOConfigurationHost *)selfCopy2 configurationPendingLock];
    objc_sync_enter(configurationPendingLock3);
    [(SOConfigurationHost *)selfCopy2 setConfigurationPending:1];
    objc_sync_exit(configurationPendingLock3);

    v27 = dispatch_time(0, 3000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__SOConfigurationHost__extensionsLoaded___block_invoke;
    block[3] = &unk_1E813ECB8;
    block[4] = selfCopy2;
    dispatch_after(v27, MEMORY[0x1E69E96A0], block);
  }

  objc_sync_exit(selfCopy2);
  v28 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isConfigFileAvailable
{
  v2 = MEMORY[0x1E695DF20];
  v3 = MEMORY[0x1E695DFF8];
  _defaultConfigurationFile = [(SOConfigurationHost *)self _defaultConfigurationFile];
  v5 = [v3 fileURLWithPath:_defaultConfigurationFile];
  v10 = 0;
  v6 = [v2 dictionaryWithContentsOfURL:v5 error:&v10];
  v7 = v10;

  if (v7)
  {
    v8 = SO_LOG_SOConfigurationHost();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationHost _isConfigFileAvailable];
    }
  }

  return v6 != 0;
}

- (id)_stringWithReason:(int64_t)reason
{
  v3 = @"FirstLoad";
  if (reason == 1)
  {
    v3 = @"ExtensionsChanged";
  }

  if (reason == 2)
  {
    return @"ModifiedByMDM";
  }

  else
  {
    return v3;
  }
}

+ (id)maskRegistrationTokenInConfigurationData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy mutableCopy];
  v5 = [dataCopy objectForKeyedSubscript:@"RegistrationToken"];

  if (v5)
  {
    v6 = @"present";
  }

  else
  {
    v6 = @"<null>";
  }

  [v4 setObject:v6 forKeyedSubscript:@"RegistrationToken"];

  return v4;
}

+ (id)maskRegistrationTokenInProfileList:(id)list
{
  v25 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v4 = [listCopy objectForKeyedSubscript:@"Profiles"];

  if (v4)
  {
    v18 = [listCopy mutableCopy];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = listCopy;
    v6 = [listCopy objectForKeyedSubscript:@"Profiles"];
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = [v11 mutableCopy];
          v13 = [v11 objectForKeyedSubscript:@"RegistrationToken"];
          if (v13)
          {
            v14 = @"present";
          }

          else
          {
            v14 = @"<null>";
          }

          [v12 setObject:v14 forKeyedSubscript:@"RegistrationToken"];

          [v5 addObject:v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v15 = v18;
    [v18 setObject:v5 forKeyedSubscript:@"Profiles"];

    listCopy = v19;
  }

  else
  {
    v15 = listCopy;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_defaultConfigurationFile
{
  v2 = MEMORY[0x1E696AEC0];
  _defaultConfigurationPath = [(SOConfigurationHost *)self _defaultConfigurationPath];
  v4 = [v2 stringWithFormat:@"%@/%@", _defaultConfigurationPath, @"com.apple.AppSSO.configuration.plist"];

  return v4;
}

- (id)_defaultCacheFile
{
  v2 = MEMORY[0x1E696AEC0];
  _defaultConfigurationPath = [(SOConfigurationHost *)self _defaultConfigurationPath];
  v4 = [v2 stringWithFormat:@"%@/Cache/%@", _defaultConfigurationPath, @"com.apple.AppSSO.cache.json"];

  return v4;
}

+ (void)defaultManager
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveConfiguration:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_8(&dword_1C1317000, v0, v1, "failed to create cache directory at %{public}@: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)saveConfiguration:error:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveConfigurationData:(void *)a1 error:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13(a1, a2, 5.808e-34);
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)profileForURL:responseCode:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)platformSSOProfile
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)hasAnyMDMProfileForExtension:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1C1317000, v0, v1, "found profile for extension: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)hasAnyMDMProfileForExtension:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1C1317000, v0, v1, "extension: %{public}@ not found", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)willHandleURL:responseCode:callerBundleIdentifier:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_15(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)willHandleURL:responseCode:callerBundleIdentifier:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_15(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_15(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_15(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:.cold.6()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:.cold.7()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:.cold.8()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1C1317000, v0, v1, "Associated domain: validation skipped for extension: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_loadProfilesFromDict:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_loadProfilesFromDict:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13(a1, a2, 5.808e-34);
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)_loadProfilesFromDict:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_loadProfilesFromDict:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_loadProfilesFromURL:logFileError:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_8(&dword_1C1317000, v0, v1, "failed to load config at %{private}@, error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_checkAssociatedDomainForProfiles:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_checkAssociatedDomainForProfiles:(void *)a3 .cold.2(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_debug_impl(&dword_1C1317000, log, OS_LOG_TYPE_DEBUG, "Associated domain: validation skipped for extension: %{public}@", buf, 0xCu);
}

- (void)_initDataVaultIfNeededWithError:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_8(&dword_1C1317000, v0, v1, "failed to create configuration directory at %{public}@: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_initDataVaultIfNeededWithError:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13(a1, a2, 4.8751e-34);
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_initDataVaultIfNeededWithError:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13(a1, a2, 4.8751e-34);
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_initCachePath:ifNeededWithError:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_8(&dword_1C1317000, v0, v1, "failed to change file attributes of path: %{public}@, error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_initCachePath:ifNeededWithError:.cold.3()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14(&dword_1C1317000, v1, v2, "failed to check the state of datavault: %{public}s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_initCachePath:ifNeededWithError:.cold.4()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14(&dword_1C1317000, v1, v2, "failed to convert to datavault: %{public}s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_saveConfigToFile:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_8(&dword_1C1317000, v0, v1, "failed to save config to file: %{public}@, error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_saveConfigToFile:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_8(&dword_1C1317000, v0, v1, "failed to change file attributes of file: %{public}@, error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_saveCacheToFile:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_8(&dword_1C1317000, v0, v1, "failed to save cache to file: %{public}@, error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_isConfigFileAvailable
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end