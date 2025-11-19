@interface LSBundleProxy
+ (BOOL)canInstantiateFromDatabase;
+ (LSBundleProxy)bundleProxyWithAuditToken:(id *)a3 error:(id *)a4;
+ (id)bundleProxyForCurrentProcess;
+ (id)bundleProxyForIdentifier:(id)a3;
+ (id)bundleProxyForURL:(id)a3 error:(id *)a4;
+ (void)clearBundleProxyForCurrentProcess;
- (BOOL)_hasAssociatedPersonas;
- (BOOL)isEqual:(id)a3;
- (LSBundleProxy)initWithCoder:(id)a3;
- (NSDictionary)entitlements;
- (NSString)canonicalExecutablePath;
- (NSString)localizedShortName;
- (NSURL)appStoreReceiptURL;
- (NSURL)containerURL;
- (id)_stringLocalizerForTable:(id)a3;
- (id)appStoreReceiptName;
- (id)entitlementValueForKey:(id)a3 ofClass:(Class)a4 valuesOfClass:(Class)a5;
- (id)entitlementValuesForKeys:(id)a3;
- (id)localizedName;
- (id)localizedValuesForKeys:(id)a3 fromTable:(id)a4;
- (id)objectForInfoDictionaryKey:(id)a3 ofClass:(Class)a4 valuesOfClass:(Class)a5;
- (id)objectsForInfoDictionaryKeys:(id)a3;
- (unint64_t)hash;
- (void)canonicalExecutablePath;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LSBundleProxy

+ (BOOL)canInstantiateFromDatabase
{
  MayMapDatabase = _LSCurrentProcessMayMapDatabase();
  if (MayMapDatabase)
  {
    LOBYTE(MayMapDatabase) = !+[_LSQueryContext simulateLimitedMappingForXCTests];
  }

  return MayMapDatabase;
}

- (NSString)canonicalExecutablePath
{
  v3 = [(LSBundleProxy *)self bundleExecutable];

  if (v3)
  {
    v4 = [(LSBundleProxy *)self bundleURL];

    if (v4)
    {
      v5 = objc_alloc(MEMORY[0x1E695DFF8]);
      v6 = [(LSBundleProxy *)self bundleExecutable];
      v7 = [(LSBundleProxy *)self bundleURL];
      v8 = [v7 URLByResolvingSymlinksInPath];
      v9 = [v5 initFileURLWithPath:v6 isDirectory:0 relativeToURL:v8];
      v10 = [v9 path];

      goto LABEL_9;
    }

    v11 = _LSDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [LSBundleProxy canonicalExecutablePath];
    }
  }

  else
  {
    v11 = _LSDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [LSBundleProxy canonicalExecutablePath];
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

+ (id)bundleProxyForCurrentProcess
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&currentLock);
  v3 = [current bundleIdentifier];
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];

  if (!current)
  {
    goto LABEL_17;
  }

  if (([v3 isEqual:v5] & 1) == 0)
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v3;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "Current bundle's identifier changed from %@ to %@", buf, 0x16u);
    }

    v7 = current;
    current = 0;
  }

  v8 = current;
  if (!current)
  {
LABEL_17:
    if (_LSCurrentProcessMayMapDatabase())
    {
      v9 = +[LSBundleRecord bundleRecordForCurrentProcess];
      v10 = [v9 compatibilityObject];
      v11 = current;
      current = v10;
    }

    else
    {
      v9 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
      [v9 getBundleProxyForCurrentProcessWithCompletionHandler:&__block_literal_global_21];
    }

    v8 = current;
    if (current)
    {
      v12 = dispatch_time(0, 5000000000);
      v13 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__LSBundleProxy_bundleProxyForCurrentProcess__block_invoke_22;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_after(v12, v13, block);

      v8 = current;
    }
  }

  v14 = v8;

  os_unfair_lock_unlock(&currentLock);
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)localizedName
{
  os_unfair_lock_lock(&localizedNameLock);
  v6.receiver = self;
  v6.super_class = LSBundleProxy;
  v3 = [(LSResourceProxy *)&v6 localizedName];
  os_unfair_lock_unlock(&localizedNameLock);
  if (!v3)
  {
    v3 = [(LSBundleProxy *)self _localizedNameWithPreferredLocalizations:0 useShortNameOnly:0];
    if (v3)
    {
      os_unfair_lock_lock(&localizedNameLock);
      v4 = [v3 copy];
      [(LSResourceProxy *)self _setLocalizedName:v4];

      os_unfair_lock_unlock(&localizedNameLock);
    }
  }

  return v3;
}

