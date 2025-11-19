@interface LSApplicationProxy
+ (id)applicationProxyForBundleType:(unint64_t)a3 identifier:(id)a4 isCompanion:(BOOL)a5 URL:(id)a6 itemID:(id)a7 bundleUnit:(unsigned int *)a8;
+ (id)applicationProxyForCompanionIdentifier:(id)a3;
+ (id)applicationProxyForIdentifier:(id)a3 placeholder:(BOOL)a4;
+ (id)applicationProxyForIdentifier:(id)a3 withContext:(LSContext *)a4;
+ (id)applicationProxyForItemID:(id)a3;
+ (id)applicationProxyForSystemPlaceholder:(id)a3;
- (BOOL)gameCenterEverEnabled;
- (BOOL)getGenericTranslocationTargetURL:(id *)a3 error:(id *)a4;
- (BOOL)isDeviceBasedVPP;
- (BOOL)isGameCenterEnabled;
- (BOOL)isInstalled;
- (BOOL)isPlaceholder;
- (BOOL)isPurchasedReDownload;
- (BOOL)isRestricted;
- (BOOL)isWhitelisted;
- (BOOL)respondsToSelector:(SEL)a3;
- (LSApplicationProxy)initWithCoder:(id)a3;
- (NSArray)activityTypes;
- (NSArray)plugInKitPlugins;
- (NSArray)requiredDeviceCapabilities;
- (NSArray)subgenres;
- (NSNumber)ODRDiskUsage;
- (NSNumber)betaExternalVersionIdentifier;
- (NSNumber)downloaderDSID;
- (NSNumber)dynamicDiskUsage;
- (NSNumber)externalVersionIdentifier;
- (NSNumber)familyID;
- (NSNumber)genreID;
- (NSNumber)installFailureReason;
- (NSNumber)itemID;
- (NSNumber)platform;
- (NSNumber)purchaserDSID;
- (NSNumber)ratingRank;
- (NSNumber)staticDiskUsage;
- (NSNumber)storeFront;
- (NSProgress)installProgress;
- (NSSet)claimedDocumentContentTypes;
- (NSSet)claimedURLSchemes;
- (NSString)appIDPrefix;
- (NSString)applicationDSID;
- (NSString)applicationVariant;
- (NSString)genre;
- (NSString)itemName;
- (NSString)ratingLabel;
- (NSString)sourceAppIdentifier;
- (NSString)storeCohortMetadata;
- (NSString)vendorName;
- (_LSApplicationState)appState;
- (id)_initWithContext:(LSContext *)a3 bundleUnit:(unsigned int)a4 applicationRecord:(id)a5 bundleID:(id)a6 resolveAndDetach:(BOOL)a7;
- (id)_stringLocalizerForTable:(id)a3;
- (id)bundleType;
- (id)description;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)handlerRankOfClaimForContentType:(id)a3;
- (id)installProgressSync;
- (id)localizedNameForContext:(id)a3 preferredLocalizations:(id)a4 useShortNameOnly:(BOOL)a5;
- (id)methodSignatureForSelector:(SEL)a3;
- (int64_t)deviceManagementPolicy;
- (unint64_t)installType;
- (void)detach;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LSApplicationProxy

- (_LSApplicationState)appState
{
  v3 = [(LSApplicationRecord *)self->_record applicationState];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [_LSApplicationState alloc];
    v7 = [(LSBundleProxy *)self bundleIdentifier];
    v5 = [(_LSApplicationState *)v6 initWithBundleIdentifier:v7 stateFlags:0 ratingRank:0 installType:0];
  }

  return v5;
}

