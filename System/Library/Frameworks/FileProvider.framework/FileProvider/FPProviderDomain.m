@interface FPProviderDomain
+ (BOOL)hasProviderDomainAccess;
+ (FPProviderDomain)providerDomainWithID:(id)a3 cachePolicy:(unint64_t)a4 completionHandler:(id)a5;
+ (FPProviderDomain)providerDomainWithID:(id)a3 cachePolicy:(unint64_t)a4 error:(id *)a5;
+ (id)__providerDomainForItemBuggyNullability:(id)a3 error:(id *)a4;
+ (id)_generateDomainIDFromDSID:(id)a3;
+ (id)beginMonitoringProviderDomainChangesWithHandler:(id)a3;
+ (id)cachedProviderDomainWithID:(id)a3 cachePolicy:(unint64_t)a4 error:(id *)a5;
+ (id)mainICloudDriveDomainID;
+ (id)projectedFPFSMainICloudDriveDomainID;
+ (id)providerDomainForItem:(id)a3 cachePolicy:(unint64_t)a4 error:(id *)a5;
+ (id)providerDomainForItem:(id)a3 error:(id *)a4;
+ (id)providerDomainForURL:(id)a3 error:(id *)a4;
+ (id)providerDomainsWithError:(id *)a3;
+ (id)rootURLForProviderDomainID:(id)a3 cachePolicy:(unint64_t)a4 error:(id *)a5;
+ (void)_t_discardCache;
+ (void)_t_forceReadCacheFromDisk;
+ (void)accumulatedSizeOfItemsInDomain:(id)a3 completion:(id)a4;
+ (void)accumulatedSizeOfPinnedItemsInDomain:(id)a3 completion:(id)a4;
+ (void)endMonitoringProviderDomainChanges:(id)a3;
+ (void)fetchProviderDomainForItem:(id)a3 cachePolicy:(unint64_t)a4 completionHandler:(id)a5;
+ (void)fetchProviderDomainWithID:(id)a3 completionHandler:(id)a4;
+ (void)removeDomainAndPreserveDataWithID:(id)a3 mode:(unint64_t)a4 completionHandler:(id)a5;
+ (void)removeDomainWithID:(id)a3 mode:(unint64_t)a4 completionHandler:(id)a5;
- (BOOL)isDataSeparatedDomain;
- (BOOL)isDefaultDomain;
- (BOOL)isEnterpriseDomain;
- (BOOL)isEqual:(id)a3;
- (BOOL)isHidden;
- (BOOL)isMainiCloudDriveDomain;
- (BOOL)usesDSCopyEngine;
- (FPProviderDomain)init;
- (FPProviderDomain)initWithCoder:(id)a3;
- (FPProviderDomain)initWithProviderID:(id)a3 domain:(id)a4;
- (NSString)domainDisplayName;
- (NSString)domainFullDisplayName;
- (NSString)localizedDisconnectionBannerText;
- (NSString)personaIdentifier;
- (NSString)providerDisplayName;
- (NSString)spotlightMountPoint;
- (id)description;
- (id)storageURL;
- (void)domainFullDisplayName;
- (void)domainStateWithCompletionHandler:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)reconnectAndReimportDomainWithCompletionHandler:(id)a3;
@end

@implementation FPProviderDomain