+ (void)clearBundleProxyForCurrentProcess
{
  os_unfair_lock_lock(&currentLock);
  v2 = current;
  current = 0;

  os_unfair_lock_unlock(&currentLock);
}

- (NSURL)appStoreReceiptURL
{
  v3 = [(LSBundleProxy *)self dataContainerURL];
  v4 = [v3 URLByAppendingPathComponent:@"StoreKit" isDirectory:1];

  if (v4)
  {
    v5 = [(LSBundleProxy *)self appStoreReceiptName];
    v6 = [v4 URLByAppendingPathComponent:v5 isDirectory:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)appStoreReceiptName
{
  if ([(LSBundleProxy *)self profileValidated])
  {
    return @"sandboxReceipt";
  }

  else
  {
    return @"receipt";
  }
}

+ (id)bundleProxyForIdentifier:(id)a3
{
  v4 = a3;
  if (![a1 canInstantiateFromDatabase])
  {
    v5 = [LSApplicationProxy applicationProxyForIdentifier:v4];
    goto LABEL_11;
  }

  v10 = 0;
  if (!_LSContextInit(&v10))
  {
    v6 = _LSFindBundleWithInfo_NoIOFiltered(&v10, 1uLL, v4, 0, 0, 0, 0, 0, 0);
    v9 = v6;
    if (v6 || (v6 = _LSFindBundleWithInfo_NoIOFiltered(&v10, 3uLL, v4, 0, 0, 0, 0, 0, 0), (v9 = v6) != 0))
    {
      v7 = [LSApplicationProxy applicationProxyWithBundleUnitID:v6 withContext:&v10];
    }

    else
    {
      v9 = _LSFindBundleWithInfo_NoIOFiltered(&v10, 5uLL, v4, 0, 0, 0, 0, 0, 0);
      if (v9)
      {
        v7 = [LSVPNPluginProxy VPNPluginProxyForIdentifier:v4 withContext:&v10];
      }

      else
      {
        if (!_LSPluginFindWithInfo(v10, 0, v4, 3, 0, &v9, 0))
        {
          v5 = 0;
          goto LABEL_9;
        }

        v7 = [LSPlugInKitProxy plugInKitProxyForPlugin:v9 withContext:&v10];
      }
    }

    v5 = v7;
LABEL_9:
    _LSContextDestroy(&v10);
    goto LABEL_10;
  }

  v5 = 0;
LABEL_10:

LABEL_11:

  return v5;
}

+ (id)bundleProxyForURL:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([a1 canInstantiateFromDatabase])
  {
    v14 = 0;
    if (!_LSContextInitReturningError(&v14, a4))
    {
      v8 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v7 = _LSFindBundleWithInfo_NoIOFiltered(&v14, 0, 0, 0, v6, 0, 0, 0, a4);
    if (v7)
    {
      v8 = [LSApplicationProxy applicationProxyWithBundleUnitID:v7 withContext:&v14];
LABEL_17:
      _LSContextDestroy(&v14);
      goto LABEL_18;
    }

    v9 = [[FSNode alloc] initWithURL:v6 flags:0 error:a4];
    if (v9)
    {
      v13 = 0;
      if (_LSPluginFindWithInfo(v14, 0, 0, 0, v9, &v13, a4))
      {
        v8 = [LSPlugInKitProxy plugInKitProxyForPlugin:v13 withContext:&v14];
LABEL_16:

        goto LABEL_17;
      }

      v10 = _LSDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v6;
        _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "no registered bundle with URL %@", buf, 0xCu);
      }
    }

    v8 = 0;
    goto LABEL_16;
  }

  __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();
  __LAUNCH_SERVICES_IS_ABORTING_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();
  if (a4)
  {
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "+[LSBundleProxy bundleProxyForURL:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSBundleProxy.m", 291);
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_19:

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

void __45__LSBundleProxy_bundleProxyForCurrentProcess__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LSDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__LSBundleProxy_bundleProxyForCurrentProcess__block_invoke_cold_1();
  }
}