- (id)bundleType
{
  v3 = [(LSApplicationRecord *)self->_record typeForInstallMachinery];
  if (!v3)
  {
    if ([(LSApplicationProxy *)self isInstalled])
    {
      v3 = @"User";
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (NSArray)plugInKitPlugins
{
  v2 = self;
  objc_sync_enter(v2);
  plugInKitPlugins = v2->_plugInKitPlugins;
  if (!plugInKitPlugins)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __38__LSApplicationProxy_plugInKitPlugins__block_invoke;
    v13 = &unk_1E6A18F50;
    v14 = v2;
    v5 = v4;
    v15 = v5;
    __LSRECORD_IS_CONSTRUCTING_A_COMPATIBILITY_OBJECT__(&v10);
    v6 = [v5 copy];
    v7 = v2->_plugInKitPlugins;
    v2->_plugInKitPlugins = v6;

    plugInKitPlugins = v2->_plugInKitPlugins;
  }

  v8 = plugInKitPlugins;
  objc_sync_exit(v2);

  return v8;
}

void __38__LSApplicationProxy_plugInKitPlugins__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(*(a1 + 32) + 160) applicationExtensionRecords];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * v6) uniqueIdentifier];
        v8 = [LSPlugInKitProxy pluginKitProxyForUUID:v7];

        if (v8)
        {
          [*(a1 + 40) addObject:v8];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (NSArray)activityTypes
{
  v2 = [(LSApplicationRecord *)self->_record userActivityTypes];
  v3 = [v2 allObjects];

  return v3;
}

- (NSString)genre
{
  v2 = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v3 = [v2 genre];

  return v3;
}

- (NSNumber)genreID
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(v3, "genreIdentifier")}];

  return v4;
}

- (NSArray)subgenres
{
  v2 = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v3 = [v2 subgenres];

  return v3;
}

- (int64_t)deviceManagementPolicy
{
  if (DeviceManagementLibrary_frameworkLibrary || (result = dlopen("/System/Library/PrivateFrameworks/DeviceManagement.framework/DeviceManagement", 2), (DeviceManagementLibrary_frameworkLibrary = result) != 0))
  {
    v4 = [(LSBundleProxy *)self bundleIdentifier];
    v6 = _LSGetDMFPolicy(v4, v5);

    return v6;
  }

  return result;
}

- (BOOL)isPlaceholder
{
  v2 = [(LSApplicationProxy *)self appState];
  v3 = [v2 isPlaceholder];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = LSApplicationProxy;
  v4 = [(LSApplicationProxy *)&v11 description];
  v5 = [(LSBundleProxy *)self bundleIdentifier];
  v6 = [(LSBundleProxy *)self bundleURL];
  v7 = [(LSApplicationProxy *)self appState];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[LSApplicationProxy installType](self, "installType")}];
  v9 = [v3 stringWithFormat:@"%@ %@ %@ <%@:%@>", v4, v5, v6, v7, v8];

  return v9;
}

- (unint64_t)installType
{
  if (![(LSApplicationProxy *)self isPlaceholder])
  {
    return 0;
  }

  return [(LSApplicationProxy *)self originalInstallType];
}

+ (id)applicationProxyForIdentifier:(id)a3 withContext:(LSContext *)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = _LSFindBundleWithInfo(a4, 0, v6, 0, 0, 0, 0);
  }

  else
  {
    v7 = 0;
  }

  v8 = [[a1 alloc] _initWithBundleUnit:v7 context:a4 bundleIdentifier:v6];

  return v8;
}