- (NSString)spotlightMountPoint
{
  if ([(NSString *)self->_providerID isEqualToString:@"com.apple.filesystems.UserFS.FileProvider"])
  {
    v3 = [(NSFileProviderDomain *)self->_domain identifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)description
{
  v86 = *MEMORY[0x1E69E9840];
  v3 = [(FPProviderDomain *)self testingModes];
  v4 = [(NSFileProviderDomain *)self->_domain backingStoreIdentity];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [(NSFileProviderDomain *)self->_domain backingStoreIdentity];
    v80 = [v5 initWithData:v6 encoding:4];
  }

  else
  {
    v80 = 0;
  }

  if (self->_errorGenerationCount)
  {
    v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@" errorGenCount:%lld", self->_errorGenerationCount];
  }

  else
  {
    v79 = &stru_1F1F94B20;
  }

  v7 = objc_opt_new();
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v8 = self->_storageURLs;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v81 objects:v85 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v82;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v82 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v81 + 1) + 8 * i);
        if ([v7 length])
        {
          [v7 appendString:{@", "}];
        }

        v14 = [v13 fp_shortDescription];
        [v7 appendString:v14];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v81 objects:v85 count:16];
    }

    while (v10);
  }

  v15 = MEMORY[0x1E696AEC0];
  v16 = objc_opt_class();
  v17 = [(NSString *)self->_identifier fp_obfuscatedProviderDomainID];
  v18 = [(NSString *)self->_providerDisplayName fp_obfuscatedFilename];
  v19 = [(NSArray *)self->_storageURLs count];
  if (self->_enabled)
  {
    if (self->_needsAuthentication)
    {
      v20 = "needAuth";
    }

    else
    {
      v20 = "enabled";
    }
  }

  else
  {
    v20 = "disabled";
  }

  v73 = v20;
  v74 = v19;
  v21 = self->_disconnectionState - 1;
  v77 = v15;
  v78 = v17;
  v75 = v16;
  v76 = v18;
  if (v21 > 8)
  {
    v22 = ",unknown";
  }

  else
  {
    v22 = *(&off_1E793C540 + v21);
  }

  v72 = v22;
  if (self->_owningApplicationIsHidden)
  {
    v23 = ",appHidden";
  }

  else
  {
    v23 = "";
  }

  if (self->_hiddenByProvider)
  {
    v24 = ",providerHidden";
  }

  else
  {
    v24 = "";
  }

  v70 = v24;
  v71 = v23;
  if (self->_hiddenByUser)
  {
    v25 = ",userHidden";
  }

  else
  {
    v25 = "";
  }

  v69 = v25;
  if (self->_backgroundActivityIsPaused)
  {
    v26 = ",backgroundPaused";
  }

  else
  {
    v26 = "";
  }

  if (self->_storageURLsAreInTransientState)
  {
    v27 = ",changing";
  }

  else
  {
    v27 = "";
  }

  v67 = v26;
  v68 = v27;
  if (v3)
  {
    v28 = ",test:alwaysEnabled";
  }

  else
  {
    v28 = "";
  }

  v29 = ",test:interactive";
  if ((v3 & 2) == 0)
  {
    v29 = "";
  }

  v65 = v29;
  v66 = v28;
  if (self->_supportsEnumeration)
  {
    v30 = "enum";
  }

  else
  {
    v30 = "";
  }

  if (self->_useFPFS)
  {
    v31 = ",fpfs";
  }

  else
  {
    v31 = "";
  }

  v63 = v31;
  v64 = v30;
  if (self->_canDisable)
  {
    v32 = ",disable";
  }

  else
  {
    v32 = "";
  }

  if (self->_ejectable)
  {
    v33 = ",eject";
  }

  else
  {
    v33 = "";
  }

  v61 = v33;
  v62 = v32;
  if (self->_usesUniqueItemIdentifiersAcrossDevices)
  {
    v34 = ",uniqueID";
  }

  else
  {
    v34 = "";
  }

  if (self->_supportsPickingFolders)
  {
    v35 = ",pickFolder";
  }

  else
  {
    v35 = "";
  }

  v59 = v35;
  v60 = v34;
  if (self->_readOnly)
  {
    v36 = ",RO";
  }

  else
  {
    v36 = "";
  }

  v58 = v36;
  if ([(NSFileProviderDomain *)self->_domain isErasable])
  {
    v37 = ",erasable";
  }

  else
  {
    v37 = "";
  }

  if (self->_isAvailableSystemWide)
  {
    v38 = ",systemWide";
  }

  else
  {
    v38 = "";
  }

  v56 = v38;
  v57 = v37;
  if (self->_supportedSearchFilters)
  {
    v39 = ",searchFilt";
  }

  else
  {
    v39 = "";
  }

  if (self->_allowsUserControlledEviction)
  {
    v40 = ",userEvict";
  }

  else
  {
    v40 = "";
  }

  v54 = v40;
  v55 = v39;
  if (self->_allowsSystemDeleteAlerts)
  {
    v41 = "";
  }

  else
  {
    v41 = ",noDeleteAlert";
  }

  v53 = v41;
  if (self->_allowsContextualMenuDownloadEntry)
  {
    v42 = ",downloadAllow";
  }

  else
  {
    v42 = "";
  }

  if (self->_supportsSyncingTrash)
  {
    v43 = ",supportsSyncingTrash";
  }

  else
  {
    v43 = "";
  }

  if (self->_supportsSearch)
  {
    v44 = ",searchLegacy";
  }

  else
  {
    v44 = "";
  }

  if (self->_supportsSearchOnServer)
  {
    v45 = ",searchOnServer";
  }

  else
  {
    v45 = "";
  }

  if (self->_supportsRemoteVersions)
  {
    v46 = ",remoteVersions";
  }

  else
  {
    v46 = "";
  }

  if (self->_appliesChangesAtomically)
  {
    v47 = ",atomic";
  }

  else
  {
    v47 = "";
  }

  v48 = FPKnownFoldersDescription(@" supportedKF:", self->_supportedKnownFolders);
  v49 = FPKnownFoldersDescription(@" replicatedKF:", [(NSFileProviderDomain *)self->_domain replicatedKnownFolders]);
  v50 = [v77 stringWithFormat:@"<%@:%p id:%@ name:%@ urls(%d%s):%@ db:%@%@ state:%s%s%s%s%s%s%s%s features:%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%@%@>", v75, self, v78, v76, v74, v68, v7, v80, v79, v73, v67, v69, v70, v71, v72, v66, v65, v64, v63, v62, v61, v60, v59, v58, v57, v56, v55, v54, v53, v42, v43, v44, v45, v46, v47, v48, v49];

  v51 = *MEMORY[0x1E69E9840];

  return v50;
}

- (BOOL)isHidden
{
  if ([(FPProviderDomain *)self isHiddenByProvider]|| [(FPProviderDomain *)self isHiddenByUser])
  {
    return 1;
  }

  return [(FPProviderDomain *)self owningApplicationIsHidden];
}

- (NSString)domainFullDisplayName
{
  v3 = [(FPProviderDomain *)self providerDisplayName];
  v4 = [(FPProviderDomain *)self domainDisplayName];
  if (!v3)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(FPProviderDomain *)self domainFullDisplayName];
    }
  }

  if ([v3 length])
  {
    if ([v4 length])
    {
      if (v3)
      {
        if (!self->_shouldHideDomainDisplayName)
        {
          v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v3, v4];
          goto LABEL_15;
        }

        goto LABEL_14;
      }

LABEL_13:
      v6 = v4;
      goto LABEL_15;
    }
  }

  else
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(FPProviderDomain *)self domainFullDisplayName];
    }

    if ([v4 length])
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  v6 = v3;
LABEL_15:
  v8 = v6;

  return v8;
}

