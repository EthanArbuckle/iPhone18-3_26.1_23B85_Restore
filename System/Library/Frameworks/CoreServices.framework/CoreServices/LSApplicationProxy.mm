@interface LSApplicationProxy
+ (id)applicationProxyForBundleType:(unint64_t)type identifier:(id)identifier isCompanion:(BOOL)companion URL:(id)l itemID:(id)d bundleUnit:(unsigned int *)unit;
+ (id)applicationProxyForCompanionIdentifier:(id)identifier;
+ (id)applicationProxyForIdentifier:(id)identifier placeholder:(BOOL)placeholder;
+ (id)applicationProxyForIdentifier:(id)identifier withContext:(LSContext *)context;
+ (id)applicationProxyForItemID:(id)d;
+ (id)applicationProxyForSystemPlaceholder:(id)placeholder;
- (BOOL)gameCenterEverEnabled;
- (BOOL)getGenericTranslocationTargetURL:(id *)l error:(id *)error;
- (BOOL)isDeviceBasedVPP;
- (BOOL)isGameCenterEnabled;
- (BOOL)isInstalled;
- (BOOL)isPlaceholder;
- (BOOL)isPurchasedReDownload;
- (BOOL)isRestricted;
- (BOOL)isWhitelisted;
- (BOOL)respondsToSelector:(SEL)selector;
- (LSApplicationProxy)initWithCoder:(id)coder;
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
- (id)_initWithContext:(LSContext *)context bundleUnit:(unsigned int)unit applicationRecord:(id)record bundleID:(id)d resolveAndDetach:(BOOL)detach;
- (id)_stringLocalizerForTable:(id)table;
- (id)bundleType;
- (id)description;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)handlerRankOfClaimForContentType:(id)type;
- (id)installProgressSync;
- (id)localizedNameForContext:(id)context preferredLocalizations:(id)localizations useShortNameOnly:(BOOL)only;
- (id)methodSignatureForSelector:(SEL)selector;
- (int64_t)deviceManagementPolicy;
- (unint64_t)installType;
- (void)detach;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSApplicationProxy

- (_LSApplicationState)appState
{
  applicationState = [(LSApplicationRecord *)self->_record applicationState];
  v4 = applicationState;
  if (applicationState)
  {
    v5 = applicationState;
  }

  else
  {
    v6 = [_LSApplicationState alloc];
    bundleIdentifier = [(LSBundleProxy *)self bundleIdentifier];
    v5 = [(_LSApplicationState *)v6 initWithBundleIdentifier:bundleIdentifier stateFlags:0 ratingRank:0 installType:0];
  }

  return v5;
}

- (id)bundleType
{
  typeForInstallMachinery = [(LSApplicationRecord *)self->_record typeForInstallMachinery];
  if (!typeForInstallMachinery)
  {
    if ([(LSApplicationProxy *)self isInstalled])
    {
      typeForInstallMachinery = @"User";
    }

    else
    {
      typeForInstallMachinery = 0;
    }
  }

  return typeForInstallMachinery;
}

- (NSArray)plugInKitPlugins
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  plugInKitPlugins = selfCopy->_plugInKitPlugins;
  if (!plugInKitPlugins)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __38__LSApplicationProxy_plugInKitPlugins__block_invoke;
    v13 = &unk_1E6A18F50;
    v14 = selfCopy;
    v5 = v4;
    v15 = v5;
    __LSRECORD_IS_CONSTRUCTING_A_COMPATIBILITY_OBJECT__(&v10);
    v6 = [v5 copy];
    v7 = selfCopy->_plugInKitPlugins;
    selfCopy->_plugInKitPlugins = v6;

    plugInKitPlugins = selfCopy->_plugInKitPlugins;
  }

  v8 = plugInKitPlugins;
  objc_sync_exit(selfCopy);

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
  userActivityTypes = [(LSApplicationRecord *)self->_record userActivityTypes];
  allObjects = [userActivityTypes allObjects];

  return allObjects;
}