+ (id)applicationProxyForBundleType:(unint64_t)a3 identifier:(id)a4 isCompanion:(BOOL)a5 URL:(id)a6 itemID:(id)a7 bundleUnit:(unsigned int *)a8
{
  v11 = a5;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__1;
  v40 = __Block_byref_object_dispose__1;
  v41 = 0;
  if (!v14 || v11 || ([a1 canInstantiateFromDatabase] & 1) != 0)
  {
    v34 = 0;
    if (_LSContextInit(&v34))
    {
      LODWORD(v17) = 0;
    }

    else
    {
      if (v16)
      {
        v18 = [v16 unsignedLongLongValue];
      }

      else
      {
        v18 = 0;
      }

      v17 = _LSFindBundleWithInfo(&v34, a3, v14, v11, v15, v18, 0);
      v26 = [a1 alloc];
      if (v11)
      {
        v27 = 0;
      }

      else
      {
        v27 = v14;
      }

      v28 = [v26 _initWithBundleUnit:v17 context:&v34 bundleIdentifier:v27];
      v29 = v37[5];
      v37[5] = v28;

      _LSContextDestroy(&v34);
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAE8] mainBundle];
    v20 = [v19 bundleIdentifier];
    v21 = [v14 isEqual:v20];

    if (v21)
    {
      v22 = _LSDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [LSApplicationProxy applicationProxyForBundleType:v22 identifier:? isCompanion:? URL:? itemID:? bundleUnit:?];
      }

      __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();
      __LAUNCH_SERVICES_IS_ABORTING_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();
      v23 = +[LSBundleProxy bundleProxyForCurrentProcess];
      if (v23)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(v37 + 5, v23);
        }
      }
    }

    if (!v37[5])
    {
      v24 = [_LSApplicationProxyForIdentifierQuery queryWithIdentifier:v14];
      v25 = +[_LSQueryContext defaultContext];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __97__LSApplicationProxy_applicationProxyForBundleType_identifier_isCompanion_URL_itemID_bundleUnit___block_invoke;
      v35[3] = &unk_1E6A18F00;
      v35[4] = &v36;
      [v25 enumerateResolvedResultsOfQuery:v24 withBlock:v35];
    }

    LODWORD(v17) = 0;
  }

  if (!v37[5])
  {
    v30 = [a1 applicationProxyForIdentifier:v14 withContext:0];
    v31 = v37[5];
    v37[5] = v30;
  }

  if (a8)
  {
    *a8 = v17;
  }

  v32 = v37[5];
  _Block_object_dispose(&v36, 8);

  return v32;
}

+ (id)applicationProxyForIdentifier:(id)a3 placeholder:(BOOL)a4
{
  if (a4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  return [a1 applicationProxyForBundleType:v5 identifier:a3 isCompanion:0 URL:0 itemID:0 bundleUnit:0];
}

+ (id)applicationProxyForCompanionIdentifier:(id)a3
{
  v5 = 0;
  v3 = [a1 applicationProxyForBundleType:0 identifier:a3 isCompanion:1 URL:0 itemID:0 bundleUnit:&v5];
  if (v3 && !v5)
  {

    v3 = 0;
  }

  return v3;
}

+ (id)applicationProxyForSystemPlaceholder:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0;
  v5 = [a1 applicationProxyForBundleType:7 identifier:v4 isCompanion:0 URL:0 itemID:0 bundleUnit:&v9];
  if (v5 && !v9)
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "No system placeholder found with identifier %@", buf, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)applicationProxyForItemID:(id)a3
{
  v5 = 0;
  v3 = [a1 applicationProxyForBundleType:1 identifier:0 isCompanion:0 URL:0 itemID:a3 bundleUnit:&v5];
  if (v3 && !v5)
  {

    v3 = 0;
  }

  return v3;
}

- (id)_initWithContext:(LSContext *)a3 bundleUnit:(unsigned int)a4 applicationRecord:(id)a5 bundleID:(id)a6 resolveAndDetach:(BOOL)a7
{
  v31 = a7;
  v54 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v35 = a6;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3812000000;
  v49 = __Block_byref_object_copy__6;
  v50 = __Block_byref_object_dispose__7;
  v51 = 256;
  v52 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  if (v9)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __94__LSApplicationProxy__initWithContext_bundleUnit_applicationRecord_bundleID_resolveAndDetach___block_invoke;
    v41[3] = &unk_1E6A18F28;
    v41[4] = &v46;
    v41[5] = &v42;
    [v9 _performBlockWithContext:v41];
  }

  v34 = [v9 _iconFileNames];
  v10 = objc_autoreleasePoolPush();
  v11 = [v9 infoDictionary];
  v12 = [v11 objectForKey:@"CFBundleIcons" ofClass:objc_opt_class()];

  if (v12)
  {
    v33 = [_LSLazyPropertyList lazyPropertyListWithPropertyList:v12];
  }

  else
  {
    v33 = 0;
  }

  objc_autoreleasePoolPop(v10);
  v32 = *(v43 + 6);
  v13 = v47;
  if ([v9 isPlaceholder])
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  v15 = [v9 bundleIdentifier];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v35;
  }

  v18 = [v9 bundleContainerURL];
  v19 = [v9 _dataContainerURLFromDatabase];
  v20 = [v9 URL];
  v21 = [v9 exactBundleVersion];
  v40.receiver = self;
  v40.super_class = LSApplicationProxy;
  v22 = [(LSBundleProxy *)&v40 _initWithBundleUnit:v32 context:v13 + 6 bundleType:v14 bundleID:v17 localizedName:0 bundleContainerURL:v18 dataContainerURL:v19 resourcesDirectoryURL:v20 iconsDictionary:v33 iconFileNames:v34 version:v21];

  if (v22)
  {
    if (v31 && _LSDatabaseContextGetDetachProxyObjects(v23))
    {
      [v9 _resolveAllProperties];
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v24 = [v9 claimRecords];
      v25 = [v24 countByEnumeratingWithState:&v36 objects:v53 count:16];
      if (v25)
      {
        v26 = *v37;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v37 != v26)
            {
              objc_enumerationMutation(v24);
            }

            [*(*(&v36 + 1) + 8 * i) _resolveAllProperties];
          }

          v25 = [v24 countByEnumeratingWithState:&v36 objects:v53 count:16];
        }

        while (v25);
      }

      [v9 detach];
    }

    objc_storeStrong(v22 + 20, a5);
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  v28 = *MEMORY[0x1E69E9840];
  return v22;
}