- (NSString)providerDisplayName
{
  if (self->_shouldHideExtensionName)
  {
    v2 = [(NSFileProviderDomain *)self->_domain displayName];
  }

  else
  {
    v2 = self->_providerDisplayName;
  }

  return v2;
}

- (NSString)domainDisplayName
{
  if (self->_shouldHideDomainDisplayName || self->_shouldHideExtensionName)
  {
    v2 = 0;
  }

  else
  {
    v3 = [(NSFileProviderDomain *)self->_domain displayName];
    if ([v3 length])
    {
      v2 = v3;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (NSString)personaIdentifier
{
  v2 = [(FPProviderDomain *)self domain];
  v3 = [v2 personaIdentifier];

  return v3;
}

- (BOOL)isDataSeparatedDomain
{
  v2 = [(FPProviderDomain *)self domain];
  v3 = [v2 isDataSeparatedDomain];

  return v3;
}

+ (id)mainICloudDriveDomainID
{
  v3 = [MEMORY[0x1E695DFF8] fp_lmdURL];
  v4 = [v3 fp_fpfsProviderDomainID:0];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [a1 _generateDomainIDFromDSID:v3];
  }

  v7 = v6;

  return v7;
}

- (BOOL)isEnterpriseDomain
{
  v2 = [(FPProviderDomain *)self domain];
  v3 = [v2 isEnterpriseDomain];

  return v3;
}

- (BOOL)isDefaultDomain
{
  v2 = [(NSFileProviderDomain *)self->_domain identifier];
  v3 = [v2 isEqualToString:@"NSFileProviderDomainDefaultIdentifier"];

  return v3;
}

+ (BOOL)hasProviderDomainAccess
{
  if (hasProviderDomainAccess_onceToken != -1)
  {
    +[FPProviderDomain hasProviderDomainAccess];
  }

  return hasProviderDomainAccess_hasEntitlements;
}

void __43__FPProviderDomain_hasProviderDomainAccess__block_invoke()
{
  v8[3] = *MEMORY[0x1E69E9840];
  Default = CFAllocatorGetDefault();
  v1 = SecTaskCreateFromSelf(Default);
  if (v1)
  {
    v2 = v1;
    v8[0] = @"com.apple.fileprovider.acl-read";
    v8[1] = @"com.apple.fileprovider.acl-write";
    v8[2] = @"com.apple.fileprovider.enumerate";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
    error = 0;
    v4 = SecTaskCopyValuesForEntitlements(v2, v3, &error);
    CFRelease(v2);
    if (v4)
    {
      if ([(__CFDictionary *)v4 count])
      {
        hasProviderDomainAccess_hasEntitlements = 1;
      }
    }

    else if (error)
    {
      v5 = fp_current_or_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __43__FPProviderDomain_hasProviderDomainAccess__block_invoke_cold_1(v2, &error, v5);
      }

      CFRelease(error);
    }
  }

  else
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __43__FPProviderDomain_hasProviderDomainAccess__block_invoke_cold_2(v3);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)usesDSCopyEngine
{
  if ([(FPProviderDomain *)self isUsingFPFS])
  {
    return 1;
  }

  v4 = [(FPProviderDomain *)self providerID];
  if ([v4 isEqualToString:@"com.apple.FileProvider.LocalStorage"])
  {
    v3 = 1;
  }

  else
  {
    v5 = [(FPProviderDomain *)self providerID];
    if ([v5 isEqualToString:@"com.apple.filesystems.UserFS.FileProvider"])
    {
      v3 = 1;
    }

    else
    {
      v6 = [(FPProviderDomain *)self providerID];
      if ([v6 isEqualToString:@"com.apple.SMBClientProvider.FileProvider"])
      {
        v3 = 1;
      }

      else
      {
        v7 = [(FPProviderDomain *)self providerID];
        if ([v7 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"])
        {
          v3 = 1;
        }

        else
        {
          v8 = [(FPProviderDomain *)self providerID];
          v3 = [v8 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
        }
      }
    }
  }

  return v3;
}

- (id)storageURL
{
  v2 = [(FPProviderDomain *)self storageURLs];
  v3 = [v2 firstObject];

  return v3;
}

- (FPProviderDomain)init
{
  v3.receiver = self;
  v3.super_class = FPProviderDomain;
  return [(FPProviderDomain *)&v3 init];
}

+ (id)beginMonitoringProviderDomainChangesWithHandler:(id)a3
{
  v3 = a3;
  v4 = +[FPProviderDomainChangesReceiver sharedChangesReceiver];
  v5 = [v4 addChangesHandler:v3];

  return v5;
}

+ (void)endMonitoringProviderDomainChanges:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    +[FPProviderDomain endMonitoringProviderDomainChanges:];
  }

  v3 = +[FPProviderDomainChangesReceiver sharedChangesReceiver];
  [v3 removeChangesHandlerToken:v4];
}

+ (void)_t_discardCache
{
  v2 = +[FPProviderDomainChangesReceiver sharedChangesReceiver];
  [v2 _t_discardCache];
}

+ (void)_t_forceReadCacheFromDisk
{
  v2 = +[FPProviderDomainChangesReceiver sharedChangesReceiver];
  [v2 _t_forceReadCacheFromDisk];
}

- (FPProviderDomain)initWithProviderID:(id)a3 domain:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [FPProviderDomain initWithProviderID:domain:];
  }

  v17.receiver = self;
  v17.super_class = FPProviderDomain;
  v9 = [(FPProviderDomain *)&v17 init];
  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [v8 identifier];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = @"NSFileProviderDomainDefaultIdentifier";
    }

    v14 = [v10 fp_providerDomainIDFromProviderID:v7 domainIdentifier:v13];
    identifier = v9->_identifier;
    v9->_identifier = v14;

    objc_storeStrong(&v9->_domain, a4);
    objc_storeStrong(&v9->_providerID, a3);
    v9->_hiddenByUser = [v8 isHiddenByUser];
    v9->_hiddenByProvider = [v8 isHidden];
    if (v8)
    {
      v9->_supportsSyncingTrash = [v8 supportsSyncingTrash];
      v9->_supportsSearch = [v8 supportsSearch];
      v9->_supportsSearchOnServer = [v8 supportsStringSearchRequest];
      v9->_supportsRemoteVersions = [v8 supportsRemoteVersions];
    }

    else
    {
      v9->_supportsSyncingTrash = 1;
      *&v9->_supportsSearch = 0;
      v9->_supportsSearchOnServer = 0;
    }
  }

  return v9;
}