- (NSString)genre
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  genre = [iTunesMetadata genre];

  return genre;
}

- (NSNumber)genreID
{
  v2 = MEMORY[0x1E696AD98];
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "genreIdentifier")}];

  return v4;
}

- (NSArray)subgenres
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  subgenres = [iTunesMetadata subgenres];

  return subgenres;
}

- (int64_t)deviceManagementPolicy
{
  if (DeviceManagementLibrary_frameworkLibrary || (result = dlopen("/System/Library/PrivateFrameworks/DeviceManagement.framework/DeviceManagement", 2), (DeviceManagementLibrary_frameworkLibrary = result) != 0))
  {
    bundleIdentifier = [(LSBundleProxy *)self bundleIdentifier];
    v6 = _LSGetDMFPolicy(bundleIdentifier, v5);

    return v6;
  }

  return result;
}

- (BOOL)isPlaceholder
{
  appState = [(LSApplicationProxy *)self appState];
  isPlaceholder = [appState isPlaceholder];

  return isPlaceholder;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = LSApplicationProxy;
  v4 = [(LSApplicationProxy *)&v11 description];
  bundleIdentifier = [(LSBundleProxy *)self bundleIdentifier];
  bundleURL = [(LSBundleProxy *)self bundleURL];
  appState = [(LSApplicationProxy *)self appState];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[LSApplicationProxy installType](self, "installType")}];
  v9 = [v3 stringWithFormat:@"%@ %@ %@ <%@:%@>", v4, bundleIdentifier, bundleURL, appState, v8];

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

+ (id)applicationProxyForIdentifier:(id)identifier withContext:(LSContext *)context
{
  identifierCopy = identifier;
  if (context)
  {
    v7 = _LSFindBundleWithInfo(context, 0, identifierCopy, 0, 0, 0, 0);
  }

  else
  {
    v7 = 0;
  }

  v8 = [[self alloc] _initWithBundleUnit:v7 context:context bundleIdentifier:identifierCopy];

  return v8;
}

+ (id)applicationProxyForBundleType:(unint64_t)type identifier:(id)identifier isCompanion:(BOOL)companion URL:(id)l itemID:(id)d bundleUnit:(unsigned int *)unit
{
  companionCopy = companion;
  identifierCopy = identifier;
  lCopy = l;
  dCopy = d;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__1;
  v40 = __Block_byref_object_dispose__1;
  v41 = 0;
  if (!identifierCopy || companionCopy || ([self canInstantiateFromDatabase] & 1) != 0)
  {
    v34 = 0;
    if (_LSContextInit(&v34))
    {
      LODWORD(v17) = 0;
    }

    else
    {
      if (dCopy)
      {
        unsignedLongLongValue = [dCopy unsignedLongLongValue];
      }

      else
      {
        unsignedLongLongValue = 0;
      }

      v17 = _LSFindBundleWithInfo(&v34, type, identifierCopy, companionCopy, lCopy, unsignedLongLongValue, 0);
      v26 = [self alloc];
      if (companionCopy)
      {
        v27 = 0;
      }

      else
      {
        v27 = identifierCopy;
      }

      v28 = [v26 _initWithBundleUnit:v17 context:&v34 bundleIdentifier:v27];
      v29 = v37[5];
      v37[5] = v28;

      _LSContextDestroy(&v34);
    }
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v21 = [identifierCopy isEqual:bundleIdentifier];

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
      v24 = [_LSApplicationProxyForIdentifierQuery queryWithIdentifier:identifierCopy];
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
    v30 = [self applicationProxyForIdentifier:identifierCopy withContext:0];
    v31 = v37[5];
    v37[5] = v30;
  }

  if (unit)
  {
    *unit = v17;
  }

  v32 = v37[5];
  _Block_object_dispose(&v36, 8);

  return v32;
}