- (NSNumber)itemID
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(v3, "storeItemIdentifier")}];

  return v4;
}

- (NSString)vendorName
{
  v2 = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v3 = [v2 artistName];

  return v3;
}

- (NSString)itemName
{
  v2 = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v3 = [v2 itemName];

  return v3;
}

- (NSString)storeCohortMetadata
{
  v2 = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v3 = [v2 storeCohort];

  return v3;
}

- (NSProgress)installProgress
{
  v3 = [(LSApplicationProxy *)self appState];
  v4 = [v3 isPlaceholder];

  if (v4)
  {
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    v6 = [(LSBundleProxy *)self bundleIdentifier];
    v7 = [v5 installProgressForBundleID:v6 makeSynchronous:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSNumber)staticDiskUsage
{
  v2 = [(LSApplicationProxy *)self diskUsage];
  v3 = [v2 staticUsage];

  return v3;
}

- (NSNumber)dynamicDiskUsage
{
  v3 = [(LSApplicationProxy *)self diskUsage];
  v4 = [v3 dynamicUsage];

  v5 = [(LSApplicationProxy *)self diskUsage];
  v6 = [v5 onDemandResourcesUsage];

  if (v4 && v6)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v6, "unsignedLongLongValue") + objc_msgSend(v4, "unsignedLongLongValue")}];
  }

  else
  {
    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v6;
    }

    v7 = v8;
  }

  v9 = v7;

  return v9;
}

- (NSNumber)ODRDiskUsage
{
  v2 = [(LSApplicationProxy *)self diskUsage];
  v3 = [v2 onDemandResourcesUsage];

  return v3;
}

- (BOOL)isInstalled
{
  v2 = [(LSApplicationProxy *)self appState];
  v3 = [v2 isInstalled];

  return v3;
}

- (BOOL)isRestricted
{
  v2 = [(LSApplicationProxy *)self appState];
  v3 = [v2 isRestricted];

  return v3;
}

- (NSString)applicationDSID
{
  v2 = [(LSApplicationProxy *)self purchaserDSID];
  v3 = [v2 stringValue];

  return v3;
}

- (NSNumber)purchaserDSID
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(LSApplicationRecord *)self->_record applicationDSID];

  return [v2 numberWithUnsignedLongLong:v3];
}

- (NSNumber)downloaderDSID
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(LSApplicationRecord *)self->_record applicationDownloaderDSID];

  return [v2 numberWithUnsignedLongLong:v3];
}

- (NSNumber)familyID
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(LSApplicationRecord *)self->_record applicationFamilyID];

  return [v2 numberWithUnsignedLongLong:v3];
}