- (FPProviderDomain)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = FPProviderDomain;
  v5 = [(FPProviderDomain *)&v41 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_providerID"];
    providerID = v5->_providerID;
    v5->_providerID = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_domain"];
    domain = v5->_domain;
    v5->_domain = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_providerDisplayName"];
    providerDisplayName = v5->_providerDisplayName;
    v5->_providerDisplayName = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_extensionBundleURL"];
    extensionBundleURL = v5->_extensionBundleURL;
    v5->_extensionBundleURL = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"_supportedFileTypes"];
    supportedFileTypes = v5->_supportedFileTypes;
    v5->_supportedFileTypes = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_topLevelBundleIdentifier"];
    topLevelBundleIdentifier = v5->_topLevelBundleIdentifier;
    v5->_topLevelBundleIdentifier = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_topLevelBundleURL"];
    topLevelBundleURL = v5->_topLevelBundleURL;
    v5->_topLevelBundleURL = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"_storageURLs"];
    storageURLs = v5->_storageURLs;
    v5->_storageURLs = v29;

    v5->_storageURLsAreInTransientState = [v4 decodeBoolForKey:@"_storageURLsAreInTransientState"];
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_version"];
    version = v5->_version;
    v5->_version = v31;

    v5->_isAvailableSystemWide = [v4 decodeBoolForKey:@"_isAvailableSystemWide"];
    v5->_supportsEnumeration = [v4 decodeBoolForKey:@"_supportsEnumeration"];
    v5->_supportsSearchOnServer = [v4 decodeBoolForKey:@"_supportsSearchOnServer"];
    v5->_enabled = [v4 decodeBoolForKey:@"_enabled"];
    v5->_canDisable = [v4 decodeBoolForKey:@"_canDisable"];
    v5->_shouldHideExtensionName = [v4 decodeBoolForKey:@"_shouldHideExtensionName"];
    v5->_shouldHideDomainDisplayName = [v4 decodeBoolForKey:@"_shouldHideDomainDisplayName"];
    v5->_ejectable = [v4 decodeBoolForKey:@"_ejectable"];
    v5->_readOnly = [v4 decodeBoolForKey:@"_readOnly"];
    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
    v36 = [v4 decodeObjectOfClasses:v35 forKey:@"_supportedSearchFilters"];
    supportedSearchFilters = v5->_supportedSearchFilters;
    v5->_supportedSearchFilters = v36;

    v5->_usesUniqueItemIdentifiersAcrossDevices = [v4 decodeBoolForKey:@"_usesUniqueItemIdentifiersAcrossDevices"];
    v5->_hiddenByProvider = [v4 decodeBoolForKey:@"_hiddenByProvider"];
    v5->_hiddenByUser = [v4 decodeBoolForKey:@"_hiddenByUser"];
    v5->_supportsPickingFolders = [v4 decodeBoolForKey:@"_supportsPickingFolders"];
    v5->_needsAuthentication = [v4 decodeBoolForKey:@"_needsAuthentication"];
    v38 = [v4 fp_safeDecodeNSDictionaryForKey:@"_domainUserInfo"];
    domainUserInfo = v5->_domainUserInfo;
    v5->_domainUserInfo = v38;

    v5->_allowsUserControlledEviction = [v4 decodeBoolForKey:@"_allowsUserControlledEviction"];
    v5->_allowsSystemDeleteAlerts = [v4 decodeBoolForKey:@"_allowsSystemDeleteAlerts"];
    v5->_allowsContextualMenuDownloadEntry = [v4 decodeBoolForKey:@"_allowsContextualMenuDownloadEntry"];
    v5->_supportsSyncingTrash = [v4 decodeBoolForKey:@"_supportsSyncingTrash"];
    v5->_supportsSearch = [v4 decodeBoolForKey:@"_supportsSearch"];
    v5->_disconnectionState = [v4 decodeIntegerForKey:@"_disconnectionState"];
    v5->_useFPFS = [v4 decodeBoolForKey:@"_useFPFS"];
    v5->_appliesChangesAtomically = [v4 decodeBoolForKey:@"_appliesChangesAtomically"];
    v5->_backgroundActivityIsPaused = [v4 decodeBoolForKey:@"_backgroundActivityIsPaused"];
    v5->_errorGenerationCount = [v4 decodeIntegerForKey:@"_errorGenerationCount"];
    v5->_isIndexed = [v4 decodeBoolForKey:@"_isIndexed"];
    v5->_owningApplicationIsHidden = [v4 decodeBoolForKey:@"_owningApplicationIsHidden"];
    v5->_supportedKnownFolders = [v4 decodeIntegerForKey:@"_supportedKnownFolders"];
    v5->_supportsRemoteVersions = [v4 decodeBoolForKey:@"_supportsRemoteVersions"];
    v5->_isOnMainVolume = [v4 decodeBoolForKey:@"_isOnMainVolume"];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"_identifier"];
  [v5 encodeObject:self->_providerID forKey:@"_providerID"];
  [v5 encodeObject:self->_domain forKey:@"_domain"];
  [v5 encodeObject:self->_providerDisplayName forKey:@"_providerDisplayName"];
  [v5 encodeObject:self->_extensionBundleURL forKey:@"_extensionBundleURL"];
  [v5 encodeObject:self->_supportedFileTypes forKey:@"_supportedFileTypes"];
  [v5 encodeObject:self->_topLevelBundleIdentifier forKey:@"_topLevelBundleIdentifier"];
  [v5 encodeObject:self->_topLevelBundleURL forKey:@"_topLevelBundleURL"];
  [v5 encodeObject:self->_storageURLs forKey:@"_storageURLs"];
  [v5 encodeBool:self->_storageURLsAreInTransientState forKey:@"_storageURLsAreInTransientState"];
  [v5 encodeObject:self->_version forKey:@"_version"];
  [v5 encodeBool:self->_isAvailableSystemWide forKey:@"_isAvailableSystemWide"];
  [v5 encodeBool:self->_supportsEnumeration forKey:@"_supportsEnumeration"];
  [v5 encodeBool:self->_supportsSearchOnServer forKey:@"_supportsSearchOnServer"];
  [v5 encodeBool:self->_enabled forKey:@"_enabled"];
  [v5 encodeBool:self->_canDisable forKey:@"_canDisable"];
  [v5 encodeBool:self->_shouldHideExtensionName forKey:@"_shouldHideExtensionName"];
  [v5 encodeBool:self->_shouldHideDomainDisplayName forKey:@"_shouldHideDomainDisplayName"];
  [v5 encodeBool:self->_ejectable forKey:@"_ejectable"];
  [v5 encodeBool:self->_readOnly forKey:@"_readOnly"];
  [v5 encodeObject:self->_supportedSearchFilters forKey:@"_supportedSearchFilters"];
  [v5 encodeBool:self->_usesUniqueItemIdentifiersAcrossDevices forKey:@"_usesUniqueItemIdentifiersAcrossDevices"];
  [v5 encodeBool:self->_hiddenByUser forKey:@"_hiddenByUser"];
  [v5 encodeBool:self->_hiddenByProvider forKey:@"_hiddenByProvider"];
  [v5 encodeBool:self->_supportsPickingFolders forKey:@"_supportsPickingFolders"];
  [v5 encodeBool:self->_needsAuthentication forKey:@"_needsAuthentication"];
  [v5 encodeObject:self->_domainUserInfo forKey:@"_domainUserInfo"];
  [v5 encodeBool:self->_allowsUserControlledEviction forKey:@"_allowsUserControlledEviction"];
  [v5 encodeBool:self->_allowsSystemDeleteAlerts forKey:@"_allowsSystemDeleteAlerts"];
  [v5 encodeBool:self->_allowsContextualMenuDownloadEntry forKey:@"_allowsContextualMenuDownloadEntry"];
  [v5 encodeBool:self->_supportsSyncingTrash forKey:@"_supportsSyncingTrash"];
  [v5 encodeBool:self->_supportsSearch forKey:@"_supportsSearch"];
  [v5 encodeInteger:self->_disconnectionState forKey:@"_disconnectionState"];
  [v5 encodeBool:self->_useFPFS forKey:@"_useFPFS"];
  [v5 encodeBool:self->_appliesChangesAtomically forKey:@"_appliesChangesAtomically"];
  [v5 encodeBool:self->_backgroundActivityIsPaused forKey:@"_backgroundActivityIsPaused"];
  [v5 encodeInteger:self->_errorGenerationCount forKey:@"_errorGenerationCount"];
  [v5 encodeBool:self->_isIndexed forKey:@"_isIndexed"];
  [v5 encodeBool:self->_owningApplicationIsHidden forKey:@"_owningApplicationIsHidden"];
  [v5 encodeInteger:self->_supportedKnownFolders forKey:@"_supportedKnownFolders"];
  [v5 encodeBool:self->_supportsRemoteVersions forKey:@"_supportsRemoteVersions"];
  [v5 encodeBool:self->_isOnMainVolume forKey:@"_isOnMainVolume"];
}