void __45__LSBundleProxy_bundleProxyForCurrentProcess__block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_storeStrong(&current, a2);
  }

  else
  {
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __45__LSBundleProxy_bundleProxyForCurrentProcess__block_invoke_cold_1();
    }
  }
}

void __45__LSBundleProxy_bundleProxyForCurrentProcess__block_invoke_22(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) clearBundleProxyForCurrentProcess];

  objc_autoreleasePoolPop(v2);
}

+ (LSBundleProxy)bundleProxyWithAuditToken:(id *)a3 error:(id *)a4
{
  v4 = *&a3->var0[4];
  v8[0] = *a3->var0;
  v8[1] = v4;
  v5 = [LSBundleRecord bundleRecordForAuditToken:v8 error:a4];
  v6 = [v5 compatibilityObject];

  return v6;
}

void __175__LSBundleProxy__initWithBundleUnit_context_bundleType_bundleID_localizedName_bundleContainerURL_dataContainerURL_resourcesDirectoryURL_iconsDictionary_iconFileNames_version___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [(_LSDatabase *)**(a1 + 48) store];
  v2 = _CSStringCopyCFString();
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  else
  {
    v3 = _LSDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "Invaid icon file name saved for app %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (LSBundleProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = LSBundleProxy;
  v5 = [(LSResourceProxy *)&v29 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v8;

    v10 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v10;

    v12 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleExecutable"];
    bundleExecutable = v5->_bundleExecutable;
    v5->_bundleExecutable = v12;

    v14 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleContainerURL"];
    bundleContainerURL = v5->_bundleContainerURL;
    v5->_bundleContainerURL = v14;

    v5->_sequenceNumber = [v4 decodeInt64ForKey:@"sequenceNumber"];
    v5->_compatibilityState = [v4 decodeInt64ForKey:@"compatibilityState"];
    v5->_foundBackingBundle = [v4 decodeBoolForKey:@"foundBundle"];
    v16 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"cacheGUID"];
    cacheGUID = v5->_cacheGUID;
    v5->_cacheGUID = v16;

    v5->_containerized = [v4 decodeBoolForKey:@"isContainerized"];
    v18 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"localizedShortName"];
    localizedShortName = v5->_localizedShortName;
    v5->_localizedShortName = v18;

    v20 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"infoDictionary"];
    infoDictionary = v5->__infoDictionary;
    v5->__infoDictionary = v20;

    v22 = [v4 ls_decodeArrayWithValuesOfClass:objc_opt_class() forKey:@"machOUUIDs"];
    machOUUIDs = v5->_machOUUIDs;
    v5->_machOUUIDs = v22;

    v24 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"sdkVersion"];
    sdkVersion = v5->_sdkVersion;
    v5->_sdkVersion = v24;

    v26 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"entitlements"];
    entitlements = v5->__entitlements;
    v5->__entitlements = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = LSBundleProxy;
  v4 = a3;
  [(LSResourceProxy *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_bundleIdentifier forKey:{@"bundleIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_bundleURL forKey:@"bundleURL"];
  [v4 encodeObject:self->_bundleVersion forKey:@"bundleVersion"];
  [v4 encodeObject:self->_bundleExecutable forKey:@"bundleExecutable"];
  [v4 encodeObject:self->_bundleContainerURL forKey:@"bundleContainerURL"];
  [v4 encodeInt64:self->_sequenceNumber forKey:@"sequenceNumber"];
  [v4 encodeInt64:self->_compatibilityState forKey:@"compatibilityState"];
  [v4 encodeBool:self->_foundBackingBundle forKey:@"foundBundle"];
  [v4 encodeObject:self->_cacheGUID forKey:@"cacheGUID"];
  [v4 encodeBool:self->_containerized forKey:@"isContainerized"];
  [v4 encodeObject:self->_localizedShortName forKey:@"localizedShortName"];
  [v4 encodeObject:self->__infoDictionary forKey:@"infoDictionary"];
  [v4 encodeObject:self->_machOUUIDs forKey:@"machOUUIDs"];
  [v4 encodeObject:self->_sdkVersion forKey:@"sdkVersion"];
  [v4 encodeObject:self->__entitlements forKey:@"entitlements"];
}

- (NSURL)containerURL
{
  v3 = [(LSBundleProxy *)self dataContainerURL];

  if (v3)
  {
    v4 = [(LSBundleProxy *)self dataContainerURL];
  }

  else
  {
    v5 = [(LSBundleProxy *)self bundleURL];
    v6 = [(LSBundleProxy *)self bundleIdentifier];
    v7 = [v5 path];
    if (([v7 hasPrefix:@"/var/mobile/Applications/"] & 1) != 0 || objc_msgSend(v7, "hasPrefix:", @"/private/var/mobile/Applications/"))
    {
      v8 = objc_alloc(MEMORY[0x1E695DFF8]);
      v9 = [v7 stringByDeletingLastPathComponent];
      v4 = [v8 initFileURLWithPath:v9 isDirectory:1];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/var/mobile/" isDirectory:1];
    }
  }

  return v4;
}

- (BOOL)_hasAssociatedPersonas
{
  v2 = [(LSBundleProxy *)self _managedPersonas];
  v3 = [v2 count] != 0;

  return v3;
}

- (NSDictionary)entitlements
{
  v2 = [(LSBundleProxy *)self _entitlements];
  v3 = [(_LSLazyPropertyList *)v2 propertyList];

  return v3;
}

- (id)entitlementValuesForKeys:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [LSBundleProxy entitlementValuesForKeys:];
  }

  v5 = [LSBundleInfoCachedValues alloc];
  v6 = [(LSBundleProxy *)self _entitlements];
  v7 = [v6 uncheckedObjectsForKeys:v4];
  v8 = [(LSBundleInfoCachedValues *)v5 _initWithKeys:v4 forDictionary:v7];

  return v8;
}