- (NSArray)requiredDeviceCapabilities
{
  v2 = [(LSApplicationRecord *)self->_record requiredDeviceCapabilities];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__LSApplicationProxy_requiredDeviceCapabilities__block_invoke;
    v7[3] = &unk_1E6A18F78;
    v8 = v3;
    v4 = v3;
    [v2 enumerateKeysAndObjectsUsingBlock:v7];
    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __48__LSApplicationProxy_requiredDeviceCapabilities__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (NSString)appIDPrefix
{
  v7 = 0;
  v2 = [(LSBundleRecord *)self->_record applicationIdentifier];
  v3 = v2;
  if (v2)
  {
    _LSSplitApplicationIdentifier(v2, &v7, 0);
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v5;
}

- (NSNumber)storeFront
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(v3, "storeFront")}];

  return v4;
}

- (NSNumber)externalVersionIdentifier
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(v3, "versionIdentifier")}];

  return v4;
}

- (NSNumber)betaExternalVersionIdentifier
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(v3, "betaVersionIdentifier")}];

  return v4;
}

- (NSNumber)ratingRank
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(v3, "ratingRank")}];

  return v4;
}

- (NSString)ratingLabel
{
  v2 = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v3 = [v2 ratingLabel];

  return v3;
}

- (NSString)sourceAppIdentifier
{
  v2 = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v3 = [v2 sourceApp];

  return v3;
}

- (NSString)applicationVariant
{
  v2 = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v3 = [v2 variantID];

  return v3;
}

- (BOOL)isWhitelisted
{
  v3 = +[LSApplicationRestrictionsManager sharedInstance];
  v4 = [(LSBundleProxy *)self bundleIdentifier];
  LOBYTE(self) = [(LSApplicationRestrictionsManager *)v3 isApplicationRestricted:v4 checkFlags:[(LSApplicationRecord *)self->_record _rawBundleFlags]];

  return self ^ 1;
}

- (BOOL)isDeviceBasedVPP
{
  v2 = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v3 = [v2 isDeviceBasedVPP];

  return v3;
}

- (BOOL)isPurchasedReDownload
{
  v2 = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v3 = [v2 isPurchasedRedownload];

  return v3;
}

- (BOOL)isGameCenterEnabled
{
  v2 = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v3 = [v2 isGameCenterEnabled];

  return v3;
}

- (BOOL)gameCenterEverEnabled
{
  v2 = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v3 = [v2 wasGameCenterEverEnabled];

  return v3;
}

- (NSNumber)installFailureReason
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(LSApplicationRecord *)self->_record placeholderFailureReason];

  return [v2 numberWithUnsignedInteger:v3];
}

- (NSSet)claimedDocumentContentTypes
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(LSBundleRecord *)self->_record claimRecords];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) typeIdentifiers];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSSet)claimedURLSchemes
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(LSBundleRecord *)self->_record claimRecords];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) URLSchemes];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)handlerRankOfClaimForContentType:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    [(LSApplicationProxy *)a2 handlerRankOfClaimForContentType:?];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(LSBundleRecord *)self->_record claimRecords];
  v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v9 = 0x8000;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [v11 typeIdentifiers];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v25;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v25 != v16)
              {
                objc_enumerationMutation(v13);
              }

              if (![*(*(&v24 + 1) + 8 * j) caseInsensitiveCompare:v5])
              {
                v18 = [v11 handlerRank];
                v19 = _LSNumericHandlerRankFromHandlerRankString(v18);

                if (v9 <= v19)
                {
                  v9 = v19;
                }

                goto LABEL_19;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

LABEL_19:
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0x8000;
  }

  v20 = _LSCopyHandlerRankStringFromNumericHandlerRank(v9);
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (NSNumber)platform
{
  v2 = [(LSBundleRecord *)self->_record platform];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)getGenericTranslocationTargetURL:(id *)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationProxy getGenericTranslocationTargetURL:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationProxy.m", 1016);
  }

  return 0;
}