- (NSString)localizedDisconnectionBannerText
{
  v9 = 0;
  disconnectionState = self->_disconnectionState;
  if (disconnectionState > 5)
  {
    if (disconnectionState <= 7)
    {
      if (disconnectionState == 6)
      {
        v12 = @"DISCONNECTION_REASON_LOW_DISK_SPACE";
      }

      else
      {
        v12 = @"DISCONNECTION_REASON_INCOMPATIBLE_DB";
      }

      goto LABEL_21;
    }

    if (disconnectionState == 8)
    {
      v12 = @"DISCONNECTION_REASON_FORBIDDEN_MDM";
      goto LABEL_21;
    }

    if (disconnectionState != 9)
    {
      goto LABEL_26;
    }

    if ([(FPProviderDomain *)self isiCloudDriveProvider])
    {
      v12 = @"DISCONNECTION_EXTERNAL_REJECTED_ICLOUDDRIVE";
      goto LABEL_21;
    }

    v13 = [(FPProviderDomain *)self providerDisplayName];
    FPLoc(@"DISCONNECTION_EXTERNAL_REJECTED_%@", v23, v24, v25, v26, v27, v28, v29, v13);
  }

  else
  {
    if (disconnectionState <= 3)
    {
      if (disconnectionState == 2)
      {
        v12 = @"DISCONNECTION_REASON_ERROR";
        goto LABEL_21;
      }

      if (disconnectionState != 3)
      {
        goto LABEL_26;
      }

      v11 = [(NSFileProviderDomain *)self->_domain _disconnectionReason];

      if (!v11)
      {
        v12 = @"DISCONNECTION_REASON_TEMPORARY";
LABEL_21:
        v22 = FPLoc(v12, a2, v2, v3, v4, v5, v6, v7, v38);
        goto LABEL_22;
      }

LABEL_19:
      v22 = [(NSFileProviderDomain *)self->_domain _disconnectionReason];
LABEL_22:
      v9 = v22;
      goto LABEL_26;
    }

    if (disconnectionState == 4)
    {
      v21 = [(NSFileProviderDomain *)self->_domain _disconnectionReason];

      if (v21)
      {
        goto LABEL_19;
      }

      v13 = [(FPProviderDomain *)self providerDisplayName];
      FPLoc(@"DISCONNECTION_REASON_PERMANENT_%@", v30, v31, v32, v33, v34, v35, v36, v13);
    }

    else
    {
      v13 = [(FPProviderDomain *)self providerDisplayName];
      FPLoc(@"DISCONNECTION_REASON_ORPHANED_%@", v14, v15, v16, v17, v18, v19, v20, v13);
    }
  }
  v9 = ;

LABEL_26:

  return v9;
}