- (id)entitlementValueForKey:(id)a3 ofClass:(Class)a4 valuesOfClass:(Class)a5
{
  v8 = a3;
  if (!v8)
  {
    [LSBundleProxy entitlementValueForKey:ofClass:valuesOfClass:];
  }

  v9 = [(LSBundleProxy *)self _entitlements];
  v10 = [v9 objectForKey:v8 checkingKeyClass:a4 checkingValueClass:a5];

  return v10;
}

- (id)objectsForInfoDictionaryKeys:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [LSBundleProxy objectsForInfoDictionaryKeys:];
  }

  v5 = [LSBundleInfoCachedValues alloc];
  v6 = [(LSBundleProxy *)self _infoDictionary];
  v7 = [v6 uncheckedObjectsForKeys:v4];
  v8 = [(LSBundleInfoCachedValues *)v5 _initWithKeys:v4 forDictionary:v7];

  return v8;
}

- (id)objectForInfoDictionaryKey:(id)a3 ofClass:(Class)a4 valuesOfClass:(Class)a5
{
  v8 = a3;
  if (!v8)
  {
    [LSBundleProxy objectForInfoDictionaryKey:ofClass:valuesOfClass:];
  }

  v9 = [(LSBundleProxy *)self _infoDictionary];
  v10 = [v9 objectForKey:v8 checkingKeyClass:a4 checkingValueClass:a5];

  return v10;
}