+ (id)applicationProxyForIdentifier:(id)identifier placeholder:(BOOL)placeholder
{
  if (placeholder)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  return [self applicationProxyForBundleType:v5 identifier:identifier isCompanion:0 URL:0 itemID:0 bundleUnit:0];
}

+ (id)applicationProxyForCompanionIdentifier:(id)identifier
{
  v5 = 0;
  v3 = [self applicationProxyForBundleType:0 identifier:identifier isCompanion:1 URL:0 itemID:0 bundleUnit:&v5];
  if (v3 && !v5)
  {

    v3 = 0;
  }

  return v3;
}

+ (id)applicationProxyForSystemPlaceholder:(id)placeholder
{
  v12 = *MEMORY[0x1E69E9840];
  placeholderCopy = placeholder;
  v9 = 0;
  v5 = [self applicationProxyForBundleType:7 identifier:placeholderCopy isCompanion:0 URL:0 itemID:0 bundleUnit:&v9];
  if (v5 && !v9)
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = placeholderCopy;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "No system placeholder found with identifier %@", buf, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)applicationProxyForItemID:(id)d
{
  v5 = 0;
  v3 = [self applicationProxyForBundleType:1 identifier:0 isCompanion:0 URL:0 itemID:d bundleUnit:&v5];
  if (v3 && !v5)
  {

    v3 = 0;
  }

  return v3;
}

- (id)_initWithContext:(LSContext *)context bundleUnit:(unsigned int)unit applicationRecord:(id)record bundleID:(id)d resolveAndDetach:(BOOL)detach
{
  detachCopy = detach;
  v54 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  dCopy = d;
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
  if (recordCopy)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __94__LSApplicationProxy__initWithContext_bundleUnit_applicationRecord_bundleID_resolveAndDetach___block_invoke;
    v41[3] = &unk_1E6A18F28;
    v41[4] = &v46;
    v41[5] = &v42;
    [recordCopy _performBlockWithContext:v41];
  }

  _iconFileNames = [recordCopy _iconFileNames];
  v10 = objc_autoreleasePoolPush();
  infoDictionary = [recordCopy infoDictionary];
  v12 = [infoDictionary objectForKey:@"CFBundleIcons" ofClass:objc_opt_class()];

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
  if ([recordCopy isPlaceholder])
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  bundleIdentifier = [recordCopy bundleIdentifier];
  v16 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v17 = bundleIdentifier;
  }

  else
  {
    v17 = dCopy;
  }

  bundleContainerURL = [recordCopy bundleContainerURL];
  _dataContainerURLFromDatabase = [recordCopy _dataContainerURLFromDatabase];
  v20 = [recordCopy URL];
  exactBundleVersion = [recordCopy exactBundleVersion];
  v40.receiver = self;
  v40.super_class = LSApplicationProxy;
  v22 = [(LSBundleProxy *)&v40 _initWithBundleUnit:v32 context:v13 + 6 bundleType:v14 bundleID:v17 localizedName:0 bundleContainerURL:bundleContainerURL dataContainerURL:_dataContainerURLFromDatabase resourcesDirectoryURL:v20 iconsDictionary:v33 iconFileNames:_iconFileNames version:exactBundleVersion];

  if (v22)
  {
    if (detachCopy && _LSDatabaseContextGetDetachProxyObjects(v23))
    {
      [recordCopy _resolveAllProperties];
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      claimRecords = [recordCopy claimRecords];
      v25 = [claimRecords countByEnumeratingWithState:&v36 objects:v53 count:16];
      if (v25)
      {
        v26 = *v37;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v37 != v26)
            {
              objc_enumerationMutation(claimRecords);
            }

            [*(*(&v36 + 1) + 8 * i) _resolveAllProperties];
          }

          v25 = [claimRecords countByEnumeratingWithState:&v36 objects:v53 count:16];
        }

        while (v25);
      }

      [recordCopy detach];
    }

    objc_storeStrong(v22 + 20, record);
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  v28 = *MEMORY[0x1E69E9840];
  return v22;
}