void __93__FPProviderDomain_selectNewProviderDomain_knownFolders_skipReleasePrompt_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E696A250];
  v9 = @"NSFileProviderErrorDomain";
  v10 = v3;
  v11 = *MEMORY[0x1E696A798];
  v4 = MEMORY[0x1E695DEC8];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v9 count:3];
  v7 = [v5 fp_unwrappedErrorForDomains:{v6, v9, v10, v11, v12}];

  (*(v2 + 16))(v2, v7);
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    v6 = [v4 identifier];
    v7 = [(NSString *)identifier isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isMainiCloudDriveDomain
{
  if ([(FPProviderDomain *)self isiCloudDriveProvider])
  {
    v3 = [(FPProviderDomain *)self domain];
    v4 = [v3 isEnterpriseDomain] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)providerDomainForURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__14;
  v21 = __Block_byref_object_dispose__14;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__14;
  v15 = __Block_byref_object_dispose__14;
  v16 = 0;
  if ([v5 fp_matchesFileProviderHeuristics:geteuid()])
  {
    FPPrecheckTCCReadAccess(v5);
    v6 = +[FPDaemonConnection synchronousSharedConnectionProxy];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__FPProviderDomain_providerDomainForURL_error___block_invoke;
    v10[3] = &unk_1E793C480;
    v10[4] = &v17;
    v10[5] = &v11;
    [v6 providerDomainForURL:v5 completionHandler:v10];

    v7 = v12[5];
    if (a4 && !v7)
    {
      *a4 = v18[5];
      v7 = v12[5];
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

void __47__FPProviderDomain_providerDomainForURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (void)fetchProviderDomainWithID:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[FPProviderDomain fetchProviderDomainWithID:completionHandler:];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  +[FPProviderDomain fetchProviderDomainWithID:completionHandler:];
LABEL_3:
  [a1 providerDomainWithID:v7 cachePolicy:0 completionHandler:v6];
}

+ (id)cachedProviderDomainWithID:(id)a3 cachePolicy:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = +[FPProviderDomainChangesReceiver sharedChangesReceiverIfAvailable];
  v9 = [v8 cachedProviderDomainsByID];

  if (a4 != 3 || v9)
  {
    v11 = [v9 objectForKeyedSubscript:v7];
    v10 = v11;
    if (v11)
    {
      v18 = v11;
    }

    else if (a4 == 3 || a4 == 2 && v9)
    {
      *a5 = FPProviderNotFoundError(v7, 1uLL, v12, v13, v14, v15, v16, v17);
    }
  }

  else
  {
    v10 = 0;
    *a5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"NSFileProviderInternalErrorDomain" code:19 userInfo:0];
  }

  return v10;
}

+ (FPProviderDomain)providerDomainWithID:(id)a3 cachePolicy:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!a4)
  {
    goto LABEL_7;
  }

  v14 = 0;
  v10 = [a1 cachedProviderDomainWithID:v8 cachePolicy:a4 error:&v14];
  v11 = v14;
  v12 = v11;
  if (!v10)
  {
    if (v11)
    {
      v9[2](v9, 0, v11);
      goto LABEL_6;
    }

LABEL_7:
    v12 = +[FPDaemonConnection sharedConnectionProxy];
    [v12 providerDomainForIdentifier:v8 completionHandler:v9];
    goto LABEL_8;
  }

  (v9)[2](v9, v10, 0);
LABEL_6:

LABEL_8:
  return result;
}