- (id)installProgressSync
{
  v3 = [(LSApplicationProxy *)self appState];
  v4 = [v3 isPlaceholder];

  if (v4)
  {
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    v6 = [(LSBundleProxy *)self bundleIdentifier];
    v7 = [v5 installProgressForBundleID:v6 makeSynchronous:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_stringLocalizerForTable:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  record = self->_record;
  v5 = a3;
  v6 = [(LSBundleRecord *)record platform];
  v7 = [(LSBundleRecord *)self->_record SDKVersion];
  _LSVersionNumberMakeWithString(v15, v7);
  DYLDVersion = _LSVersionNumberGetDYLDVersion(v15);

  v9 = [_LSStringLocalizer useLegacyLocalizationListForPlatform:v6 sdkVersion:DYLDVersion];
  v10 = [_LSStringLocalizer alloc];
  v11 = [(LSBundleProxy *)self bundleURL];
  v12 = [(_LSStringLocalizer *)v10 initWithBundleURL:v11 stringsFile:v5 legacyLocalizationList:v9];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v3 = self->_record;
  if (!v3)
  {
    if (forwardingTargetForSelector__once != -1)
    {
      [LSApplicationProxy forwardingTargetForSelector:];
    }

    v3 = forwardingTargetForSelector__invalidRecord;
  }

  return v3;
}

void __50__LSApplicationProxy_forwardingTargetForSelector___block_invoke()
{
  v0 = [(LSRecord *)[LSApplicationRecord alloc] _initInvalid];
  v1 = forwardingTargetForSelector__invalidRecord;
  forwardingTargetForSelector__invalidRecord = v0;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v5.receiver = self;
  v5.super_class = LSApplicationProxy;
  if ([(LSApplicationProxy *)&v5 respondsToSelector:?])
  {
    return 1;
  }

  else
  {
    return [LSApplicationRecord instancesRespondToSelector:a3];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v6.receiver = self;
  v6.super_class = LSApplicationProxy;
  v4 = [(LSApplicationProxy *)&v6 methodSignatureForSelector:?];
  if (!v4)
  {
    v4 = [LSApplicationRecord instanceMethodSignatureForSelector:a3];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = LSApplicationProxy;
  v4 = a3;
  [(LSBundleProxy *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_record forKey:{@"record", v5.receiver, v5.super_class}];
}

- (LSApplicationProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LSApplicationProxy;
  v5 = [(LSBundleProxy *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"record"];
    record = v5->_record;
    v5->_record = v6;
  }

  return v5;
}

- (void)detach
{
  [(LSRecord *)self->_record _resolveAllProperties];
  record = self->_record;

  [(LSRecord *)record detach];
}

- (id)localizedNameForContext:(id)a3 preferredLocalizations:(id)a4 useShortNameOnly:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    if (v5)
    {
      v10 = _LSDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [LSApplicationProxy(Localization) localizedNameForContext:v8 preferredLocalizations:v10 useShortNameOnly:?];
      }
    }

    record = self->_record;
    if (v9)
    {
      [(LSApplicationRecord *)record localizedNameWithContext:v8 preferredLocalizations:v9];
    }

    else
    {
      [(LSApplicationRecord *)record localizedNameWithContext:v8];
    }
    v14 = ;
  }

  else
  {
    v12 = self->_record;
    if (v5)
    {
      if (v9)
      {
        [(LSBundleRecord *)v12 localizedShortNameWithPreferredLocalizations:v9];
      }

      else
      {
        [(LSBundleRecord *)v12 localizedShortName];
      }
    }

    else if (v9)
    {
      [(LSBundleRecord *)v12 localizedNameWithPreferredLocalizations:v9];
    }

    else
    {
      [(LSBundleRecord *)v12 localizedName];
    }
    v13 = ;
    v14 = v13;
    if (![v13 length])
    {
      v15 = [(LSBundleRecord *)self->_record _fallbackLocalizedName];

      v14 = v15;
    }
  }

  return v14;
}

- (void)_initWithBundleUnit:context:bundleIdentifier:.cold.1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[LSApplicationProxy _initWithBundleUnit:context:bundleIdentifier:]"];
  [v1 handleFailureInFunction:v0 file:@"LSApplicationProxy.m" lineNumber:290 description:{@"Invalid parameter not satisfying: %@", @"bundleUnit == kCSStoreNullID || context != NULL"}];
}

- (void)handlerRankOfClaimForContentType:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"LSApplicationProxy.m" lineNumber:966 description:{@"Invalid parameter not satisfying: %@", @"typeIdentifier != nil"}];
}

@end