- (NSNumber)itemID
{
  v2 = MEMORY[0x1E696AD98];
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "storeItemIdentifier")}];

  return v4;
}

- (NSString)vendorName
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  artistName = [iTunesMetadata artistName];

  return artistName;
}

- (NSString)itemName
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  itemName = [iTunesMetadata itemName];

  return itemName;
}

- (NSString)storeCohortMetadata
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  storeCohort = [iTunesMetadata storeCohort];

  return storeCohort;
}

- (NSProgress)installProgress
{
  appState = [(LSApplicationProxy *)self appState];
  isPlaceholder = [appState isPlaceholder];

  if (isPlaceholder)
  {
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    bundleIdentifier = [(LSBundleProxy *)self bundleIdentifier];
    v7 = [v5 installProgressForBundleID:bundleIdentifier makeSynchronous:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSNumber)staticDiskUsage
{
  diskUsage = [(LSApplicationProxy *)self diskUsage];
  staticUsage = [diskUsage staticUsage];

  return staticUsage;
}

- (NSNumber)dynamicDiskUsage
{
  diskUsage = [(LSApplicationProxy *)self diskUsage];
  dynamicUsage = [diskUsage dynamicUsage];

  diskUsage2 = [(LSApplicationProxy *)self diskUsage];
  onDemandResourcesUsage = [diskUsage2 onDemandResourcesUsage];

  if (dynamicUsage && onDemandResourcesUsage)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(onDemandResourcesUsage, "unsignedLongLongValue") + objc_msgSend(dynamicUsage, "unsignedLongLongValue")}];
  }

  else
  {
    if (dynamicUsage)
    {
      v8 = dynamicUsage;
    }

    else
    {
      v8 = onDemandResourcesUsage;
    }

    v7 = v8;
  }

  v9 = v7;

  return v9;
}

- (NSNumber)ODRDiskUsage
{
  diskUsage = [(LSApplicationProxy *)self diskUsage];
  onDemandResourcesUsage = [diskUsage onDemandResourcesUsage];

  return onDemandResourcesUsage;
}

- (BOOL)isInstalled
{
  appState = [(LSApplicationProxy *)self appState];
  isInstalled = [appState isInstalled];

  return isInstalled;
}

- (BOOL)isRestricted
{
  appState = [(LSApplicationProxy *)self appState];
  isRestricted = [appState isRestricted];

  return isRestricted;
}

- (NSString)applicationDSID
{
  purchaserDSID = [(LSApplicationProxy *)self purchaserDSID];
  stringValue = [purchaserDSID stringValue];

  return stringValue;
}

- (NSNumber)purchaserDSID
{
  v2 = MEMORY[0x1E696AD98];
  applicationDSID = [(LSApplicationRecord *)self->_record applicationDSID];

  return [v2 numberWithUnsignedLongLong:applicationDSID];
}

- (NSNumber)downloaderDSID
{
  v2 = MEMORY[0x1E696AD98];
  applicationDownloaderDSID = [(LSApplicationRecord *)self->_record applicationDownloaderDSID];

  return [v2 numberWithUnsignedLongLong:applicationDownloaderDSID];
}

- (NSNumber)familyID
{
  v2 = MEMORY[0x1E696AD98];
  applicationFamilyID = [(LSApplicationRecord *)self->_record applicationFamilyID];

  return [v2 numberWithUnsignedLongLong:applicationFamilyID];
}

- (NSArray)requiredDeviceCapabilities
{
  requiredDeviceCapabilities = [(LSApplicationRecord *)self->_record requiredDeviceCapabilities];
  if (requiredDeviceCapabilities)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(requiredDeviceCapabilities, "count")}];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__LSApplicationProxy_requiredDeviceCapabilities__block_invoke;
    v7[3] = &unk_1E6A18F78;
    v8 = v3;
    v4 = v3;
    [requiredDeviceCapabilities enumerateKeysAndObjectsUsingBlock:v7];
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
  applicationIdentifier = [(LSBundleRecord *)self->_record applicationIdentifier];
  v3 = applicationIdentifier;
  if (applicationIdentifier)
  {
    _LSSplitApplicationIdentifier(applicationIdentifier, &v7, 0);
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
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "storeFront")}];

  return v4;
}