+ (FPProviderDomain)providerDomainWithID:(id)a3 cachePolicy:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (a4)
  {
    v30 = 0;
    v9 = [a1 cachedProviderDomainWithID:v8 cachePolicy:a4 error:&v30];
    v10 = v30;
    v11 = v10;
    if (v9)
    {
      v12 = v9;
LABEL_4:

      goto LABEL_12;
    }

    if (v10)
    {
      if (a5)
      {
        v13 = v10;
        *a5 = v11;
      }

      goto LABEL_4;
    }
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__14;
  v28 = __Block_byref_object_dispose__14;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__14;
  v22 = __Block_byref_object_dispose__14;
  v23 = 0;
  v14 = +[FPDaemonConnection synchronousSharedConnectionProxy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__FPProviderDomain_providerDomainWithID_cachePolicy_error___block_invoke;
  v17[3] = &unk_1E793C480;
  v17[4] = &v18;
  v17[5] = &v24;
  [v14 providerDomainForIdentifier:v8 completionHandler:v17];

  v15 = v19[5];
  if (a5 && !v15)
  {
    *a5 = v25[5];
    v15 = v19[5];
  }

  v9 = v15;
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
LABEL_12:

  return v9;
}

void __59__FPProviderDomain_providerDomainWithID_cachePolicy_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (id)providerDomainsWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14;
  v19 = __Block_byref_object_dispose__14;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = 0;
  v4 = +[FPDaemonConnection synchronousSharedConnectionProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__FPProviderDomain_providerDomainsWithError___block_invoke;
  v8[3] = &unk_1E793C4A8;
  v8[4] = &v15;
  v8[5] = &v9;
  [v4 providerDomainsCompletionHandler:v8];

  v5 = v10[5];
  if (a3 && !v5)
  {
    *a3 = v16[5];
    v5 = v10[5];
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __45__FPProviderDomain_providerDomainsWithError___block_invoke(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v10 = obj;
  v6 = a2;
  v7 = [v6 allValues];

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

+ (id)providerDomainForItem:(id)a3 error:(id *)a4
{
  v6 = [a3 providerDomainID];
  v7 = [a1 providerDomainWithID:v6 cachePolicy:0 error:a4];

  return v7;
}

+ (id)providerDomainForItem:(id)a3 cachePolicy:(unint64_t)a4 error:(id *)a5
{
  v8 = [a3 providerDomainID];
  v9 = [a1 providerDomainWithID:v8 cachePolicy:a4 error:a5];

  return v9;
}

+ (id)__providerDomainForItemBuggyNullability:(id)a3 error:(id *)a4
{
  v6 = [a3 providerDomainID];
  v7 = [a1 providerDomainWithID:v6 cachePolicy:0 error:a4];

  return v7;
}

+ (void)fetchProviderDomainForItem:(id)a3 cachePolicy:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [a3 providerDomainID];
  [a1 providerDomainWithID:v9 cachePolicy:a4 completionHandler:v8];
}

+ (void)removeDomainAndPreserveDataWithID:(id)a3 mode:(unint64_t)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = +[FPDaemonConnection sharedConnectionProxy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__FPProviderDomain_removeDomainAndPreserveDataWithID_mode_completionHandler___block_invoke;
  v11[3] = &unk_1E793C4D0;
  v12 = v7;
  v10 = v7;
  [v9 removeDomainAndPreserveDataWithID:v8 mode:a4 completionHandler:v11];
}

void __77__FPProviderDomain_removeDomainAndPreserveDataWithID_mode_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 url];
  (*(v4 + 16))(v4, v6, v5);
}

+ (void)removeDomainWithID:(id)a3 mode:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__FPProviderDomain_removeDomainWithID_mode_completionHandler___block_invoke;
  v10[3] = &unk_1E793A3D0;
  v11 = v8;
  v9 = v8;
  [a1 removeDomainAndPreserveDataWithID:a3 mode:a4 completionHandler:v10];
}

- (void)domainStateWithCompletionHandler:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];

  v32 = 0;
  v7 = [v6 userPersonaUniqueString];
  v8 = [(FPProviderDomain *)self personaIdentifier];
  v9 = v8;
  if (v7 == v8)
  {

LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  v10 = [(FPProviderDomain *)self personaIdentifier];
  v11 = [v7 isEqualToString:v10];

  if ((v11 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v31 = 0;
  v12 = [v6 copyCurrentPersonaContextWithError:&v31];
  v13 = v31;
  v14 = v32;
  v32 = v12;

  if (v13)
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(FPProviderDomain *)v13 domainStateWithCompletionHandler:v15];
    }
  }

  v16 = [(FPProviderDomain *)self personaIdentifier];
  v17 = [v6 generateAndRestorePersonaContextWithPersonaUniqueString:v16];

  if (v17)
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [(FPProviderDomain *)self personaIdentifier];
      [(FPProviderDomain *)v19 domainStateWithCompletionHandler:v17, buf, v18];
    }
  }

LABEL_14:
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __53__FPProviderDomain_domainStateWithCompletionHandler___block_invoke;
  v29[3] = &unk_1E7939EA8;
  v20 = v4;
  v30 = v20;
  v21 = [FPFrameworkOverridesIterator newIteratorWithNotFoundHandler:v29];
  v22 = [(FPProviderDomain *)self identifier];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __53__FPProviderDomain_domainStateWithCompletionHandler___block_invoke_2;
  v26[3] = &unk_1E793C4F8;
  v23 = v21;
  v27 = v23;
  v24 = v20;
  v28 = v24;
  [v23 FPStateForDomainWithID:v22 completionHandler:v26];

  _FPRestorePersona(&v32);
  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __53__FPProviderDomain_domainStateWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __53__FPProviderDomain_domainStateWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (a2 || v5)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, a2, v7);
    }

    [*(a1 + 32) finish];
  }

  else
  {
    [*(a1 + 32) callNextOverrides];
  }
}

- (void)reconnectAndReimportDomainWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(NSFileProviderDomain *)self->_domain copy];
  [v5 setDisconnected:0];
  [v5 _setDisconnectionReason:0];
  [v5 _setDisconnectionOptions:0];
  v6 = +[FPDaemonConnection sharedConnectionProxy];
  v7 = [(FPProviderDomain *)self providerID];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__FPProviderDomain_reconnectAndReimportDomainWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E793C520;
  v10 = v4;
  v8 = v4;
  [v6 addDomain:v5 forProviderIdentifier:v7 byImportingDirectoryAtURL:0 nonWrappedURL:0 userAllowedDBDrop:1 knownFolders:MEMORY[0x1E695E0F0] completionHandler:v9];
}