- (id)_stringLocalizerForTable:(id)a3
{
  v4 = a3;
  v5 = [_LSStringLocalizer alloc];
  v6 = [(LSBundleProxy *)self bundleURL];
  v7 = [(_LSStringLocalizer *)v5 initWithBundleURL:v6 stringsFile:v4];

  return v7;
}

- (id)localizedValuesForKeys:(id)a3 fromTable:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [LSBundleProxy localizedValuesForKeys:fromTable:];
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [(LSBundleProxy *)self bundleURL];
  v10 = [FSNode canReadURL:v9 fromSandboxWithAuditToken:0];

  v11 = 0;
  if (v10)
  {
    if (v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = @"InfoPlist";
    }

    v13 = [(LSBundleProxy *)self _stringLocalizerForTable:v12];
    v14 = [v13 localizedStringsWithStrings:v6 preferredLocalizations:0];
    if (v14)
    {
      v11 = [[LSBundleInfoCachedValues alloc] _initWithKeys:v6 forDictionary:v14];
    }

    else
    {
      v11 = 0;
    }
  }

  objc_autoreleasePoolPop(v8);

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(LSBundleProxy *)v6 bundleType];
    v8 = [(LSBundleProxy *)self bundleType];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      v10 = [(LSBundleProxy *)self _valueForEqualityTesting];
      v11 = [(LSBundleProxy *)v6 _valueForEqualityTesting];
      v12 = [v10 isEqual:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v2 = [(LSBundleProxy *)self _valueForEqualityTesting];
  v3 = [v2 hash];

  return v3;
}

- (NSString)localizedShortName
{
  os_unfair_lock_lock(&localizedNameLock);
  v3 = self->_localizedShortName;
  os_unfair_lock_unlock(&localizedNameLock);
  if (!v3)
  {
    v3 = [(LSBundleProxy *)self _localizedNameWithPreferredLocalizations:0 useShortNameOnly:1];
    if (v3)
    {
      os_unfair_lock_lock(&localizedNameLock);
      v4 = [(NSString *)v3 copy];
      localizedShortName = self->_localizedShortName;
      self->_localizedShortName = v4;

      os_unfair_lock_unlock(&localizedNameLock);
    }
  }

  return v3;
}

void __45__LSBundleProxy_bundleProxyForCurrentProcess__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "Failed to get bundle proxy for current process: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_initWithBundleUnit:(uint64_t)a3 context:(uint64_t)a4 bundleType:(uint64_t)a5 bundleID:(uint64_t)a6 localizedName:(uint64_t)a7 bundleContainerURL:(uint64_t)a8 dataContainerURL:resourcesDirectoryURL:iconsDictionary:iconFileNames:version:.cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a2, a3, "LaunchServices: requested bundle proxy with unit ID %llx but no context", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)canonicalExecutablePath
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "Cannot generate canonicalExecutablePath for app %@ with no bundleExecutable set", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)entitlementValuesForKeys:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"keys != nil" object:? file:? lineNumber:? description:?];
}

- (void)entitlementValueForKey:ofClass:valuesOfClass:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"key != nil" object:? file:? lineNumber:? description:?];
}

- (void)objectsForInfoDictionaryKeys:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"keys != nil" object:? file:? lineNumber:? description:?];
}

- (void)objectForInfoDictionaryKey:ofClass:valuesOfClass:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"key != nil" object:? file:? lineNumber:? description:?];
}

- (void)localizedValuesForKeys:fromTable:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"keys != nil" object:? file:? lineNumber:? description:?];
}

@end