- (NSNumber)externalVersionIdentifier
{
  v2 = MEMORY[0x1E696AD98];
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "versionIdentifier")}];

  return v4;
}

- (NSNumber)betaExternalVersionIdentifier
{
  v2 = MEMORY[0x1E696AD98];
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "betaVersionIdentifier")}];

  return v4;
}

- (NSNumber)ratingRank
{
  v2 = MEMORY[0x1E696AD98];
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "ratingRank")}];

  return v4;
}

- (NSString)ratingLabel
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  ratingLabel = [iTunesMetadata ratingLabel];

  return ratingLabel;
}

- (NSString)sourceAppIdentifier
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  sourceApp = [iTunesMetadata sourceApp];

  return sourceApp;
}

- (NSString)applicationVariant
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  variantID = [iTunesMetadata variantID];

  return variantID;
}

- (BOOL)isWhitelisted
{
  v3 = +[LSApplicationRestrictionsManager sharedInstance];
  bundleIdentifier = [(LSBundleProxy *)self bundleIdentifier];
  LOBYTE(self) = [(LSApplicationRestrictionsManager *)v3 isApplicationRestricted:bundleIdentifier checkFlags:[(LSApplicationRecord *)self->_record _rawBundleFlags]];

  return self ^ 1;
}

- (BOOL)isDeviceBasedVPP
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  isDeviceBasedVPP = [iTunesMetadata isDeviceBasedVPP];

  return isDeviceBasedVPP;
}

- (BOOL)isPurchasedReDownload
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  isPurchasedRedownload = [iTunesMetadata isPurchasedRedownload];

  return isPurchasedRedownload;
}

- (BOOL)isGameCenterEnabled
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  isGameCenterEnabled = [iTunesMetadata isGameCenterEnabled];

  return isGameCenterEnabled;
}

- (BOOL)gameCenterEverEnabled
{
  iTunesMetadata = [(LSApplicationRecord *)self->_record iTunesMetadata];
  wasGameCenterEverEnabled = [iTunesMetadata wasGameCenterEverEnabled];

  return wasGameCenterEverEnabled;
}

- (NSNumber)installFailureReason
{
  v2 = MEMORY[0x1E696AD98];
  placeholderFailureReason = [(LSApplicationRecord *)self->_record placeholderFailureReason];

  return [v2 numberWithUnsignedInteger:placeholderFailureReason];
}

- (NSSet)claimedDocumentContentTypes
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  claimRecords = [(LSBundleRecord *)self->_record claimRecords];
  v5 = [claimRecords countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(claimRecords);
        }

        typeIdentifiers = [*(*(&v12 + 1) + 8 * i) typeIdentifiers];
        [v3 addObjectsFromArray:typeIdentifiers];
      }

      v6 = [claimRecords countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  claimRecords = [(LSBundleRecord *)self->_record claimRecords];
  v5 = [claimRecords countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(claimRecords);
        }

        uRLSchemes = [*(*(&v12 + 1) + 8 * i) URLSchemes];
        [v3 addObjectsFromArray:uRLSchemes];
      }

      v6 = [claimRecords countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)handlerRankOfClaimForContentType:(id)type
{
  v34 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if (!typeCopy)
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
        typeIdentifiers = [v11 typeIdentifiers];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v13 = typeIdentifiers;
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

              if (![*(*(&v24 + 1) + 8 * j) caseInsensitiveCompare:typeCopy])
              {
                handlerRank = [v11 handlerRank];
                v19 = _LSNumericHandlerRankFromHandlerRankString(handlerRank);

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
  platform = [(LSBundleRecord *)self->_record platform];
  if (platform)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:platform];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)getGenericTranslocationTargetURL:(id *)l error:(id *)error
{
  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationProxy getGenericTranslocationTargetURL:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationProxy.m", 1016);
  }

  return 0;
}