+ (id)_generateDomainIDFromDSID:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(FPProviderDomain *)v3 _generateDomainIDFromDSID:v4];
  }

  v5 = open([v3 fileSystemRepresentation], 1048836);
  if (v5 < 0)
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FPProviderDomain _generateDomainIDFromDSID:v13];
    }

    goto LABEL_13;
  }

  v6 = v5;
  v7 = fgetxattr(v5, "com.apple.ubd.prsid", 0, 0, 0, 0);
  if (v7 < 1 || (v8 = v7, (v9 = malloc_type_calloc(1uLL, v7 + 1, 0x17C98551uLL)) == 0))
  {
    close(v6);
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v10 = v9;
  if (fpfs_fgetxattr_checked(v6, "com.apple.ubd.prsid", v9, v8) < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    if ([v11 hasSuffix:@".CloudDocs"])
    {
      v12 = [v11 substringToIndex:{objc_msgSend(v11, "length") - objc_msgSend(@".CloudDocs", "length")}];
    }

    else
    {
      v12 = 0;
    }
  }

  free(v10);
  close(v6);
  if (!v12)
  {
    goto LABEL_13;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = [MEMORY[0x1E6959A48] defaultStore];
  v19 = [v18 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E69597F8]];
  [v18 accountsWithAccountType:v19];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = v32 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v21)
  {
    v27 = v19;
    v28 = v17;
    v22 = *v30;
    while (2)
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v29 + 1) + 8 * i);
        v25 = [v24 aa_personID];
        v26 = [v25 isEqualToString:v12];

        if (v26)
        {
          v21 = [v24 identifier];
          goto LABEL_31;
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }

LABEL_31:
    v19 = v27;
    v17 = v28;
  }

  objc_autoreleasePoolPop(v17);
  if (v21)
  {
    v14 = [MEMORY[0x1E696AEC0] fp_providerDomainIDFromProviderID:@"com.apple.CloudDocs.iCloudDriveFileProvider" domainIdentifier:v21];
  }

  else
  {
    v14 = 0;
  }

LABEL_14:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)projectedFPFSMainICloudDriveDomainID
{
  v3 = [MEMORY[0x1E695DFF8] fp_lmdURL];
  v4 = [v3 fp_fpfsProviderDomainID:0];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [a1 _generateDomainIDFromDSID:v3];
  }

  return v5;
}

+ (id)rootURLForProviderDomainID:(id)a3 cachePolicy:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [v7 fp_toProviderID];
  if ([v8 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"])
  {
    v9 = [FPProviderDomain providerDomainWithID:v7 cachePolicy:3 error:0];
    if (v9)
    {
      goto LABEL_6;
    }

    v10 = [MEMORY[0x1E695DFF8] fp_lmdURL];
    v11 = [v10 fp_fpfsProviderDomainID:0];
    v12 = [v11 isEqualToString:v7];

    if (v12)
    {
      goto LABEL_9;
    }
  }

  v9 = [FPProviderDomain providerDomainWithID:v7 cachePolicy:a4 error:a5];
  if (!v9)
  {
    v10 = 0;
    goto LABEL_8;
  }

LABEL_6:
  v13 = [v9 storageURLs];
  v10 = [v13 firstObject];

LABEL_8:
LABEL_9:

  return v10;
}

+ (void)accumulatedSizeOfPinnedItemsInDomain:(id)a3 completion:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (FPPinningIsEnabledForDomainID(v7))
  {
    v6 = +[FPDaemonConnection sharedConnectionProxy];
    [v6 accumulatedSizeOfPinnedItemsInDomain:v7 completion:v5];
  }

  else
  {
    v6 = FPNotSupportedError();
    v5[2](v5, 0, v6);
  }
}

+ (void)accumulatedSizeOfItemsInDomain:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[FPDaemonConnection sharedConnectionProxy];
  [v7 accumulatedSizeOfItemsInDomain:v6 completion:v5];
}

+ (void)endMonitoringProviderDomainChanges:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"monitoringContext" object:? file:? lineNumber:? description:?];
}

- (void)initWithProviderID:domain:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"providerID" object:? file:? lineNumber:? description:?];
}

- (void)domainFullDisplayName
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v4 = 138543362;
  v5 = v2;
  _os_log_fault_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_FAULT, "[CRIT] providerDisplayName was empty in domainFullDisplayName, providerId: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)fetchProviderDomainWithID:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"providerDomainID" object:? file:? lineNumber:? description:?];
}

+ (void)fetchProviderDomainWithID:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"completionHandler" object:? file:? lineNumber:? description:?];
}

void __43__FPProviderDomain_hasProviderDomainAccess__block_invoke_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v5 = 138543618;
  v6 = a1;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "[ERROR] Cannot fetch entitlements from SecureTask %{public}@ error: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)domainStateWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] won't restore persona: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)domainStateWithCompletionHandler:(uint8_t *)buf .cold.2(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
}

+ (void)_generateDomainIDFromDSID:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a1 path];
  v4 = [v3 fp_prettyPath];
  v6 = 138412290;
  v7 = v4;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Generating domainID for %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_generateDomainIDFromDSID:(NSObject *)a1 .cold.2(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_1AAAE1000, a1, OS_LOG_TYPE_ERROR, "[ERROR] Failed opening URL: %d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

@end