- (id)installProgressSync
{
  appState = [(LSApplicationProxy *)self appState];
  isPlaceholder = [appState isPlaceholder];

  if (isPlaceholder)
  {
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    bundleIdentifier = [(LSBundleProxy *)self bundleIdentifier];
    v7 = [v5 installProgressForBundleID:bundleIdentifier makeSynchronous:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_stringLocalizerForTable:(id)table
{
  v16 = *MEMORY[0x1E69E9840];
  record = self->_record;
  tableCopy = table;
  platform = [(LSBundleRecord *)record platform];
  sDKVersion = [(LSBundleRecord *)self->_record SDKVersion];
  _LSVersionNumberMakeWithString(v15, sDKVersion);
  DYLDVersion = _LSVersionNumberGetDYLDVersion(v15);

  v9 = [_LSStringLocalizer useLegacyLocalizationListForPlatform:platform sdkVersion:DYLDVersion];
  v10 = [_LSStringLocalizer alloc];
  bundleURL = [(LSBundleProxy *)self bundleURL];
  v12 = [(_LSStringLocalizer *)v10 initWithBundleURL:bundleURL stringsFile:tableCopy legacyLocalizationList:v9];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)forwardingTargetForSelector:(SEL)selector
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

- (BOOL)respondsToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = LSApplicationProxy;
  if ([(LSApplicationProxy *)&v5 respondsToSelector:?])
  {
    return 1;
  }

  else
  {
    return [LSApplicationRecord instancesRespondToSelector:selector];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v6.receiver = self;
  v6.super_class = LSApplicationProxy;
  v4 = [(LSApplicationProxy *)&v6 methodSignatureForSelector:?];
  if (!v4)
  {
    v4 = [LSApplicationRecord instanceMethodSignatureForSelector:selector];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = LSApplicationProxy;
  coderCopy = coder;
  [(LSBundleProxy *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_record forKey:{@"record", v5.receiver, v5.super_class}];
}

- (LSApplicationProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = LSApplicationProxy;
  v5 = [(LSBundleProxy *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"record"];
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

- (id)localizedNameForContext:(id)context preferredLocalizations:(id)localizations useShortNameOnly:(BOOL)only
{
  onlyCopy = only;
  contextCopy = context;
  localizationsCopy = localizations;
  if (contextCopy)
  {
    if (onlyCopy)
    {
      v10 = _LSDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [LSApplicationProxy(Localization) localizedNameForContext:contextCopy preferredLocalizations:v10 useShortNameOnly:?];
      }
    }

    record = self->_record;
    if (localizationsCopy)
    {
      [(LSApplicationRecord *)record localizedNameWithContext:contextCopy preferredLocalizations:localizationsCopy];
    }

    else
    {
      [(LSApplicationRecord *)record localizedNameWithContext:contextCopy];
    }
    v14 = ;
  }

  else
  {
    v12 = self->_record;
    if (onlyCopy)
    {
      if (localizationsCopy)
      {
        [(LSBundleRecord *)v12 localizedShortNameWithPreferredLocalizations:localizationsCopy];
      }

      else
      {
        [(LSBundleRecord *)v12 localizedShortName];
      }
    }

    else if (localizationsCopy)
    {
      [(LSBundleRecord *)v12 localizedNameWithPreferredLocalizations:localizationsCopy];
    }

    else
    {
      [(LSBundleRecord *)v12 localizedName];
    }
    v13 = ;
    v14 = v13;
    if (![v13 length])
    {
      _fallbackLocalizedName = [(LSBundleRecord *)self->_record _fallbackLocalizedName];

      v14 = _fallbackLocalizedName;
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