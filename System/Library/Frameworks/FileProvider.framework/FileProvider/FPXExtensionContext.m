@interface FPXExtensionContext
+ (Class)principalClass;
- (BOOL)_inlineSymlinkTarget:(id)a3 url:(id *)a4 error:(id *)a5;
- (FPXExtensionContext)init;
- (NSString)description;
- (id)_createItemBasedOnTemplate:(id)a3 fields:(unint64_t)a4 contents:(id)a5 options:(unint64_t)a6 request:(id)a7 bounce:(BOOL)a8 bounceNumber:(id)a9 completionHandler:(id)a10;
- (id)_proxyWithCancellationHandler:(id)a3 forClientOperation:(id)a4;
- (id)additionalServiceSourcesForItemID:(id)a3 domain:(id)a4 extension:(id)a5;
- (id)alternateContentsURLWrapperForItemID:(id)a3;
- (id)createFPTempDirectoryAppropriateForURL:(id)a3 error:(id *)a4;
- (id)createFPTempDirectoryWithError:(id *)a3;
- (id)createItemBasedOnTemplate:(id)a3 fields:(unint64_t)a4 contents:(id)a5 options:(unint64_t)a6 request:(id)a7 bounce:(BOOL)a8 completionHandler:(id)a9;
- (id)createTempThumbnailURLForVersion:(id)a3 appropriateForURL:(id)a4 itemIdentifier:(id)a5 isFromData:(BOOL)a6 error:(id *)a7;
- (id)createUserInteractionSuppressingWithDomainIdentifier:(id)a3 withPurpose:(id)a4;
- (id)deleteItemWithID:(id)a3 baseVersion:(id)a4 options:(unint64_t)a5 request:(id)a6 completionHandler:(id)a7;
- (id)disconnectDomainID:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (id)domainContext;
- (id)domainContextForIdentifier:(id)a3;
- (id)domainContextForItemID:(id)a3;
- (id)domainContextForItemIDs:(id)a3;
- (id)fetchContentsForItemWithID:(id)a3 version:(id)a4 request:(id)a5 estimatedItemSize:(int64_t)a6 isSymlink:(BOOL)a7 extent:(id)a8 alignment:(unint64_t)a9 options:(unint64_t)a10 completionHandler:(id)a11;
- (id)fetchContentsForItemWithID:(id)a3 version:(id)a4 usingExistingContentsAtURL:(id)a5 existingVersion:(id)a6 request:(id)a7 estimatedItemSize:(int64_t)a8 isSymlink:(BOOL)a9 completionHandler:(id)a10;
- (id)fetchPublishingURLForItemID:(id)a3 completionHandler:(id)a4;
- (id)instanceForItemID:(id)a3;
- (id)instanceWithPrivateSelector:(SEL)a3;
- (id)modifyItem:(id)a3 baseVersion:(id)a4 changedFields:(unint64_t)a5 contents:(id)a6 options:(unint64_t)a7 request:(id)a8 completionHandler:(id)a9;
- (id)performActionWithIdentifier:(id)a3 onItemsWithIdentifiers:(id)a4 domainIdentifier:(id)a5 completionHandler:(id)a6;
- (id)v2Instance;
- (void)URLForItemID:(id)a3 creatingPlaceholderIfMissing:(BOOL)a4 ignoreAlternateContentsURL:(BOOL)a5 completionHandler:(id)a6;
- (void)_deleteIndexInDomainContexts:(id)a3 completionHandler:(id)a4;
- (void)_fetchHierarchyForItemID:(id)a3 into:(id)a4 maxDepth:(unint64_t)a5 completionHandler:(id)a6;
- (void)_freeSlotHeldByItem:(id)a3 request:(id)a4 bounceIndex:(unint64_t)a5 completionHandler:(id)a6;
- (void)_indexOutOfBandUpdatedItems:(id)a3 deletedItems:(id)a4 indexReason:(int64_t)a5 completionHandler:(id)a6;
- (void)_persistedDocumentURLForURL:(id)a3 itemID:(id)a4 extension:(id)a5 creatingPlaceholderIfMissing:(BOOL)a6 completionHandler:(id)a7;
- (void)_setupItemForTrashing:(id)a3 usesFPFS:(BOOL)a4 completionHandler:(id)a5;
- (void)_singleItemChange:(id)a3 changedFields:(unint64_t)a4 bounce:(BOOL)a5 bounceIndex:(unint64_t)a6 request:(id)a7 completionHandler:(id)a8;
- (void)_test_callFileProviderManagerAPIs:(id)a3;
- (void)_waitForExtensionStabilizationWithCompletionHandler:(id)a3;
- (void)addListenerDelegate:(id)a3;
- (void)applyFieldChangesToItem:(id)a3 baseVersion:(id)a4 changedFields:(unint64_t)a5 contents:(id)a6 lastKnownVendorItem:(id)a7 extensionInstance:(id)a8 completionHandler:(id)a9;
- (void)applyItemChange:(id)a3 baseVersion:(id)a4 contents:(id)a5 completionHandler:(id)a6;
- (void)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4 completionHandler:(id)a5;
- (void)beginRequestWithDomain:(id)a3 alternateContentsDictionary:(id)a4 domainServicer:(id)a5 providerDomain:(id)a6 domainVersion:(id)a7 completionHandler:(id)a8;
- (void)bulkEvictItemsWithItemIDs:(id)a3 completionHandler:(id)a4;
- (void)bulkItemChanges:(id)a3 changedFields:(unint64_t)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)deleteItemsWithIDs:(id)a3 baseVersions:(id)a4 options:(unint64_t)a5 reply:(id)a6;
- (void)deleteSearchableItemsWithSpotlightDomainIdentifiers:(id)a3 domainIdentifier:(id)a4 indexReason:(int64_t)a5 completionHandler:(id)a6;
- (void)didChangeItemID:(id)a3 completionHandler:(id)a4;
- (void)didUpdateAlternateContentsDocumentForDocumentWithURL:(id)a3 completionHandler:(id)a4;
- (void)domainContext;
- (void)dropDomainWithCompletionHandler:(id)a3;
- (void)dropIndexForDomain:(id)a3 dropReason:(unint64_t)a4 completionHandler:(id)a5;
- (void)dumpIndexStateForDomain:(id)a3 toFileHandler:(id)a4 completionHandler:(id)a5;
- (void)dumpInternalStateToTermDumper:(id)a3 domainIdentifier:(id)a4 completionHandler:(id)a5;
- (void)enumerateSearchResultForRequest:(id)a3 completionHandler:(id)a4;
- (void)enumeratorWasInvalidated:(id)a3;
- (void)evictItemAtURL:(id)a3 completionHandler:(id)a4;
- (void)fetchAlternateContentsURLWrapperForURL:(id)a3 completionHandler:(id)a4;
- (void)fetchAndStartEnumeratingWithSettings:(id)a3 observer:(id)a4 request:(id)a5 completionHandler:(id)a6;
- (void)fetchCustomPushTopicsWithCompletionHandler:(id)a3;
- (void)fetchDefaultContainerForBundleIdentifier:(id)a3 defaultName:(id)a4 inDomainIdentifier:(id)a5 lookupOnly:(BOOL)a6 reply:(id)a7;
- (void)fetchHierarchyForItemID:(id)a3 recursively:(BOOL)a4 ignoreAlternateContentURL:(BOOL)a5 reply:(id)a6;
- (void)fetchItemID:(id)a3 reply:(id)a4;
- (void)fetchOperationServiceEndpoint:(id)a3;
- (void)fetchServicesForItemID:(id)a3 allowRestrictedSources:(BOOL)a4 completionHandler:(id)a5;
- (void)fetchTrashIdentifiersWithCompletionHandler:(id)a3;
- (void)fetchVendorEndpoint:(id)a3;
- (void)forceUpdateBlockedProcessNamesFromDomain:(id)a3 completionHandler:(id)a4;
- (void)getKnownFolderLocations:(unint64_t)a3 completionHandler:(id)a4;
- (void)identifierForItemAtURL:(id)a3 completionHandler:(id)a4;
- (void)importDidFinishWithCompletionHandler:(id)a3;
- (void)importDocumentAtURL:(id)a3 intoFolderWithIdentifier:(id)a4 originalName:(id)a5 extensionInstance:(id)a6 reply:(id)a7;
- (void)indexOneBatchInDomain:(id)a3 completionHandler:(id)a4;
- (void)invalidate;
- (void)itemChangedAtURL:(id)a3 completionHandler:(id)a4;
- (void)itemForItemID:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (void)itemForURL:(id)a3 completionHandler:(id)a4;
- (void)listRemoteVersionsWithSettings:(id)a3 observer:(id)a4 request:(id)a5 completionHandler:(id)a6;
- (void)movingItemAtURL:(id)a3 requiresProvidingWithDestinationURL:(id)a4 completionHandler:(id)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)preflightReparentItemIDs:(id)a3 underParentID:(id)a4 reply:(id)a5;
- (void)preflightTrashItemIDs:(id)a3 completionHandler:(id)a4;
- (void)providePlaceholderAtURL:(id)a3 completionHandler:(id)a4;
- (void)removeListenerDelegate:(id)a3;
- (void)removeTrashedItemsOlderThanDate:(id)a3 domainIdentifier:(id)a4 completionHandler:(id)a5;
- (void)searchEnumeratorWasInvalidated:(id)a3;
- (void)sendBlockedProcessNamesUpdateWithCompletionHandler:(id)a3;
- (void)setAlternateContentsURL:(id)a3 forDocumentWithURL:(id)a4 completionHandler:(id)a5;
- (void)shouldConnectExternalDomainWithCompletionHandler:(id)a3;
- (void)signalEnumeratorForMaterializedItemsWithCompletionHandler:(id)a3;
- (void)signalEnumeratorForPendingItemsWithCompletionHandler:(id)a3;
- (void)signalNeedsReindexItemsWithIdentifiers:(id)a3 domainIdentifier:(id)a4 indexReason:(int64_t)a5 completionHandler:(id)a6;
- (void)spotlightIndexerDidReindexAllSearchableItems:(id)a3;
- (void)startOperation:(id)a3 toFetchThumbnailsForItemIdentifiers:(id)a4 size:(CGSize)a5 completionHandler:(id)a6;
- (void)startOperation:(id)a3 toFetchThumbnailsWithDictionary:(id)a4 size:(CGSize)a5 completionHandler:(id)a6;
- (void)startProvidingItemAtURL:(id)a3 readingOptions:(unint64_t)a4 completionHandler:(id)a5;
- (void)trashItemAtURL:(id)a3 completionHandler:(id)a4;
- (void)updateIgnoreStateOfItemWithIdentifiers:(id)a3 ignoreState:(BOOL)a4 completionHandler:(id)a5;
- (void)userCheckedSuppressionCheckboxForUserInteractionIdentifier:(id)a3 domainIdentifier:(id)a4 completionHandler:(id)a5;
- (void)userInteractionErrorsForPerformingAction:(id)a3 sourceItems:(id)a4 destinationItem:(id)a5 fpProviderDomainId:(id)a6 sourceItemKeysAllowList:(id)a7 destinationItemKeysAllowList:(id)a8 completionHandler:(id)a9;
- (void)valuesForAttributes:(id)a3 forItemID:(id)a4 completionHandler:(id)a5;
- (void)waitForStabilizationWithCompletionHandler:(id)a3;
- (void)wakeForPushWithCompletionHandler:(id)a3;
- (void)wakeForSessionIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation FPXExtensionContext

+ (Class)principalClass
{
  if (principalClass_onceToken != -1)
  {
    +[FPXExtensionContext principalClass];
  }

  v3 = principalClass_clazz;

  return v3;
}

- (FPXExtensionContext)init
{
  v19.receiver = self;
  v19.super_class = FPXExtensionContext;
  v2 = [(FPXExtensionContext *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("fpx-notif-fetching", v3);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v4;

    v6 = dispatch_workloop_create("fpx-instance");
    instanceQueue = v2->_instanceQueue;
    v2->_instanceQueue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("fpx-queue", v8);
    queue = v2->_queue;
    v2->_queue = v9;

    v11 = [MEMORY[0x1E696AAE8] mainBundle];
    v12 = [v11 bundleIdentifier];
    providerIdentifier = v2->_providerIdentifier;
    v2->_providerIdentifier = v12;

    v14 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    runningEnumerators = v2->_runningEnumerators;
    v2->_runningEnumerators = v14;

    v16 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    runningSearchEnumerators = v2->_runningSearchEnumerators;
    v2->_runningSearchEnumerators = v16;
  }

  return v2;
}

- (id)domainContext
{
  v2 = self;
  objc_sync_enter(v2);
  domainContext = v2->_domainContext;
  if (!domainContext)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [FPXExtensionContext domainContext];
    }

    exit(1);
  }

  v4 = domainContext;
  objc_sync_exit(v2);

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(FPProviderDomain *)self->_providerDomain identifier];
  v7 = [v6 fp_obfuscatedProviderDomainID];
  v8 = [v3 stringWithFormat:@"<%@:%p domain:%@>", v5, self, v7];

  return v8;
}

void __37__FPXExtensionContext_principalClass__block_invoke()
{
  v0 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
  if (!v0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FPXExtensionContext could not get the bundle record for the current process."];
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __37__FPXExtensionContext_principalClass__block_invoke_cold_1();
    }

    __assert_rtn("+[FPXExtensionContext principalClass]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProvider/extension/FPXExtensionContext.m", 161, [v5 UTF8String]);
  }

  v9 = v0;
  v1 = [v0 infoDictionary];
  v2 = objc_opt_class();
  v3 = [v1 objectForKey:@"NSExtension" ofClass:v2 valuesOfClass:objc_opt_class()];

  v4 = [v3 objectForKey:@"NSExtensionPrincipalClass"];
  principalClass_clazz = NSClassFromString(v4);
  if (!principalClass_clazz)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Extension Info.plist does not define a principal class, or class was not found (expected class name: %@)", v4];
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __37__FPXExtensionContext_principalClass__block_invoke_cold_1();
    }

    __assert_rtn("+[FPXExtensionContext principalClass]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProvider/extension/FPXExtensionContext.m", 167, [v7 UTF8String]);
  }
}

- (void)beginRequestWithDomain:(id)a3 alternateContentsDictionary:(id)a4 domainServicer:(id)a5 providerDomain:(id)a6 domainVersion:(id)a7 completionHandler:(id)a8
{
  v97 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v81 = a4;
  v82 = a5;
  v15 = a6;
  v83 = a7;
  v84 = a8;
  v16 = self;
  objc_sync_enter(v16);
  v17 = MEMORY[0x1E696AEC0];
  providerIdentifier = v16->_providerIdentifier;
  v19 = [v14 identifier];
  v20 = [v17 fp_providerDomainIDFromProviderID:providerIdentifier domainIdentifier:v19];
  v21 = [v20 fp_obfuscatedProviderDomainID];
  v22 = fpfs_create_log_for_provider([v21 UTF8String]);
  log = v16->_log;
  v16->_log = v22;

  v87 = fpfs_adopt_log(v16->_log);
  v24 = fp_current_or_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v90 = v16;
    v91 = 2080;
    v92 = "[FPXExtensionContext beginRequestWithDomain:alternateContentsDictionary:domainServicer:providerDomain:domainVersion:completionHandler:]";
    v93 = 2112;
    v94 = v15;
    v95 = 2048;
    v96 = v83;
    _os_log_debug_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@ %s %@, %ld", buf, 0x2Au);
  }

  v25 = [MEMORY[0x1E696B0B8] currentConnection];
  objc_storeWeak(&v16->_xpcConnection, v25);

  v26 = v16->_log;
  WeakRetained = objc_loadWeakRetained(&v16->_xpcConnection);
  [FPXPCLogDelegate setupWithLog:v26 forConnection:WeakRetained];

  v28 = fp_current_or_default_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = [MEMORY[0x1E696B0B8] currentConnection];
    *buf = 138412290;
    v90 = v29;
    _os_log_impl(&dword_1AAAE1000, v28, OS_LOG_TYPE_INFO, "[INFO] [helena] call to beginRequest from connection %@", buf, 0xCu);
  }

  v30 = [MEMORY[0x1E69DF068] sharedManager];
  v31 = [v30 currentPersona];
  v85 = [v31 userPersonaUniqueString];

  v32 = [v14 personaIdentifier];
  if ([v32 isEqualToString:v85])
  {
  }

  else
  {
    v33 = [v14 personaIdentifier];
    v34 = v85 == v33;

    if (!v34)
    {
      v68 = fp_current_or_default_log();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v69 = [v14 personaIdentifier];
        *buf = 138412802;
        v90 = v16;
        v91 = 2112;
        v92 = v85;
        v93 = 2112;
        v94 = v69;
        _os_log_error_impl(&dword_1AAAE1000, v68, OS_LOG_TYPE_ERROR, "[ERROR] Non matching personas for the extension %@ (%@, expect %@)", buf, 0x20u);
      }

      v70 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSFileProviderInternalErrorDomain" code:18 userInfo:MEMORY[0x1E695E0F8]];
      v88[0] = fpfs_adopt_log(v16->_log);
      v71 = fp_current_or_default_log();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        v72 = FPPopLogSectionForBlock(v84);
        *buf = 134218754;
        v90 = v72;
        v91 = 2112;
        v92 = v16;
        v93 = 2080;
        v94 = "[FPXExtensionContext beginRequestWithDomain:alternateContentsDictionary:domainServicer:providerDomain:domainVersion:completionHandler:]";
        v95 = 2112;
        v96 = v70;
        _os_log_debug_impl(&dword_1AAAE1000, v71, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      (*(v84 + 2))(v84, v70);
      __fp_pop_log(v88);

      exit(1);
    }
  }

  v35 = [FPXPCAutomaticErrorProxy alloc];
  v36 = MEMORY[0x1E696AEC0];
  v37 = [v14 identifier];
  v38 = [v36 stringWithFormat:@"domain servicer for %@ (handshake)", v37];
  v39 = [(FPXPCAutomaticErrorProxy *)v35 initWithConnection:v82 protocol:&unk_1F1FF3948 orError:0 name:v38 requestPid:0];
  domainServicer = v16->_domainServicer;
  v16->_domainServicer = v39;

  [NSFileProviderManager registerDomainServicer:v16->_domainServicer forDomain:v14];
  v41 = [v15 storageURLs];
  v42 = [v41 firstObject];

  if (v42)
  {
    v43 = [v15 storageURLs];
    v44 = [v43 firstObject];
    [NSFileProviderManager registerRootURL:v44 forDomain:v14];
  }

  v45 = +[FPXExtensionContext principalClass];
  if ([v15 isUsingFPFS])
  {
    v46 = [v15 providerID];
    if ([v46 isEqualToString:@"com.apple.FileProvider.LocalStorage"])
    {
    }

    else
    {
      v47 = [v15 providerID];
      v48 = [v47 isEqualToString:@"com.apple.FileProvider.TestingHarness.TestFileProvider"];

      if ((v48 & 1) == 0)
      {
        if (([(objc_class *)v45 conformsToProtocol:&unk_1F1FD7C00]& 1) == 0)
        {
          v78 = [v14 identifier];
          v79 = [v15 providerDisplayName];
          __FILEPROVIDER_BAD_EXTENSION__(v78, v79, v45);
        }

        goto LABEL_29;
      }
    }
  }

  if (([v15 isUsingFPFS] & 1) == 0)
  {
    v49 = [v15 identifier];
    v50 = [v49 fp_toDomainIdentifier];
    if (![v50 isEqual:@"NSFileProviderDomainDefaultIdentifier"] || !-[objc_class conformsToProtocol:](v45, "conformsToProtocol:", &unk_1F1FD7C00))
    {
LABEL_25:

      goto LABEL_26;
    }

    if (v45)
    {
      Superclass = v45;
      while (objc_opt_class() != Superclass)
      {
        if (objc_opt_class() != Superclass)
        {
          Superclass = class_getSuperclass(Superclass);
          if (Superclass)
          {
            continue;
          }
        }

        goto LABEL_22;
      }

      goto LABEL_25;
    }

LABEL_22:

    v52 = fp_current_or_default_log();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AAAE1000, v52, OS_LOG_TYPE_INFO, "[INFO] Trying to build a non-FPFS default domain for an FPFS provider", buf, 2u);
    }

    v45 = FPXFakeDefaultDomainExtension;
LABEL_29:
    v55 = [[v45 alloc] initWithDomain:v14];
    v56 = 0;
    goto LABEL_30;
  }

LABEL_26:
  if (([(objc_class *)v45 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v76 = [v14 identifier];
    v77 = [v15 domainDisplayName];
    __FILEPROVIDER_V2_EXTENSION_WITHOUT_IMPL(v76, v77, v45);
  }

  v53 = [FPXV2ExtensionWrapper alloc];
  [(FPXV2ExtensionWrapper *)v53 setExtensionClass:v45];
  v54 = v53;
  v55 = [(FPXV2ExtensionWrapper *)v54 initWithDomain:v14];
  v56 = [(FPXV2ExtensionWrapper *)v54 extension];

LABEL_30:
  if (![(FPXV2ExtensionWrapper *)v55 conformsToProtocol:&unk_1F1FD7C00]&& ![(FPXV2ExtensionWrapper *)v55 conformsToProtocol:&unk_1F1FD7C00])
  {
    v73 = [MEMORY[0x1E696AAA8] currentHandler];
    v74 = objc_opt_class();
    v75 = NSStringFromClass(v74);
    [v73 handleFailureInMethod:a2 object:v16 file:@"FPXExtensionContext.m" lineNumber:246 description:{@"The principal class of the extension is not of type NSFileProviderReplicatedExtension: %@", v75}];
  }

  v16->_usesFPFS = [v15 isUsingFPFS];
  v57 = [[FPDocumentAlternateContents alloc] initWithAlternateContentsDictionary:v81];
  alternateContents = v16->_alternateContents;
  v16->_alternateContents = v57;

  v59 = [[FPXDomainContext alloc] initWithVendorInstance:v55 domain:v14 extensionContext:v16 providerDomain:v15 domainVersion:v83];
  domainContext = v16->_domainContext;
  v16->_domainContext = v59;

  objc_storeStrong(&v16->_providerDomain, a6);
  [v56 setExtensionContext:v16];
  v61 = fp_current_or_default_log();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    v62 = [(NSString *)v16->_providerIdentifier fp_fpIdentifier];
    [FPXExtensionContext beginRequestWithDomain:v62 alternateContentsDictionary:v88 domainServicer:v61 providerDomain:? domainVersion:? completionHandler:?];
  }

  if (v16->_usesFPFS && !v16->_userDefaults)
  {
    v63 = v16;
    objc_sync_enter(v63);
    v64 = [MEMORY[0x1E695E000] standardUserDefaults];
    userDefaults = v16->_userDefaults;
    v16->_userDefaults = v64;

    [(NSUserDefaults *)v16->_userDefaults addObserver:v63 forKeyPath:@"NSFileProviderExtensionNonMaterializingProcessNames" options:4 context:0];
    objc_sync_exit(v63);
  }

  v86 = fpfs_adopt_log(v16->_log);
  v66 = fp_current_or_default_log();
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
  {
    FPPopLogSectionForBlock(v84);
    [FPXExtensionContext beginRequestWithDomain:alternateContentsDictionary:domainServicer:providerDomain:domainVersion:completionHandler:];
  }

  (*(v84 + 2))(v84, 0);
  __fp_pop_log(&v86);

  __fp_pop_log(&v87);
  objc_sync_exit(v16);

  v67 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  self->_isBeingDeallocated = 1;
  [(FPXExtensionContext *)self invalidate];
  v3.receiver = self;
  v3.super_class = FPXExtensionContext;
  [(FPXExtensionContext *)&v3 dealloc];
}

- (void)invalidate
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_domainContext;
  domainContext = v2->_domainContext;
  v2->_domainContext = 0;

  WeakRetained = objc_loadWeakRetained(&v2->_xpcConnection);
  [WeakRetained invalidate];

  objc_sync_exit(v2);
  if (v3)
  {
    v37 = v3;
    v38 = [(FPXDomainContext *)v3 domain];
    v6 = [v38 personaIdentifier];
    v7 = [MEMORY[0x1E69DF068] sharedManager];
    v8 = [v7 currentPersona];
    v9 = [v8 userPersonaUniqueString];
    if ([v6 isEqualToString:v9])
    {
    }

    else
    {
      v10 = [MEMORY[0x1E69DF068] sharedManager];
      v11 = [v10 currentPersona];
      v12 = [v11 userPersonaUniqueString];
      v13 = [(FPXDomainContext *)v3 domain];
      v14 = [v13 personaIdentifier];

      v3 = v37;
      if (v12 != v14)
      {
        v36 = fp_current_or_default_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [(FPXExtensionContext *)v2 invalidate];
        }

        exit(1);
      }
    }
  }

  v15 = v3;
  v16 = [(FPXDomainContext *)v3 spotlightIndexer];
  [v16 invalidateAsync];

  domainServicer = v2->_domainServicer;
  v2->_domainServicer = 0;

  v18 = v2;
  objc_sync_enter(v18);
  [(NSUserDefaults *)v18->_userDefaults removeObserver:v18 forKeyPath:@"NSFileProviderExtensionNonMaterializingProcessNames"];
  userDefaults = v18->_userDefaults;
  v18->_userDefaults = 0;

  objc_sync_exit(v18);
  if (v18->_isBeingDeallocated)
  {
    v20 = [(NSHashTable *)v18->_runningEnumerators allObjects];
    runningEnumerators = v18->_runningEnumerators;
    v18->_runningEnumerators = 0;

    runningSearchEnumerators = v18->_runningSearchEnumerators;
    p_runningSearchEnumerators = &v18->_runningSearchEnumerators;
    v24 = [(NSHashTable *)runningSearchEnumerators allObjects];
    v25 = *p_runningSearchEnumerators;
    *p_runningSearchEnumerators = 0;

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v26 = v20;
    v27 = [v26 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v27)
    {
      v28 = *v46;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v46 != v28)
          {
            objc_enumerationMutation(v26);
          }

          [*(*(&v45 + 1) + 8 * i) _invalidate];
        }

        v27 = [v26 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v27);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v30 = v24;
    v31 = [v30 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v31)
    {
      v32 = *v42;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v42 != v32)
          {
            objc_enumerationMutation(v30);
          }

          [*(*(&v41 + 1) + 8 * j) _invalidateSync];
        }

        v31 = [v30 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v31);
    }

    [(FPXDomainContext *)v15 invalidate];
  }

  else
  {
    notificationQueue = v18->_notificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__FPXExtensionContext_invalidate__block_invoke;
    block[3] = &unk_1E79390B8;
    block[4] = v18;
    v40 = v3;
    dispatch_async(notificationQueue, block);
  }

  v35 = *MEMORY[0x1E69E9840];
}

void __33__FPXExtensionContext_invalidate__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) allObjects];
  v3 = [*(*(a1 + 32) + 48) allObjects];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = 0;

  v8 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__FPXExtensionContext_invalidate__block_invoke_2;
  block[3] = &unk_1E7939090;
  v12 = v2;
  v13 = v3;
  v14 = *(a1 + 40);
  v9 = v3;
  v10 = v2;
  dispatch_async_and_wait(v8, block);
}

uint64_t __33__FPXExtensionContext_invalidate__block_invoke_2(id *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v18 + 1) + 8 * v6++) _invalidate];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = a1[5];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v14 + 1) + 8 * v11++) _invalidateSync];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v9);
  }

  result = [a1[6] invalidate];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)sendBlockedProcessNamesUpdateWithCompletionHandler:(id)a3
{
  v4 = a3;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__FPXExtensionContext_sendBlockedProcessNamesUpdateWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7939128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(notificationQueue, v7);
}

void __74__FPXExtensionContext_sendBlockedProcessNamesUpdateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) arrayForKey:@"NSFileProviderExtensionNonMaterializingProcessNames"];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 fp_filter:&__block_literal_global_183];
  }

  else
  {
    v4 = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__FPXExtensionContext_sendBlockedProcessNamesUpdateWithCompletionHandler___block_invoke_3;
  v9[3] = &unk_1E7939100;
  v10 = *(a1 + 40);
  v5 = [FPDaemonConnection remoteObjectProxyWithErrorHandler:v9];
  v6 = *(*(a1 + 32) + 128);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__FPXExtensionContext_sendBlockedProcessNamesUpdateWithCompletionHandler___block_invoke_4;
  v7[3] = &unk_1E7939100;
  v8 = *(a1 + 40);
  [v5 updateBlockedProcessNamesForProvider:v6 processNames:v4 completionHandler:v7];
}

uint64_t __74__FPXExtensionContext_sendBlockedProcessNamesUpdateWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{@"NSFileProviderExtensionNonMaterializingProcessNames", a4, a5, a6}])
  {

    [(FPXExtensionContext *)self sendBlockedProcessNamesUpdateWithCompletionHandler:&__block_literal_global_187];
  }
}

- (void)forceUpdateBlockedProcessNamesFromDomain:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__FPXExtensionContext_forceUpdateBlockedProcessNamesFromDomain_completionHandler___block_invoke;
  v7[3] = &unk_1E7939170;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(FPXExtensionContext *)self sendBlockedProcessNamesUpdateWithCompletionHandler:v7];
}

void __82__FPXExtensionContext_forceUpdateBlockedProcessNamesFromDomain_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v8 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock(*(a1 + 40));
    v7 = *(a1 + 32);
    *buf = 134218754;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPXExtensionContext forceUpdateBlockedProcessNamesFromDomain:completionHandler:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(&v8);

  v5 = *MEMORY[0x1E69E9840];
}

- (id)domainContextForIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(FPXExtensionContext *)self domainContext];
  v7 = [v6 domain];
  v8 = [v7 identifier];
  v9 = [v5 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    [(FPXExtensionContext *)a2 domainContextForIdentifier:?];
  }

  return v6;
}

- (id)v2Instance
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(FPXDomainContext *)v2->_domainContext v2Instance];
  objc_sync_exit(v2);

  return v3;
}

- (id)instanceWithPrivateSelector:(SEL)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(FPXDomainContext *)v4->_domainContext instanceWithPrivateSelector:a3];
  objc_sync_exit(v4);

  return v5;
}

- (id)instanceForItemID:(id)a3
{
  v3 = [(FPXExtensionContext *)self domainContextForItemID:a3];
  v4 = [v3 vendorInstance];

  return v4;
}

- (id)domainContextForItemID:(id)a3
{
  v5 = a3;
  v6 = [v5 domainIdentifier];
  v7 = [(FPXExtensionContext *)self domainContext];
  v8 = [v7 domain];
  v9 = [v8 identifier];
  v10 = [v6 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    [(FPXExtensionContext *)v7 domainContextForItemID:a2, self, v5];
  }

  return v7;
}

- (id)domainContextForItemIDs:(id)a3
{
  v4 = [a3 firstObject];
  v5 = [(FPXExtensionContext *)self domainContextForItemID:v4];

  return v5;
}

- (void)_deleteIndexInDomainContexts:(id)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15 = a4;
  v7 = dispatch_group_create();
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy_;
  v27[4] = __Block_byref_object_dispose_;
  v28 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v8)
  {
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        dispatch_group_enter(v7);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __70__FPXExtensionContext__deleteIndexInDomainContexts_completionHandler___block_invoke;
        v20[3] = &unk_1E79391C0;
        v20[4] = self;
        v22 = v27;
        v21 = v7;
        [v11 prepareForDomainRemovalWithCompletionHandler:v20];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v8);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__FPXExtensionContext__deleteIndexInDomainContexts_completionHandler___block_invoke_3;
  block[3] = &unk_1E79391E8;
  v18 = v15;
  v19 = v27;
  v13 = v15;
  dispatch_group_notify(v7, queue, block);

  _Block_object_dispose(v27, 8);
  v14 = *MEMORY[0x1E69E9840];
}

void __70__FPXExtensionContext__deleteIndexInDomainContexts_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__FPXExtensionContext__deleteIndexInDomainContexts_completionHandler___block_invoke_2;
  block[3] = &unk_1E7939198;
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

void __70__FPXExtensionContext__deleteIndexInDomainContexts_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v2);
  }

  v3 = a1[5];

  dispatch_group_leave(v3);
}

- (void)dropDomainWithCompletionHandler:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10[0] = self->_domainContext;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__FPXExtensionContext_dropDomainWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7939170;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [(FPXExtensionContext *)self _deleteIndexInDomainContexts:v5 completionHandler:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __55__FPXExtensionContext_dropDomainWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v8 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock(*(a1 + 40));
    v7 = *(a1 + 32);
    *buf = 134218754;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPXExtensionContext dropDomainWithCompletionHandler:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(&v8);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)didChangeItemID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = fpfs_adopt_log(self->_log);
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FPXExtensionContext didChangeItemID:completionHandler:];
  }

  notificationQueue = self->_notificationQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__FPXExtensionContext_didChangeItemID_completionHandler___block_invoke;
  v12[3] = &unk_1E7939210;
  v10 = v6;
  v13 = v10;
  v14 = self;
  v11 = v7;
  v15 = v11;
  fp_dispatch_async_with_logs(notificationQueue, v12);

  __fp_pop_log(&v16);
}

void __57__FPXExtensionContext_didChangeItemID_completionHandler___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) identifier];
  v3 = [v2 isEqualToString:@"NSFileProviderWorkingSetContainerItemIdentifier"];

  if (v3)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ shouldn't be here'", @"NSFileProviderWorkingSetContainerItemIdentifier"];
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      __37__FPXExtensionContext_principalClass__block_invoke_cold_1();
    }

    v19 = v17;
    __assert_rtn("-[FPXExtensionContext didChangeItemID:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProvider/extension/FPXExtensionContext.m", 473, [v17 UTF8String]);
  }

  dispatch_assert_queue_V2(*(*(a1 + 40) + 16));
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20 = (a1 + 40);
  obj = [*(*(a1 + 40) + 40) copy];
  v4 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v24;
    while (1)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [*(a1 + 32) identifier];
        if ([v9 isEqualToString:@"NSFileProviderRootContainerItemIdentifier"])
        {
        }

        else
        {
          v10 = [v8 observedItemID];
          v11 = [v10 isEqualToItemID:*(a1 + 32)];

          if (!v11)
          {
            continue;
          }
        }

        v12 = [v8 observer];
        [v12 enumerationResultsDidChange];

        v5 = 1;
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (!v4)
      {

        if (v5)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }
    }
  }

LABEL_16:
  v13 = fp_current_or_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 32);
    *buf = 138412290;
    v28 = v14;
    _os_log_impl(&dword_1AAAE1000, v13, OS_LOG_TYPE_INFO, "[PERF] Received observation update for item identifier %@, which isn't being observed. Ignoring.", buf, 0xCu);
  }

LABEL_19:
  v22 = fpfs_adopt_log(*(*v20 + 80));
  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    FPPopLogSectionForBlock(*(a1 + 48));
    __57__FPXExtensionContext_didChangeItemID_completionHandler___block_invoke_cold_1(v20);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log(&v22);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)startProvidingItemAtURL:(id)a3 readingOptions:(unint64_t)a4 completionHandler:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v22 = fpfs_adopt_log(self->_log);
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v9 fp_shortDescription];
    *buf = 138413058;
    v24 = self;
    v25 = 2080;
    v26 = "[FPXExtensionContext startProvidingItemAtURL:readingOptions:completionHandler:]";
    v27 = 2112;
    v28 = v16;
    v29 = 2048;
    v30 = a4;
    _os_log_debug_impl(&dword_1AAAE1000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@ %s %@, 0x%lx", buf, 0x2Au);
  }

  instanceQueue = self->_instanceQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__FPXExtensionContext_startProvidingItemAtURL_readingOptions_completionHandler___block_invoke;
  v17[3] = &unk_1E7939260;
  v17[4] = self;
  v13 = v10;
  v19 = v13;
  v14 = v9;
  v18 = v14;
  v20 = a2;
  v21 = a4;
  fp_dispatch_async_with_logs(instanceQueue, v17);

  __fp_pop_log(&v22);
  v15 = *MEMORY[0x1E69E9840];
}

void __80__FPXExtensionContext_startProvidingItemAtURL_readingOptions_completionHandler___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) v2Instance];
  if (v2)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __80__FPXExtensionContext_startProvidingItemAtURL_readingOptions_completionHandler___block_invoke_cold_1(a1);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v27) = 0;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __80__FPXExtensionContext_startProvidingItemAtURL_readingOptions_completionHandler___block_invoke_198;
    v19 = &unk_1E7939238;
    v4 = *(a1 + 56);
    v23 = buf;
    v24 = v4;
    v5 = *(a1 + 40);
    v20 = *(a1 + 32);
    v21 = v5;
    v22 = *(a1 + 48);
    v6 = _Block_copy(&v16);
    v7 = objc_opt_respondsToSelector();
    v8 = *(a1 + 40);
    if (v7)
    {
      [v2 startProvidingItemAtURL:v8 readingOptions:*(a1 + 64) completionHandler:{v6, v16, v17, v18, v19, v20, v21}];
    }

    else
    {
      [v2 startProvidingItemAtURL:v8 completionHandler:{v6, v16, v17, v18, v19, v20, v21}];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v25 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = FPPopLogSectionForBlock(*(a1 + 48));
      v14 = *(a1 + 32);
      v15 = FPNotSupportedError();
      *buf = 134218754;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      *&buf[22] = 2080;
      v27 = "[FPXExtensionContext startProvidingItemAtURL:readingOptions:completionHandler:]_block_invoke";
      v28 = 2112;
      v29 = v15;
      _os_log_debug_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v10 = *(a1 + 48);
    v11 = FPNotSupportedError();
    (*(v10 + 16))(v10, v11);

    __fp_pop_log(&v25);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __80__FPXExtensionContext_startProvidingItemAtURL_readingOptions_completionHandler___block_invoke_198(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 56) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = *(a1 + 64);
    v7 = *(a1 + 32);
    v8 = NSStringFromSelector(sel_startProvidingItemAtURL_completionHandler_);
    [v5 handleFailureInMethod:v6 object:v7 file:@"FPXExtensionContext.m" lineNumber:516 description:{@"completion for %@ has been called twice!", v8}];

    v4 = *(*(a1 + 56) + 8);
  }

  *(v4 + 24) = 1;
  v9 = fp_current_or_default_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v10)
    {
      __80__FPXExtensionContext_startProvidingItemAtURL_readingOptions_completionHandler___block_invoke_198_cold_1(v3, a1);
    }

    v11 = [v3 fp_strippedError];
  }

  else
  {
    if (v10)
    {
      __80__FPXExtensionContext_startProvidingItemAtURL_readingOptions_completionHandler___block_invoke_198_cold_2(a1);
    }

    v11 = 0;
    v3 = v9;
  }

  v19 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = FPPopLogSectionForBlock(*(a1 + 48));
    v17 = *(a1 + 32);
    v18 = [v11 fp_annotatedErrorWithURL:*(a1 + 40) variant:@"Open"];
    *buf = 134218754;
    v21 = v16;
    v22 = 2112;
    v23 = v17;
    v24 = 2080;
    v25 = "[FPXExtensionContext startProvidingItemAtURL:readingOptions:completionHandler:]_block_invoke";
    v26 = 2112;
    v27 = v18;
    _os_log_debug_impl(&dword_1AAAE1000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  v13 = *(a1 + 48);
  v14 = [v11 fp_annotatedErrorWithURL:*(a1 + 40) variant:@"Open"];
  (*(v13 + 16))(v13, v14);

  __fp_pop_log(&v19);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)evictItemAtURL:(id)a3 completionHandler:(id)a4
{
  v16[6] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16[0] = fpfs_adopt_log(self->_log);
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [v6 fp_shortDescription];
    objc_claimAutoreleasedReturnValue();
    [FPXExtensionContext evictItemAtURL:completionHandler:];
  }

  instanceQueue = self->_instanceQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__FPXExtensionContext_evictItemAtURL_completionHandler___block_invoke;
  v13[3] = &unk_1E7939210;
  v13[4] = self;
  v10 = v6;
  v14 = v10;
  v11 = v7;
  v15 = v11;
  fp_dispatch_async_with_logs(instanceQueue, v13);

  __fp_pop_log(v16);
  v12 = *MEMORY[0x1E69E9840];
}

void __56__FPXExtensionContext_evictItemAtURL_completionHandler___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) domainContextForURL:*(a1 + 40)];
  v4 = [v3 instanceWithPrivateSelector:sel_evictItemWithIdentifier_completionHandler_];
  v5 = [v4 persistentIdentifierForItemAtURL:*v2];
  v6 = [NSFileProviderExtension instanceMethodForSelector:sel_evictItemWithIdentifier_completionHandler_];
  if ([v4 methodForSelector:sel_evictItemWithIdentifier_completionHandler_] == v6)
  {
    [v4 stopProvidingItemAtURL:*(a1 + 40)];
    v14 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = FPPopLogSectionForBlock(*(a1 + 48));
      v12 = *(a1 + 32);
      v13 = [v3 itemIDFromVendorItemID:{v5, v14}];
      *buf = 134219010;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2080;
      v23 = "[FPXExtensionContext evictItemAtURL:completionHandler:]_block_invoke";
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = 0;
      _os_log_debug_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v8 = *(a1 + 48);
    v9 = [v3 itemIDFromVendorItemID:v5];
    (*(v8 + 16))(v8, v9, 0);

    __fp_pop_log(&v14);
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__FPXExtensionContext_evictItemAtURL_completionHandler___block_invoke_2;
    v15[3] = &unk_1E7939288;
    v15[4] = *(a1 + 32);
    v17 = *(a1 + 48);
    v16 = v3;
    [v4 evictItemWithIdentifier:v5 completionHandler:v15];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __56__FPXExtensionContext_evictItemAtURL_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v20 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v14 = FPPopLogSectionForBlock(*(a1 + 48));
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = [v5 itemIdentifier];
    v18 = [v15 itemIDFromVendorItemID:v17];
    v19 = [*(a1 + 40) internalErrorFromVendorError:v6 callerDescription:@"evictItemWithIdentifier"];
    *buf = 134219010;
    v22 = v14;
    v23 = 2112;
    v24 = v16;
    v25 = 2080;
    v26 = "[FPXExtensionContext evictItemAtURL:completionHandler:]_block_invoke_2";
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = v19;
    _os_log_debug_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = [v5 itemIdentifier];
  v11 = [v9 itemIDFromVendorItemID:v10];
  v12 = [*(a1 + 40) internalErrorFromVendorError:v6 callerDescription:@"evictItemWithIdentifier"];
  (*(v8 + 16))(v8, v11, v12);

  __fp_pop_log(&v20);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)userCheckedSuppressionCheckboxForUserInteractionIdentifier:(id)a3 domainIdentifier:(id)a4 completionHandler:(id)a5
{
  v16[8] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [FPXExtensionContext userCheckedSuppressionCheckboxForUserInteractionIdentifier:domainIdentifier:completionHandler:];
  }

  v12 = [v9 fp_toDomainIdentifier];
  v13 = [(FPXExtensionContext *)self createUserInteractionSuppressingWithDomainIdentifier:v12 withPurpose:@"UserCheckedSuppressionCheckbox"];
  [v13 setInteractionSuppressed:1 forIdentifier:v8];
  v16[0] = fpfs_adopt_log(self->_log);
  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    FPPopLogSectionForBlock(v10);
    [FPXExtensionContext userCheckedSuppressionCheckboxForUserInteractionIdentifier:domainIdentifier:completionHandler:];
  }

  (*(v10 + 2))(v10, 0);
  __fp_pop_log(v16);

  v15 = *MEMORY[0x1E69E9840];
}

- (id)createUserInteractionSuppressingWithDomainIdentifier:(id)a3 withPurpose:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(FPXExtensionContext *)self domainContextForIdentifier:v6];
    v9 = [v8 vendorInstance];

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 target];

        v9 = v10;
      }

      if ([v9 conformsToProtocol:&unk_1F1FD8058])
      {
        v9 = v9;
        v11 = v9;
        goto LABEL_18;
      }

      v12 = [v7 isEqualToString:@"UserCheckedSuppressionCheckbox"];
      v13 = fp_current_or_default_log();
      v14 = v13;
      if (v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [FPXExtensionContext createUserInteractionSuppressingWithDomainIdentifier:withPurpose:];
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [FPXExtensionContext createUserInteractionSuppressingWithDomainIdentifier:withPurpose:];
      }
    }

    else
    {
      v9 = fp_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [FPXExtensionContext createUserInteractionSuppressingWithDomainIdentifier:withPurpose:];
      }
    }
  }

  else
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [FPXExtensionContext createUserInteractionSuppressingWithDomainIdentifier:withPurpose:];
    }
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (void)deleteSearchableItemsWithSpotlightDomainIdentifiers:(id)a3 domainIdentifier:(id)a4 indexReason:(int64_t)a5 completionHandler:(id)a6
{
  v52 = *MEMORY[0x1E69E9840];
  v36 = a3;
  v35 = a4;
  v33 = a6;
  v37 = self;
  v42 = fpfs_adopt_log(self->_log);
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    -[FPXExtensionContext deleteSearchableItemsWithSpotlightDomainIdentifiers:domainIdentifier:indexReason:completionHandler:].cold.1(self, [v36 count], v51);
  }

  v10 = [(FPXExtensionContext *)self domainContextForIdentifier:v35];
  v11 = [v10 domain];
  v12 = [v11 personaIdentifier];
  v13 = [MEMORY[0x1E69DF068] sharedManager];
  v14 = [v13 currentPersona];
  v15 = [v14 userPersonaUniqueString];
  if ([v12 isEqualToString:v15])
  {
  }

  else
  {
    v16 = [MEMORY[0x1E69DF068] sharedManager];
    v17 = [v16 currentPersona];
    v18 = [v17 userPersonaUniqueString];
    v19 = [v10 domain];
    v20 = [v19 personaIdentifier];
    v32 = v18 == v20;

    if (!v32)
    {
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [MEMORY[0x1E69DF068] sharedManager];
        v28 = [v27 currentPersona];
        v29 = [v28 userPersonaUniqueString];
        v30 = [v10 domain];
        v31 = [v30 personaIdentifier];
        *buf = 138413058;
        v44 = v37;
        v45 = 2112;
        v46 = v29;
        v47 = 2112;
        v48 = v31;
        v49 = 2080;
        v50 = "[FPXExtensionContext deleteSearchableItemsWithSpotlightDomainIdentifiers:domainIdentifier:indexReason:completionHandler:]";
        _os_log_error_impl(&dword_1AAAE1000, v26, OS_LOG_TYPE_ERROR, "[ERROR] Non matching personas for the extension %@ (%@, expect %@) on %s", buf, 0x2Au);
      }

      exit(1);
    }
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __122__FPXExtensionContext_deleteSearchableItemsWithSpotlightDomainIdentifiers_domainIdentifier_indexReason_completionHandler___block_invoke;
  v40[3] = &unk_1E79392B0;
  v21 = v35;
  v41 = v21;
  v22 = [v36 fp_map:v40];

  v23 = [v10 spotlightIndexer];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __122__FPXExtensionContext_deleteSearchableItemsWithSpotlightDomainIdentifiers_domainIdentifier_indexReason_completionHandler___block_invoke_2;
  v38[3] = &unk_1E7939170;
  v38[4] = v37;
  v24 = v33;
  v39 = v24;
  [v23 deleteSearchableItemsWithSpotlightDomainIdentifiers:v22 indexReason:a5 completionHandler:v38];

  __fp_pop_log(&v42);
  v25 = *MEMORY[0x1E69E9840];
}

void __122__FPXExtensionContext_deleteSearchableItemsWithSpotlightDomainIdentifiers_domainIdentifier_indexReason_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v8 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock(*(a1 + 40));
    v7 = *(a1 + 32);
    *buf = 134218754;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPXExtensionContext deleteSearchableItemsWithSpotlightDomainIdentifiers:domainIdentifier:indexReason:completionHandler:]_block_invoke_2";
    v15 = 2112;
    v16 = v3;
    _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(&v8);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeTrashedItemsOlderThanDate:(id)a3 domainIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = fpfs_adopt_log(self->_log);
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [FPXExtensionContext removeTrashedItemsOlderThanDate:domainIdentifier:completionHandler:];
  }

  instanceQueue = self->_instanceQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__FPXExtensionContext_removeTrashedItemsOlderThanDate_domainIdentifier_completionHandler___block_invoke;
  v16[3] = &unk_1E79392D8;
  v16[4] = self;
  v13 = v9;
  v17 = v13;
  v14 = v8;
  v18 = v14;
  v15 = v10;
  v19 = v15;
  fp_dispatch_async_with_logs(instanceQueue, v16);

  __fp_pop_log(&v20);
}

void __90__FPXExtensionContext_removeTrashedItemsOlderThanDate_domainIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  v18 = [*(a1 + 32) domainContextForIdentifier:*(a1 + 40)];
  v17 = [v18 domain];
  v2 = [v17 personaIdentifier];
  v3 = [MEMORY[0x1E69DF068] sharedManager];
  v4 = [v3 currentPersona];
  v5 = [v4 userPersonaUniqueString];
  if ([v2 isEqualToString:v5])
  {
  }

  else
  {
    v6 = [MEMORY[0x1E69DF068] sharedManager];
    v7 = [v6 currentPersona];
    v8 = [v7 userPersonaUniqueString];
    v9 = [v18 domain];
    v10 = [v9 personaIdentifier];

    if (v8 != v10)
    {
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __90__FPXExtensionContext_removeTrashedItemsOlderThanDate_domainIdentifier_completionHandler___block_invoke_cold_1(v1, v18, v15);
      }

      exit(1);
    }
  }

  v11 = [*v1 instanceWithPrivateSelector:sel__removeTrashedItemsOlderThanDate_completionHandler_];
  if (v11)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __90__FPXExtensionContext_removeTrashedItemsOlderThanDate_domainIdentifier_completionHandler___block_invoke_224;
    v20[3] = &unk_1E7939128;
    v20[4] = *(a1 + 32);
    v12 = *(a1 + 48);
    v21 = *(a1 + 56);
    [v11 _removeTrashedItemsOlderThanDate:v12 completionHandler:v20];
  }

  else
  {
    v19 = fpfs_adopt_log(*(*v1 + 10));
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock(*(a1 + 56));
      __90__FPXExtensionContext_removeTrashedItemsOlderThanDate_domainIdentifier_completionHandler___block_invoke_cold_2(v1);
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log(&v19);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __90__FPXExtensionContext_removeTrashedItemsOlderThanDate_domainIdentifier_completionHandler___block_invoke_224(uint64_t a1)
{
  v5[8] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v5[0] = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    FPPopLogSectionForBlock(*(a1 + 40));
    __90__FPXExtensionContext_removeTrashedItemsOlderThanDate_domainIdentifier_completionHandler___block_invoke_cold_2(v2);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(v5);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)dumpInternalStateToTermDumper:(id)a3 domainIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__FPXExtensionContext_dumpInternalStateToTermDumper_domainIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E79390B8;
  block[4] = self;
  v10 = v7;
  v18 = v10;
  dispatch_sync(notificationQueue, block);
  [(FPDocumentAlternateContents *)self->_alternateContents dumpToDumper:v10];
  instanceQueue = self->_instanceQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__FPXExtensionContext_dumpInternalStateToTermDumper_domainIdentifier_completionHandler___block_invoke_2;
  v14[3] = &unk_1E7939210;
  v14[4] = self;
  v15 = v10;
  v16 = v8;
  v12 = v8;
  v13 = v10;
  fp_dispatch_async_with_logs(instanceQueue, v14);
}

void __88__FPXExtensionContext_dumpInternalStateToTermDumper_domainIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 40) copy];
  if ([v2 count])
  {
    [*(a1 + 40) write:{@"  + running enumerator (%ld):\n", objc_msgSend(v2, "count")}];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(a1 + 40) write:{@"%15s- %@\n", "", *(*(&v9 + 1) + 8 * i), v9}];
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  else
  {
    [*(a1 + 40) put:@"  + running enumerator: none\n"];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __88__FPXExtensionContext_dumpInternalStateToTermDumper_domainIdentifier_completionHandler___block_invoke_2(id *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 4);
  v3 = [a1[4] instanceWithPrivateSelector:sel__dumpInternalStateToTermDumper_completionHandler_];
  if (v3)
  {
    [a1[5] put:@"\n"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __88__FPXExtensionContext_dumpInternalStateToTermDumper_domainIdentifier_completionHandler___block_invoke_3;
    v8[3] = &unk_1E7939170;
    v4 = a1[5];
    v8[4] = a1[4];
    v9 = a1[6];
    [v3 _dumpInternalStateToTermDumper:v4 completionHandler:v8];
  }

  else
  {
    v7 = fpfs_adopt_log(*(*v2 + 80));
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock(a1[6]);
      __88__FPXExtensionContext_dumpInternalStateToTermDumper_domainIdentifier_completionHandler___block_invoke_2_cold_1(v2);
    }

    (*(a1[6] + 2))();
    __fp_pop_log(&v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __88__FPXExtensionContext_dumpInternalStateToTermDumper_domainIdentifier_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v8 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock(*(a1 + 40));
    v7 = *(a1 + 32);
    *buf = 134218754;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPXExtensionContext dumpInternalStateToTermDumper:domainIdentifier:completionHandler:]_block_invoke_3";
    v15 = 2112;
    v16 = v3;
    _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(&v8);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)itemChangedAtURL:(id)a3 completionHandler:(id)a4
{
  v16[6] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16[0] = fpfs_adopt_log(self->_log);
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [v6 fp_shortDescription];
    objc_claimAutoreleasedReturnValue();
    [FPXExtensionContext itemChangedAtURL:completionHandler:];
  }

  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__FPXExtensionContext_itemChangedAtURL_completionHandler___block_invoke;
  v13[3] = &unk_1E7939300;
  v13[4] = self;
  v10 = v7;
  v15 = v10;
  v11 = v6;
  v14 = v11;
  fp_dispatch_async_with_logs(queue, v13);

  __fp_pop_log(v16);
  v12 = *MEMORY[0x1E69E9840];
}

void __58__FPXExtensionContext_itemChangedAtURL_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) v2Instance];
  v4 = v3;
  if (v3)
  {
    [v3 itemChangedAtURL:*(a1 + 40)];
    v13 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock(*(a1 + 48));
      __58__FPXExtensionContext_itemChangedAtURL_completionHandler___block_invoke_cold_1(v2);
    }

    (*(*(a1 + 48) + 16))();
    __fp_pop_log(&v13);
  }

  else
  {
    v13 = fpfs_adopt_log(*(*v2 + 80));
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = FPPopLogSectionForBlock(*(a1 + 48));
      v11 = *v2;
      v12 = FPNotSupportedError();
      *buf = 134218754;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2080;
      v19 = "[FPXExtensionContext itemChangedAtURL:completionHandler:]_block_invoke";
      v20 = 2112;
      v21 = v12;
      _os_log_debug_impl(&dword_1AAAE1000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v7 = *(a1 + 48);
    v8 = FPNotSupportedError();
    (*(v7 + 16))(v7, v8);

    __fp_pop_log(&v13);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)movingItemAtURL:(id)a3 requiresProvidingWithDestinationURL:(id)a4 completionHandler:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = fpfs_adopt_log(self->_log);
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v8 fp_shortDescription];
    v18 = [v9 fp_shortDescription];
    *buf = 138413058;
    v25 = self;
    v26 = 2080;
    v27 = "[FPXExtensionContext movingItemAtURL:requiresProvidingWithDestinationURL:completionHandler:]";
    v28 = 2112;
    v29 = v17;
    v30 = 2112;
    v31 = v18;
    _os_log_debug_impl(&dword_1AAAE1000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@ %s %@, %@", buf, 0x2Au);
  }

  instanceQueue = self->_instanceQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __93__FPXExtensionContext_movingItemAtURL_requiresProvidingWithDestinationURL_completionHandler___block_invoke;
  v19[3] = &unk_1E79392D8;
  v19[4] = self;
  v13 = v8;
  v20 = v13;
  v14 = v9;
  v21 = v14;
  v15 = v10;
  v22 = v15;
  fp_dispatch_async_with_logs(instanceQueue, v19);

  __fp_pop_log(&v23);
  v16 = *MEMORY[0x1E69E9840];
}

void __93__FPXExtensionContext_movingItemAtURL_requiresProvidingWithDestinationURL_completionHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) instanceWithPrivateSelector:sel_movingItemAtURL_requiresProvidingWithDestinationURL_completionHandler_];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __93__FPXExtensionContext_movingItemAtURL_requiresProvidingWithDestinationURL_completionHandler___block_invoke_2;
    v13[3] = &unk_1E7939328;
    v13[4] = *(a1 + 32);
    v14 = *(a1 + 56);
    [v2 movingItemAtURL:v3 requiresProvidingWithDestinationURL:v4 completionHandler:v13];
  }

  else
  {
    v12 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = FPPopLogSectionForBlock(*(a1 + 56));
      v10 = *(a1 + 32);
      v11 = FPNotSupportedError();
      *buf = 134219010;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2080;
      v20 = "[FPXExtensionContext movingItemAtURL:requiresProvidingWithDestinationURL:completionHandler:]_block_invoke";
      v21 = 1024;
      v22 = 0;
      v23 = 2112;
      v24 = v11;
      _os_log_debug_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %{BOOL}d, %@", buf, 0x30u);
    }

    v6 = *(a1 + 56);
    v7 = FPNotSupportedError();
    (*(v6 + 16))(v6, 0, v7);

    __fp_pop_log(&v12);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __93__FPXExtensionContext_movingItemAtURL_requiresProvidingWithDestinationURL_completionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v10 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock(*(a1 + 40));
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPXExtensionContext movingItemAtURL:requiresProvidingWithDestinationURL:completionHandler:]_block_invoke_2";
    v17 = 1024;
    v18 = a2;
    v19 = 2112;
    v20 = v5;
    _os_log_debug_impl(&dword_1AAAE1000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %{BOOL}d, %@", buf, 0x30u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(&v10);

  v7 = *MEMORY[0x1E69E9840];
}

- (id)fetchContentsForItemWithID:(id)a3 version:(id)a4 request:(id)a5 estimatedItemSize:(int64_t)a6 isSymlink:(BOOL)a7 extent:(id)a8 alignment:(unint64_t)a9 options:(unint64_t)a10 completionHandler:(id)a11
{
  v12 = a7;
  v64 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v38 = a4;
  v19 = a5;
  v20 = a8;
  v21 = a11;
  if (v20)
  {
    [v20 rangeValue];
    a6 = v22;
  }

  if (a6 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = a6;
  }

  v51 = fpfs_adopt_log(self->_log);
  v24 = fp_current_or_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413570;
    v53 = self;
    v54 = 2080;
    v55 = "[FPXExtensionContext fetchContentsForItemWithID:version:request:estimatedItemSize:isSymlink:extent:alignment:options:completionHandler:]";
    v56 = 2112;
    v57 = v18;
    v58 = 2048;
    v59 = v23;
    v60 = 1024;
    v61 = v12;
    v62 = 2112;
    v63 = v19;
    _os_log_debug_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@ %s %@, estimated size=%lld, symlink=%{BOOL}d, %@", buf, 0x3Au);
  }

  v25 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v23];
  instanceQueue = self->_instanceQueue;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __137__FPXExtensionContext_fetchContentsForItemWithID_version_request_estimatedItemSize_isSymlink_extent_alignment_options_completionHandler___block_invoke;
  v39[3] = &unk_1E79393F0;
  v39[4] = self;
  v27 = v18;
  v40 = v27;
  v28 = v19;
  v41 = v28;
  v29 = v21;
  v45 = v29;
  v46 = a2;
  v50 = v12;
  v30 = v25;
  v42 = v30;
  v47 = v23;
  v31 = v20;
  v43 = v31;
  v32 = v38;
  v44 = v32;
  v48 = a9;
  v49 = a10;
  fp_dispatch_async_with_logs(instanceQueue, v39);
  v33 = fp_current_or_default_log();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    -[FPXExtensionContext fetchContentsForItemWithID:version:request:estimatedItemSize:isSymlink:extent:alignment:options:completionHandler:].cold.1(buf, [v30 totalUnitCount], v33);
  }

  v34 = v44;
  v35 = v30;

  __fp_pop_log(&v51);
  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

void __137__FPXExtensionContext_fetchContentsForItemWithID_version_request_estimatedItemSize_isSymlink_extent_alignment_options_completionHandler___block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v48 = [*(a1 + 32) domainContextForItemID:*(a1 + 40)];
  v46 = [v48 domain];
  v3 = [v46 personaIdentifier];
  v4 = [MEMORY[0x1E69DF068] sharedManager];
  v5 = [v4 currentPersona];
  v6 = [v5 userPersonaUniqueString];
  if ([v3 isEqualToString:v6])
  {
  }

  else
  {
    v7 = [MEMORY[0x1E69DF068] sharedManager];
    v8 = [v7 currentPersona];
    v44 = [v8 userPersonaUniqueString];
    v9 = [v48 domain];
    v10 = [v9 personaIdentifier];

    if (v44 != v10)
    {
      v42 = fp_current_or_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        __137__FPXExtensionContext_fetchContentsForItemWithID_version_request_estimatedItemSize_isSymlink_extent_alignment_options_completionHandler___block_invoke_cold_1(v2, v48, v42);
      }

      exit(1);
    }
  }

  [v48 vendorInstance];
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = __Block_byref_object_copy_;
  v64[4] = __Block_byref_object_dispose_;
  v11 = v65 = 0;
  if ([v11 conformsToProtocol:&unk_1F1FF39A8])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __137__FPXExtensionContext_fetchContentsForItemWithID_version_request_estimatedItemSize_isSymlink_extent_alignment_options_completionHandler___block_invoke_248;
  aBlock[3] = &unk_1E7939350;
  v13 = v48;
  v58 = v13;
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v59 = v14;
  v60 = v15;
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  v61 = v16;
  v62 = v64;
  v63 = v17;
  v18 = _Block_copy(aBlock);
  if (*(a1 + 120) == 1)
  {
    v19 = [*(a1 + 40) identifier];
    v20 = *(a1 + 48);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __137__FPXExtensionContext_fetchContentsForItemWithID_version_request_estimatedItemSize_isSymlink_extent_alignment_options_completionHandler___block_invoke_262;
    v55[3] = &unk_1E7939378;
    v21 = v18;
    v55[4] = *(a1 + 32);
    v56 = v21;
    v22 = [v11 itemForIdentifier:v19 request:v20 completionHandler:v55];

    if (v22)
    {
      [*(a1 + 56) addChild:v22 withPendingUnitCount:*(a1 + 96)];
      [*(a1 + 56) setCancellable:{objc_msgSend(v22, "isCancellable")}];
    }

    v23 = &v56;
  }

  else
  {
    v24 = *(a1 + 64);
    if (v24 && v12)
    {
      v25 = [v24 rangeValue];
      v27 = v26;
      v28 = v25;
      v29 = [*(a1 + 40) identifier];
      v30 = [*(a1 + 72) versionRewritingBeforeFirstSync];
      v45 = *(a1 + 48);
      v47 = *(a1 + 104);
      v49 = v13;
      v31 = v12;
      v32 = *(a1 + 112);
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __137__FPXExtensionContext_fetchContentsForItemWithID_version_request_estimatedItemSize_isSymlink_extent_alignment_options_completionHandler___block_invoke_2;
      v52[3] = &unk_1E79393A0;
      v54[0] = v18;
      v54[2] = v28;
      v54[3] = v27;
      v54[4] = *(a1 + 104);
      v53 = *(a1 + 40);
      v54[1] = v64;
      v43 = v32;
      v33 = v29;
      v12 = v31;
      v13 = v49;
      v34 = [v12 fetchPartialContentsForItemWithIdentifier:v29 version:v30 request:v45 minimalRange:v28 aligningTo:v27 options:v47 completionHandler:{v43, v52}];

      if (v34)
      {
        [*(a1 + 56) addChild:v34 withPendingUnitCount:*(a1 + 96)];
        [*(a1 + 56) setCancellable:{objc_msgSend(v34, "isCancellable")}];
      }

      v23 = v54;
    }

    else
    {
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __137__FPXExtensionContext_fetchContentsForItemWithID_version_request_estimatedItemSize_isSymlink_extent_alignment_options_completionHandler___block_invoke_3;
      v50[3] = &unk_1E79393C8;
      v51 = v18;
      v35 = _Block_copy(v50);
      v36 = *(a1 + 112);
      v37 = [*(a1 + 40) identifier];
      if (v36)
      {
        v38 = *(a1 + 72);
      }

      else
      {
        v38 = 0;
      }

      v39 = [v11 fetchContentsForItemWithIdentifier:v37 version:v38 request:*(a1 + 48) completionHandler:v35];

      if (v39)
      {
        [*(a1 + 56) addChild:v39 withPendingUnitCount:*(a1 + 96)];
        [*(a1 + 56) setCancellable:{objc_msgSend(v39, "isCancellable")}];
      }

      v40 = fp_current_or_default_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        -[FPXExtensionContext fetchContentsForItemWithID:version:request:estimatedItemSize:isSymlink:extent:alignment:options:completionHandler:].cold.1(v66, [*(a1 + 56) totalUnitCount], v40);
      }

      v23 = &v51;
    }
  }

  _Block_object_dispose(v64, 8);
  v41 = *MEMORY[0x1E69E9840];
}

void __137__FPXExtensionContext_fetchContentsForItemWithID_version_request_estimatedItemSize_isSymlink_extent_alignment_options_completionHandler___block_invoke_248(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = a5;
  v14 = [v11 currentResponseWithRequest:v12];
  v15 = [*(a1 + 32) internalErrorFromVendorError:v13 callerDescription:@"fetchContentsForItemWithID"];

  if (v15)
  {
    v37 = fpfs_adopt_log(*(*(a1 + 48) + 80));
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v31 = FPPopLogSectionForBlock(*(a1 + 56));
      v32 = *(a1 + 48);
      *buf = 134220034;
      v39 = v31;
      v40 = 2112;
      v41 = v32;
      v42 = 2080;
      v43 = "[FPXExtensionContext fetchContentsForItemWithID:version:request:estimatedItemSize:isSymlink:extent:alignment:options:completionHandler:]_block_invoke";
      v44 = 2112;
      v45 = 0;
      v46 = 2112;
      v47 = 0;
      v48 = 2112;
      v49 = v14;
      v50 = 2112;
      v51 = 0;
      v52 = 2048;
      v53 = a4;
      v54 = 2112;
      v55 = v15;
      _os_log_debug_impl(&dword_1AAAE1000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %lu, %@", buf, 0x5Cu);
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log(&v37);

    goto LABEL_13;
  }

  if (v10)
  {
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = *(a1 + 72);
    v19 = *(a1 + 48);
    v20 = NSStringFromSelector(sel_fetchContentsForItemWithIdentifier_version_completionHandler_);
    [v17 handleFailureInMethod:v18 object:v19 file:@"FPXExtensionContext.m" lineNumber:830 description:{@"Call to %@ returned no item but no error", v20}];

    if (!v9)
    {
LABEL_9:
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = *(a1 + 72);
      v23 = *(a1 + 48);
      v24 = NSStringFromSelector(sel_fetchContentsForItemWithIdentifier_version_completionHandler_);
      [v21 handleFailureInMethod:v22 object:v23 file:@"FPXExtensionContext.m" lineNumber:831 description:{@"Call to %@ returned no contents but no error", v24}];
    }
  }

  v36 = 0;
  v25 = [FPSandboxingURLWrapper wrapperWithURL:v9 readonly:0 error:&v36];
  v26 = v36;
  v27 = [*(a1 + 32) itemFromVendorItem:v10];
  v37 = fpfs_adopt_log(*(*(a1 + 48) + 80));
  v28 = fp_current_or_default_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v33 = FPPopLogSectionForBlock(*(a1 + 56));
    v34 = *(a1 + 48);
    v35 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 134220034;
    v39 = v33;
    v40 = 2112;
    v41 = v34;
    v42 = 2080;
    v43 = "[FPXExtensionContext fetchContentsForItemWithID:version:request:estimatedItemSize:isSymlink:extent:alignment:options:completionHandler:]_block_invoke";
    v44 = 2112;
    v45 = v25;
    v46 = 2112;
    v47 = v27;
    v48 = 2112;
    v49 = v14;
    v50 = 2112;
    v51 = v35;
    v52 = 2048;
    v53 = a4;
    v54 = 2112;
    v55 = v26;
    _os_log_debug_impl(&dword_1AAAE1000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %@, %lu, %@", buf, 0x5Cu);
  }

  v29 = *(*(*(a1 + 64) + 8) + 40);
  (*(*(a1 + 56) + 16))();
  __fp_pop_log(&v37);

LABEL_13:
  v30 = *MEMORY[0x1E69E9840];
}

void __137__FPXExtensionContext_fetchContentsForItemWithID_version_request_estimatedItemSize_isSymlink_extent_alignment_options_completionHandler___block_invoke_262(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [v5 contentType];
    }

    else
    {
      v9 = MEMORY[0x1E6982C40];
      v10 = [v5 typeIdentifier];
      v8 = [v9 fp_cachedTypeWithIdentifier:v10];
    }

    if ([v8 conformsToType:*MEMORY[0x1E6982FF8]] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v11 = *(a1 + 32);
      v22 = 0;
      v12 = [v11 createFPTempDirectoryWithError:&v22];
      v13 = v22;
      if (v12)
      {
        v14 = [MEMORY[0x1E696AFB0] UUID];
        v15 = [v14 UUIDString];
        v16 = [v12 URLByAppendingPathComponent:v15];

        v17 = [v5 symlinkTargetPath];
        if ([v17 length])
        {
          v18 = [v17 fileSystemRepresentation];
        }

        else
        {
          v18 = "";
        }

        if (symlink(v18, [v16 fileSystemRepresentation]))
        {
          v7 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
          v21 = [MEMORY[0x1E696AC08] defaultManager];
          [v21 removeItemAtURL:v16 error:0];

          (*(*(a1 + 40) + 16))();
        }

        else
        {
          (*(*(a1 + 40) + 16))();
          v7 = 0;
        }
      }

      else
      {
        (*(*(a1 + 40) + 16))();
        v7 = 0;
      }
    }

    else
    {
      v19 = *(a1 + 40);
      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
      (*(v19 + 16))(v19, 0, 0, 0, v20);

      v7 = 0;
    }
  }
}

void __137__FPXExtensionContext_fetchContentsForItemWithID_version_request_estimatedItemSize_isSymlink_extent_alignment_options_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a2;
  v12 = a3;
  v13 = v12;
  if (a7)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = [v12 documentSize];
    v15 = [v14 longLongValue];
    v16 = *(a1 + 56);
    if (a4 > v16)
    {
      goto LABEL_8;
    }

    v17 = a4 + a5;
    v18 = *(a1 + 64) + v16;
    if (v18 >= v15)
    {
      v18 = v15;
    }

    if (v17 < v18 || (v19 = *(a1 + 72), a4 % v19) || v17 != v15 && a5 % v19)
    {
LABEL_8:
      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:0];
      v21 = 0;
    }

    else
    {
      v20 = 0;
      v21 = 1;
    }

    v22 = v20;

    if (v21)
    {
      v23 = [MEMORY[0x1E696B098] valueWithRange:{a4, a5}];
      v24 = *(*(a1 + 48) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    else
    {
      __FILEPROVIDER_BAD_EXTENT__(*(a1 + 32), a4, a5);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (id)fetchContentsForItemWithID:(id)a3 version:(id)a4 usingExistingContentsAtURL:(id)a5 existingVersion:(id)a6 request:(id)a7 estimatedItemSize:(int64_t)a8 isSymlink:(BOOL)a9 completionHandler:(id)a10
{
  v74 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v43 = a4;
  v40 = a5;
  v41 = a6;
  v46 = a7;
  v44 = a10;
  v45 = v15;
  v42 = self;
  v47 = [(FPXExtensionContext *)self domainContextForItemID:v15];
  v16 = [v47 domain];
  v17 = [v16 personaIdentifier];
  v18 = [MEMORY[0x1E69DF068] sharedManager];
  v19 = [v18 currentPersona];
  v20 = [v19 userPersonaUniqueString];
  if ([v17 isEqualToString:v20])
  {
  }

  else
  {
    v21 = [MEMORY[0x1E69DF068] sharedManager];
    v22 = [v21 currentPersona];
    v23 = [v22 userPersonaUniqueString];
    v24 = [v47 domain];
    v25 = [v24 personaIdentifier];

    if (v23 != v25)
    {
      v37 = fp_current_or_default_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [FPXExtensionContext fetchContentsForItemWithID:v42 version:v47 usingExistingContentsAtURL:v37 existingVersion:? request:? estimatedItemSize:? isSymlink:? completionHandler:?];
      }

      exit(1);
    }
  }

  v26 = [v47 vendorInstance];
  if ([v26 conformsToProtocol:&unk_1F1FD7D70])
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27)
  {
    if (a8 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = a8;
    }

    v61 = fpfs_adopt_log(v42->_log);
    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v65 = v42;
      v66 = 2080;
      v67 = "[FPXExtensionContext fetchContentsForItemWithID:version:usingExistingContentsAtURL:existingVersion:request:estimatedItemSize:isSymlink:completionHandler:]";
      v68 = 2112;
      v69 = v45;
      v70 = 2048;
      v71 = v28;
      v72 = 2112;
      v73 = v46;
      _os_log_debug_impl(&dword_1AAAE1000, v29, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@ %s %@, estimated size=%lld, %@", buf, 0x34u);
    }

    v30 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v28];
    instanceQueue = v42->_instanceQueue;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __155__FPXExtensionContext_fetchContentsForItemWithID_version_usingExistingContentsAtURL_existingVersion_request_estimatedItemSize_isSymlink_completionHandler___block_invoke_278;
    v48[3] = &unk_1E7939468;
    v49 = v40;
    v50 = v47;
    v51 = v46;
    v52 = v42;
    v58 = v44;
    v59 = a2;
    v53 = v27;
    v54 = v45;
    v55 = v43;
    v56 = v41;
    v32 = v30;
    v57 = v32;
    v60 = v28;
    fp_dispatch_async_with_logs(instanceQueue, v48);
    v33 = v57;
    v34 = v32;

    __fp_pop_log(&v61);
  }

  else
  {
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __155__FPXExtensionContext_fetchContentsForItemWithID_version_usingExistingContentsAtURL_existingVersion_request_estimatedItemSize_isSymlink_completionHandler___block_invoke;
    v62[3] = &unk_1E7939418;
    v63 = v44;
    v34 = [(FPXExtensionContext *)v42 fetchContentsForItemWithID:v45 version:v43 request:v46 estimatedItemSize:a8 isSymlink:a9 extent:0 alignment:0 options:0 completionHandler:v62];
  }

  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

void __155__FPXExtensionContext_fetchContentsForItemWithID_version_usingExistingContentsAtURL_existingVersion_request_estimatedItemSize_isSymlink_completionHandler___block_invoke_278(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) url];
  v3 = [v2 startAccessingSecurityScopedResource];
  v37 = 0;
  v4 = *MEMORY[0x1E695DB00];
  v36 = 0;
  v5 = [v2 getResourceValue:&v37 forKey:v4 error:&v36];
  v6 = v37;
  v7 = v36;
  if (v5)
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __155__FPXExtensionContext_fetchContentsForItemWithID_version_usingExistingContentsAtURL_existingVersion_request_estimatedItemSize_isSymlink_completionHandler___block_invoke_279;
    v25 = &unk_1E7939440;
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v34 = v3;
    v8 = v2;
    v9 = *(a1 + 56);
    v28 = v8;
    v29 = v9;
    v10 = *(a1 + 104);
    v11 = *(a1 + 112);
    v32 = v10;
    v33 = v11;
    v30 = v6;
    v31 = *(a1 + 32);
    v12 = _Block_copy(&v22);
    v13 = *(a1 + 64);
    v14 = [*(a1 + 72) identifier];
    v15 = [*(a1 + 80) versionRewritingBeforeFirstSync];
    v16 = [v13 fetchContentsForItemWithIdentifier:v14 version:v15 usingExistingContentsAtURL:v8 existingVersion:*(a1 + 88) request:*(a1 + 48) completionHandler:v12];

    if (v16)
    {
      [*(a1 + 96) addChild:v16 withPendingUnitCount:*(a1 + 120)];
    }

    v17 = v26;
  }

  else
  {
    v17 = [*(a1 + 40) currentResponseWithRequest:*(a1 + 48)];
    v35 = fpfs_adopt_log(*(*(a1 + 56) + 80));
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v20 = FPPopLogSectionForBlock(*(a1 + 104));
      v21 = *(a1 + 56);
      *buf = 134219778;
      v39 = v20;
      v40 = 2112;
      v41 = v21;
      v42 = 2080;
      v43 = "[FPXExtensionContext fetchContentsForItemWithID:version:usingExistingContentsAtURL:existingVersion:request:estimatedItemSize:isSymlink:completionHandler:]_block_invoke";
      v44 = 2112;
      v45 = 0;
      v46 = 2112;
      v47 = 0;
      v48 = 2112;
      v49 = v17;
      v50 = 2048;
      v51 = 0;
      v52 = 2112;
      v53 = v7;
      _os_log_debug_impl(&dword_1AAAE1000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %lu, %@", buf, 0x52u);
    }

    (*(*(a1 + 104) + 16))();
    __fp_pop_log(&v35);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __155__FPXExtensionContext_fetchContentsForItemWithID_version_usingExistingContentsAtURL_existingVersion_request_estimatedItemSize_isSymlink_completionHandler___block_invoke_279(uint64_t a1, void *a2, void *a3, void *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) currentResponseWithRequest:*(a1 + 40)];
  if (*(a1 + 96) == 1)
  {
    [*(a1 + 48) stopAccessingSecurityScopedResource];
  }

  if (v9)
  {
    v11 = [*(a1 + 32) internalErrorFromVendorError:v9 callerDescription:@"fetchContentsForItemWithIDIncremental"];

    v44 = fpfs_adopt_log(*(*(a1 + 56) + 80));
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v32 = FPPopLogSectionForBlock(*(a1 + 80));
      v33 = *(a1 + 56);
      *buf = 134219778;
      v46 = v32;
      v47 = 2112;
      v48 = v33;
      v49 = 2080;
      v50 = "[FPXExtensionContext fetchContentsForItemWithID:version:usingExistingContentsAtURL:existingVersion:request:estimatedItemSize:isSymlink:completionHandler:]_block_invoke";
      v51 = 2112;
      v52 = 0;
      v53 = 2112;
      v54 = 0;
      v55 = 2112;
      v56 = v10;
      v57 = 2048;
      v58 = 0;
      v59 = 2112;
      v60 = v11;
      _os_log_debug_impl(&dword_1AAAE1000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %lu, %@", buf, 0x52u);
    }

    (*(*(a1 + 80) + 16))();
    __fp_pop_log(&v44);
  }

  else
  {
    v43 = 0;
    v13 = *MEMORY[0x1E695DB00];
    v42 = 0;
    v14 = [v7 getResourceValue:&v43 forKey:v13 error:&v42];
    v15 = v43;
    v11 = v42;
    if (v14)
    {
      if (!v8)
      {
        v16 = [MEMORY[0x1E696AAA8] currentHandler];
        v17 = *(a1 + 88);
        v18 = *(a1 + 56);
        v19 = NSStringFromSelector(sel_fetchContentsForItemWithIdentifier_version_usingExistingContentsAtURL_existingVersion_completionHandler_);
        [v16 handleFailureInMethod:v17 object:v18 file:@"FPXExtensionContext.m" lineNumber:1024 description:{@"Call to %@ returned no item but no error", v19}];
      }

      if (!v7)
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = *(a1 + 88);
        v22 = *(a1 + 56);
        v23 = NSStringFromSelector(sel_fetchContentsForItemWithIdentifier_version_usingExistingContentsAtURL_existingVersion_completionHandler_);
        [v20 handleFailureInMethod:v21 object:v22 file:@"FPXExtensionContext.m" lineNumber:1025 description:{@"Call to %@ returned no contents but no error", v23}];
      }

      v24 = [*(a1 + 32) itemFromVendorItem:v8];
      if ([v15 isEqual:*(a1 + 64)])
      {
        v44 = fpfs_adopt_log(*(*(a1 + 56) + 80));
        v25 = fp_current_or_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v36 = FPPopLogSectionForBlock(*(a1 + 80));
          v37 = *(a1 + 56);
          v38 = *(a1 + 72);
          *buf = 134219778;
          v46 = v36;
          v47 = 2112;
          v48 = v37;
          v49 = 2080;
          v50 = "[FPXExtensionContext fetchContentsForItemWithID:version:usingExistingContentsAtURL:existingVersion:request:estimatedItemSize:isSymlink:completionHandler:]_block_invoke";
          v51 = 2112;
          v52 = v38;
          v53 = 2112;
          v54 = v24;
          v55 = 2112;
          v56 = v10;
          v57 = 2048;
          v58 = 0;
          v59 = 2112;
          v60 = 0;
          _os_log_debug_impl(&dword_1AAAE1000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %lu, %@", buf, 0x52u);
        }

        v26 = *(a1 + 72);
        (*(*(a1 + 80) + 16))();
        __fp_pop_log(&v44);
      }

      else
      {
        v41 = v11;
        v28 = [FPSandboxingURLWrapper wrapperWithURL:v7 readonly:0 error:&v41];
        v29 = v41;

        v44 = fpfs_adopt_log(*(*(a1 + 56) + 80));
        v30 = fp_current_or_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v39 = FPPopLogSectionForBlock(*(a1 + 80));
          v40 = *(a1 + 56);
          *buf = 134219778;
          v46 = v39;
          v47 = 2112;
          v48 = v40;
          v49 = 2080;
          v50 = "[FPXExtensionContext fetchContentsForItemWithID:version:usingExistingContentsAtURL:existingVersion:request:estimatedItemSize:isSymlink:completionHandler:]_block_invoke";
          v51 = 2112;
          v52 = v28;
          v53 = 2112;
          v54 = v24;
          v55 = 2112;
          v56 = v10;
          v57 = 2048;
          v58 = 0;
          v59 = 2112;
          v60 = v29;
          _os_log_debug_impl(&dword_1AAAE1000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %lu, %@", buf, 0x52u);
        }

        (*(*(a1 + 80) + 16))();
        __fp_pop_log(&v44);

        v11 = v29;
      }
    }

    else
    {
      v44 = fpfs_adopt_log(*(*(a1 + 56) + 80));
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v34 = FPPopLogSectionForBlock(*(a1 + 80));
        v35 = *(a1 + 56);
        *buf = 134219778;
        v46 = v34;
        v47 = 2112;
        v48 = v35;
        v49 = 2080;
        v50 = "[FPXExtensionContext fetchContentsForItemWithID:version:usingExistingContentsAtURL:existingVersion:request:estimatedItemSize:isSymlink:completionHandler:]_block_invoke";
        v51 = 2112;
        v52 = 0;
        v53 = 2112;
        v54 = 0;
        v55 = 2112;
        v56 = v10;
        v57 = 2048;
        v58 = 0;
        v59 = 2112;
        v60 = v11;
        _os_log_debug_impl(&dword_1AAAE1000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@, %lu, %@", buf, 0x52u);
      }

      (*(*(a1 + 80) + 16))();
      __fp_pop_log(&v44);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)modifyItem:(id)a3 baseVersion:(id)a4 changedFields:(unint64_t)a5 contents:(id)a6 options:(unint64_t)a7 request:(id)a8 completionHandler:(id)a9
{
  v63 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v48 = fpfs_adopt_log(self->_log);
  v20 = fp_current_or_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413826;
    v50 = self;
    v51 = 2080;
    v52 = "[FPXExtensionContext modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]";
    v53 = 2112;
    v54 = v15;
    v55 = 1024;
    v56 = a5;
    v57 = 1024;
    v58 = a7;
    v59 = 2112;
    v60 = v17;
    v61 = 2112;
    v62 = v18;
    _os_log_debug_impl(&dword_1AAAE1000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@ %s %@ fields=%x options=%x contentURL=%@ %@", buf, 0x40u);
  }

  v36 = a5;
  if (v17)
  {
    v21 = [v15 documentSize];
    v22 = [v21 longLongValue];

    if (v22 <= 1)
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 100;
  }

  v23 = a7;
  v24 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{v22, v36}];
  instanceQueue = self->_instanceQueue;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __103__FPXExtensionContext_modifyItem_baseVersion_changedFields_contents_options_request_completionHandler___block_invoke;
  v38[3] = &unk_1E79394B8;
  v38[4] = self;
  v26 = v15;
  v39 = v26;
  v27 = v17;
  v40 = v27;
  v28 = v18;
  v41 = v28;
  v29 = v19;
  v44 = v29;
  v30 = v16;
  v42 = v30;
  v45 = v37;
  v46 = v23;
  v31 = v24;
  v43 = v31;
  v47 = v22;
  fp_dispatch_async_with_logs(instanceQueue, v38);
  v32 = v43;
  v33 = v31;

  __fp_pop_log(&v48);
  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

void __103__FPXExtensionContext_modifyItem_baseVersion_changedFields_contents_options_request_completionHandler___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v33 = (a1 + 32);
  v3 = [*(a1 + 40) itemID];
  v36 = [v2 domainContextForItemID:v3];

  v34 = [v36 domain];
  v4 = [v34 personaIdentifier];
  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];
  v7 = [v6 userPersonaUniqueString];
  if ([v4 isEqualToString:v7])
  {
  }

  else
  {
    v8 = [MEMORY[0x1E69DF068] sharedManager];
    v9 = [v8 currentPersona];
    v10 = [v9 userPersonaUniqueString];
    v11 = [v36 domain];
    v12 = [v11 personaIdentifier];

    if (v10 != v12)
    {
      v32 = fp_current_or_default_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        __103__FPXExtensionContext_modifyItem_baseVersion_changedFields_contents_options_request_completionHandler___block_invoke_cold_1(v33, v36, v32);
      }

      exit(1);
    }
  }

  v13 = [v36 vendorInstance];
  v14 = [*(a1 + 48) url];
  [v14 startAccessingSecurityScopedResource];
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v44 = 0;
  v45 = v14;
  v17 = [v15 _inlineSymlinkTarget:v16 url:&v45 error:&v44];
  v18 = v45;

  v19 = v44;
  if (v17)
  {
    v35 = *(a1 + 40);
    v20 = [*(a1 + 64) versionRewritingBeforeFirstSync];
    v21 = *(a1 + 88);
    v22 = *(a1 + 96);
    v23 = *(a1 + 56);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __103__FPXExtensionContext_modifyItem_baseVersion_changedFields_contents_options_request_completionHandler___block_invoke_285;
    v37[3] = &unk_1E7939490;
    v24 = v18;
    v25 = *(a1 + 32);
    v38 = v24;
    v39 = v25;
    v40 = v36;
    v41 = *(a1 + 56);
    v42 = *(a1 + 80);
    v26 = [v13 modifyItem:v35 baseVersion:v20 changedFields:v21 contents:v24 options:v22 request:v23 completionHandler:v37];

    if (v26)
    {
      [*(a1 + 72) addChild:v26 withPendingUnitCount:*(a1 + 104)];
    }

    v27 = v38;
  }

  else
  {
    v27 = [v36 currentResponseWithRequest:*(a1 + 56)];
    v43 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v28 = fp_current_or_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v30 = FPPopLogSectionForBlock(*(a1 + 80));
      v31 = *v33;
      *buf = 134219778;
      v47 = v30;
      v48 = 2112;
      v49 = v31;
      v50 = 2080;
      v51 = "[FPXExtensionContext modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]_block_invoke";
      v52 = 2112;
      v53 = 0;
      v54 = 1024;
      v55 = 0;
      v56 = 1024;
      v57 = 0;
      v58 = 2112;
      v59 = v27;
      v60 = 2112;
      v61 = v19;
      _os_log_debug_impl(&dword_1AAAE1000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, 0x%x, %{BOOL}d, %@, %@", buf, 0x4Au);
    }

    (*(*(a1 + 80) + 16))();
    __fp_pop_log(&v43);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __103__FPXExtensionContext_modifyItem_baseVersion_changedFields_contents_options_request_completionHandler___block_invoke_285(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = *(a1 + 32);
  v11 = a5;
  [v10 stopAccessingSecurityScopedResource];
  v12 = [*(a1 + 48) itemFromVendorItem:v9];
  v13 = [*(a1 + 48) currentResponseWithRequest:*(a1 + 56)];
  v14 = [*(a1 + 48) internalErrorFromVendorError:v11 callerDescription:@"modifyItem"];

  v19 = fpfs_adopt_log(*(*(a1 + 40) + 80));
  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = FPPopLogSectionForBlock(*(a1 + 64));
    v18 = *(a1 + 40);
    *buf = 134219778;
    v21 = v17;
    v22 = 2112;
    v23 = v18;
    v24 = 2080;
    v25 = "[FPXExtensionContext modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]_block_invoke";
    v26 = 2112;
    v27 = v12;
    v28 = 2048;
    v29 = a3;
    v30 = 1024;
    v31 = a4;
    v32 = 2112;
    v33 = v13;
    v34 = 2112;
    v35 = v14;
    _os_log_debug_impl(&dword_1AAAE1000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, 0x%lx, %{BOOL}d, %@, %@", buf, 0x4Eu);
  }

  (*(*(a1 + 64) + 16))();
  __fp_pop_log(&v19);

  v16 = *MEMORY[0x1E69E9840];
}

void __79__FPXExtensionContext_singleItemChange_changedFields_bounce_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v28[0] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __79__FPXExtensionContext_singleItemChange_changedFields_bounce_completionHandler___block_invoke_2;
    v14[3] = &unk_1E79394E0;
    v14[4] = *(a1 + 32);
    v17 = *(a1 + 40);
    v15 = v5;
    v16 = v6;
    [v7 _indexOutOfBandUpdatedItems:v8 deletedItems:MEMORY[0x1E695E0F0] indexReason:1 completionHandler:v14];
  }

  else
  {
    v13 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = FPPopLogSectionForBlock(*(a1 + 40));
      v12 = *(a1 + 32);
      *buf = 134219010;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2080;
      v23 = "[FPXExtensionContext singleItemChange:changedFields:bounce:completionHandler:]_block_invoke";
      v24 = 2112;
      v25 = 0;
      v26 = 2112;
      v27 = v6;
      _os_log_debug_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log(&v13);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __79__FPXExtensionContext_singleItemChange_changedFields_bounce_completionHandler___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock(*(a1 + 56));
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *buf = 134219010;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2080;
    v16 = "[FPXExtensionContext singleItemChange:changedFields:bounce:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_debug_impl(&dword_1AAAE1000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
  __fp_pop_log(&v10);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_singleItemChange:(id)a3 changedFields:(unint64_t)a4 bounce:(BOOL)a5 bounceIndex:(unint64_t)a6 request:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a7;
  v16 = a8;
  instanceQueue = self->_instanceQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __100__FPXExtensionContext__singleItemChange_changedFields_bounce_bounceIndex_request_completionHandler___block_invoke;
  v21[3] = &unk_1E7939580;
  v21[4] = self;
  v22 = v14;
  v25 = a4;
  v26 = a6;
  v27 = a5;
  v23 = v15;
  v24 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  fp_dispatch_async_with_logs(instanceQueue, v21);
}

void __100__FPXExtensionContext__singleItemChange_changedFields_bounce_bounceIndex_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = a1 + 32;
  v4 = [*(a1 + 40) itemID];
  v5 = [v2 domainContextForItemID:v4];

  v6 = [v5 domain];
  v7 = [v6 personaIdentifier];
  v8 = [MEMORY[0x1E69DF068] sharedManager];
  v9 = [v8 currentPersona];
  v10 = [v9 userPersonaUniqueString];
  if ([v7 isEqualToString:v10])
  {
  }

  else
  {
    [MEMORY[0x1E69DF068] sharedManager];
    v11 = v29 = v5;
    v12 = [v11 currentPersona];
    v27 = [v12 userPersonaUniqueString];
    v13 = [v29 domain];
    [v13 personaIdentifier];
    v14 = v28 = v6;

    v5 = v29;
    if (v27 != v14)
    {
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __100__FPXExtensionContext__singleItemChange_changedFields_bounce_bounceIndex_request_completionHandler___block_invoke_cold_1(v3, v29, v26);
      }

      exit(1);
    }
  }

  v15 = [v5 vendorInstance];
  v16 = *(a1 + 40);
  v17 = *(a1 + 64);
  if (*(a1 + 72) >= 2uLL)
  {
    v18 = [*(a1 + 40) copy];

    v19 = [*(a1 + 40) filename];
    v20 = [v19 fp_bouncedNameWithIndex:*(a1 + 72) isDir:{objc_msgSend(*(a1 + 40), "isFolder")}];
    [v18 setFilename:v20];

    v17 |= 2uLL;
    v16 = v18;
  }

  v21 = [*(a1 + 40) itemVersion];
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __100__FPXExtensionContext__singleItemChange_changedFields_bounce_bounceIndex_request_completionHandler___block_invoke_292;
  v30[3] = &unk_1E7939558;
  v30[4] = *(a1 + 32);
  v31 = v5;
  v36 = *(a1 + 80);
  v32 = v22;
  v35 = *(a1 + 64);
  v33 = *(a1 + 48);
  v34 = *(a1 + 56);
  v24 = v5;
  v25 = [v15 modifyItem:v16 baseVersion:v21 changedFields:v17 contents:0 options:0x10000 request:v23 completionHandler:v30];
}

void __100__FPXExtensionContext__singleItemChange_changedFields_bounce_bounceIndex_request_completionHandler___block_invoke_292(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = *(*(a1 + 32) + 24);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__FPXExtensionContext__singleItemChange_changedFields_bounce_bounceIndex_request_completionHandler___block_invoke_2;
  v13[3] = &unk_1E7939530;
  v14 = *(a1 + 40);
  v15 = v8;
  v22 = *(a1 + 88);
  v16 = *(a1 + 32);
  v17 = *(a1 + 48);
  v21 = *(a1 + 72);
  v18 = *(a1 + 56);
  v10 = *(a1 + 64);
  v19 = v7;
  v20 = v10;
  v11 = v7;
  v12 = v8;
  dispatch_async(v9, v13);
}

void __100__FPXExtensionContext__singleItemChange_changedFields_bounce_bounceIndex_request_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalErrorFromVendorError:*(a1 + 40) callerDescription:@"singleItemChange"];
  v3 = v2;
  if (*(a1 + 104) == 1 && ([v2 fp_userInfoItem], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __100__FPXExtensionContext__singleItemChange_changedFields_bounce_bounceIndex_request_completionHandler___block_invoke_2_cold_1();
    }

    [*(a1 + 48) _singleItemChange:*(a1 + 56) changedFields:*(a1 + 88) bounce:*(a1 + 104) bounceIndex:*(a1 + 96) + 1 request:*(a1 + 64) completionHandler:*(a1 + 80)];
  }

  else
  {
    v6 = *(a1 + 80);
    v7 = [*(a1 + 32) itemFromVendorItem:*(a1 + 72)];
    (*(v6 + 16))(v6, v7, v3);
  }
}

- (void)bulkItemChanges:(id)a3 changedFields:(unint64_t)a4 completionHandler:(id)a5
{
  v20[8] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v8 firstObject];
  v11 = v10;
  if (v10)
  {
    instanceQueue = self->_instanceQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __71__FPXExtensionContext_bulkItemChanges_changedFields_completionHandler___block_invoke;
    v15[3] = &unk_1E7939620;
    v15[4] = self;
    v16 = v10;
    v17 = v8;
    v19 = a4;
    v18 = v9;
    fp_dispatch_async_with_logs(instanceQueue, v15);
  }

  else
  {
    v20[0] = fpfs_adopt_log(self->_log);
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock(v9);
      [FPXExtensionContext bulkItemChanges:changedFields:completionHandler:];
    }

    (*(v9 + 2))(v9, 0, 0, 0);
    __fp_pop_log(v20);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __71__FPXExtensionContext_bulkItemChanges_changedFields_completionHandler___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = a1 + 32;
  v3 = [*(a1 + 40) itemID];
  v32 = [v1 domainContextForItemID:v3];

  group = [v32 domain];
  v4 = [group personaIdentifier];
  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];
  v7 = [v6 userPersonaUniqueString];
  if ([v4 isEqualToString:v7])
  {
  }

  else
  {
    v8 = [MEMORY[0x1E69DF068] sharedManager];
    v9 = [v8 currentPersona];
    v10 = [v9 userPersonaUniqueString];
    v11 = [v32 domain];
    v12 = [v11 personaIdentifier];

    if (v10 != v12)
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __71__FPXExtensionContext_bulkItemChanges_changedFields_completionHandler___block_invoke_cold_1(v2, v32, v27);
      }

      exit(1);
    }
  }

  v30 = [v32 vendorInstance];
  groupa = dispatch_group_create();
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = __Block_byref_object_copy_;
  v51[4] = __Block_byref_object_dispose_;
  v52 = objc_opt_new();
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy_;
  v49[4] = __Block_byref_object_dispose_;
  v50 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = *(a1 + 48);
  v13 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v13)
  {
    v29 = *v46;
    do
    {
      v14 = 0;
      do
      {
        if (*v46 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v45 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        dispatch_group_enter(groupa);
        v17 = [v15 itemIdentifier];
        v18 = [v15 itemVersion];
        v19 = [v18 versionRewritingBeforeFirstSync];
        v20 = *(a1 + 64);
        v21 = +[NSFileProviderRequest requestFromTheSystem];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __71__FPXExtensionContext_bulkItemChanges_changedFields_completionHandler___block_invoke_297;
        v39[3] = &unk_1E79395A8;
        v40 = v32;
        v41 = groupa;
        v43 = v51;
        v22 = v17;
        v42 = v22;
        v44 = v49;
        v23 = [v30 modifyItem:v15 baseVersion:v19 changedFields:v20 contents:0 options:0x10000 request:v21 completionHandler:v39];

        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v13 != v14);
      v13 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v13);
  }

  v24 = *(a1 + 32);
  v25 = *(v24 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__FPXExtensionContext_bulkItemChanges_changedFields_completionHandler___block_invoke_2;
  block[3] = &unk_1E79395F8;
  block[4] = v24;
  v37 = v51;
  v36 = *(a1 + 56);
  v38 = v49;
  dispatch_group_notify(groupa, v25, block);

  _Block_object_dispose(v49, 8);
  _Block_object_dispose(v51, 8);

  v26 = *MEMORY[0x1E69E9840];
}

void __71__FPXExtensionContext_bulkItemChanges_changedFields_completionHandler___block_invoke_297(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = a2;
  v7 = a5;
  v8 = [*(a1 + 32) itemFromVendorItem:v11];
  v9 = [*(a1 + 32) internalErrorFromVendorError:v7 callerDescription:@"bulkItemChanges"];
  v10 = *(a1 + 40);
  objc_sync_enter(v10);
  [*(*(*(a1 + 56) + 8) + 40) setObject:v8 forKeyedSubscript:*(a1 + 48)];
  [*(*(*(a1 + 64) + 8) + 40) setObject:v9 forKeyedSubscript:*(a1 + 48)];
  objc_sync_exit(v10);

  dispatch_group_leave(*(a1 + 40));
}

void __71__FPXExtensionContext_bulkItemChanges_changedFields_completionHandler___block_invoke_2(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v3 = [*(*(a1[3].i64[0] + 8) + 40) allValues];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__FPXExtensionContext_bulkItemChanges_changedFields_completionHandler___block_invoke_3;
  v5[3] = &unk_1E79395D0;
  v4 = a1[2].i64[1];
  v5[4] = a1[2].i64[0];
  v6 = v4;
  v7 = vextq_s8(a1[3], a1[3], 8uLL);
  [v2 _indexOutOfBandUpdatedItems:v3 deletedItems:MEMORY[0x1E695E0F0] indexReason:1 completionHandler:v5];
}

void __71__FPXExtensionContext_bulkItemChanges_changedFields_completionHandler___block_invoke_3(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v11 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v7 = FPPopLogSectionForBlock(*(a1 + 40));
    v8 = *(a1 + 32);
    if ([*(*(*(a1 + 48) + 8) + 40) count])
    {
      v9 = 0;
    }

    else
    {
      v9 = *(*(*(a1 + 56) + 8) + 40);
    }

    if ([*(*(*(a1 + 48) + 8) + 40) count])
    {
      v10 = *(*(*(a1 + 48) + 8) + 40);
    }

    else
    {
      v10 = 0;
    }

    *buf = 134219010;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2080;
    v17 = "[FPXExtensionContext bulkItemChanges:changedFields:completionHandler:]_block_invoke_3";
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_debug_impl(&dword_1AAAE1000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v3 = *(a1 + 40);
  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    v4 = 0;
  }

  else
  {
    v4 = *(*(*(a1 + 56) + 8) + 40);
  }

  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    v5 = *(*(*(a1 + 48) + 8) + 40);
  }

  else
  {
    v5 = 0;
  }

  (*(v3 + 16))(v3, v4, v5, 0);
  __fp_pop_log(&v11);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)indexOneBatchInDomain:(id)a3 completionHandler:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v31 = a4;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v33;
    _os_log_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] [spotlight] fileproviderd ask us to index one batch for %@", buf, 0xCu);
  }

  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [FPXExtensionContext indexOneBatchInDomain:completionHandler:];
  }

  v7 = [(FPXExtensionContext *)self domainContextForIdentifier:v33];
  v8 = [v7 domain];
  v9 = [v8 personaIdentifier];
  v10 = [MEMORY[0x1E69DF068] sharedManager];
  v11 = [v10 currentPersona];
  v12 = [v11 userPersonaUniqueString];
  if ([v9 isEqualToString:v12])
  {
  }

  else
  {
    v13 = [MEMORY[0x1E69DF068] sharedManager];
    v14 = [v13 currentPersona];
    v15 = [v14 userPersonaUniqueString];
    v16 = [v7 domain];
    v17 = [v16 personaIdentifier];
    v30 = v15 == v17;

    if (!v30)
    {
      v29 = fp_current_or_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [(FPXExtensionContext *)self indexOneBatchInDomain:v7 completionHandler:v29];
      }

      exit(1);
    }
  }

  if (v7)
  {
    v18 = [v7 log];
    v19 = fpfs_adopt_log(v18);

    if ([v7 usesFPFS])
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"trying to use %s on a domain that is backed by FPFS", "-[FPXExtensionContext indexOneBatchInDomain:completionHandler:]"];
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        __37__FPXExtensionContext_principalClass__block_invoke_cold_1();
      }

      v28 = v26;
      __assert_rtn("-[FPXExtensionContext indexOneBatchInDomain:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/FileProvider/extension/FPXExtensionContext.m", 1267, [v26 UTF8String]);
    }

    v20 = [v7 spotlightIndexer];
    if (v20)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __63__FPXExtensionContext_indexOneBatchInDomain_completionHandler___block_invoke;
      v34[3] = &unk_1E7939328;
      v34[4] = self;
      v35 = v31;
      [v20 indexOneBatchWithCompletionHandler:v34];
    }

    else
    {
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [FPXExtensionContext indexOneBatchInDomain:completionHandler:];
      }

      v36 = fpfs_adopt_log(self->_log);
      v24 = fp_current_or_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        FPPopLogSectionForBlock(v31);
        [FPXExtensionContext indexOneBatchInDomain:completionHandler:];
      }

      (*(v31 + 2))(v31, 0, 0);
      __fp_pop_log(&v36);
    }
  }

  else
  {
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [FPXExtensionContext indexOneBatchInDomain:completionHandler:];
    }

    v36 = fpfs_adopt_log(self->_log);
    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock(v31);
      [FPXExtensionContext indexOneBatchInDomain:completionHandler:];
    }

    (*(v31 + 2))(v31, 0, 0);
    __fp_pop_log(&v36);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __63__FPXExtensionContext_indexOneBatchInDomain_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AAAE1000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] [spotlight] index one batch: done (responding to fileproviderd)", buf, 2u);
  }

  v11 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = FPPopLogSectionForBlock(*(a1 + 40));
    v10 = *(a1 + 32);
    *buf = 134219010;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2080;
    v17 = "[FPXExtensionContext indexOneBatchInDomain:completionHandler:]_block_invoke";
    v18 = 1024;
    v19 = a2;
    v20 = 2112;
    v21 = v5;
    _os_log_debug_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %{BOOL}d, %@", buf, 0x30u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(&v11);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dropIndexForDomain:(id)a3 dropReason:(unint64_t)a4 completionHandler:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = a3;
  v28 = a5;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v30;
    _os_log_impl(&dword_1AAAE1000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] [spotlight] fileproviderd ask us to drop index for %@", buf, 0xCu);
  }

  v31 = [(FPXExtensionContext *)self domainContextForIdentifier:v30];
  v7 = [v31 domain];
  v8 = [v7 personaIdentifier];
  v9 = [MEMORY[0x1E69DF068] sharedManager];
  v10 = [v9 currentPersona];
  v11 = [v10 userPersonaUniqueString];
  if ([v8 isEqualToString:v11])
  {
  }

  else
  {
    v12 = [MEMORY[0x1E69DF068] sharedManager];
    v13 = [v12 currentPersona];
    v14 = [v13 userPersonaUniqueString];
    v15 = [v31 domain];
    v16 = [v15 personaIdentifier];
    v17 = v14 == v16;

    if (!v17)
    {
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [FPXExtensionContext dropIndexForDomain:v31 dropReason:v26 completionHandler:?];
      }

      exit(1);
    }
  }

  if (v31)
  {
    v18 = [v31 log];
    v19 = fpfs_adopt_log(v18);

    v20 = [v31 spotlightIndexer];
    if (!v20)
    {
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [FPXExtensionContext dropIndexForDomain:dropReason:completionHandler:];
      }

      v34 = fpfs_adopt_log(self->_log);
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        FPPopLogSectionForBlock(v28);
        [FPXExtensionContext dropIndexForDomain:dropReason:completionHandler:];
      }

      (*(v28 + 2))(v28, 0);
      __fp_pop_log(&v34);
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __71__FPXExtensionContext_dropIndexForDomain_dropReason_completionHandler___block_invoke;
    v32[3] = &unk_1E7939170;
    v32[4] = self;
    v33 = v28;
    [v20 dropIndexWithDropReason:a4 completionHandler:v32];
  }

  else
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [FPXExtensionContext dropIndexForDomain:dropReason:completionHandler:];
    }

    v34 = fpfs_adopt_log(self->_log);
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock(v28);
      [FPXExtensionContext dropIndexForDomain:dropReason:completionHandler:];
    }

    (*(v28 + 2))(v28, 0);
    __fp_pop_log(&v34);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __71__FPXExtensionContext_dropIndexForDomain_dropReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v8 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock(*(a1 + 40));
    v7 = *(a1 + 32);
    *buf = 134218754;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPXExtensionContext dropIndexForDomain:dropReason:completionHandler:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(&v8);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)signalNeedsReindexItemsWithIdentifiers:(id)a3 domainIdentifier:(id)a4 indexReason:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  instanceQueue = self->_instanceQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __109__FPXExtensionContext_signalNeedsReindexItemsWithIdentifiers_domainIdentifier_indexReason_completionHandler___block_invoke;
  v17[3] = &unk_1E7939670;
  v17[4] = self;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  v21 = a5;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  fp_dispatch_async_with_logs(instanceQueue, v17);
}

void __109__FPXExtensionContext_signalNeedsReindexItemsWithIdentifiers_domainIdentifier_indexReason_completionHandler___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) v2Instance];
  if (v3)
  {
    v4 = [*(a1 + 32) domainContextForIdentifier:*(a1 + 40)];
    v5 = [v4 domain];
    v6 = [v5 personaIdentifier];
    v7 = [MEMORY[0x1E69DF068] sharedManager];
    v8 = [v7 currentPersona];
    v9 = [v8 userPersonaUniqueString];
    if ([v6 isEqualToString:v9])
    {
    }

    else
    {
      [MEMORY[0x1E69DF068] sharedManager];
      v13 = v27 = v3;
      v14 = [v13 currentPersona];
      [v14 userPersonaUniqueString];
      v15 = v26 = v6;
      [v4 domain];
      v16 = v28 = v4;
      [v16 personaIdentifier];
      v17 = v25 = v5;

      v4 = v28;
      v3 = v27;

      if (v15 != v17)
      {
        v24 = fp_current_or_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          __109__FPXExtensionContext_signalNeedsReindexItemsWithIdentifiers_domainIdentifier_indexReason_completionHandler___block_invoke_cold_1(v2, v28, v24);
        }

        exit(1);
      }
    }

    v18 = objc_opt_new();
    v19 = *(a1 + 48);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __109__FPXExtensionContext_signalNeedsReindexItemsWithIdentifiers_domainIdentifier_indexReason_completionHandler___block_invoke_305;
    v31[3] = &unk_1E7939648;
    v32 = v3;
    v12 = v4;
    v33 = v12;
    v20 = v18;
    v34 = v20;
    v21 = [v19 fp_map:v31];
    if ([v21 count] || objc_msgSend(v20, "count"))
    {
      v22 = [v12 spotlightIndexer];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __109__FPXExtensionContext_signalNeedsReindexItemsWithIdentifiers_domainIdentifier_indexReason_completionHandler___block_invoke_307;
      v29[3] = &unk_1E7939100;
      v23 = *(a1 + 64);
      v30 = *(a1 + 56);
      [v22 indexOutOfBandUpdatedItems:v21 deletedItems:v20 indexReason:v23 completionHandler:v29];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __109__FPXExtensionContext_signalNeedsReindexItemsWithIdentifiers_domainIdentifier_indexReason_completionHandler___block_invoke_cold_2();
    }

    v11 = *(a1 + 56);
    v12 = FPNotSupportedError();
    (*(v11 + 16))(v11, v12);
  }
}

id __109__FPXExtensionContext_signalNeedsReindexItemsWithIdentifiers_domainIdentifier_indexReason_completionHandler___block_invoke_305(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v16 = 0;
  v5 = [v4 itemForIdentifier:v3 error:&v16];
  v6 = v16;
  v7 = [v6 domain];
  if ([v7 isEqualToString:@"NSFileProviderErrorDomain"])
  {
    v8 = [v6 code] == -1005;
  }

  else
  {
    v8 = 0;
  }

  if (v6 && !v8)
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __109__FPXExtensionContext_signalNeedsReindexItemsWithIdentifiers_domainIdentifier_indexReason_completionHandler___block_invoke_305_cold_1(v6);
    }

    goto LABEL_11;
  }

  if (v5 == 0 || v8)
  {
    v10 = [FPItemID alloc];
    v11 = [*(a1 + 40) providerDomain];
    v12 = [v11 identifier];
    v13 = [(FPItemID *)v10 initWithProviderDomainID:v12 itemIdentifier:v3];

    [*(a1 + 48) addObject:v13];
LABEL_11:
    v14 = 0;
    goto LABEL_13;
  }

  v14 = [*(a1 + 40) itemFromVendorItem:v5];
LABEL_13:

  return v14;
}

- (void)dumpIndexStateForDomain:(id)a3 toFileHandler:(id)a4 completionHandler:(id)a5
{
  v29[8] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v26 = a4;
  v27 = a5;
  v24 = v8;
  v25 = self;
  v28 = [(FPXExtensionContext *)self domainContextForIdentifier:v8];
  v9 = [v28 domain];
  v10 = [v9 personaIdentifier];
  v11 = [MEMORY[0x1E69DF068] sharedManager];
  v12 = [v11 currentPersona];
  v13 = [v12 userPersonaUniqueString];
  if ([v10 isEqualToString:v13])
  {
  }

  else
  {
    v14 = [MEMORY[0x1E69DF068] sharedManager];
    v15 = [v14 currentPersona];
    v16 = [v15 userPersonaUniqueString];
    v17 = [v28 domain];
    v18 = [v17 personaIdentifier];

    if (v16 != v18)
    {
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [FPXExtensionContext dumpIndexStateForDomain:v25 toFileHandler:v28 completionHandler:v23];
      }

      exit(1);
    }
  }

  v19 = [v28 spotlightIndexer];
  v20 = -[FPCTLTermDumper initWithFd:forceColor:]([FPCTLTermDumper alloc], "initWithFd:forceColor:", [v26 fileDescriptor], 1);
  [v19 dumpStateTo:v20];

  v29[0] = fpfs_adopt_log(v25->_log);
  v21 = fp_current_or_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    FPPopLogSectionForBlock(v27);
    [FPXExtensionContext dumpIndexStateForDomain:toFileHandler:completionHandler:];
  }

  (*(v27 + 2))(v27, 0);
  __fp_pop_log(v29);

  v22 = *MEMORY[0x1E69E9840];
}

- (void)preflightTrashItemIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  instanceQueue = self->_instanceQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__FPXExtensionContext_preflightTrashItemIDs_completionHandler___block_invoke;
  v11[3] = &unk_1E7939210;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  fp_dispatch_async_with_logs(instanceQueue, v11);
}

void __63__FPXExtensionContext_preflightTrashItemIDs_completionHandler___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v31 = objc_opt_new();
  v28 = a1;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = (a1 + 32);
  v29 = [v2 domainContextForItemIDs:v3];
  v32 = [v29 domain];
  v5 = [v32 personaIdentifier];
  v6 = [MEMORY[0x1E69DF068] sharedManager];
  v7 = [v6 currentPersona];
  v8 = [v7 userPersonaUniqueString];
  if ([v5 isEqualToString:v8])
  {
  }

  else
  {
    v9 = [MEMORY[0x1E69DF068] sharedManager];
    v10 = [v9 currentPersona];
    v11 = [v10 userPersonaUniqueString];
    v12 = [v29 domain];
    v13 = [v12 personaIdentifier];

    if (v11 != v13)
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __63__FPXExtensionContext_preflightTrashItemIDs_completionHandler___block_invoke_cold_1(v4, v29, v27);
      }

      exit(1);
    }
  }

  v33 = [v29 instanceWithPrivateSelector:sel_preflightTrashItemWithIdentifier_completionHandler_];
  if (v33)
  {
    v14 = dispatch_group_create();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = *(v28 + 40);
    v15 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v15)
    {
      v16 = *v43;
      v17 = MEMORY[0x1E69E9820];
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v43 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v42 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          dispatch_group_enter(v14);
          v21 = [v19 identifier];
          v39[0] = v17;
          v39[1] = 3221225472;
          v39[2] = __63__FPXExtensionContext_preflightTrashItemIDs_completionHandler___block_invoke_311;
          v39[3] = &unk_1E7939698;
          v40 = v14;
          v41 = v31;
          [v33 preflightTrashItemWithIdentifier:v21 completionHandler:v39];

          objc_autoreleasePoolPop(v20);
        }

        v15 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v15);
    }

    v22 = *(*(v28 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__FPXExtensionContext_preflightTrashItemIDs_completionHandler___block_invoke_2;
    block[3] = &unk_1E79392D8;
    v35 = v31;
    v23 = v29;
    v24 = *(v28 + 32);
    v36 = v23;
    v37 = v24;
    v38 = *(v28 + 48);
    dispatch_group_notify(v14, v22, block);
  }

  else
  {
    v46 = fpfs_adopt_log(*(*v4 + 80));
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock(*(v28 + 48));
      __63__FPXExtensionContext_preflightTrashItemIDs_completionHandler___block_invoke_cold_2(v4);
    }

    (*(*(v28 + 48) + 16))();
    __fp_pop_log(&v46);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __63__FPXExtensionContext_preflightTrashItemIDs_completionHandler___block_invoke_311(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  if (v4)
  {
    [*(a1 + 40) addObjectsFromArray:v4];
  }

  objc_sync_exit(v3);

  dispatch_group_leave(*(a1 + 32));
}

void __63__FPXExtensionContext_preflightTrashItemIDs_completionHandler___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__FPXExtensionContext_preflightTrashItemIDs_completionHandler___block_invoke_3;
  v9[3] = &unk_1E79396C0;
  v2 = *(a1 + 32);
  v10 = *(a1 + 40);
  v3 = [v2 fp_map:v9];
  v8 = fpfs_adopt_log(*(*(a1 + 48) + 80));
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock(*(a1 + 56));
    v7 = *(a1 + 48);
    *buf = 134218754;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2080;
    v16 = "[FPXExtensionContext preflightTrashItemIDs:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 56) + 16))();
  __fp_pop_log(&v8);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)providePlaceholderAtURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  instanceQueue = self->_instanceQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__FPXExtensionContext_providePlaceholderAtURL_completionHandler___block_invoke;
  v11[3] = &unk_1E7939300;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  fp_dispatch_async_with_logs(instanceQueue, v11);
}

void __65__FPXExtensionContext_providePlaceholderAtURL_completionHandler___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) v2Instance];
  if (v2)
  {
    v3 = [objc_opt_class() placeholderURLForURL:*(a1 + 40)];
    v4 = *(a1 + 40);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__FPXExtensionContext_providePlaceholderAtURL_completionHandler___block_invoke_317;
    v14[3] = &unk_1E79396E8;
    v14[4] = *(a1 + 32);
    v5 = *(a1 + 48);
    v15 = v3;
    v16 = v5;
    v6 = v3;
    [v2 providePlaceholderAtURL:v4 completionHandler:v14];
  }

  else
  {
    v17 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = FPPopLogSectionForBlock(*(a1 + 48));
      v12 = *(a1 + 32);
      v13 = FPNotSupportedError();
      *buf = 134219010;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2080;
      v23 = "[FPXExtensionContext providePlaceholderAtURL:completionHandler:]_block_invoke";
      v24 = 2112;
      v25 = 0;
      v26 = 2112;
      v27 = v13;
      _os_log_debug_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v8 = *(a1 + 48);
    v9 = FPNotSupportedError();
    (*(v8 + 16))(v8, 0, v9);

    __fp_pop_log(&v17);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __65__FPXExtensionContext_providePlaceholderAtURL_completionHandler___block_invoke_317(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = FPPopLogSectionForBlock(*(a1 + 48));
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = [v3 fp_strippedError];
    *buf = 134219010;
    v15 = v9;
    v16 = 2112;
    v17 = v11;
    v18 = 2080;
    v19 = "[FPXExtensionContext providePlaceholderAtURL:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v12;
    _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = [v3 fp_strippedError];
  (*(v5 + 16))(v5, v6, v7);

  __fp_pop_log(&v13);
  v8 = *MEMORY[0x1E69E9840];
}

- (id)alternateContentsURLWrapperForItemID:(id)a3
{
  v4 = a3;
  v5 = [(FPDocumentAlternateContents *)self->_alternateContents getAlternateContentsURLWrapperForItemID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 url];
    v8 = [v7 startAccessingSecurityScopedResource];
    v9 = [v7 checkResourceIsReachableAndReturnError:0];
    if (v8)
    {
      [v7 stopAccessingSecurityScopedResource];
    }

    if (v9)
    {
      [v7 removeCachedResourceValueForKey:*MEMORY[0x1E695DA98]];
      [v7 removeCachedResourceValueForKey:*MEMORY[0x1E695DB50]];
      v10 = v6;

      goto LABEL_10;
    }

    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FPXExtensionContext alternateContentsURLWrapperForItemID:v7];
    }

    [(FPDocumentAlternateContents *)self->_alternateContents removeAlternateContentsURLForDocumentWithItemID:v4];
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (void)fetchAlternateContentsURLWrapperForURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__FPXExtensionContext_fetchAlternateContentsURLWrapperForURL_completionHandler___block_invoke;
  v10[3] = &unk_1E7939710;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(FPXExtensionContext *)self identifierForItemAtURL:v9 completionHandler:v10];
}

void __80__FPXExtensionContext_fetchAlternateContentsURLWrapperForURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = (a1 + 32);
  v15 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __80__FPXExtensionContext_fetchAlternateContentsURLWrapperForURL_completionHandler___block_invoke_cold_1((a1 + 32));
  }

  if (v5)
  {
    v9 = [*v7 alternateContentsURLWrapperForItemID:v5];
  }

  else
  {
    v9 = 0;
  }

  v14 = fpfs_adopt_log(*(*v7 + 10));
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = FPPopLogSectionForBlock(*(a1 + 48));
    v13 = *v7;
    *buf = 134219010;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2080;
    v21 = "[FPXExtensionContext fetchAlternateContentsURLWrapperForURL:completionHandler:]_block_invoke";
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v6;
    _os_log_debug_impl(&dword_1AAAE1000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log(&v14);

  __fp_pop_log(&v15);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)setAlternateContentsURL:(id)a3 forDocumentWithURL:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__FPXExtensionContext_setAlternateContentsURL_forDocumentWithURL_completionHandler___block_invoke;
  v12[3] = &unk_1E7939710;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(FPXExtensionContext *)self identifierForItemAtURL:a4 completionHandler:v12];
}

void __84__FPXExtensionContext_setAlternateContentsURL_forDocumentWithURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v16 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) url];
    v12 = [v11 fp_shortDescription];
    *buf = 138413058;
    v18 = v10;
    v19 = 2080;
    v20 = "[FPXExtensionContext setAlternateContentsURL:forDocumentWithURL:completionHandler:]_block_invoke";
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v5;
    _os_log_debug_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@ %s %@, %@", buf, 0x2Au);
  }

  if (v5)
  {
    [*(*(a1 + 32) + 56) setAlternateContentsURLWrapper:*(a1 + 40) forDocumentWithItemID:v5];
  }

  v15 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = FPPopLogSectionForBlock(*(a1 + 48));
    v14 = *(a1 + 32);
    *buf = 134219010;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    v21 = 2080;
    v22 = "[FPXExtensionContext setAlternateContentsURL:forDocumentWithURL:completionHandler:]_block_invoke";
    v23 = 2112;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    _os_log_debug_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log(&v15);

  __fp_pop_log(&v16);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)didUpdateAlternateContentsDocumentForDocumentWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__FPXExtensionContext_didUpdateAlternateContentsDocumentForDocumentWithURL_completionHandler___block_invoke;
  v8[3] = &unk_1E7939508;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(FPXExtensionContext *)self itemForURL:a3 completionHandler:v8];
}

void __94__FPXExtensionContext_didUpdateAlternateContentsDocumentForDocumentWithURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v34 = a3;
  v35 = v5;
  if (v5)
  {
    v32 = a1;
    v31 = [v5 itemID];
    v6 = [*(a1 + 32) domainContextForItemID:v31];
    v33 = [v6 domain];
    v7 = [v33 personaIdentifier];
    v8 = [MEMORY[0x1E69DF068] sharedManager];
    v9 = [v8 currentPersona];
    v10 = [v9 userPersonaUniqueString];
    if ([v7 isEqualToString:v10])
    {
    }

    else
    {
      v12 = [MEMORY[0x1E69DF068] sharedManager];
      v13 = [v12 currentPersona];
      v14 = [v13 userPersonaUniqueString];
      v15 = [v6 domain];
      v16 = [v15 personaIdentifier];

      if (v14 != v16)
      {
        v30 = fp_current_or_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          __94__FPXExtensionContext_didUpdateAlternateContentsDocumentForDocumentWithURL_completionHandler___block_invoke_cold_1(v32 + 32, v6, v30);
        }

        exit(1);
      }
    }

    v17 = [v6 vendorInstance];
    v18 = [v35 providerItemID];
    v19 = [v18 identifier];

    v20 = +[NSFileProviderRequest requestFromTheSystem];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __94__FPXExtensionContext_didUpdateAlternateContentsDocumentForDocumentWithURL_completionHandler___block_invoke_319;
    v36[3] = &unk_1E7939760;
    v21 = *(v32 + 32);
    v22 = *(v32 + 40);
    v37 = v19;
    v38 = v21;
    v40 = v6;
    v41 = v22;
    v39 = v31;
    v23 = v6;
    v24 = v31;
    v25 = v19;
    v26 = [v17 itemForIdentifier:v25 request:v20 completionHandler:v36];
  }

  else
  {
    v42 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v28 = FPPopLogSectionForBlock(*(a1 + 40));
      v29 = *(a1 + 32);
      *buf = 134218754;
      v44 = v28;
      v45 = 2112;
      v46 = v29;
      v47 = 2080;
      v48 = "[FPXExtensionContext didUpdateAlternateContentsDocumentForDocumentWithURL:completionHandler:]_block_invoke";
      v49 = 2112;
      v50 = v34;
      _os_log_debug_impl(&dword_1AAAE1000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log(&v42);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __94__FPXExtensionContext_didUpdateAlternateContentsDocumentForDocumentWithURL_completionHandler___block_invoke_319(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 40) alternateContentsURLWrapperForItemID:*(a1 + 48)];
    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = *(v8 + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __94__FPXExtensionContext_didUpdateAlternateContentsDocumentForDocumentWithURL_completionHandler___block_invoke_320;
      block[3] = &unk_1E7939738;
      block[4] = v8;
      v22 = *(a1 + 56);
      v23 = v5;
      v24 = v7;
      dispatch_async(v9, block);
      v25 = fpfs_adopt_log(*(*(a1 + 40) + 80));
      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        FPPopLogSectionForBlock(*(a1 + 64));
        __94__FPXExtensionContext_didUpdateAlternateContentsDocumentForDocumentWithURL_completionHandler___block_invoke_319_cold_1((a1 + 40));
      }

      (*(*(a1 + 64) + 16))();
      __fp_pop_log(&v25);
    }

    else
    {
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __94__FPXExtensionContext_didUpdateAlternateContentsDocumentForDocumentWithURL_completionHandler___block_invoke_319_cold_2((a1 + 48));
      }

      v25 = fpfs_adopt_log(*(*(a1 + 40) + 80));
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        FPPopLogSectionForBlock(*(a1 + 64));
        __94__FPXExtensionContext_didUpdateAlternateContentsDocumentForDocumentWithURL_completionHandler___block_invoke_319_cold_3((a1 + 40));
      }

      (*(*(a1 + 64) + 16))();
      __fp_pop_log(&v25);
    }
  }

  else
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __94__FPXExtensionContext_didUpdateAlternateContentsDocumentForDocumentWithURL_completionHandler___block_invoke_319_cold_4(a1, v6);
    }

    v25 = fpfs_adopt_log(*(*(a1 + 40) + 80));
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v18 = FPPopLogSectionForBlock(*(a1 + 64));
      v19 = *(a1 + 40);
      v20 = FPItemNotFoundError(*(a1 + 32));
      *buf = 134218754;
      v27 = v18;
      v28 = 2112;
      v29 = v19;
      v30 = 2080;
      v31 = "[FPXExtensionContext didUpdateAlternateContentsDocumentForDocumentWithURL:completionHandler:]_block_invoke";
      v32 = 2112;
      v33 = v20;
      _os_log_debug_impl(&dword_1AAAE1000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v13 = *(a1 + 64);
    v14 = FPItemNotFoundError(*(a1 + 32));
    (*(v13 + 16))(v13, v14);

    __fp_pop_log(&v25);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __94__FPXExtensionContext_didUpdateAlternateContentsDocumentForDocumentWithURL_completionHandler___block_invoke_320(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [*(a1 + 40) itemFromVendorItem:{*(a1 + 48), v11}];
        v9 = [*(a1 + 56) url];
        [v7 alternateContentsWereUpdatedAtURL:v9 forItem:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)identifierForItemAtURL:(id)a3 completionHandler:(id)a4
{
  v16[6] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16[0] = fpfs_adopt_log(self->_log);
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [v6 fp_shortDescription];
    objc_claimAutoreleasedReturnValue();
    [FPXExtensionContext identifierForItemAtURL:completionHandler:];
  }

  instanceQueue = self->_instanceQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__FPXExtensionContext_identifierForItemAtURL_completionHandler___block_invoke;
  v13[3] = &unk_1E7939210;
  v13[4] = self;
  v10 = v6;
  v14 = v10;
  v11 = v7;
  v15 = v11;
  fp_dispatch_async_with_logs(instanceQueue, v13);

  __fp_pop_log(v16);
  v12 = *MEMORY[0x1E69E9840];
}

void __64__FPXExtensionContext_identifierForItemAtURL_completionHandler___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v28 = (a1 + 32);
  v30 = [*(a1 + 32) domainContextForURL:*(a1 + 40)];
  v1 = [v30 domain];
  v2 = [v1 personaIdentifier];
  v3 = [MEMORY[0x1E69DF068] sharedManager];
  v4 = [v3 currentPersona];
  v5 = [v4 userPersonaUniqueString];
  if ([v2 isEqualToString:v5])
  {
  }

  else
  {
    v6 = [MEMORY[0x1E69DF068] sharedManager];
    v7 = [v6 currentPersona];
    v8 = [v7 userPersonaUniqueString];
    v9 = [v30 domain];
    v10 = [v9 personaIdentifier];

    if (v8 != v10)
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __64__FPXExtensionContext_identifierForItemAtURL_completionHandler___block_invoke_cold_1(v28, v30, v27);
      }

      exit(1);
    }
  }

  v11 = [*v28 v2Instance];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 persistentIdentifierForItemAtURL:*(a1 + 40)];
    v31 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v21 = FPPopLogSectionForBlock(*(a1 + 48));
      v22 = *v28;
      v23 = [v30 itemIDFromVendorItemID:v13];
      *buf = 134219010;
      v33 = v21;
      v34 = 2112;
      v35 = v22;
      v36 = 2080;
      v37 = "[FPXExtensionContext identifierForItemAtURL:completionHandler:]_block_invoke";
      v38 = 2112;
      v39 = v23;
      v40 = 2112;
      v41 = 0;
      _os_log_debug_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v15 = *(a1 + 48);
    v16 = [v30 itemIDFromVendorItemID:v13];
    (*(v15 + 16))(v15, v16, 0);

    __fp_pop_log(&v31);
  }

  else
  {
    v31 = fpfs_adopt_log(*(*v28 + 10));
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v24 = FPPopLogSectionForBlock(*(a1 + 48));
      v25 = *v28;
      v26 = FPNotSupportedError();
      *buf = 134219010;
      v33 = v24;
      v34 = 2112;
      v35 = v25;
      v36 = 2080;
      v37 = "[FPXExtensionContext identifierForItemAtURL:completionHandler:]_block_invoke";
      v38 = 2112;
      v39 = 0;
      v40 = 2112;
      v41 = v26;
      _os_log_debug_impl(&dword_1AAAE1000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v18 = *(a1 + 48);
    v19 = FPNotSupportedError();
    (*(v18 + 16))(v18, 0, v19);

    __fp_pop_log(&v31);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)itemForItemID:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = fpfs_adopt_log(self->_log);
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v23 = self;
    v24 = 2080;
    v25 = "[FPXExtensionContext itemForItemID:request:completionHandler:]";
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    _os_log_debug_impl(&dword_1AAAE1000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@ %s %@, %@", buf, 0x2Au);
  }

  instanceQueue = self->_instanceQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__FPXExtensionContext_itemForItemID_request_completionHandler___block_invoke;
  v17[3] = &unk_1E79392D8;
  v17[4] = self;
  v13 = v8;
  v18 = v13;
  v14 = v9;
  v19 = v14;
  v15 = v10;
  v20 = v15;
  fp_dispatch_async_with_logs(instanceQueue, v17);

  __fp_pop_log(&v21);
  v16 = *MEMORY[0x1E69E9840];
}

void __63__FPXExtensionContext_itemForItemID_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) domainContextForItemID:*(a1 + 40)];
  v4 = [v3 domain];
  v5 = [v4 personaIdentifier];
  v6 = [MEMORY[0x1E69DF068] sharedManager];
  v7 = [v6 currentPersona];
  v8 = [v7 userPersonaUniqueString];
  if ([v5 isEqualToString:v8])
  {
  }

  else
  {
    [MEMORY[0x1E69DF068] sharedManager];
    v9 = v26 = v4;
    v10 = [v9 currentPersona];
    v24 = [v10 userPersonaUniqueString];
    v11 = [v3 domain];
    [v11 personaIdentifier];
    v12 = v25 = v5;

    if (v24 != v12)
    {
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __63__FPXExtensionContext_itemForItemID_request_completionHandler___block_invoke_cold_1(v2, v3, v23);
      }

      exit(1);
    }
  }

  v13 = [v3 vendorInstance];
  v14 = [*(a1 + 40) identifier];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __63__FPXExtensionContext_itemForItemID_request_completionHandler___block_invoke_321;
  v28[3] = &unk_1E7939788;
  v29 = v3;
  v15 = *(a1 + 48);
  v16 = v15;
  v17 = *(a1 + 40);
  v27 = *(a1 + 32);
  v18 = *(a1 + 56);
  *&v19 = v27;
  *(&v19 + 1) = v18;
  *&v20 = v16;
  *(&v20 + 1) = v17;
  v30 = v20;
  v31 = v19;
  v21 = v3;
  v22 = [v13 itemForIdentifier:v14 request:v15 completionHandler:v28];
}

void __63__FPXExtensionContext_itemForItemID_request_completionHandler___block_invoke_321(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) currentResponseWithRequest:*(a1 + 40)];
  if (!(v5 | v6))
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:0];
  }

  v8 = [*(a1 + 48) identifier];
  v9 = [v8 isEqualToString:@"NSFileProviderTrashContainerItemIdentifier"];

  if (v9)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v17 = [*(a1 + 32) itemFromVendorItem:v5];
    v11 = [*(a1 + 32) internalErrorFromVendorError:v6 callerDescription:@"itemForItemID"];

    v25 = fpfs_adopt_log(*(*(a1 + 56) + 80));
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v21 = FPPopLogSectionForBlock(*(a1 + 64));
      v22 = *(a1 + 56);
      *buf = 134219266;
      v27 = v21;
      v28 = 2112;
      v29 = v22;
      v30 = 2080;
      v31 = "[FPXExtensionContext itemForItemID:request:completionHandler:]_block_invoke";
      v32 = 2112;
      v33 = v17;
      v34 = 2112;
      v35 = v7;
      v36 = 2112;
      v37 = v11;
      _os_log_debug_impl(&dword_1AAAE1000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    (*(*(a1 + 64) + 16))();
    __fp_pop_log(&v25);

    v6 = v11;
  }

  else
  {
    v13 = [FPItem alloc];
    v14 = [*(a1 + 48) providerDomainID];
    v15 = [*(a1 + 48) identifier];
    v16 = [*(a1 + 48) identifier];
    v17 = [(FPItem *)v13 initWithProviderDomainID:v14 itemIdentifier:v15 parentItemIdentifier:v16 filename:@".Trash" isDirectory:1];

    v25 = fpfs_adopt_log(*(*(a1 + 56) + 80));
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v23 = FPPopLogSectionForBlock(*(a1 + 64));
      v24 = *(a1 + 56);
      *buf = 134219266;
      v27 = v23;
      v28 = 2112;
      v29 = v24;
      v30 = 2080;
      v31 = "[FPXExtensionContext itemForItemID:request:completionHandler:]_block_invoke";
      v32 = 2112;
      v33 = v17;
      v34 = 2112;
      v35 = v7;
      v36 = 2112;
      v37 = 0;
      _os_log_debug_impl(&dword_1AAAE1000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    (*(*(a1 + 64) + 16))();
    __fp_pop_log(&v25);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)itemForURL:(id)a3 completionHandler:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v27 = a4;
  v33 = fpfs_adopt_log(self->_log);
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [v29 fp_shortDescription];
    objc_claimAutoreleasedReturnValue();
    [FPXExtensionContext itemForURL:completionHandler:];
  }

  v28 = [(FPXExtensionContext *)self domainContextForURL:v29];
  v7 = [v28 domain];
  v8 = [v7 personaIdentifier];
  v9 = [MEMORY[0x1E69DF068] sharedManager];
  v10 = [v9 currentPersona];
  v11 = [v10 userPersonaUniqueString];
  if ([v8 isEqualToString:v11])
  {
  }

  else
  {
    v12 = [MEMORY[0x1E69DF068] sharedManager];
    v13 = [v12 currentPersona];
    v14 = [v13 userPersonaUniqueString];
    v15 = [v28 domain];
    v16 = [v15 personaIdentifier];
    v26 = v14 == v16;

    if (!v26)
    {
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [MEMORY[0x1E69DF068] sharedManager];
        v22 = [v21 currentPersona];
        v23 = [v22 userPersonaUniqueString];
        v24 = [v28 domain];
        v25 = [v24 personaIdentifier];
        *buf = 138413058;
        v35 = self;
        v36 = 2112;
        v37 = v23;
        v38 = 2112;
        v39 = v25;
        v40 = 2080;
        v41 = "[FPXExtensionContext itemForURL:completionHandler:]";
        _os_log_error_impl(&dword_1AAAE1000, v20, OS_LOG_TYPE_ERROR, "[ERROR] Non matching personas for the extension %@ (%@, expect %@) on %s", buf, 0x2Au);
      }

      exit(1);
    }
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __52__FPXExtensionContext_itemForURL_completionHandler___block_invoke;
  v30[3] = &unk_1E79397D8;
  v30[4] = self;
  v17 = v27;
  v32 = v17;
  v18 = v28;
  v31 = v18;
  [(FPXExtensionContext *)self identifierForItemAtURL:v29 completionHandler:v30];

  __fp_pop_log(&v33);
  v19 = *MEMORY[0x1E69E9840];
}

void __52__FPXExtensionContext_itemForURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v26 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v18 = FPPopLogSectionForBlock(*(a1 + 48));
      v19 = *(a1 + 32);
      v20 = [*(a1 + 40) internalErrorFromVendorError:v6 callerDescription:@"itemForURL"];
      *buf = 134219010;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      v31 = 2080;
      v32 = "[FPXExtensionContext itemForURL:completionHandler:]_block_invoke";
      v33 = 2112;
      v34 = 0;
      v35 = 2112;
      v36 = v20;
      _os_log_debug_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v8 = *(a1 + 48);
    v9 = [*(a1 + 40) internalErrorFromVendorError:v6 callerDescription:@"itemForURL"];
    (*(v8 + 16))(v8, 0, v9);

    __fp_pop_log(&v26);
  }

  else
  {
    v10 = [v5 identifier];

    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = +[NSFileProviderRequest requestFromTheSystem];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __52__FPXExtensionContext_itemForURL_completionHandler___block_invoke_332;
      v24[3] = &unk_1E79397B0;
      v24[4] = *(a1 + 32);
      v25 = *(a1 + 48);
      [v11 itemForItemID:v5 request:v12 completionHandler:v24];
    }

    else
    {
      v26 = fpfs_adopt_log(*(*(a1 + 32) + 80));
      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v21 = FPPopLogSectionForBlock(*(a1 + 48));
        v22 = *(a1 + 32);
        v14 = *MEMORY[0x1E696A250];
        v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:0];
        *buf = 134219010;
        v28 = v21;
        v29 = 2112;
        v30 = v22;
        v31 = 2080;
        v32 = "[FPXExtensionContext itemForURL:completionHandler:]_block_invoke";
        v33 = 2112;
        v34 = 0;
        v35 = 2112;
        v36 = v23;
        _os_log_debug_impl(&dword_1AAAE1000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      else
      {
        v14 = *MEMORY[0x1E696A250];
      }

      v15 = *(a1 + 48);
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:v14 code:256 userInfo:0];
      (*(v15 + 16))(v15, 0, v16);

      __fp_pop_log(&v26);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __52__FPXExtensionContext_itemForURL_completionHandler___block_invoke_332(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = FPPopLogSectionForBlock(*(a1 + 40));
    v13 = *(a1 + 32);
    *buf = 134219010;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    v19 = 2080;
    v20 = "[FPXExtensionContext itemForURL:completionHandler:]_block_invoke";
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v9;
    _os_log_debug_impl(&dword_1AAAE1000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(&v14);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_persistedDocumentURLForURL:(id)a3 itemID:(id)a4 extension:(id)a5 creatingPlaceholderIfMissing:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  dispatch_assert_queue_V2(self->_instanceQueue);
  if (!v13)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"FPXExtensionContext.m" lineNumber:1621 description:@"url should not be nil"];
  }

  if ([v13 checkResourceIsReachableAndReturnError:0])
  {
    _CFURLPromiseSetPhysicalURL();
    v16[2](v16, v13, 0);
  }

  else
  {
    v18 = [NSFileProviderManager placeholderURLForURL:v13];
    _CFURLPromiseSetPhysicalURL();
    if (v18 && [v18 checkResourceIsReachableAndReturnError:0])
    {
      v16[2](v16, v13, 0);
    }

    else if (v8)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __115__FPXExtensionContext__persistedDocumentURLForURL_itemID_extension_creatingPlaceholderIfMissing_completionHandler___block_invoke;
      v21[3] = &unk_1E7939800;
      v23 = v16;
      v22 = v13;
      [v15 providePlaceholderAtURL:v22 completionHandler:v21];
    }

    else
    {
      v19 = [v14 identifier];
      v20 = FPItemNotFoundError(v19);
      (v16)[2](v16, 0, v20);
    }
  }
}

void __115__FPXExtensionContext__persistedDocumentURLForURL_itemID_extension_creatingPlaceholderIfMissing_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  v4 = [a2 fp_strippedError];
  (*(v2 + 16))(v2, v3, v4);
}

- (void)URLForItemID:(id)a3 creatingPlaceholderIfMissing:(BOOL)a4 ignoreAlternateContentsURL:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v8 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v22 = fpfs_adopt_log(self->_log);
  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v24 = self;
    v25 = 2080;
    v26 = "[FPXExtensionContext URLForItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]";
    v27 = 2112;
    v28 = v10;
    v29 = 1024;
    v30 = v8;
    v31 = 1024;
    v32 = v7;
    _os_log_debug_impl(&dword_1AAAE1000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@ %s %@, %{BOOL}d, %{BOOL}d", buf, 0x2Cu);
  }

  instanceQueue = self->_instanceQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __110__FPXExtensionContext_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke;
  v17[3] = &unk_1E7939850;
  v17[4] = self;
  v14 = v10;
  v18 = v14;
  v15 = v11;
  v19 = v15;
  v20 = v7;
  v21 = v8;
  fp_dispatch_async_with_logs(instanceQueue, v17);

  __fp_pop_log(&v22);
  v16 = *MEMORY[0x1E69E9840];
}

void __110__FPXExtensionContext_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v38 = (a1 + 32);
  v40 = [*(a1 + 32) v2Instance];
  v36 = (a1 + 40);
  v37 = [*v38 domainContextForItemID:*(a1 + 40)];
  v1 = [v37 domain];
  v2 = [v1 personaIdentifier];
  v3 = [MEMORY[0x1E69DF068] sharedManager];
  v4 = [v3 currentPersona];
  v5 = [v4 userPersonaUniqueString];
  if ([v2 isEqualToString:v5])
  {
  }

  else
  {
    v6 = [MEMORY[0x1E69DF068] sharedManager];
    v7 = [v6 currentPersona];
    v35 = [v7 userPersonaUniqueString];
    v8 = [*v38 domainContextForItemID:*v36];
    v9 = [v8 domain];
    v10 = [v9 personaIdentifier];

    if (v35 != v10)
    {
      v34 = fp_current_or_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        __110__FPXExtensionContext_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke_cold_1(v38, v36, v34);
      }

      exit(1);
    }
  }

  if (v40)
  {
    if (*(a1 + 56))
    {
      v11 = 0;
    }

    else
    {
      v11 = [*v38 alternateContentsURLWrapperForItemID:*v36];
    }

    v15 = [*v36 identifier];
    v16 = [v40 URLForItemWithPersistentIdentifier:v15];

    if (v16)
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = *(a1 + 57);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __110__FPXExtensionContext_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke_337;
      v41[3] = &unk_1E7939828;
      v41[4] = v17;
      v44 = *(a1 + 48);
      v42 = v16;
      v43 = v11;
      [v17 _persistedDocumentURLForURL:v42 itemID:v18 extension:v40 creatingPlaceholderIfMissing:v19 completionHandler:v41];
    }

    else
    {
      if (v11)
      {
        v20 = fp_current_or_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *v36;
          *buf = 138412290;
          v47 = v21;
          _os_log_impl(&dword_1AAAE1000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] alternate contents URL found for item ID: %@, but original item URL was not found", buf, 0xCu);
        }
      }

      v45 = fpfs_adopt_log(*(*v38 + 10));
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v30 = FPPopLogSectionForBlock(*(a1 + 48));
        v31 = *v38;
        v32 = [*v36 identifier];
        v33 = FPItemNotFoundError(v32);
        *buf = 134219266;
        v47 = v30;
        v48 = 2112;
        v49 = v31;
        v50 = 2080;
        v51 = "[FPXExtensionContext URLForItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]_block_invoke";
        v52 = 2112;
        v53 = 0;
        v54 = 2112;
        v55 = 0;
        v56 = 2112;
        v57 = v33;
        _os_log_debug_impl(&dword_1AAAE1000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
      }

      v23 = *(a1 + 48);
      v24 = [*(a1 + 40) identifier];
      v25 = FPItemNotFoundError(v24);
      (*(v23 + 16))(v23, 0, 0, v25);

      __fp_pop_log(&v45);
    }
  }

  else
  {
    v45 = fpfs_adopt_log(*(*v38 + 10));
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v27 = FPPopLogSectionForBlock(*(a1 + 48));
      v28 = *v38;
      v29 = FPNotSupportedError();
      *buf = 134219266;
      v47 = v27;
      v48 = 2112;
      v49 = v28;
      v50 = 2080;
      v51 = "[FPXExtensionContext URLForItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]_block_invoke";
      v52 = 2112;
      v53 = 0;
      v54 = 2112;
      v55 = 0;
      v56 = 2112;
      v57 = v29;
      _os_log_debug_impl(&dword_1AAAE1000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    v13 = *(a1 + 48);
    v14 = FPNotSupportedError();
    (*(v13 + 16))(v13, 0, 0, v14);

    __fp_pop_log(&v45);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __110__FPXExtensionContext_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke_337(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v27 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v18 = FPPopLogSectionForBlock(*(a1 + 56));
      v19 = *(a1 + 32);
      *buf = 134219266;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      v32 = 2080;
      v33 = "[FPXExtensionContext URLForItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]_block_invoke";
      v34 = 2112;
      v35 = 0;
      v36 = 2112;
      v37 = 0;
      v38 = 2112;
      v39 = v6;
      _os_log_debug_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log(&v27);
  }

  else
  {
    v8 = *(a1 + 40);
    v26 = 0;
    v9 = [FPSandboxingURLWrapper wrapperWithURL:v8 readonly:0 error:&v26];
    v10 = v26;
    if (v9)
    {
      v27 = fpfs_adopt_log(*(*(a1 + 32) + 80));
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v20 = FPPopLogSectionForBlock(*(a1 + 56));
        v21 = *(a1 + 32);
        v22 = *(a1 + 48);
        if (v22)
        {
          v23 = v9;
        }

        else
        {
          v22 = v9;
          v23 = 0;
        }

        *buf = 134219266;
        v29 = v20;
        v30 = 2112;
        v31 = v21;
        v32 = 2080;
        v33 = "[FPXExtensionContext URLForItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]_block_invoke";
        v34 = 2112;
        v35 = v22;
        v36 = 2112;
        v37 = v23;
        v38 = 2112;
        v39 = v10;
        _os_log_debug_impl(&dword_1AAAE1000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
      }

      v12 = *(a1 + 48);
      if (v12)
      {
        v13 = *(a1 + 48);
      }

      else
      {
        v13 = v9;
      }

      if (v12)
      {
        v14 = v9;
      }

      else
      {
        v14 = 0;
      }

      (*(*(a1 + 56) + 16))(*(a1 + 56), v13, v14, v10);
      __fp_pop_log(&v27);
    }

    else
    {
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __110__FPXExtensionContext_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke_337_cold_1((a1 + 40));
      }

      v27 = fpfs_adopt_log(*(*(a1 + 32) + 80));
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v24 = FPPopLogSectionForBlock(*(a1 + 56));
        v25 = *(a1 + 32);
        *buf = 134219266;
        v29 = v24;
        v30 = 2112;
        v31 = v25;
        v32 = 2080;
        v33 = "[FPXExtensionContext URLForItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:completionHandler:]_block_invoke";
        v34 = 2112;
        v35 = 0;
        v36 = 2112;
        v37 = 0;
        v38 = 2112;
        v39 = v10;
        _os_log_debug_impl(&dword_1AAAE1000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
      }

      (*(*(a1 + 56) + 16))();
      __fp_pop_log(&v27);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_setupItemForTrashing:(id)a3 usesFPFS:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v9 = a5;
  v7 = [a3 strippedCopy];
  [v7 setTrashed:1];
  if (v5)
  {
    [v7 setParentItemIdentifier:@"NSFileProviderTrashContainerItemIdentifier"];
    v8 = 1073741828;
  }

  else
  {
    v8 = 0x40000000;
  }

  v9[2](v9, v7, v8);
}

- (void)trashItemAtURL:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  instanceQueue = self->_instanceQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke;
  v12[3] = &unk_1E7939968;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v15 = a2;
  v10 = v8;
  v11 = v7;
  fp_dispatch_async_with_logs(instanceQueue, v12);
}

void __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy_;
  v22[4] = __Block_byref_object_dispose_;
  v23 = [*(a1 + 32) domainContextForURL:*(a1 + 40)];
  v3 = [*(a1 + 32) v2Instance];
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke_341;
      v18[3] = &unk_1E7939878;
      v4 = *(a1 + 40);
      v18[4] = *(a1 + 32);
      v19 = *(a1 + 48);
      v20 = v22;
      [v3 _trashItemAtURLWithoutCoordination:v4 completionHandler:v18];
    }

    else
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke_345;
      v14[3] = &unk_1E7939940;
      v14[4] = v8;
      v15 = *(a1 + 48);
      v16 = v22;
      v17 = *(a1 + 56);
      [v8 identifierForItemAtURL:v9 completionHandler:v14];
    }
  }

  else
  {
    v21 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = FPPopLogSectionForBlock(*(a1 + 48));
      v12 = *(a1 + 32);
      v13 = FPNotSupportedError();
      *buf = 134219010;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      v28 = 2080;
      v29 = "[FPXExtensionContext trashItemAtURL:completionHandler:]_block_invoke";
      v30 = 2112;
      v31 = 0;
      v32 = 2112;
      v33 = v13;
      _os_log_debug_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v6 = *(a1 + 48);
    v7 = FPNotSupportedError();
    (*(v6 + 16))(v6, 0, v7);

    __fp_pop_log(&v21);
  }

  _Block_object_dispose(v22, 8);
  v10 = *MEMORY[0x1E69E9840];
}

void __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke_341(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v14 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = FPPopLogSectionForBlock(*(a1 + 40));
    v12 = *(a1 + 32);
    v13 = [*(*(*(a1 + 48) + 8) + 40) internalErrorFromVendorError:v6 callerDescription:@"trashItemAtURL"];
    *buf = 134219010;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2080;
    v20 = "[FPXExtensionContext trashItemAtURL:completionHandler:]_block_invoke";
    v21 = 2112;
    v22 = v5;
    v23 = 2112;
    v24 = v13;
    _os_log_debug_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v8 = *(a1 + 40);
  v9 = [*(*(*(a1 + 48) + 8) + 40) internalErrorFromVendorError:v6 callerDescription:@"trashItemAtURL"];
  (*(v8 + 16))(v8, v5, v9);

  __fp_pop_log(&v14);
  v10 = *MEMORY[0x1E69E9840];
}

void __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke_345(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = +[NSFileProviderRequest requestFromTheSystem];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke_346;
    v13[3] = &unk_1E7939918;
    v13[4] = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    [v7 itemForItemID:v5 request:v8 completionHandler:v13];
  }

  else
  {
    v16 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = FPPopLogSectionForBlock(*(a1 + 40));
      v12 = *(a1 + 32);
      *buf = 134219010;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2080;
      v22 = "[FPXExtensionContext trashItemAtURL:completionHandler:]_block_invoke";
      v23 = 2112;
      v24 = 0;
      v25 = 2112;
      v26 = v6;
      _os_log_debug_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log(&v16);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke_346(uint64_t a1, void *a2, void *a3, void *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v34 = a3;
  v35 = a4;
  v36 = v7;
  if (v7)
  {
    v33 = [v7 itemID];
    v8 = *(a1 + 32);
    v42 = v33;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    v10 = [v8 domainContextForItemIDs:v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v32 = [*(*(*(a1 + 48) + 8) + 40) domain];
    v13 = [v32 personaIdentifier];
    v14 = [MEMORY[0x1E69DF068] sharedManager];
    v15 = [v14 currentPersona];
    v16 = [v15 userPersonaUniqueString];
    if ([v13 isEqualToString:v16])
    {
    }

    else
    {
      v18 = [MEMORY[0x1E69DF068] sharedManager];
      v19 = [v18 currentPersona];
      v20 = [v19 userPersonaUniqueString];
      v21 = [*(*(*(a1 + 48) + 8) + 40) domain];
      v22 = [v21 personaIdentifier];
      v31 = v20 == v22;

      if (!v31)
      {
        v30 = fp_current_or_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke_346_cold_1(a1 + 32, a1 + 48, v30);
        }

        exit(1);
      }
    }

    v23 = *(a1 + 32);
    v24 = [*(*(*(a1 + 48) + 8) + 40) usesFPFS];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke_347;
    v37[3] = &unk_1E79398F0;
    v37[4] = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = *(a1 + 56);
    v39 = v25;
    v40 = v26;
    v38 = v36;
    [v23 _setupItemForTrashing:v38 usesFPFS:v24 completionHandler:v37];
  }

  else
  {
    v41 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v28 = FPPopLogSectionForBlock(*(a1 + 40));
      v29 = *(a1 + 32);
      *buf = 134219010;
      v44 = v28;
      v45 = 2112;
      v46 = v29;
      v47 = 2080;
      v48 = "[FPXExtensionContext trashItemAtURL:completionHandler:]_block_invoke";
      v49 = 2112;
      v50 = 0;
      v51 = 2112;
      v52 = v35;
      _os_log_debug_impl(&dword_1AAAE1000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log(&v41);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke_347(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke_2;
  v12[3] = &unk_1E79398C8;
  v6 = (a1 + 56);
  v7 = *(a1 + 32);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = *v6;
  v11 = v8;
  v9 = *(a1 + 40);
  *&v10 = v7;
  *(&v10 + 1) = v9;
  v13 = v10;
  v14 = v11;
  [v7 singleItemChange:a2 changedFields:a3 bounce:0 completionHandler:v12];
}

void __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v20 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v14 = FPPopLogSectionForBlock(*(a1 + 48));
      v15 = *(a1 + 32);
      *buf = 134219010;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      v25 = 2080;
      v26 = "[FPXExtensionContext trashItemAtURL:completionHandler:]_block_invoke_2";
      v27 = 2112;
      v28 = 0;
      v29 = 2112;
      v30 = v6;
      _os_log_debug_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 48) + 16))();
    __fp_pop_log(&v20);
  }

  else
  {
    v8 = [v5 fileURL];
    if (v8)
    {
      v20 = fpfs_adopt_log(*(*(a1 + 32) + 80));
      v9 = fp_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v16 = FPPopLogSectionForBlock(*(a1 + 48));
        v17 = *(a1 + 32);
        *buf = 134219010;
        v22 = v16;
        v23 = 2112;
        v24 = v17;
        v25 = 2080;
        v26 = "[FPXExtensionContext trashItemAtURL:completionHandler:]_block_invoke";
        v27 = 2112;
        v28 = v8;
        v29 = 2112;
        v30 = 0;
        _os_log_debug_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      (*(*(a1 + 48) + 16))();
      __fp_pop_log(&v20);
    }

    else
    {
      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke_2_cold_1();
      }

      if (!v5)
      {
        __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke_2_cold_2(a1);
      }

      v11 = *(a1 + 32);
      v12 = [v5 itemID];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke_351;
      v18[3] = &unk_1E79398A0;
      v18[4] = *(a1 + 32);
      v19 = *(a1 + 48);
      [v11 URLForItemID:v12 creatingPlaceholderIfMissing:0 ignoreAlternateContentsURL:0 completionHandler:v18];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke_351(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v17 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = FPPopLogSectionForBlock(*(a1 + 40));
    v15 = *(a1 + 32);
    v16 = [v7 url];
    *buf = 134219010;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    v22 = 2080;
    v23 = "[FPXExtensionContext trashItemAtURL:completionHandler:]_block_invoke";
    v24 = 2112;
    v25 = v16;
    v26 = 2112;
    v27 = v9;
    _os_log_debug_impl(&dword_1AAAE1000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v11 = *(a1 + 40);
  v12 = [v7 url];
  (*(v11 + 16))(v11, v12, v9);

  __fp_pop_log(&v17);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)startOperation:(id)a3 toFetchThumbnailsForItemIdentifiers:(id)a4 size:(CGSize)a5 completionHandler:(id)a6
{
  height = a5.height;
  width = a5.width;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  instanceQueue = self->_instanceQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke;
  v19[3] = &unk_1E7939A50;
  v20 = v13;
  v21 = self;
  v22 = v12;
  v23 = v14;
  v24 = a2;
  v25 = width;
  v26 = height;
  v16 = v12;
  v17 = v14;
  v18 = v13;
  fp_dispatch_async_with_logs(instanceQueue, v19);
}

void __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke(uint64_t a1)
{
  v81 = *MEMORY[0x1E69E9840];
  v1 = fp_current_or_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_cold_1(a1);
  }

  v2 = (a1 + 40);
  v56 = [*(a1 + 40) domainContextForItemIDs:*(a1 + 32)];
  v3 = [v56 domain];
  v4 = [v3 personaIdentifier];
  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];
  v7 = [v6 userPersonaUniqueString];
  if ([v4 isEqualToString:v7])
  {
  }

  else
  {
    v8 = [MEMORY[0x1E69DF068] sharedManager];
    v9 = [v8 currentPersona];
    v10 = [v9 userPersonaUniqueString];
    v11 = [v56 domain];
    v12 = [v11 personaIdentifier];
    v54 = v10 == v12;

    if (!v54)
    {
      v53 = fp_current_or_default_log();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_cold_2(v2, v56, v53);
      }

      exit(1);
    }
  }

  v13 = [v56 vendorInstance];
  if ([v13 conformsToProtocol:&unk_1F1FD7E40])
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [*v2 instanceWithPrivateSelector:sel_fetchThumbnailsForItemIdentifiers_requestedSize_perThumbnailCompletionHandlerWithType_completionHandler_];
  v16 = v15;
  if (v14 | v15)
  {
    v17 = v15 != 0;
    v18 = [*(a1 + 40) _proxyWithCancellationHandler:0 forClientOperation:*(a1 + 48)];
    v55 = [*(a1 + 32) fp_map:&__block_literal_global_366];
    v19 = dispatch_group_create();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_2;
    aBlock[3] = &unk_1E79399D8;
    v20 = v19;
    v66 = v20;
    v67 = *(a1 + 48);
    v21 = v56;
    v71 = *(a1 + 64);
    v22 = *(a1 + 40);
    v68 = v21;
    v69 = v22;
    v23 = v18;
    v70 = v23;
    v24 = _Block_copy(aBlock);
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_384;
    v63[3] = &unk_1E7939A00;
    v25 = v24;
    v64 = v25;
    v26 = _Block_copy(v63);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_2_386;
    v58[3] = &unk_1E7939A28;
    v27 = v20;
    v28 = *(a1 + 40);
    v59 = v27;
    v60 = v28;
    v62 = *(a1 + 56);
    v61 = v21;
    v29 = _Block_copy(v58);
    v30 = *(a1 + 72);
    v31 = *(a1 + 80);
    if (v17)
    {
      [v16 fetchThumbnailsForItemIdentifiers:v55 requestedSize:v25 perThumbnailCompletionHandlerWithType:v29 completionHandler:{v30, v31}];
    }

    else
    {
      [v14 fetchThumbnailsForItemIdentifiers:v55 requestedSize:v26 perThumbnailCompletionHandler:v29 completionHandler:{v30, v31}];
    }
    v41 = ;
    v42 = [*(a1 + 40) _proxyWithCancellationHandler:v41 forClientOperation:*(a1 + 48)];
  }

  else
  {
    v72 = fpfs_adopt_log(*(*v2 + 10));
    v32 = fp_current_or_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v44 = FPPopLogSectionForBlock(*(a1 + 56));
      v45 = *v2;
      v52 = FPInvalidParameterError(@"item identifiers", 0, v46, v47, v48, v49, v50, v51);
      *buf = 134218754;
      v74 = v44;
      v75 = 2112;
      v76 = v45;
      v77 = 2080;
      v78 = "[FPXExtensionContext startOperation:toFetchThumbnailsForItemIdentifiers:size:completionHandler:]_block_invoke";
      v79 = 2112;
      v80 = v52;
      _os_log_debug_impl(&dword_1AAAE1000, v32, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v33 = *(a1 + 56);
    v40 = FPInvalidParameterError(@"item identifiers", 0, v34, v35, v36, v37, v38, v39);
    (*(v33 + 16))(v33, v40);

    __fp_pop_log(&v72);
  }

  v43 = *MEMORY[0x1E69E9840];
}

void __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = fp_current_or_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_2_cold_1(a1);
  }

  dispatch_group_enter(*(a1 + 32));
  v14 = [*(a1 + 48) internalErrorFromVendorError:v12 callerDescription:@"startFetchThumbnailOperation"];

  if (v9)
  {
    v15 = objc_opt_new();
    [v15 setObject:v9 forKeyedSubscript:@"identifier"];
    [v15 setObject:v10 forKeyedSubscript:@"thumbnailData"];
    [v15 setObject:v11 forKeyedSubscript:@"contentType"];
    v16 = *(a1 + 64);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_382;
    v18[3] = &unk_1E79399B0;
    v19 = *(a1 + 32);
    [v16 operationDidProgressWithInfo:v15 error:v14 completionHandler:v18];
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:*(a1 + 72) object:*(a1 + 56) file:@"FPXExtensionContext.m" lineNumber:1814 description:@"UNREACHABLE: thumbnail completion callback was called with a nil identifier"];

    dispatch_group_leave(*(a1 + 32));
  }
}

void __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_382(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_382_cold_1(a1);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_2_386(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_2_386_cold_1(a1);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v5 + 24);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_387;
  v9[3] = &unk_1E79394E0;
  v9[4] = v5;
  v12 = *(a1 + 56);
  v10 = *(a1 + 48);
  v11 = v3;
  v8 = v3;
  dispatch_group_notify(v6, v7, v9);
}

void __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_387(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock(*(a1 + 56));
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) internalErrorFromVendorError:*(a1 + 48) callerDescription:@"startFetchThumbnailOperationOverall"];
    *buf = 134218754;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2080;
    v15 = "[FPXExtensionContext startOperation:toFetchThumbnailsForItemIdentifiers:size:completionHandler:]_block_invoke";
    v16 = 2112;
    v17 = v8;
    _os_log_debug_impl(&dword_1AAAE1000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  v3 = *(a1 + 56);
  v4 = [*(a1 + 40) internalErrorFromVendorError:*(a1 + 48) callerDescription:@"startFetchThumbnailOperationOverall"];
  (*(v3 + 16))(v3, v4);

  __fp_pop_log(&v9);
  v5 = *MEMORY[0x1E69E9840];
}

- (id)createFPTempDirectoryWithError:(id *)a3
{
  v4 = [(FPXDomainContext *)self->_domainContext domain];
  v5 = [NSFileProviderManager managerForDomain:v4];

  v12 = 0;
  v6 = [v5 temporaryDirectoryURLWithError:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [FPXExtensionContext createFPTempDirectoryWithError:v7];
    }

    if (a3)
    {
      v10 = v7;
      *a3 = v7;
    }
  }

  return v6;
}

- (id)createFPTempDirectoryAppropriateForURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = 0;
  v7 = [v6 URLForDirectory:99 inDomain:1 appropriateForURL:v5 create:1 error:&v13];
  v8 = v13;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [FPXExtensionContext createFPTempDirectoryAppropriateForURL:v5 error:v8];
    }

    if (a4)
    {
      v11 = v8;
      *a4 = v8;
    }
  }

  return v7;
}

- (id)createTempThumbnailURLForVersion:(id)a3 appropriateForURL:(id)a4 itemIdentifier:(id)a5 isFromData:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v12)
  {
    [v12 etagHash];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_current", v14];
  }
  v15 = ;
  v16 = MEMORY[0x1E696AEC0];
  v17 = [MEMORY[0x1E696AFB0] UUID];
  v18 = [v17 UUIDString];
  v19 = v18;
  v20 = &stru_1F1F94B20;
  if (v8)
  {
    v20 = @"_from_data";
  }

  v21 = [v16 stringWithFormat:@"%@_%@%@", v18, v15, v20];

  if (v13)
  {
    [(FPXExtensionContext *)self createFPTempDirectoryAppropriateForURL:v13 error:a7];
  }

  else
  {
    [(FPXExtensionContext *)self createFPTempDirectoryWithError:a7];
  }
  v22 = ;
  v23 = v22;
  if (v22)
  {
    v24 = [v22 URLByAppendingPathComponent:v21 isDirectory:0];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)startOperation:(id)a3 toFetchThumbnailsWithDictionary:(id)a4 size:(CGSize)a5 completionHandler:(id)a6
{
  height = a5.height;
  width = a5.width;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  instanceQueue = self->_instanceQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __93__FPXExtensionContext_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler___block_invoke;
  v19[3] = &unk_1E7939A50;
  v20 = v13;
  v21 = self;
  v22 = v12;
  v23 = v14;
  v24 = width;
  v25 = height;
  v26 = a2;
  v16 = v12;
  v17 = v14;
  v18 = v13;
  fp_dispatch_async_with_logs(instanceQueue, v19);
}

void __93__FPXExtensionContext_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler___block_invoke(uint64_t a1)
{
  v108 = *MEMORY[0x1E69E9840];
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __93__FPXExtensionContext_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler___block_invoke_cold_1(a1);
  }

  v3 = *(a1 + 40);
  v66 = (a1 + 40);
  v4 = [*(a1 + 32) allKeys];
  v69 = [v3 domainContextForItemIDs:v4];

  v5 = [v69 domain];
  v6 = [v5 personaIdentifier];
  v7 = [MEMORY[0x1E69DF068] sharedManager];
  v8 = [v7 currentPersona];
  v9 = [v8 userPersonaUniqueString];
  if ([v6 isEqualToString:v9])
  {
  }

  else
  {
    v10 = [MEMORY[0x1E69DF068] sharedManager];
    v11 = [v10 currentPersona];
    v12 = [v11 userPersonaUniqueString];
    v13 = [v69 domain];
    v14 = [v13 personaIdentifier];
    obja = v12 == v14;

    if (!obja)
    {
      v60 = fp_current_or_default_log();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        __93__FPXExtensionContext_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler___block_invoke_cold_2(v66, v69, v60);
      }

      exit(1);
    }
  }

  v63 = [v69 vendorInstance];
  if ([v63 conformsToProtocol:&unk_1F1FF3A08])
  {
    v15 = v63;
    v16 = v63;
    v68 = v15;
  }

  else
  {
    v68 = 0;
    v16 = v63;
  }

  v64 = [*v66 instanceWithPrivateSelector:sel_fetchThumbnailsForDictionary_requestedSize_perThumbnailCompletionHandlerWithMetadata_completionHandler_];
  v65 = [*v66 instanceWithPrivateSelector:sel_fetchThumbnailsForDictionary_requestedSize_perThumbnailCompletionHandlerDataURLWithMetadata_completionHandler_];
  if (v68 || v64 || v65)
  {
    v27 = [*(a1 + 40) _proxyWithCancellationHandler:0 forClientOperation:*(a1 + 48)];
    v28 = dispatch_group_create();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __93__FPXExtensionContext_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler___block_invoke_413;
    aBlock[3] = &unk_1E7939A78;
    v29 = v28;
    v86 = v29;
    v87 = *(a1 + 48);
    v30 = v69;
    v91 = *(a1 + 80);
    v31 = *(a1 + 40);
    v88 = v30;
    v89 = v31;
    obj = v27;
    v90 = obj;
    v32 = _Block_copy(aBlock);
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __93__FPXExtensionContext_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler___block_invoke_428;
    v83[3] = &unk_1E7939AA0;
    v33 = v32;
    v83[4] = *(a1 + 40);
    v84 = v33;
    v34 = _Block_copy(v83);
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __93__FPXExtensionContext_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler___block_invoke_2;
    v81[3] = &unk_1E7939AC8;
    v67 = v34;
    v82 = v67;
    v62 = _Block_copy(v81);
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __93__FPXExtensionContext_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler___block_invoke_3;
    v76[3] = &unk_1E7939A28;
    v35 = v29;
    v36 = *(a1 + 40);
    v61 = v35;
    v77 = v35;
    v78 = v36;
    v80 = *(a1 + 56);
    v79 = v30;
    v37 = _Block_copy(v76);
    v38 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v39 = [*(a1 + 32) allKeys];
    v40 = [v39 countByEnumeratingWithState:&v72 objects:v97 count:16];
    if (v40)
    {
      v41 = *v73;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v73 != v41)
          {
            objc_enumerationMutation(v39);
          }

          v43 = *(*(&v72 + 1) + 8 * i);
          v44 = [*(a1 + 32) objectForKeyedSubscript:v43];
          v45 = [v43 identifier];
          [v38 setObject:v44 forKeyedSubscript:v45];
        }

        v40 = [v39 countByEnumeratingWithState:&v72 objects:v97 count:16];
      }

      while (v40);
    }

    v46 = *(a1 + 64);
    v47 = *(a1 + 72);
    if (v65)
    {
      v48 = [v68 fetchThumbnailsForDictionary:v38 requestedSize:v33 perThumbnailCompletionHandlerDataURLWithMetadata:v37 completionHandler:{v46, v47}];
    }

    else
    {
      if (v64)
      {
        [v68 fetchThumbnailsForDictionary:v38 requestedSize:v67 perThumbnailCompletionHandlerWithMetadata:v37 completionHandler:{v46, v47}];
      }

      else
      {
        [v68 fetchThumbnailsForDictionary:v38 requestedSize:v62 perThumbnailCompletionHandler:v37 completionHandler:{v46, v47}];
      }
      v48 = ;
    }

    v54 = v48;
    v55 = [*(a1 + 40) _proxyWithCancellationHandler:v48 forClientOperation:*(a1 + 48)];
  }

  else
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = [*(a1 + 32) allValues];
    v17 = [obj countByEnumeratingWithState:&v93 objects:v107 count:16];
    if (v17)
    {
      v18 = *v94;
      while (2)
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v94 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v93 + 1) + 8 * j);
          if (v20)
          {
            v21 = [MEMORY[0x1E695DFB0] null];
            v106 = v21;
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
            if (([v20 isEqual:v22] & 1) != 0 || !objc_msgSend(v20, "count"))
            {
            }

            else
            {
              v23 = [v20 objectAtIndexedSubscript:0];
              v24 = v23 == 0;

              if (!v24)
              {
                v49 = fp_current_or_default_log();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                {
                  __93__FPXExtensionContext_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler___block_invoke_cold_3();
                }

                v92 = fpfs_adopt_log(*(*v66 + 10));
                v51 = fp_current_or_default_log();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
                {
                  v57 = FPPopLogSectionForBlock(*(a1 + 56));
                  v58 = *v66;
                  v59 = FPNotSupportedError();
                  *buf = 134218754;
                  v99 = v57;
                  v100 = 2112;
                  v101 = v58;
                  v102 = 2080;
                  v103 = "[FPXExtensionContext startOperation:toFetchThumbnailsWithDictionary:size:completionHandler:]_block_invoke";
                  v104 = 2112;
                  v105 = v59;
                  _os_log_debug_impl(&dword_1AAAE1000, v51, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
                }

                v52 = *(a1 + 56);
                v53 = FPNotSupportedError();
                (*(v52 + 16))(v52, v53);

                __fp_pop_log(&v92);
                goto LABEL_45;
              }
            }
          }
        }

        v17 = [obj countByEnumeratingWithState:&v93 objects:v107 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v26 = *(a1 + 40);
    v25 = *(a1 + 48);
    obj = [*(a1 + 32) allKeys];
    [v26 startOperation:v25 toFetchThumbnailsForItemIdentifiers:obj size:*(a1 + 56) completionHandler:{*(a1 + 64), *(a1 + 72)}];
  }

LABEL_45:

  v56 = *MEMORY[0x1E69E9840];
}

void __93__FPXExtensionContext_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler___block_invoke_413(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = fp_current_or_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_2_cold_1(a1);
  }

  dispatch_group_enter(*(a1 + 32));
  v17 = [*(a1 + 48) internalErrorFromVendorError:v15 callerDescription:@"startFetchThumbnailOperation"];

  if (v11)
  {
    if (v13)
    {
      v18 = [*(a1 + 56) createTempThumbnailURLForVersion:v12 appropriateForURL:v13 itemIdentifier:v11 isFromData:0 error:0];
      if (v18)
      {
        if ((clonefile([v13 fileSystemRepresentation], objc_msgSend(v18, "fileSystemRepresentation"), 0) & 0x80000000) == 0)
        {
          v30 = v17;
          v19 = [FPSandboxingURLWrapper wrapperWithURL:v18 readonly:0 error:&v30];
          v20 = v30;

          v18 = v19;
          v17 = v20;
LABEL_10:
          v22 = objc_opt_new();
          [v22 setObject:v11 forKeyedSubscript:@"identifier"];
          if (v18)
          {
            [v22 setObject:v18 forKeyedSubscript:@"thumbnailDataURLWrapper"];
          }

          if (v14)
          {
            [v22 setObject:v14 forKeyedSubscript:@"thumbnailMetaData"];
          }

          if (v12)
          {
            [v22 setObject:v12 forKeyedSubscript:@"version"];
          }

          v23 = *(a1 + 64);
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __93__FPXExtensionContext_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler___block_invoke_426;
          v28[3] = &unk_1E79399B0;
          v29 = *(a1 + 32);
          [v23 operationDidProgressWithInfo:v22 error:v17 completionHandler:v28];

          goto LABEL_19;
        }

        v24 = [MEMORY[0x1E696AAA8] currentHandler];
        v25 = *(a1 + 72);
        v26 = *(a1 + 56);
        v27 = __error();
        [v24 handleFailureInMethod:v25 object:v26 file:@"FPXExtensionContext.m" lineNumber:1973 description:{@"UNREACHABLE: failed to clone thumbnail file %@ to %@: %s", v13, v18, strerror(*v27)}];
      }

      dispatch_group_leave(*(a1 + 32));
LABEL_19:

      goto LABEL_20;
    }

    v18 = 0;
    goto LABEL_10;
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:*(a1 + 72) object:*(a1 + 56) file:@"FPXExtensionContext.m" lineNumber:1955 description:@"UNREACHABLE: thumbnail completion callback was called with a nil identifier"];

  dispatch_group_leave(*(a1 + 32));
LABEL_20:
}

void __93__FPXExtensionContext_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler___block_invoke_426(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_382_cold_1(a1);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __93__FPXExtensionContext_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler___block_invoke_428(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (a6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v15 = *(a1 + 32);
    v22 = 0;
    v16 = [v15 createTempThumbnailURLForVersion:v12 appropriateForURL:0 itemIdentifier:v11 isFromData:1 error:&v22];
    v17 = v22;
    if (v16)
    {
      v18 = [v16 path];
      v21 = 0;
      v19 = [v13 writeToFile:v18 options:1 error:&v21];
      v20 = v21;

      (*(*(a1 + 40) + 16))();
      if (v19)
      {

        v20 = [MEMORY[0x1E696AC08] defaultManager];
        [v20 removeItemAtURL:v16 error:0];
      }
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

void __93__FPXExtensionContext_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_2_386_cold_1(a1);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v5 + 24);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__FPXExtensionContext_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler___block_invoke_431;
  v9[3] = &unk_1E79394E0;
  v9[4] = v5;
  v12 = *(a1 + 56);
  v10 = *(a1 + 48);
  v11 = v3;
  v8 = v3;
  dispatch_group_notify(v6, v7, v9);
}

void __93__FPXExtensionContext_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler___block_invoke_431(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock(*(a1 + 56));
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) internalErrorFromVendorError:*(a1 + 48) callerDescription:@"startFetchThumbnailOperationOverall"];
    *buf = 134218754;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2080;
    v15 = "[FPXExtensionContext startOperation:toFetchThumbnailsWithDictionary:size:completionHandler:]_block_invoke";
    v16 = 2112;
    v17 = v8;
    _os_log_debug_impl(&dword_1AAAE1000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  v3 = *(a1 + 56);
  v4 = [*(a1 + 40) internalErrorFromVendorError:*(a1 + 48) callerDescription:@"startFetchThumbnailOperationOverall"];
  (*(v3 + 16))(v3, v4);

  __fp_pop_log(&v9);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)valuesForAttributes:(id)a3 forItemID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  instanceQueue = self->_instanceQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__FPXExtensionContext_valuesForAttributes_forItemID_completionHandler___block_invoke;
  v15[3] = &unk_1E7939B18;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  fp_dispatch_async_with_logs(instanceQueue, v15);
}

void __71__FPXExtensionContext_valuesForAttributes_forItemID_completionHandler___block_invoke(id *a1)
{
  v2 = a1 + 4;
  v3 = [a1[4] domainContextForItemID:a1[5]];
  v4 = [v3 domain];
  v5 = [v4 personaIdentifier];
  v6 = [MEMORY[0x1E69DF068] sharedManager];
  v7 = [v6 currentPersona];
  v8 = [v7 userPersonaUniqueString];
  if ([v5 isEqualToString:v8])
  {
  }

  else
  {
    [MEMORY[0x1E69DF068] sharedManager];
    v9 = v21 = v4;
    v10 = [v9 currentPersona];
    v19 = [v10 userPersonaUniqueString];
    v11 = [v3 domain];
    [v11 personaIdentifier];
    v12 = v20 = v5;

    if (v19 != v12)
    {
      v18 = fp_current_or_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __71__FPXExtensionContext_valuesForAttributes_forItemID_completionHandler___block_invoke_cold_1(v2, v3, v18);
      }

      exit(1);
    }
  }

  v13 = [v3 vendorInstance];
  v14 = [a1[5] identifier];
  v15 = +[NSFileProviderRequest requestFromTheSystem];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __71__FPXExtensionContext_valuesForAttributes_forItemID_completionHandler___block_invoke_432;
  v22[3] = &unk_1E7939AF0;
  v22[4] = a1[4];
  v26 = a1[7];
  v23 = v3;
  v24 = a1[5];
  v25 = a1[6];
  v16 = v3;
  v17 = [v13 itemForIdentifier:v14 request:v15 completionHandler:v22];
}

void __71__FPXExtensionContext_valuesForAttributes_forItemID_completionHandler___block_invoke_432(uint64_t a1, void *a2, void *a3)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v37 = *MEMORY[0x1E695DBD8];
  v38[0] = MEMORY[0x1E695E110];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  if (v5)
  {
    v8 = [*(a1 + 32) alternateContentsURLWrapperForItemID:*(a1 + 48)];
    v9 = [v8 url];

    if (v9)
    {
      v10 = [*(a1 + 40) itemFromVendorItem:v5];
      v11 = [[FPXEnumeratorAlternateContentsItem alloc] initWithOriginalDocumentItem:v10 alternateContentsURL:v9];

      v5 = v11;
    }

    v12 = FPDictFromVendorItem(v5, *(a1 + 56));
    v26 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v19 = FPPopLogSectionForBlock(*(a1 + 64));
      v20 = *(a1 + 32);
      *buf = 134219010;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      v31 = 2080;
      v32 = "[FPXExtensionContext valuesForAttributes:forItemID:completionHandler:]_block_invoke";
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = 0;
      _os_log_debug_impl(&dword_1AAAE1000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 64) + 16))();
    __fp_pop_log(&v26);
  }

  else if (v6)
  {
    v26 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v21 = FPPopLogSectionForBlock(*(a1 + 64));
      v22 = *(a1 + 32);
      v23 = [*(a1 + 40) internalErrorFromVendorError:v6 callerDescription:@"valueForAttributesForItemID"];
      *buf = 134219010;
      v28 = v21;
      v29 = 2112;
      v30 = v22;
      v31 = 2080;
      v32 = "[FPXExtensionContext valuesForAttributes:forItemID:completionHandler:]_block_invoke";
      v33 = 2112;
      v34 = 0;
      v35 = 2112;
      v36 = v23;
      _os_log_debug_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v15 = *(a1 + 64);
    v16 = [*(a1 + 40) internalErrorFromVendorError:v6 callerDescription:@"valueForAttributesForItemID"];
    (*(v15 + 16))(v15, 0, v16);

    __fp_pop_log(&v26);
  }

  else
  {
    v26 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v24 = FPPopLogSectionForBlock(*(a1 + 64));
      v25 = *(a1 + 32);
      *buf = 134219010;
      v28 = v24;
      v29 = 2112;
      v30 = v25;
      v31 = 2080;
      v32 = "[FPXExtensionContext valuesForAttributes:forItemID:completionHandler:]_block_invoke";
      v33 = 2112;
      v34 = v7;
      v35 = 2112;
      v36 = 0;
      _os_log_debug_impl(&dword_1AAAE1000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 64) + 16))();
    __fp_pop_log(&v26);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)fetchAndStartEnumeratingWithSettings:(id)a3 observer:(id)a4 request:(id)a5 completionHandler:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v29 = fpfs_adopt_log(self->_log);
  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v31 = self;
    v32 = 2080;
    v33 = "[FPXExtensionContext fetchAndStartEnumeratingWithSettings:observer:request:completionHandler:]";
    v34 = 2112;
    v35 = v11;
    v36 = 2112;
    v37 = v13;
    _os_log_debug_impl(&dword_1AAAE1000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@ %s %@, %@", buf, 0x2Au);
  }

  instanceQueue = self->_instanceQueue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __95__FPXExtensionContext_fetchAndStartEnumeratingWithSettings_observer_request_completionHandler___block_invoke;
  v22[3] = &unk_1E7939B68;
  v17 = v11;
  v28 = a2;
  v23 = v17;
  v24 = self;
  v18 = v13;
  v25 = v18;
  v19 = v14;
  v27 = v19;
  v20 = v12;
  v26 = v20;
  fp_dispatch_async_with_logs(instanceQueue, v22);

  __fp_pop_log(&v29);
  v21 = *MEMORY[0x1E69E9840];
}

void __95__FPXExtensionContext_fetchAndStartEnumeratingWithSettings_observer_request_completionHandler___block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x1E69E9840];
  v58 = [*(a1 + 32) enumeratedItemID];
  if (!v58)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    [v1 handleFailureInMethod:*(a1 + 72) object:*(a1 + 40) file:@"FPXExtensionContext.m" lineNumber:2120 description:@"Enumerated item ID missing"];
  }

  v57 = (a1 + 40);
  v59 = [*(a1 + 40) domainContextForItemID:?];
  v2 = [v59 domain];
  v3 = [v2 personaIdentifier];
  v4 = [MEMORY[0x1E69DF068] sharedManager];
  v5 = [v4 currentPersona];
  v6 = [v5 userPersonaUniqueString];
  if ([v3 isEqualToString:v6])
  {
  }

  else
  {
    v7 = [MEMORY[0x1E69DF068] sharedManager];
    v8 = [v7 currentPersona];
    v9 = [v8 userPersonaUniqueString];
    v10 = [v59 domain];
    v11 = [v10 personaIdentifier];

    if (v9 != v11)
    {
      v55 = fp_current_or_default_log();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        __95__FPXExtensionContext_fetchAndStartEnumeratingWithSettings_observer_request_completionHandler___block_invoke_cold_1(v57, v59, v55);
      }

      exit(1);
    }
  }

  v12 = [*(a1 + 32) searchQuery];

  if (v12)
  {
    v13 = [v59 vendorInstance];
    if ([v13 conformsToProtocol:&unk_1F1FD7C90])
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v21 = [*(a1 + 32) searchQuery];
      v22 = [v21 toSpotlightServerQueryString];
      v23 = [NSFileProviderSearch alloc];
      v24 = [v21 scopedToItemIdentifier];
      v25 = [v21 searchContainerItemIdentifier];
      v26 = [*(a1 + 32) searchQuery];
      v27 = [(NSFileProviderSearch *)v23 initWithSpotlightQueryString:v22 scopedToItemIdentifier:v24 searchContainerItemIdentifier:v25 legacySearchQuery:v26];

      v28 = *(a1 + 48);
      v69 = 0;
      v18 = [v14 enumeratorForSearch:v27 request:v28 error:&v69];
      v19 = v69;
    }

    else
    {
      v19 = FPNotSupportedError();
      v18 = 0;
    }

    v20 = 0;
    LOBYTE(v14) = 1;
  }

  else
  {
    v15 = [v58 identifier];
    v14 = [v15 isEqualToString:@"NSFileProviderWorkingSetContainerItemIdentifier"];

    v13 = [v59 vendorInstance];
    v16 = [v58 identifier];
    v17 = *(a1 + 48);
    v68 = 0;
    v18 = [v13 enumeratorForContainerItemIdentifier:v16 request:v17 error:&v68];
    v19 = v68;

    if (v14)
    {
      CheckAndWarn(v18, sel_currentSyncAnchorWithCompletionHandler_);
      CheckAndWarn(v18, sel_enumerateChangesForObserver_fromSyncAnchor_);
    }

    if (!v18)
    {
      if ((-[NSObject fp_isFeatureUnsupportedError](v19, "fp_isFeatureUnsupportedError") & 1) == 0 || ([v58 identifier], v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "isEqualToString:", @"NSFileProviderTrashContainerItemIdentifier"), v37, (v38 & 1) == 0))
      {
        v18 = 0;
        v29 = v19 != 0;
        goto LABEL_30;
      }

      v39 = fp_current_or_default_log();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        __95__FPXExtensionContext_fetchAndStartEnumeratingWithSettings_observer_request_completionHandler___block_invoke_cold_2();
      }

      v18 = objc_opt_new();
    }

    v20 = v14;
  }

  v29 = v19 != 0;
  if (v18 && !v19)
  {
    v30 = [[FPXEnumerator alloc] initWithObservedItemID:v58 domainContext:v59 vendorEnumerator:v18 nsFileProviderRequest:*(a1 + 48) observer:*(a1 + 56) isWorkingSetEnum:v20 queue:*(*(a1 + 40) + 24)];
    v19 = dispatch_group_create();
    if ((v14 & 1) == 0 && ([v59 usesFPFS] & 1) == 0)
    {
      dispatch_group_enter(v19);
      v31 = [v58 identifier];
      v32 = +[NSFileProviderRequest requestFromTheSystem];
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __95__FPXExtensionContext_fetchAndStartEnumeratingWithSettings_observer_request_completionHandler___block_invoke_458;
      v64[3] = &unk_1E7939B40;
      v65 = v30;
      v66 = v19;
      v33 = [v13 itemForIdentifier:v31 request:v32 completionHandler:v64];
    }

    v34 = *(a1 + 40);
    v35 = *(v34 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__FPXExtensionContext_fetchAndStartEnumeratingWithSettings_observer_request_completionHandler___block_invoke_2;
    block[3] = &unk_1E7939210;
    block[4] = v34;
    v62 = v30;
    v63 = *(a1 + 64);
    v36 = v30;
    dispatch_group_notify(v19, v35, block);

    goto LABEL_39;
  }

LABEL_30:
  v40 = fp_current_or_default_log();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    v51 = [*v57 providerIdentifier];
    v52 = [v51 fp_fpIdentifier];
    *buf = 138412802;
    v71 = v58;
    v72 = 2112;
    v73 = v52;
    v74 = 2112;
    v75 = v19;
    _os_log_debug_impl(&dword_1AAAE1000, v40, OS_LOG_TYPE_DEBUG, "[DEBUG] can't create vendor enumerator for %@ owned by %@; %@", buf, 0x20u);
  }

  if (v18 == 0 && !v29)
  {
    v56 = NSStringFromSelector(sel_enumeratorForContainerItemIdentifier_error_);
    fp_simulate_crash(@"[%@ %@] must return an enumerator or an error.", v41, v42, v43, v44, v45, v46, v47, v13);

    v48 = fp_current_or_default_log();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      __95__FPXExtensionContext_fetchAndStartEnumeratingWithSettings_observer_request_completionHandler___block_invoke_cold_3(v13, sel_enumeratorForContainerItemIdentifier_error_);
    }
  }

  v36 = [v59 internalErrorFromVendorError:v19 callerDescription:@"fetchAndStartEnumeratingWithSettings"];
  v67 = fpfs_adopt_log(*(*v57 + 10));
  v49 = fp_current_or_default_log();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    v53 = FPPopLogSectionForBlock(*(a1 + 64));
    v54 = *v57;
    *buf = 134219010;
    v71 = v53;
    v72 = 2112;
    v73 = v54;
    v74 = 2080;
    v75 = "[FPXExtensionContext fetchAndStartEnumeratingWithSettings:observer:request:completionHandler:]_block_invoke";
    v76 = 2112;
    v77 = 0;
    v78 = 2112;
    v79 = v19;
    _os_log_debug_impl(&dword_1AAAE1000, v49, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 64) + 16))();
  __fp_pop_log(&v67);

LABEL_39:
  v50 = *MEMORY[0x1E69E9840];
}

void __95__FPXExtensionContext_fetchAndStartEnumeratingWithSettings_observer_request_completionHandler___block_invoke_458(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) forceItemUpdate:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __95__FPXExtensionContext_fetchAndStartEnumeratingWithSettings_observer_request_completionHandler___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
  v8 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock(*(a1 + 48));
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 134219010;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2080;
    v14 = "[FPXExtensionContext fetchAndStartEnumeratingWithSettings:observer:request:completionHandler:]_block_invoke_2";
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = 0;
    _os_log_debug_impl(&dword_1AAAE1000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v3 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
  __fp_pop_log(&v8);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)enumeratorWasInvalidated:(id)a3
{
  v4 = a3;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__FPXExtensionContext_enumeratorWasInvalidated___block_invoke;
  v7[3] = &unk_1E79390B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(notificationQueue, v7);
}

- (void)searchEnumeratorWasInvalidated:(id)a3
{
  v4 = a3;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__FPXExtensionContext_searchEnumeratorWasInvalidated___block_invoke;
  v7[3] = &unk_1E79390B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(notificationQueue, v7);
}

- (void)addListenerDelegate:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  listenerDelegates = v4->_listenerDelegates;
  if (!listenerDelegates)
  {
    v6 = objc_opt_new();
    v7 = v4->_listenerDelegates;
    v4->_listenerDelegates = v6;

    listenerDelegates = v4->_listenerDelegates;
  }

  [(NSMutableSet *)listenerDelegates addObject:v8];
  objc_sync_exit(v4);
}

- (void)removeListenerDelegate:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableSet *)v4->_listenerDelegates removeObject:v5];
  objc_sync_exit(v4);
}

- (id)additionalServiceSourcesForItemID:(id)a3 domain:(id)a4 extension:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (additionalServiceSourcesForItemID_domain_extension__onceToken != -1)
  {
    [FPXExtensionContext additionalServiceSourcesForItemID:domain:extension:];
  }

  v10 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = additionalServiceSourcesForItemID_domain_extension__sourceClasses;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = objc_alloc(*(*(&v21 + 1) + 8 * i));
        v17 = [v7 identifier];
        v18 = [v16 initWithItemIdentifier:v17 domain:v8 extension:v9];

        if (v18)
        {
          [v10 addObject:v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v10;
}

void __74__FPXExtensionContext_additionalServiceSourcesForItemID_domain_extension___block_invoke()
{
  v8 = objc_opt_new();
  v0 = NSClassFromString(&cfstr_Swycollaborati.isa);
  if (v0)
  {
    v1 = v0;
    if ([(objc_class *)v0 instancesRespondToSelector:sel_initWithItemIdentifier_domain_extension_])
    {
      [v8 addObject:v1];
    }
  }

  v2 = NSClassFromString(&cfstr_Swcollaboratio.isa);
  if (v2)
  {
    v3 = v2;
    if ([(objc_class *)v2 instancesRespondToSelector:sel_initWithItemIdentifier_domain_extension_])
    {
      [v8 addObject:v3];
    }
  }

  v4 = NSClassFromString(&cfstr_Swcollaboratio_0.isa);
  if (v4)
  {
    v5 = v4;
    if ([(objc_class *)v4 instancesRespondToSelector:sel_initWithItemIdentifier_domain_extension_])
    {
      [v8 addObject:v5];
    }
  }

  v6 = [v8 copy];
  v7 = additionalServiceSourcesForItemID_domain_extension__sourceClasses;
  additionalServiceSourcesForItemID_domain_extension__sourceClasses = v6;
}

- (void)fetchServicesForItemID:(id)a3 allowRestrictedSources:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18 = fpfs_adopt_log(self->_log);
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [FPXExtensionContext fetchServicesForItemID:allowRestrictedSources:completionHandler:];
  }

  instanceQueue = self->_instanceQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__FPXExtensionContext_fetchServicesForItemID_allowRestrictedSources_completionHandler___block_invoke;
  v14[3] = &unk_1E7939BD8;
  v14[4] = self;
  v12 = v8;
  v15 = v12;
  v13 = v9;
  v16 = v13;
  v17 = a4;
  fp_dispatch_async_with_logs(instanceQueue, v14);

  __fp_pop_log(&v18);
}

void __87__FPXExtensionContext_fetchServicesForItemID_allowRestrictedSources_completionHandler___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) domainContextForItemID:*(a1 + 40)];
  v4 = [v3 domain];
  v5 = [v4 personaIdentifier];
  v6 = [MEMORY[0x1E69DF068] sharedManager];
  v7 = [v6 currentPersona];
  v8 = [v7 userPersonaUniqueString];
  if ([v5 isEqualToString:v8])
  {
  }

  else
  {
    [MEMORY[0x1E69DF068] sharedManager];
    v9 = v25 = v3;
    v10 = [v9 currentPersona];
    v23 = [v10 userPersonaUniqueString];
    v11 = [v25 domain];
    [v11 personaIdentifier];
    v12 = v24 = v4;

    v3 = v25;
    if (v23 != v12)
    {
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __87__FPXExtensionContext_fetchServicesForItemID_allowRestrictedSources_completionHandler___block_invoke_cold_1(v2, v25, v22);
      }

      exit(1);
    }
  }

  v13 = [v3 vendorInstance];
  v14 = [*(a1 + 40) identifier];
  v15 = v13;
  if ([v15 conformsToProtocol:&unk_1F1FD7F98])
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__FPXExtensionContext_fetchServicesForItemID_allowRestrictedSources_completionHandler___block_invoke_477;
  aBlock[3] = &unk_1E7939BB0;
  aBlock[4] = *(a1 + 32);
  v30 = *(a1 + 48);
  v27 = v3;
  v28 = *(a1 + 40);
  v17 = v16;
  v29 = v17;
  v31 = *(a1 + 56);
  v18 = v3;
  v19 = _Block_copy(aBlock);
  v20 = v19;
  if (v17)
  {
    v21 = [v17 supportedServiceSourcesForItemIdentifier:v14 completionHandler:v19];
  }

  else
  {
    (*(v19 + 2))(v19, MEMORY[0x1E695E0F0], 0);
  }
}

void __87__FPXExtensionContext_fetchServicesForItemID_allowRestrictedSources_completionHandler___block_invoke_477(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v36 = a3;
  v37 = v5;
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) domain];
    v35 = [v8 additionalServiceSourcesForItemID:v7 domain:v9 extension:*(a1 + 56)];

    [v37 arrayByAddingObjectsFromArray:v35];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v10 = v39 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v11)
    {
      v12 = *v39;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          v15 = [v14 serviceName];
          if (v15)
          {
            if ((*(a1 + 72) & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v14 isRestricted])
            {
              v16 = fp_current_or_default_log();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v45 = v15;
                _os_log_debug_impl(&dword_1AAAE1000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ignoring restricted source %@", buf, 0xCu);
              }
            }

            else
            {
              [v6 setObject:v14 forKeyedSubscript:v15];
            }
          }

          else
          {
            v17 = fp_current_or_default_log();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v45 = v14;
              _os_log_impl(&dword_1AAAE1000, v17, OS_LOG_TYPE_DEFAULT, "[WARNING] source %@ returned nil service name", buf, 0xCu);
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v11);
    }

    v18 = [v6 allValues];
    v19 = [v18 fp_map:&__block_literal_global_486];

    v20 = objc_opt_new();
    v21 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FCF918];
    [v20 setInterface:v21];

    v22 = [[FPXServiceEndpointFactory alloc] initWithServiceSources:v6 domainContext:*(a1 + 40)];
    [v20 setExportedObject:v22];

    [v20 setContext:*(a1 + 32)];
    v23 = [MEMORY[0x1E696B0D8] anonymousListener];
    v24 = [v23 endpoint];
    [*(a1 + 32) addListenerDelegate:v20];
    [v23 setDelegate:v20];
    [v23 resume];
    v42 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v30 = FPPopLogSectionForBlock(*(a1 + 64));
      v31 = *(a1 + 32);
      *buf = 134219266;
      v45 = v30;
      v46 = 2112;
      v47 = v31;
      v48 = 2080;
      v49 = "[FPXExtensionContext fetchServicesForItemID:allowRestrictedSources:completionHandler:]_block_invoke_2";
      v50 = 2112;
      v51 = v24;
      v52 = 2112;
      v53 = v19;
      v54 = 2112;
      v55 = 0;
      _os_log_debug_impl(&dword_1AAAE1000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    (*(*(a1 + 64) + 16))();
    __fp_pop_log(&v42);
  }

  else
  {
    v42 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v32 = FPPopLogSectionForBlock(*(a1 + 64));
      v33 = *(a1 + 32);
      v34 = [*(a1 + 40) internalErrorFromVendorError:v36 callerDescription:@"fetchServicesForItemID"];
      *buf = 134219266;
      v45 = v32;
      v46 = 2112;
      v47 = v33;
      v48 = 2080;
      v49 = "[FPXExtensionContext fetchServicesForItemID:allowRestrictedSources:completionHandler:]_block_invoke";
      v50 = 2112;
      v51 = 0;
      v52 = 2112;
      v53 = 0;
      v54 = 2112;
      v55 = v34;
      _os_log_debug_impl(&dword_1AAAE1000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    v27 = *(a1 + 64);
    v28 = [*(a1 + 40) internalErrorFromVendorError:v36 callerDescription:@"fetchServicesForItemID"];
    (*(v27 + 16))(v27, 0, 0, v28);

    __fp_pop_log(&v42);
  }

  v29 = *MEMORY[0x1E69E9840];
}

id __87__FPXExtensionContext_fetchServicesForItemID_allowRestrictedSources_completionHandler___block_invoke_483(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 serviceName];
  [v3 setServiceName:v4];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v2 requiredEntitlement];
    [v3 setRequiredEntitlement:v5];
  }

  return v3;
}

- (void)fetchOperationServiceEndpoint:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = FPXOperationServiceXPCInterface();
  [v5 setInterface:v6];

  [v5 setExportedObject:self];
  [v5 setContext:self];
  v7 = [MEMORY[0x1E696B0D8] anonymousListener];
  v8 = [v7 endpoint];
  [(FPXExtensionContext *)self addListenerDelegate:v5];
  [v7 setDelegate:v5];
  [v7 resume];
  v11 = fpfs_adopt_log(self->_log);
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219010;
    v13 = FPPopLogSectionForBlock(v4);
    v14 = 2112;
    v15 = self;
    v16 = 2080;
    v17 = "[FPXExtensionContext fetchOperationServiceEndpoint:]";
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = 0;
    _os_log_debug_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(v4 + 2))(v4, v8, 0);
  __fp_pop_log(&v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)fetchVendorEndpoint:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = FPXVendorXPCInterface();
  [v5 setInterface:v6];

  [v5 setExportedObject:self];
  [v5 setContext:self];
  v7 = [MEMORY[0x1E696B0D8] anonymousListener];
  v8 = [v7 endpoint];
  [(FPXExtensionContext *)self addListenerDelegate:v5];
  [v7 setDelegate:v5];
  [v7 resume];
  v11 = fpfs_adopt_log(self->_log);
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219010;
    v13 = FPPopLogSectionForBlock(v4);
    v14 = 2112;
    v15 = self;
    v16 = 2080;
    v17 = "[FPXExtensionContext fetchVendorEndpoint:]";
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = 0;
    _os_log_debug_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(v4 + 2))(v4, v8, 0);
  __fp_pop_log(&v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_proxyWithCancellationHandler:(id)a3 forClientOperation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__FPXExtensionContext__proxyWithCancellationHandler_forClientOperation___block_invoke;
  v10[3] = &unk_1E7939C00;
  v11 = v5;
  v7 = v5;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v10];
  [v8 setCancellationHandler:v7];

  return v6;
}

void __72__FPXExtensionContext__proxyWithCancellationHandler_forClientOperation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__FPXExtensionContext__proxyWithCancellationHandler_forClientOperation___block_invoke_cold_1(v3);
  }

  [*(a1 + 32) cancel];
}

- (void)preflightReparentItemIDs:(id)a3 underParentID:(id)a4 reply:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = fpfs_adopt_log(self->_log);
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = logStringForObjects(v8);
    *buf = 138413058;
    v23 = self;
    v24 = 2080;
    v25 = "[FPXExtensionContext preflightReparentItemIDs:underParentID:reply:]";
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = v9;
    _os_log_debug_impl(&dword_1AAAE1000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@ %s %@, %@", buf, 0x2Au);
  }

  if ([v8 count])
  {
    instanceQueue = self->_instanceQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__FPXExtensionContext_preflightReparentItemIDs_underParentID_reply___block_invoke;
    v16[3] = &unk_1E7939B18;
    v16[4] = self;
    v17 = v8;
    v19 = v10;
    v18 = v9;
    fp_dispatch_async_with_logs(instanceQueue, v16);
  }

  else
  {
    v20 = fpfs_adopt_log(self->_log);
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock(v10);
      [FPXExtensionContext preflightReparentItemIDs:underParentID:reply:];
    }

    (*(v10 + 2))(v10, 0);
    __fp_pop_log(&v20);
  }

  __fp_pop_log(&v21);

  v14 = *MEMORY[0x1E69E9840];
}

void __68__FPXExtensionContext_preflightReparentItemIDs_underParentID_reply___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = (a1 + 32);
  v3 = [*(a1 + 40) objectAtIndexedSubscript:0];
  v30 = [v1 domainContextForItemID:v3];

  v28 = [v30 domain];
  v4 = [v28 personaIdentifier];
  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];
  v7 = [v6 userPersonaUniqueString];
  if ([v4 isEqualToString:v7])
  {
  }

  else
  {
    v8 = [MEMORY[0x1E69DF068] sharedManager];
    v9 = [v8 currentPersona];
    v10 = [v9 userPersonaUniqueString];
    v11 = [v30 domain];
    v12 = [v11 personaIdentifier];

    if (v10 != v12)
    {
      v25 = fp_current_or_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __68__FPXExtensionContext_preflightReparentItemIDs_underParentID_reply___block_invoke_cold_1(v2, v30, v25);
      }

      exit(1);
    }
  }

  v29 = [v30 instanceWithPrivateSelector:sel_preflightReparentItemWithIdentifier_toParentItemWithIdentifier_completionHandler_];
  if (v29)
  {
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = __Block_byref_object_copy_;
    v44[4] = __Block_byref_object_dispose_;
    v45 = 0;
    v13 = dispatch_group_create();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = *(a1 + 40);
    v14 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v14)
    {
      v15 = *v39;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v38 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          dispatch_group_enter(v13);
          v19 = [v17 identifier];
          v20 = [*(a1 + 48) identifier];
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __68__FPXExtensionContext_preflightReparentItemIDs_underParentID_reply___block_invoke_500;
          v34[3] = &unk_1E7939C28;
          v35 = v30;
          v36 = v13;
          v37 = v44;
          [v29 preflightReparentItemWithIdentifier:v19 toParentItemWithIdentifier:v20 completionHandler:v34];

          objc_autoreleasePoolPop(v18);
        }

        v14 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v14);
    }

    v21 = *(a1 + 32);
    v22 = *(v21 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__FPXExtensionContext_preflightReparentItemIDs_underParentID_reply___block_invoke_3;
    block[3] = &unk_1E7939C50;
    block[4] = v21;
    v32 = *(a1 + 56);
    v33 = v44;
    dispatch_group_notify(v13, v22, block);

    _Block_object_dispose(v44, 8);
  }

  else
  {
    v42 = fpfs_adopt_log(*(*v2 + 80));
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock(*(a1 + 56));
      __68__FPXExtensionContext_preflightReparentItemIDs_underParentID_reply___block_invoke_cold_2(v2);
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log(&v42);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __68__FPXExtensionContext_preflightReparentItemIDs_underParentID_reply___block_invoke_500(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__FPXExtensionContext_preflightReparentItemIDs_underParentID_reply___block_invoke_2;
  v8[3] = &unk_1E79396C0;
  v9 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 fp_map:v8];
  v6 = *(a1 + 40);
  objc_sync_enter(v6);
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
  objc_sync_exit(v6);

  dispatch_group_leave(*(a1 + 40));
}

void __68__FPXExtensionContext_preflightReparentItemIDs_underParentID_reply___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock(*(a1 + 40));
    v6 = *(a1 + 32);
    v7 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 134218754;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2080;
    v14 = "[FPXExtensionContext preflightReparentItemIDs:underParentID:reply:]_block_invoke_3";
    v15 = 2112;
    v16 = v7;
    _os_log_debug_impl(&dword_1AAAE1000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  v3 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();
  __fp_pop_log(&v8);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_indexOutOfBandUpdatedItems:(id)a3 deletedItems:(id)a4 indexReason:(int64_t)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v34 = a6;
  v35 = self;
  v11 = self->_domainContext;
  v12 = [(FPXDomainContext *)v11 domain];
  v13 = [v12 personaIdentifier];
  v14 = [MEMORY[0x1E69DF068] sharedManager];
  v15 = [v14 currentPersona];
  v16 = [v15 userPersonaUniqueString];
  if ([v13 isEqualToString:v16])
  {
  }

  else
  {
    v17 = [MEMORY[0x1E69DF068] sharedManager];
    v18 = [v17 currentPersona];
    [v18 userPersonaUniqueString];
    v19 = v31 = v9;
    [(FPXDomainContext *)v11 domain];
    v20 = v32 = v11;
    [v20 personaIdentifier];
    v21 = v30 = v10;

    v11 = v32;
    v22 = v19 == v21;
    v10 = v30;
    v9 = v31;
    if (!v22)
    {
      v28 = fp_current_or_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [FPXExtensionContext _indexOutOfBandUpdatedItems:v35 deletedItems:v32 indexReason:v28 completionHandler:?];
      }

      exit(1);
    }
  }

  v23 = [(FPXDomainContext *)v11 spotlightIndexer];
  v24 = [(FPXExtensionContext *)v35 providerIdentifier];
  if ([v24 isEqual:@"com.apple.filesystems.UserFS.FileProvider"])
  {
    v25 = 0;
  }

  else
  {
    v26 = [(FPXExtensionContext *)v35 providerIdentifier];
    v25 = [v26 isEqual:@"com.apple.SMBClientProvider.FileProvider"] ^ 1;
  }

  if (!v35->_usesFPFS && v25 && v23 && ([v9 count] || objc_msgSend(v10, "count")))
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __94__FPXExtensionContext__indexOutOfBandUpdatedItems_deletedItems_indexReason_completionHandler___block_invoke;
    v36[3] = &unk_1E7939C78;
    v37 = v9;
    v38 = v10;
    v39 = v35;
    v27 = v34;
    v40 = v34;
    [v23 indexOutOfBandUpdatedItems:v37 deletedItems:v38 indexReason:a5 completionHandler:v36];
  }

  else
  {
    v27 = v34;
    v34[2](v34);
  }
}

void __94__FPXExtensionContext__indexOutOfBandUpdatedItems_deletedItems_indexReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) count];
      v6 = [*(a1 + 40) count];
      v7 = [v3 fp_prettyDescription];
      v9[0] = 67109634;
      v9[1] = v5;
      v10 = 1024;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] out-of-band indexing of %u updates, %u deletions failed with error %@", v9, 0x18u);
    }
  }

  dispatch_async(*(*(a1 + 48) + 32), *(a1 + 56));

  v8 = *MEMORY[0x1E69E9840];
}

- (void)deleteItemsWithIDs:(id)a3 baseVersions:(id)a4 options:(unint64_t)a5 reply:(id)a6
{
  v27[6] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v27[0] = fpfs_adopt_log(self->_log);
  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    logStringForObjects(v11);
    objc_claimAutoreleasedReturnValue();
    [FPXExtensionContext deleteItemsWithIDs:baseVersions:options:reply:];
  }

  instanceQueue = self->_instanceQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __69__FPXExtensionContext_deleteItemsWithIDs_baseVersions_options_reply___block_invoke;
  v20[3] = &unk_1E7939D18;
  v16 = v11;
  v21 = v16;
  v17 = v12;
  v25 = a2;
  v22 = v17;
  v23 = self;
  v18 = v13;
  v24 = v18;
  v26 = a5;
  fp_dispatch_async_with_logs(instanceQueue, v20);

  __fp_pop_log(v27);
  v19 = *MEMORY[0x1E69E9840];
}

void __69__FPXExtensionContext_deleteItemsWithIDs_baseVersions_options_reply___block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  v47 = a1;
  v43 = (a1 + 40);
  if (v2 != [*(a1 + 40) count])
  {
    __69__FPXExtensionContext_deleteItemsWithIDs_baseVersions_options_reply___block_invoke_cold_1(a1, v43, v2);
  }

  v42 = v2;
  if (v2)
  {
    v4 = a1 + 48;
    v3 = *(a1 + 48);
    v5 = [*(a1 + 32) firstObject];
    v46 = [v3 domainContextForItemID:v5];

    v44 = [v46 domain];
    v6 = [v44 personaIdentifier];
    v7 = [MEMORY[0x1E69DF068] sharedManager];
    v8 = [v7 currentPersona];
    v9 = [v8 userPersonaUniqueString];
    if ([v6 isEqualToString:v9])
    {
    }

    else
    {
      v12 = [MEMORY[0x1E69DF068] sharedManager];
      v13 = [v12 currentPersona];
      v14 = [v13 userPersonaUniqueString];
      v15 = [v46 domain];
      v16 = [v15 personaIdentifier];

      if (v14 != v16)
      {
        v39 = fp_current_or_default_log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          __69__FPXExtensionContext_deleteItemsWithIDs_baseVersions_options_reply___block_invoke_cold_2(v4, v46, v39);
        }

        exit(1);
      }
    }

    v45 = [v46 vendorInstance];
    v17 = *(v47 + 72);
    v40 = (v17 & 0xFFFFFFFF80000000) == 0xFFFFFFFF80000000;
    if (*(*(v47 + 48) + 120))
    {
      v18 = 0;
    }

    else
    {
      v18 = 0xFFFFFFFF80000000;
    }

    v19 = fp_current_or_default_log();
    v41 = v18 | v17 & 0x7FFFFFFF;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [*(v47 + 32) count];
      v21 = @"recursively ";
      if (!(v18 & 1 | v17 & 1))
      {
        v21 = &stru_1F1F94B20;
      }

      *buf = 134218498;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = v21;
      if ((v17 & 0xFFFFFFFF80000000) == 0xFFFFFFFF80000000)
      {
        v22 = @"ignoring versions";
      }

      else
      {
        v22 = &stru_1F1F94B20;
      }

      *&buf[22] = 2112;
      v71 = v22;
      _os_log_impl(&dword_1AAAE1000, v19, OS_LOG_TYPE_INFO, "[INFO] Received request to delete %lu itemIDs %@%@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v71 = __Block_byref_object_copy_;
    v72 = __Block_byref_object_dispose_;
    v73 = 0;
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x3032000000;
    v68[3] = __Block_byref_object_copy_;
    v68[4] = __Block_byref_object_dispose_;
    v69 = 0;
    v66[0] = 0;
    v66[1] = v66;
    v66[2] = 0x3032000000;
    v66[3] = __Block_byref_object_copy_;
    v66[4] = __Block_byref_object_dispose_;
    v67 = objc_opt_new();
    v23 = dispatch_group_create();
    v24 = 0;
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x3032000000;
    v64[3] = __Block_byref_object_copy_;
    v64[4] = __Block_byref_object_dispose_;
    v65 = 0;
    do
    {
      v25 = objc_autoreleasePoolPush();
      v26 = [*(v47 + 32) objectAtIndex:v24];
      v27 = [*v43 objectAtIndex:v24];
      v28 = [v27 versionRewritingBeforeFirstSync];

      dispatch_group_enter(v23);
      v29 = [v26 identifier];
      v30 = +[NSFileProviderRequest requestFromTheSystem];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __69__FPXExtensionContext_deleteItemsWithIDs_baseVersions_options_reply___block_invoke_519;
      v55[3] = &unk_1E7939CA0;
      v31 = v23;
      v56 = v31;
      v59 = v66;
      v32 = v26;
      v63 = v40;
      v57 = v32;
      v60 = buf;
      v61 = v68;
      v33 = v46;
      v58 = v33;
      v62 = v64;
      v34 = [v45 deleteItemWithIdentifier:v29 baseVersion:v28 options:v41 request:v30 completionHandler:v55];

      objc_autoreleasePoolPop(v25);
      ++v24;
    }

    while (v42 != v24);
    v35 = *(v47 + 48);
    v36 = *(v35 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__FPXExtensionContext_deleteItemsWithIDs_baseVersions_options_reply___block_invoke_525;
    block[3] = &unk_1E7939CF0;
    block[4] = v35;
    v50 = v66;
    v51 = buf;
    v52 = v64;
    v37 = *(v47 + 72);
    v53 = v68;
    v54 = v37;
    v49 = *(v47 + 56);
    dispatch_group_notify(v31, v36, block);

    _Block_object_dispose(v64, 8);
    _Block_object_dispose(v66, 8);

    _Block_object_dispose(v68, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = (a1 + 48);
    v68[0] = fpfs_adopt_log(*(*(v47 + 48) + 80));
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock(*(v47 + 56));
      __69__FPXExtensionContext_deleteItemsWithIDs_baseVersions_options_reply___block_invoke_cold_3(v10);
    }

    (*(*(v47 + 56) + 16))();
    __fp_pop_log(v68);
  }

  v38 = *MEMORY[0x1E69E9840];
}

void __69__FPXExtensionContext_deleteItemsWithIDs_baseVersions_options_reply___block_invoke_519(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 fp_isFileProviderError:-1005];
  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  if (v4)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:*(a1 + 40)];
    objc_sync_exit(v5);

    goto LABEL_22;
  }

  if (![v3 fp_isFileProviderError:-1006])
  {
    goto LABEL_16;
  }

  if (*(a1 + 88) != 1)
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1AAAE1000, v18, OS_LOG_TYPE_INFO, "[INFO] Received out-of-date error, but no retry requested", &v23, 2u);
    }

    goto LABEL_15;
  }

  v6 = [v3 fp_userInfoItem];
  if (!v6)
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(sel_deleteItemWithIdentifier_baseVersion_options_completionHandler_);
      objc_claimAutoreleasedReturnValue();
      __69__FPXExtensionContext_deleteItemsWithIDs_baseVersions_options_reply___block_invoke_519_cold_1();
    }

LABEL_15:

LABEL_16:
    v6 = [*(a1 + 48) internalErrorFromVendorError:v3 callerDescription:@"deleteItemsWithID"];
    v19 = *(*(a1 + 80) + 8);
    v20 = v6;
    if (!v6)
    {
      v20 = *(v19 + 40);
    }

    objc_storeStrong((v19 + 40), v20);
    goto LABEL_19;
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [MEMORY[0x1E695DF70] array];
    v11 = *(*(a1 + 72) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = [*(a1 + 48) itemFromVendorItem:v6];
  v14 = [v13 itemID];
  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v23 = 138412290;
    v24 = v14;
    _os_log_impl(&dword_1AAAE1000, v15, OS_LOG_TYPE_INFO, "[INFO] Adding item %@ to retry list because of version conflict", &v23, 0xCu);
  }

  [*(*(*(a1 + 64) + 8) + 40) addObject:v14];
  v16 = *(*(*(a1 + 72) + 8) + 40);
  v17 = [v13 itemVersion];
  [v16 addObject:v17];

LABEL_19:
  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    v21 = *(a1 + 32);
    objc_sync_enter(v21);
    [*(*(*(a1 + 56) + 8) + 40) addObject:*(a1 + 40)];
    objc_sync_exit(v21);
  }

  objc_sync_exit(v5);

LABEL_22:
  dispatch_group_leave(*(a1 + 32));

  v22 = *MEMORY[0x1E69E9840];
}

void __69__FPXExtensionContext_deleteItemsWithIDs_baseVersions_options_reply___block_invoke_525(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__FPXExtensionContext_deleteItemsWithIDs_baseVersions_options_reply___block_invoke_2;
  v4[3] = &unk_1E7939CC8;
  v6 = *(a1 + 56);
  v4[4] = v1;
  v3 = *(a1 + 80);
  v7 = *(a1 + 72);
  v8 = v3;
  v5 = *(a1 + 40);
  [v1 _indexOutOfBandUpdatedItems:MEMORY[0x1E695E0F0] deletedItems:v2 indexReason:0 completionHandler:v4];
}

void __69__FPXExtensionContext_deleteItemsWithIDs_baseVersions_options_reply___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a1 + 48;
  if ([*(*(*(a1 + 48) + 8) + 40) count] && !*(*(*(a1 + 56) + 8) + 40))
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __69__FPXExtensionContext_deleteItemsWithIDs_baseVersions_options_reply___block_invoke_2_cold_1(v2);
    }

    [*(a1 + 32) deleteItemsWithIDs:*(*(*(a1 + 48) + 8) + 40) baseVersions:*(*(*(a1 + 64) + 8) + 40) options:*(a1 + 72) & 0x7FFFFFFFLL reply:*(a1 + 40)];
  }

  else
  {
    v10 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v7 = FPPopLogSectionForBlock(*(a1 + 40));
      v8 = *(a1 + 32);
      v9 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 134218754;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2080;
      v16 = "[FPXExtensionContext deleteItemsWithIDs:baseVersions:options:reply:]_block_invoke";
      v17 = 2112;
      v18 = v9;
      _os_log_debug_impl(&dword_1AAAE1000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v4 = *(*(*(a1 + 56) + 8) + 40);
    (*(*(a1 + 40) + 16))();
    __fp_pop_log(&v10);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)deleteItemWithID:(id)a3 baseVersion:(id)a4 options:(unint64_t)a5 request:(id)a6 completionHandler:(id)a7
{
  v44 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v35 = fpfs_adopt_log(self->_log);
  v16 = fp_current_or_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v37 = self;
    v38 = 2080;
    v39 = "[FPXExtensionContext deleteItemWithID:baseVersion:options:request:completionHandler:]";
    v40 = 2112;
    v41 = v12;
    v42 = 2112;
    v43 = v14;
    _os_log_debug_impl(&dword_1AAAE1000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@ %s %@, %@", buf, 0x2Au);
  }

  v17 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
  instanceQueue = self->_instanceQueue;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __86__FPXExtensionContext_deleteItemWithID_baseVersion_options_request_completionHandler___block_invoke;
  v28[3] = &unk_1E7939D40;
  v28[4] = self;
  v19 = v12;
  v29 = v19;
  v34 = a5;
  v20 = v13;
  v30 = v20;
  v21 = v14;
  v31 = v21;
  v22 = v15;
  v33 = v22;
  v23 = v17;
  v32 = v23;
  fp_dispatch_async_with_logs(instanceQueue, v28);
  v24 = v32;
  v25 = v23;

  __fp_pop_log(&v35);
  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

void __86__FPXExtensionContext_deleteItemWithID_baseVersion_options_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) domainContextForItemID:*(a1 + 40)];
  v4 = [v3 domain];
  v5 = [v4 personaIdentifier];
  v6 = [MEMORY[0x1E69DF068] sharedManager];
  v7 = [v6 currentPersona];
  v8 = [v7 userPersonaUniqueString];
  if ([v5 isEqualToString:v8])
  {
  }

  else
  {
    [MEMORY[0x1E69DF068] sharedManager];
    v9 = v26 = v4;
    v10 = [v9 currentPersona];
    v25 = [v10 userPersonaUniqueString];
    v11 = [v3 domain];
    [v11 personaIdentifier];
    v12 = v27 = v3;

    v13 = v25 == v12;
    v3 = v27;
    if (!v13)
    {
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __86__FPXExtensionContext_deleteItemWithID_baseVersion_options_request_completionHandler___block_invoke_cold_1(v2, v27, v23);
      }

      exit(1);
    }
  }

  v14 = [v3 vendorInstance];
  v15 = *(a1 + 80);
  if (*(*(a1 + 32) + 120))
  {
    v16 = 0;
  }

  else
  {
    v16 = 0xFFFFFFFF80000000;
  }

  [*(a1 + 40) identifier];
  v18 = v17 = v3;
  v19 = [*(a1 + 48) versionRewritingBeforeFirstSync];
  v20 = *(a1 + 56);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __86__FPXExtensionContext_deleteItemWithID_baseVersion_options_request_completionHandler___block_invoke_526;
  v28[3] = &unk_1E7939C78;
  v28[4] = *(a1 + 32);
  v21 = v17;
  v29 = v21;
  v30 = *(a1 + 56);
  v31 = *(a1 + 72);
  v22 = [v14 deleteItemWithIdentifier:v18 baseVersion:v19 options:v16 | v15 request:v20 completionHandler:v28];

  if (v22)
  {
    [*(a1 + 64) addChild:v22 withPendingUnitCount:100];
  }
}

void __86__FPXExtensionContext_deleteItemWithID_baseVersion_options_request_completionHandler___block_invoke_526(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = (a1 + 40);
  v6 = a2;
  v7 = [v3 currentResponseWithRequest:v4];
  v8 = [*v5 internalErrorFromVendorError:v6 callerDescription:@"deleteItemWithID"];

  v13 = fpfs_adopt_log(*(*(v5 - 1) + 10));
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = FPPopLogSectionForBlock(*(a1 + 56));
    v12 = *(a1 + 32);
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPXExtensionContext deleteItemWithID:baseVersion:options:request:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    _os_log_debug_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 56) + 16))();
  __fp_pop_log(&v13);

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_inlineSymlinkTarget:(id)a3 url:(id *)a4 error:(id *)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = *a4;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = [v7 contentType];
  if (([v9 conformsToType:*MEMORY[0x1E6982FF8]] & 1) == 0)
  {

    goto LABEL_9;
  }

  v10 = [v7 symlinkTargetPath];

  if (v10)
  {
LABEL_9:
    v11 = 1;
    goto LABEL_10;
  }

  memset(&v19, 0, sizeof(v19));
  if (lstat([v8 fileSystemRepresentation], &v19))
  {
    goto LABEL_5;
  }

  if ((~v19.st_mode & 0xA000) == 0)
  {
    bzero(v20, 0x401uLL);
    v14 = readlink([v8 fileSystemRepresentation], v20, 0x400uLL);
    if (v14 < 0)
    {
LABEL_5:
      if (a5)
      {
        *a5 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
      }

      goto LABEL_7;
    }

    v20[v14] = 0;
    v15 = [MEMORY[0x1E696AEC0] fp_pathWithFileSystemRepresentation:v20];
    [v7 setSymlinkTargetPath:v15];

    goto LABEL_15;
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v8 encoding:4 error:a5];
  [v7 setSymlinkTargetPath:v16];

  v17 = [v7 symlinkTargetPath];

  if (v17)
  {
LABEL_15:
    [v8 stopAccessingSecurityScopedResource];
    *a4 = 0;
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [FPXExtensionContext _inlineSymlinkTarget:url:error:];
    }

    goto LABEL_9;
  }

LABEL_7:
  v11 = 0;
LABEL_10:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)createItemBasedOnTemplate:(id)a3 fields:(unint64_t)a4 contents:(id)a5 options:(unint64_t)a6 request:(id)a7 bounce:(BOOL)a8 completionHandler:(id)a9
{
  v41 = a8;
  v71 = *MEMORY[0x1E69E9840];
  v48 = a3;
  v47 = a5;
  v45 = a7;
  v46 = a9;
  v44 = self;
  v57 = fpfs_adopt_log(self->_log);
  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413570;
    v59 = self;
    v60 = 2080;
    v61 = "[FPXExtensionContext createItemBasedOnTemplate:fields:contents:options:request:bounce:completionHandler:]";
    v62 = 2112;
    v63 = v48;
    v64 = 1024;
    *v65 = a4;
    *&v65[4] = 1024;
    *&v65[6] = a6;
    *v66 = 2112;
    *&v66[2] = v47;
    _os_log_debug_impl(&dword_1AAAE1000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@ %s %@ fields=%x options=%x contentURL=%@", buf, 0x36u);
  }

  v13 = self;
  objc_sync_enter(v13);
  v49 = v13->_domainContext;
  objc_sync_exit(v13);

  v14 = [(FPXDomainContext *)v49 domain];
  v15 = [v14 personaIdentifier];
  v16 = [MEMORY[0x1E69DF068] sharedManager];
  v17 = [v16 currentPersona];
  v18 = [v17 userPersonaUniqueString];
  if ([v15 isEqualToString:v18])
  {
  }

  else
  {
    v19 = [MEMORY[0x1E69DF068] sharedManager];
    v20 = [v19 currentPersona];
    v21 = [v20 userPersonaUniqueString];
    v22 = [(FPXDomainContext *)v49 domain];
    v23 = [v22 personaIdentifier];
    v40 = v21 == v23;

    if (!v40)
    {
      v33 = fp_current_or_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = [MEMORY[0x1E69DF068] sharedManager];
        v35 = [v34 currentPersona];
        v36 = [v35 userPersonaUniqueString];
        v37 = [(FPXDomainContext *)v49 domain];
        v38 = [v37 personaIdentifier];
        *buf = 138413058;
        v59 = v13;
        v60 = 2112;
        v61 = v36;
        v62 = 2112;
        v63 = v38;
        v64 = 2080;
        *v65 = "[FPXExtensionContext createItemBasedOnTemplate:fields:contents:options:request:bounce:completionHandler:]";
        _os_log_error_impl(&dword_1AAAE1000, v33, OS_LOG_TYPE_ERROR, "[ERROR] Non matching personas for the extension %@ (%@, expect %@) on %s", buf, 0x2Au);
      }

      exit(1);
    }
  }

  v24 = [v47 url];
  [v24 startAccessingSecurityScopedResource];
  v55 = 0;
  v56 = v24;
  v25 = [(FPXExtensionContext *)v13 _inlineSymlinkTarget:v48 url:&v56 error:&v55];
  v26 = v56;

  v27 = v55;
  if (v25)
  {
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __106__FPXExtensionContext_createItemBasedOnTemplate_fields_contents_options_request_bounce_completionHandler___block_invoke;
    v50[3] = &unk_1E7939D68;
    v51 = v26;
    v52 = v13;
    v53 = v46;
    v28 = [(FPXExtensionContext *)v13 _createItemBasedOnTemplate:v48 fields:a4 contents:v51 options:a6 request:v45 bounce:v41 bounceNumber:0 completionHandler:v50];

    v29 = v51;
  }

  else
  {
    v29 = [(FPXDomainContext *)v49 currentResponseWithRequest:v45];
    v54 = fpfs_adopt_log(v44->_log);
    v30 = fp_current_or_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v39 = FPPopLogSectionForBlock(v46);
      *buf = 134219778;
      v59 = v39;
      v60 = 2112;
      v61 = v13;
      v62 = 2080;
      v63 = "[FPXExtensionContext createItemBasedOnTemplate:fields:contents:options:request:bounce:completionHandler:]";
      v64 = 2112;
      *v65 = 0;
      *&v65[8] = 1024;
      *v66 = 0;
      *&v66[4] = 1024;
      *&v66[6] = 0;
      v67 = 2112;
      v68 = v29;
      v69 = 2112;
      v70 = v27;
      _os_log_debug_impl(&dword_1AAAE1000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, 0x%x, %{BOOL}d, %@, %@", buf, 0x4Au);
    }

    (*(v46 + 2))(v46, 0, 0, 0, v29, v27);
    __fp_pop_log(&v54);

    v28 = 0;
  }

  __fp_pop_log(&v57);
  v31 = *MEMORY[0x1E69E9840];

  return v28;
}

void __106__FPXExtensionContext_createItemBasedOnTemplate_fields_contents_options_request_bounce_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a5;
  v13 = a6;
  [*(a1 + 32) stopAccessingSecurityScopedResource];
  v20 = fpfs_adopt_log(*(*(a1 + 40) + 80));
  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v17 = FPPopLogSectionForBlock(*(a1 + 48));
    v18 = *(a1 + 40);
    if (v13)
    {
      v19 = 0;
    }

    else
    {
      v19 = v11;
    }

    *buf = 134219778;
    v22 = v17;
    v23 = 2112;
    v24 = v18;
    v25 = 2080;
    v26 = "[FPXExtensionContext createItemBasedOnTemplate:fields:contents:options:request:bounce:completionHandler:]_block_invoke";
    v27 = 2112;
    v28 = v19;
    v29 = 2048;
    v30 = a3;
    v31 = 1024;
    v32 = a4;
    v33 = 2112;
    v34 = v12;
    v35 = 2112;
    v36 = v13;
    _os_log_debug_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, 0x%lx, %{BOOL}d, %@, %@", buf, 0x4Eu);
  }

  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v11;
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v15, a3, a4, v12, v13);
  __fp_pop_log(&v20);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_freeSlotHeldByItem:(id)a3 request:(id)a4 bounceIndex:(unint64_t)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v9 filename];
  v32 = 0;
  v31 = 0;
  v13 = [v12 fp_stringByDeletingPathBounceNo:&v32 andPathExtension:&v31 isFolder:{objc_msgSend(v9, "isFolder")}];
  v14 = v32;
  v15 = v31;

  if ([v14 unsignedIntegerValue] == a5)
  {
    v16 = [v14 unsignedIntegerValue];
    if ((v16 + 1) > 2)
    {
      a5 = v16 + 1;
    }

    else
    {
      a5 = 2;
    }
  }

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v18 = [v13 fp_representableHFSFileNameWithNumber:v17 addedExtension:v15 makeDotFile:0];

  v19 = fp_current_or_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [FPXExtensionContext _freeSlotHeldByItem:request:bounceIndex:completionHandler:];
  }

  [v9 setFilename:v18];
  v20 = [v9 itemVersion];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __81__FPXExtensionContext__freeSlotHeldByItem_request_bounceIndex_completionHandler___block_invoke;
  v26[3] = &unk_1E7939D90;
  v26[4] = self;
  v27 = v9;
  v29 = v11;
  v30 = a5;
  v28 = v10;
  v21 = v11;
  v22 = v10;
  v23 = v9;
  v24 = [(FPXExtensionContext *)self modifyItem:v23 baseVersion:v20 changedFields:2 contents:0 options:0 request:v22 completionHandler:v26];
}

void __81__FPXExtensionContext__freeSlotHeldByItem_request_bounceIndex_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a6;
  v7 = [v8 fp_userInfoItem];

  if (v7)
  {
    [*(a1 + 32) _freeSlotHeldByItem:*(a1 + 40) request:*(a1 + 48) bounceIndex:*(a1 + 64) + 1 completionHandler:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (id)_createItemBasedOnTemplate:(id)a3 fields:(unint64_t)a4 contents:(id)a5 options:(unint64_t)a6 request:(id)a7 bounce:(BOOL)a8 bounceNumber:(id)a9 completionHandler:(id)a10
{
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a9;
  v19 = a10;
  if (v16)
  {
    v20 = [v15 documentSize];
    v21 = [v20 longLongValue];

    if (v21 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }
  }

  else
  {
    v22 = 100;
  }

  v23 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v22];
  instanceQueue = self->_instanceQueue;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke;
  v35[3] = &unk_1E7939E08;
  v35[4] = self;
  v36 = v15;
  v42 = a6;
  v43 = a4;
  v37 = v18;
  v38 = v17;
  v45 = a8;
  v39 = v16;
  v41 = v19;
  v25 = v23;
  v40 = v25;
  v44 = v22;
  v26 = v19;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v30 = v15;
  fp_dispatch_async_with_logs(instanceQueue, v35);
  v31 = v40;
  v32 = v25;

  return v25;
}

void __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = a1 + 32;
  v4 = [*(a1 + 40) itemID];
  v5 = [v2 domainContextForItemID:v4];

  v6 = [v5 domain];
  v7 = [v6 personaIdentifier];
  v8 = [MEMORY[0x1E69DF068] sharedManager];
  v9 = [v8 currentPersona];
  v10 = [v9 userPersonaUniqueString];
  if ([v7 isEqualToString:v10])
  {
  }

  else
  {
    [MEMORY[0x1E69DF068] sharedManager];
    v11 = v40 = v6;
    v12 = [v11 currentPersona];
    v38 = [v12 userPersonaUniqueString];
    v13 = [v5 domain];
    [v13 personaIdentifier];
    v14 = v39 = v7;

    if (v38 != v14)
    {
      v37 = fp_current_or_default_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_cold_1(v3, v5, v37);
      }

      exit(1);
    }
  }

  v41 = [v5 vendorInstance];
  v15 = *(a1 + 88);
  v16 = (v15 & 0x10000) == 0;
  v17 = *(a1 + 40);
  v18 = *(a1 + 96);
  if ((v15 & 0x10000) != 0 && *(a1 + 48))
  {
    v19 = v5;
    v20 = [*(a1 + 40) copy];

    v21 = [*(a1 + 40) filename];
    v22 = [v21 fp_bouncedNameWithIndex:objc_msgSend(*(a1 + 48) isDir:{"longValue"), objc_msgSend(*(a1 + 40), "isFolder")}];
    [v20 setFilename:v22];

    v18 |= 2uLL;
    v17 = v20;
    v5 = v19;
  }

  v23 = (v15 >> 17) & 1;
  v24 = fp_current_or_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_cold_2(v17, a1);
  }

  v25 = *(a1 + 88);
  v27 = *(a1 + 56);
  v26 = *(a1 + 64);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_532;
  v42[3] = &unk_1E7939DE0;
  v28 = v5;
  v43 = v28;
  v53 = *(a1 + 112);
  v54 = v16;
  v44 = *(a1 + 40);
  v29 = *(a1 + 48);
  v55 = v23;
  v30 = *(a1 + 32);
  v45 = v29;
  v46 = v30;
  v31 = v17;
  v47 = v31;
  v48 = *(a1 + 56);
  v32 = *(a1 + 80);
  v33 = *(a1 + 96);
  v50 = v32;
  v51 = v33;
  v34 = *(a1 + 64);
  v35 = *(a1 + 88);
  v49 = v34;
  v52 = v35;
  v36 = [v41 createItemBasedOnTemplate:v31 fields:v18 contents:v26 options:v25 request:v27 completionHandler:v42];
  if (v36)
  {
    [*(a1 + 72) addChild:v36 withPendingUnitCount:*(a1 + 104)];
  }
}

void __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_532(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = [*(a1 + 32) internalErrorFromVendorError:a5 callerDescription:@"createItemBasedOnTemplate"];
  v11 = v10;
  if (((*(a1 + 112) & 1) != 0 || *(a1 + 113) == 1) && ([v10 fp_userInfoItem], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, v14 = objc_msgSend(v11, "fp_isFileProviderError:", -1001), v13, v14))
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    if ((*(a1 + 114) & 1) == 0 && (*(a1 + 113) & 1) == 0)
    {
      v17 = [v15 copy];

      v18 = [v17 filename];
      v98[0] = v16;
      v19 = [v18 fp_stringByDeletingPathBounceNo:v98 andPathExtension:0 isFolder:{objc_msgSend(v17, "isFolder")}];
      v20 = v98[0];
      v21 = v16;
      v16 = v20;

      [v17 setFilename:v19];
      v15 = v17;
    }

    v22 = MEMORY[0x1E696AD98];
    v23 = [v16 longValue];
    if (v23 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    v25 = [v22 numberWithLong:v24 + 1];
    v83 = v15;
    if ([*(*(a1 + 56) + 112) supportsPickingFolders] && (objc_msgSend(*(*(a1 + 56) + 112), "isUsingFPFS") & 1) == 0)
    {
      v79 = v25;
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_532_cold_1(a1);
      }

      v27 = [*(a1 + 32) v2Instance];
      v28 = [*(a1 + 64) parentItemIdentifier];
      v76 = v27;
      v29 = [v27 URLForItemWithPersistentIdentifier:v28];

      v30 = [*(a1 + 64) filename];
      v31 = [*(a1 + 64) isFolder];
      v97 = 0;
      v75 = v29;
      v32 = [v29 fp_existingURLOfChildWithName:v30 isFolder:v31 notMatchingFileID:0 nextAvailableBounceNumber:&v97 forceFetchingBounceNumber:0];
      v33 = v97;

      v78 = v32;
      if (v32 && v33)
      {
        v81 = v16;
        v34 = MEMORY[0x1E696AD98];
        v35 = [v33 longValue];
        v36 = [v79 longValue];
        if (v35 + 1 > v36)
        {
          v37 = v35 + 1;
        }

        else
        {
          v37 = v36;
        }

        v38 = [v34 numberWithLong:v37];

        v39 = [*(a1 + 64) filename];
        v96 = 0;
        v40 = [v39 fp_stringByDeletingPathBounceNo:&v96 andPathExtension:0 isFolder:{objc_msgSend(*(a1 + 64), "isFolder")}];
        v41 = v96;

        v42 = [v78 lastPathComponent];
        v43 = [v42 fp_stringByDeletingPathBounceNo:0 andPathExtension:0 isFolder:{objc_msgSend(v78, "fp_isFolder")}];

        v74 = v43;
        v77 = v41;
        if ([v40 isEqualToString:v43] && v38 > v41 && (v44 = -[NSObject unsignedIntegerValue](v38, "unsignedIntegerValue"), v44 < objc_msgSend(MEMORY[0x1E696AEC0], "fp_maximumBounceLevel")))
        {
          v45 = v38;
          v46 = v38;

          v47 = fp_current_or_default_log();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_532_cold_4();
          }
        }

        else
        {
          v47 = fp_current_or_default_log();
          v45 = v38;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_532_cold_3();
          }

          v46 = v79;
        }

        v16 = v81;

        v25 = v46;
      }

      else
      {
        fp_current_or_default_log();
        v77 = v25 = v79;
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_532_cold_2();
        }

        v45 = v33;
      }
    }

    v51 = *(a1 + 113);
    v52 = fp_current_or_default_log();
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG);
    if (v51 == 1)
    {
      v82 = v16;
      if (v53)
      {
        __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_532_cold_6(a1);
      }

      v54 = *(a1 + 32);
      v55 = [v11 fp_userInfoItem];
      v56 = [v54 itemFromVendorItem:v55];

      v57 = *(a1 + 56);
      v58 = *(a1 + 72);
      v59 = [v25 unsignedIntegerValue];
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_536;
      v84[3] = &unk_1E7939DB8;
      v90 = *(a1 + 88);
      v85 = *(a1 + 32);
      v86 = v9;
      v91 = a3;
      v94 = a4;
      v60 = *(a1 + 72);
      v80 = *(a1 + 56);
      v61 = v80.i64[1];
      v92 = *(a1 + 96);
      v62 = *(a1 + 80);
      v63.i64[0] = v60;
      v63.i64[1] = v62;
      v64 = vzip2q_s64(v80, v63);
      v63.i64[1] = v80.i64[0];
      v87 = v63;
      v88 = v64;
      v93 = *(a1 + 104);
      v95 = *(a1 + 112);
      v89 = *(a1 + 48);
      [v57 _freeSlotHeldByItem:v56 request:v58 bounceIndex:v59 completionHandler:v84];

      v16 = v82;
      v65 = v83;
    }

    else
    {
      if (v53)
      {
        __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_532_cold_5(a1);
      }

      v66 = *(a1 + 56);
      v67 = *(a1 + 96);
      v69 = *(a1 + 72);
      v68 = *(a1 + 80);
      v70 = *(a1 + 112);
      v73 = *(a1 + 88);
      v71 = *(a1 + 104) | 0x20000;
      v65 = v83;
      v72 = [v66 _createItemBasedOnTemplate:v83 fields:v67 contents:v68 options:v71 request:v69 bounce:v70 bounceNumber:v25 completionHandler:v73];
    }
  }

  else
  {
    v48 = *(a1 + 88);
    v49 = [*(a1 + 32) itemFromVendorItem:v9];
    v50 = [*(a1 + 32) currentResponseWithRequest:*(a1 + 72)];
    (*(v48 + 16))(v48, v49, a3, a4, v50, v11);
  }
}

void __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_536(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    v3 = *(a1 + 88);
    v4 = [*(a1 + 32) itemFromVendorItem:*(a1 + 40)];
    v5 = *(a1 + 96);
    v6 = *(a1 + 120);
    v7 = [*(a1 + 32) currentResponseWithRequest:*(a1 + 48)];
    (*(v3 + 16))(v3, v4, v5, v6, v7, v9);
  }

  else
  {
    v8 = [*(a1 + 56) _createItemBasedOnTemplate:*(a1 + 64) fields:*(a1 + 104) contents:*(a1 + 72) options:*(a1 + 112) | 0x20000 request:*(a1 + 48) bounce:*(a1 + 121) bounceNumber:*(a1 + 80) completionHandler:*(a1 + 88)];
  }
}

- (void)_fetchHierarchyForItemID:(id)a3 into:(id)a4 maxDepth:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = +[NSFileProviderRequest requestFromTheSystem];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__FPXExtensionContext__fetchHierarchyForItemID_into_maxDepth_completionHandler___block_invoke;
  v17[3] = &unk_1E7939E30;
  v17[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = a5;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  [(FPXExtensionContext *)self itemForItemID:v16 request:v13 completionHandler:v17];
}

void __80__FPXExtensionContext__fetchHierarchyForItemID_into_maxDepth_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v50 = a4;
  v51 = a1;
  v10 = *(a1 + 40);
  v9 = (a1 + 40);
  v11 = [*(v9 - 1) domainContextForItemID:v10];
  v12 = [v11 domain];
  v13 = [v12 personaIdentifier];
  v14 = [MEMORY[0x1E69DF068] sharedManager];
  v15 = [v14 currentPersona];
  v16 = [v15 userPersonaUniqueString];
  if ([v13 isEqualToString:v16])
  {
  }

  else
  {
    [MEMORY[0x1E69DF068] sharedManager];
    v17 = v46 = v8;
    v18 = [v17 currentPersona];
    [v18 userPersonaUniqueString];
    v19 = v45 = v12;
    [v11 domain];
    v20 = v48 = v11;
    [v20 personaIdentifier];
    v21 = v47 = v7;

    v11 = v48;
    v8 = v46;

    v22 = v19 == v21;
    v7 = v47;
    if (!v22)
    {
      v43 = fp_current_or_default_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        __80__FPXExtensionContext__fetchHierarchyForItemID_into_maxDepth_completionHandler___block_invoke_cold_1(v9 - 1, v48, v43);
      }

      exit(1);
    }
  }

  v23 = v51;
  if (v7)
  {
    [*(v51 + 48) addObject:v7];
    if ([*(v51 + 48) count] < *(v51 + 64))
    {
      v24 = v11;
      v25 = [v7 itemIdentifier];
      v26 = [v7 parentItemIdentifier];
      if (([v25 isEqualToString:v26] & 1) != 0 || (objc_msgSend(v7, "parentItemIdentifier"), (v27 = objc_claimAutoreleasedReturnValue()) == 0))
      {

        v11 = v24;
      }

      else
      {
        v28 = v27;
        v29 = [v7 fp_parentDomainIdentifier];
        if (!v29)
        {

          v11 = v24;
LABEL_20:
          v41 = v23[4];
          v42 = [v7 parentItemID];
          [v41 _fetchHierarchyForItemID:v42 into:v23[6] maxDepth:v23[8] completionHandler:v23[7]];

          goto LABEL_17;
        }

        v30 = v29;
        v31 = [v7 fp_parentDomainIdentifier];
        [v24 domain];
        v33 = v32 = v8;
        [v33 identifier];
        v35 = v34 = v7;
        v49 = [v31 isEqualToString:v35];

        v7 = v34;
        v23 = v51;

        v8 = v32;
        v11 = v24;

        if (v49)
        {
          goto LABEL_20;
        }
      }
    }

    v40 = v23[6];
    (*(v23[7] + 16))();
LABEL_17:
    v38 = v50;
    goto LABEL_18;
  }

  v36 = fp_current_or_default_log();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    __80__FPXExtensionContext__fetchHierarchyForItemID_into_maxDepth_completionHandler___block_invoke_cold_2(v9);
  }

  v37 = *(v51 + 56);
  v38 = v50;
  v39 = [v11 internalErrorFromVendorError:v50 callerDescription:@"fetchHierarchyForItemID"];
  (*(v37 + 16))(v37, 0, v39);

LABEL_18:
}

- (void)fetchHierarchyForItemID:(id)a3 recursively:(BOOL)a4 ignoreAlternateContentURL:(BOOL)a5 reply:(id)a6
{
  v7 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  v18 = fpfs_adopt_log(self->_log);
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v20 = self;
    v21 = 2080;
    v22 = "[FPXExtensionContext fetchHierarchyForItemID:recursively:ignoreAlternateContentURL:reply:]";
    v23 = 2112;
    v24 = v9;
    v25 = 1024;
    v26 = v7;
    _os_log_debug_impl(&dword_1AAAE1000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@ %s %@, %{BOOL}d", buf, 0x26u);
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (v7)
  {
    v13 = 200;
  }

  else
  {
    v13 = 2;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91__FPXExtensionContext_fetchHierarchyForItemID_recursively_ignoreAlternateContentURL_reply___block_invoke;
  v16[3] = &unk_1E7939E58;
  v16[4] = self;
  v14 = v10;
  v17 = v14;
  [(FPXExtensionContext *)self _fetchHierarchyForItemID:v9 into:v12 maxDepth:v13 completionHandler:v16];

  __fp_pop_log(&v18);
  v15 = *MEMORY[0x1E69E9840];
}

void __91__FPXExtensionContext_fetchHierarchyForItemID_recursively_ignoreAlternateContentURL_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v11 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = FPPopLogSectionForBlock(*(a1 + 40));
    v10 = *(a1 + 32);
    *buf = 134219010;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2080;
    v17 = "[FPXExtensionContext fetchHierarchyForItemID:recursively:ignoreAlternateContentURL:reply:]_block_invoke";
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(&v11);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetchItemID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = fpfs_adopt_log(self->_log);
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FPXExtensionContext fetchItemID:reply:];
  }

  v9 = +[NSFileProviderRequest requestFromTheSystem];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__FPXExtensionContext_fetchItemID_reply___block_invoke;
  v11[3] = &unk_1E79397B0;
  v11[4] = self;
  v10 = v7;
  v12 = v10;
  [(FPXExtensionContext *)self itemForItemID:v6 request:v9 completionHandler:v11];

  __fp_pop_log(&v13);
}

void __41__FPXExtensionContext_fetchItemID_reply___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = FPPopLogSectionForBlock(*(a1 + 40));
    v13 = *(a1 + 32);
    *buf = 134219010;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    v19 = 2080;
    v20 = "[FPXExtensionContext fetchItemID:reply:]_block_invoke";
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v9;
    _os_log_debug_impl(&dword_1AAAE1000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(&v14);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)fetchDefaultContainerForBundleIdentifier:(id)a3 defaultName:(id)a4 inDomainIdentifier:(id)a5 lookupOnly:(BOOL)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  instanceQueue = self->_instanceQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __112__FPXExtensionContext_fetchDefaultContainerForBundleIdentifier_defaultName_inDomainIdentifier_lookupOnly_reply___block_invoke;
  v21[3] = &unk_1E7939F20;
  v21[4] = self;
  v22 = v14;
  v24 = v12;
  v25 = v15;
  v26 = a6;
  v23 = v13;
  v17 = v12;
  v18 = v13;
  v19 = v15;
  v20 = v14;
  fp_dispatch_async_with_logs(instanceQueue, v21);
}

void __112__FPXExtensionContext_fetchDefaultContainerForBundleIdentifier_defaultName_inDomainIdentifier_lookupOnly_reply___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) domainContextForIdentifier:*(a1 + 40)];
  v4 = [v3 domain];
  v5 = [v4 personaIdentifier];
  v6 = [MEMORY[0x1E69DF068] sharedManager];
  v7 = [v6 currentPersona];
  v8 = [v7 userPersonaUniqueString];
  if ([v5 isEqualToString:v8])
  {
  }

  else
  {
    [MEMORY[0x1E69DF068] sharedManager];
    v9 = v29 = v4;
    v10 = [v9 currentPersona];
    v28 = [v10 userPersonaUniqueString];
    v11 = [v3 domain];
    [v11 personaIdentifier];
    v12 = v30 = v3;

    v13 = v28 == v12;
    v3 = v30;
    if (!v13)
    {
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __112__FPXExtensionContext_fetchDefaultContainerForBundleIdentifier_defaultName_inDomainIdentifier_lookupOnly_reply___block_invoke_cold_1(v2, v30, v26);
      }

      exit(1);
    }
  }

  v14 = [*(a1 + 32) instanceWithPrivateSelector:sel__defaultApplicationContainerForBundleIdentifier_completionHandler_];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __112__FPXExtensionContext_fetchDefaultContainerForBundleIdentifier_defaultName_inDomainIdentifier_lookupOnly_reply___block_invoke_542;
  aBlock[3] = &unk_1E7939E80;
  v15 = v3;
  v16 = *(a1 + 32);
  v46 = v15;
  v47 = v16;
  v48 = *(a1 + 64);
  v17 = _Block_copy(aBlock);
  v18 = v17;
  if (*(a1 + 72) == 1)
  {
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __112__FPXExtensionContext_fetchDefaultContainerForBundleIdentifier_defaultName_inDomainIdentifier_lookupOnly_reply___block_invoke_546;
    v43[3] = &unk_1E7939EA8;
    v44 = v17;
    v19 = _Block_copy(v43);
    v20 = v44;
  }

  else
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __112__FPXExtensionContext_fetchDefaultContainerForBundleIdentifier_defaultName_inDomainIdentifier_lookupOnly_reply___block_invoke_2;
    v39[3] = &unk_1E79392D8;
    v21 = *(a1 + 40);
    v39[4] = *(a1 + 32);
    v40 = v21;
    v41 = *(a1 + 48);
    v42 = v18;
    v19 = _Block_copy(v39);

    v20 = v40;
  }

  if (v14)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __112__FPXExtensionContext_fetchDefaultContainerForBundleIdentifier_defaultName_inDomainIdentifier_lookupOnly_reply___block_invoke_4;
    v31[3] = &unk_1E7939EF8;
    v22 = *(a1 + 56);
    v35 = *(a1 + 64);
    v32 = v15;
    v38 = *(a1 + 72);
    v23 = *(a1 + 48);
    v24 = *(a1 + 32);
    v33 = v23;
    v34 = v24;
    v36 = v19;
    v37 = v18;
    v25 = [v14 _defaultApplicationContainerForBundleIdentifier:v22 completionHandler:v31];
  }

  else
  {
    v19[2](v19);
  }
}

void __112__FPXExtensionContext_fetchDefaultContainerForBundleIdentifier_defaultName_inDomainIdentifier_lookupOnly_reply___block_invoke_542(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) internalErrorFromVendorError:a3 callerDescription:@"fetchDefaultContainerForBundleIdentifier"];
  v7 = [v6 fp_userInfoFPItem];

  if (v7)
  {
    v8 = [v6 fp_userInfoFPItem];

    v6 = 0;
    v5 = v8;
  }

  v13 = fpfs_adopt_log(*(*(a1 + 40) + 80));
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = FPPopLogSectionForBlock(*(a1 + 48));
    v12 = *(a1 + 40);
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPXExtensionContext fetchDefaultContainerForBundleIdentifier:defaultName:inDomainIdentifier:lookupOnly:reply:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log(&v13);

  v10 = *MEMORY[0x1E69E9840];
}

void __112__FPXExtensionContext_fetchDefaultContainerForBundleIdentifier_defaultName_inDomainIdentifier_lookupOnly_reply___block_invoke_2(uint64_t a1)
{
  v2 = @"NSFileProviderRootContainerItemIdentifier";
  v3 = [*(a1 + 32) providerIdentifier];
  v4 = [v3 fp_isiCloudDriveIdentifier];

  if (v4)
  {
    v5 = @"a1";

    v2 = v5;
  }

  v6 = [FPItem alloc];
  v7 = [*(a1 + 32) providerIdentifier];
  v8 = [(FPItem *)v6 initWithProviderID:v7 domainIdentifier:*(a1 + 40) itemIdentifier:@"__" parentItemIdentifier:v2 filename:*(a1 + 48) isDirectory:1];

  [(FPItem *)v8 setFileSystemFlags:7];
  v9 = *(a1 + 32);
  v10 = +[NSFileProviderRequest requestFromTheSystem];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __112__FPXExtensionContext_fetchDefaultContainerForBundleIdentifier_defaultName_inDomainIdentifier_lookupOnly_reply___block_invoke_3;
  v12[3] = &unk_1E7939ED0;
  v13 = *(a1 + 56);
  v11 = [v9 createItemBasedOnTemplate:v8 fields:262 contents:0 options:65537 request:v10 bounce:0 completionHandler:v12];
}

void __112__FPXExtensionContext_fetchDefaultContainerForBundleIdentifier_defaultName_inDomainIdentifier_lookupOnly_reply___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 fp_userInfoItem];

  if (v7)
  {
    v8 = [v6 fp_userInfoItem];

    v6 = 0;
    v5 = v8;
  }

  v9 = [v6 domain];
  if ([v9 isEqualToString:@"NSFileProviderInternalErrorDomain"])
  {
    v10 = [v6 code];

    if (v10 == 3)
    {
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        __112__FPXExtensionContext_fetchDefaultContainerForBundleIdentifier_defaultName_inDomainIdentifier_lookupOnly_reply___block_invoke_4_cold_2(v6);
      }

      v12 = *(a1 + 56);
      v13 = FPNotSupportedError();
      (*(v12 + 16))(v12, 0, v13);
      goto LABEL_34;
    }
  }

  else
  {
  }

  if (v5)
  {
    v13 = [*(a1 + 32) itemFromVendorItem:v5];
  }

  else
  {
    v13 = 0;
  }

  if (*(a1 + 80))
  {
LABEL_33:
    (*(*(a1 + 72) + 16))(*(a1 + 72), v13, v6);
    goto LABEL_34;
  }

  if (v6)
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      v16 = [v6 fp_prettyDescription];
      v26 = 138412546;
      v27 = v15;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] can't get default location, fallback on default name '%@'; %@", &v26, 0x16u);
    }

    goto LABEL_26;
  }

  if (!v13)
  {
    v14 = fp_current_or_default_log();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v19 = *(a1 + 40);
    v26 = 138412546;
    v27 = v19;
    v28 = 2112;
    v29 = v5;
    v18 = "[WARNING] can't create item, fallback on default name '%@'; %@";
    goto LABEL_25;
  }

  if (([v13 isFolder] & 1) == 0)
  {
    v14 = fp_current_or_default_log();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v20 = *(a1 + 40);
    v26 = 138412546;
    v27 = v20;
    v28 = 2112;
    v29 = v13;
    v18 = "[WARNING] default location must be a folder, fallback on default name '%@'; %@";
    goto LABEL_25;
  }

  if ([v13 isWritable])
  {
LABEL_30:
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __112__FPXExtensionContext_fetchDefaultContainerForBundleIdentifier_defaultName_inDomainIdentifier_lookupOnly_reply___block_invoke_4_cold_1(v13, v6);
    }

    goto LABEL_33;
  }

  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    v26 = 138412546;
    v27 = v17;
    v28 = 2112;
    v29 = v13;
    v18 = "[WARNING] default location must be writable, fallback on default name '%@'; %@";
LABEL_25:
    _os_log_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_DEFAULT, v18, &v26, 0x16u);
  }

LABEL_26:

  if (!*(a1 + 40))
  {
    goto LABEL_30;
  }

  v21 = fp_current_or_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 40);
    v23 = [v6 fp_prettyDescription];
    v26 = 138412546;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    _os_log_impl(&dword_1AAAE1000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] failed to get default location, fallback on default name '%@'; %@", &v26, 0x16u);
  }

  dispatch_async(*(*(a1 + 48) + 32), *(a1 + 64));
LABEL_34:

  v25 = *MEMORY[0x1E69E9840];
}

- (id)fetchPublishingURLForItemID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = fpfs_adopt_log(self->_log);
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FPXExtensionContext fetchPublishingURLForItemID:completionHandler:];
  }

  v9 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
  instanceQueue = self->_instanceQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__FPXExtensionContext_fetchPublishingURLForItemID_completionHandler___block_invoke;
  v17[3] = &unk_1E7939B18;
  v17[4] = self;
  v11 = v6;
  v18 = v11;
  v12 = v7;
  v20 = v12;
  v13 = v9;
  v19 = v13;
  fp_dispatch_async_with_logs(instanceQueue, v17);
  v14 = v19;
  v15 = v13;

  __fp_pop_log(&v21);

  return v15;
}

void __69__FPXExtensionContext_fetchPublishingURLForItemID_completionHandler___block_invoke(id *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v24 = a1 + 4;
  v26 = [a1[4] domainContextForItemID:a1[5]];
  v1 = [v26 domain];
  v2 = [v1 personaIdentifier];
  v3 = [MEMORY[0x1E69DF068] sharedManager];
  v4 = [v3 currentPersona];
  v5 = [v4 userPersonaUniqueString];
  if ([v2 isEqualToString:v5])
  {
  }

  else
  {
    v6 = [MEMORY[0x1E69DF068] sharedManager];
    v7 = [v6 currentPersona];
    v8 = [v7 userPersonaUniqueString];
    v9 = [v26 domain];
    v10 = [v9 personaIdentifier];

    if (v8 != v10)
    {
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __69__FPXExtensionContext_fetchPublishingURLForItemID_completionHandler___block_invoke_cold_1(v24, v26, v23);
      }

      exit(1);
    }
  }

  v11 = [v26 instanceWithPrivateSelector:sel_fetchPublishingURLForItemIdentifier_completionHandler_];
  if (v11)
  {
    v12 = [a1[5] identifier];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __69__FPXExtensionContext_fetchPublishingURLForItemID_completionHandler___block_invoke_552;
    v28[3] = &unk_1E7939F48;
    v13 = v26;
    v14 = a1[4];
    v29 = v13;
    v30 = v14;
    v31 = a1[7];
    v15 = [v11 fetchPublishingURLForItemIdentifier:v12 completionHandler:v28];

    if (v15)
    {
      [a1[6] addChild:v15 withPendingUnitCount:100];
    }
  }

  else
  {
    v27 = fpfs_adopt_log(*(*v24 + 10));
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v20 = FPPopLogSectionForBlock(a1[7]);
      v21 = *v24;
      v22 = FPNotSupportedError();
      *buf = 134219010;
      v33 = v20;
      v34 = 2112;
      v35 = v21;
      v36 = 2080;
      v37 = "[FPXExtensionContext fetchPublishingURLForItemID:completionHandler:]_block_invoke";
      v38 = 2112;
      v39 = 0;
      v40 = 2112;
      v41 = v22;
      _os_log_debug_impl(&dword_1AAAE1000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v17 = a1[7];
    v18 = FPNotSupportedError();
    v17[2](v17, 0, v18);

    __fp_pop_log(&v27);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __69__FPXExtensionContext_fetchPublishingURLForItemID_completionHandler___block_invoke_552(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) internalErrorFromVendorError:a3 callerDescription:@"fetchPublishingURLForItemID"];
  v11 = fpfs_adopt_log(*(*(a1 + 40) + 80));
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = FPPopLogSectionForBlock(*(a1 + 48));
    v10 = *(a1 + 40);
    *buf = 134219010;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2080;
    v17 = "[FPXExtensionContext fetchPublishingURLForItemID:completionHandler:]_block_invoke";
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log(&v11);

  v8 = *MEMORY[0x1E69E9840];
}

- (id)disconnectDomainID:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v24 = fpfs_adopt_log(self->_log);
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [FPXExtensionContext disconnectDomainID:options:completionHandler:];
  }

  v11 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
  instanceQueue = self->_instanceQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __68__FPXExtensionContext_disconnectDomainID_options_completionHandler___block_invoke;
  v19[3] = &unk_1E7939F70;
  v19[4] = self;
  v13 = v8;
  v20 = v13;
  v23 = a4;
  v14 = v9;
  v22 = v14;
  v15 = v11;
  v21 = v15;
  fp_dispatch_async_with_logs(instanceQueue, v19);
  v16 = v21;
  v17 = v15;

  __fp_pop_log(&v24);

  return v17;
}

void __68__FPXExtensionContext_disconnectDomainID_options_completionHandler___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v22 = (a1 + 32);
  v24 = [*(a1 + 32) domainContextForIdentifier:*(a1 + 40)];
  v1 = [v24 domain];
  v2 = [v1 personaIdentifier];
  v3 = [MEMORY[0x1E69DF068] sharedManager];
  v4 = [v3 currentPersona];
  v5 = [v4 userPersonaUniqueString];
  if ([v2 isEqualToString:v5])
  {
  }

  else
  {
    v6 = [MEMORY[0x1E69DF068] sharedManager];
    v7 = [v6 currentPersona];
    v8 = [v7 userPersonaUniqueString];
    v9 = [v24 domain];
    v10 = [v9 personaIdentifier];

    if (v8 != v10)
    {
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __68__FPXExtensionContext_disconnectDomainID_options_completionHandler___block_invoke_cold_1(v22, v24, v21);
      }

      exit(1);
    }
  }

  v11 = [v24 instanceWithPrivateSelector:sel_disconnectWithOptions_completionHandler_];
  if (v11)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __68__FPXExtensionContext_disconnectDomainID_options_completionHandler___block_invoke_558;
    v26[3] = &unk_1E7939170;
    v26[4] = *(a1 + 32);
    v12 = *(a1 + 64);
    v27 = *(a1 + 56);
    v13 = [v11 disconnectWithOptions:v12 completionHandler:v26];
    if (v13)
    {
      [*(a1 + 48) addChild:v13 withPendingUnitCount:100];
    }
  }

  else
  {
    v25 = fpfs_adopt_log(*(*v22 + 80));
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v18 = FPPopLogSectionForBlock(*(a1 + 56));
      v19 = *v22;
      v20 = FPNotSupportedError();
      *buf = 134218754;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      v32 = 2080;
      v33 = "[FPXExtensionContext disconnectDomainID:options:completionHandler:]_block_invoke";
      v34 = 2112;
      v35 = v20;
      _os_log_debug_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v15 = *(a1 + 56);
    v16 = FPNotSupportedError();
    (*(v15 + 16))(v15, v16);

    __fp_pop_log(&v25);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __68__FPXExtensionContext_disconnectDomainID_options_completionHandler___block_invoke_558(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v10 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = FPPopLogSectionForBlock(*(a1 + 40));
      v9 = *(a1 + 32);
      *buf = 134218754;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2080;
      v18 = "[FPXExtensionContext disconnectDomainID:options:completionHandler:]_block_invoke";
      v19 = 2112;
      v20 = v3;
      _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log(&v10);
  }

  else
  {
    v5 = +[NSFileProviderManager legacyDefaultManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__FPXExtensionContext_disconnectDomainID_options_completionHandler___block_invoke_2;
    v11[3] = &unk_1E7939170;
    v6 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v6;
    [v5 setConnected:0 completionHandler:v11];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __68__FPXExtensionContext_disconnectDomainID_options_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v8 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock(*(a1 + 40));
    v7 = *(a1 + 32);
    *buf = 134218754;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPXExtensionContext disconnectDomainID:options:completionHandler:]_block_invoke_2";
    v15 = 2112;
    v16 = v3;
    _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(&v8);

  v5 = *MEMORY[0x1E69E9840];
}

- (id)performActionWithIdentifier:(id)a3 onItemsWithIdentifiers:(id)a4 domainIdentifier:(id)a5 completionHandler:(id)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v33 = fpfs_adopt_log(self->_log);
  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v35 = self;
    v36 = 2080;
    v37 = "[FPXExtensionContext performActionWithIdentifier:onItemsWithIdentifiers:domainIdentifier:completionHandler:]";
    v38 = 2112;
    v39 = v10;
    v40 = 2112;
    v41 = v11;
    _os_log_debug_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@ %s %@, %@", buf, 0x2Au);
  }

  v15 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
  instanceQueue = self->_instanceQueue;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __109__FPXExtensionContext_performActionWithIdentifier_onItemsWithIdentifiers_domainIdentifier_completionHandler___block_invoke;
  v26[3] = &unk_1E7939FC0;
  v17 = v10;
  v27 = v17;
  v28 = self;
  v18 = v12;
  v29 = v18;
  v19 = v11;
  v30 = v19;
  v20 = v13;
  v32 = v20;
  v21 = v15;
  v31 = v21;
  fp_dispatch_async_with_logs(instanceQueue, v26);
  v22 = v31;
  v23 = v21;

  __fp_pop_log(&v33);
  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

void __109__FPXExtensionContext_performActionWithIdentifier_onItemsWithIdentifiers_domainIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = fp_current_or_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __109__FPXExtensionContext_performActionWithIdentifier_onItemsWithIdentifiers_domainIdentifier_completionHandler___block_invoke_cold_1(a1);
  }

  v2 = a1 + 40;
  v30 = [*(a1 + 40) domainContextForIdentifier:*(a1 + 48)];
  v3 = [v30 domain];
  v4 = [v3 personaIdentifier];
  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];
  v7 = [v6 userPersonaUniqueString];
  if ([v4 isEqualToString:v7])
  {
  }

  else
  {
    v8 = [MEMORY[0x1E69DF068] sharedManager];
    v9 = [v8 currentPersona];
    v10 = [v9 userPersonaUniqueString];
    v11 = [v30 domain];
    v12 = [v11 personaIdentifier];
    v28 = v10 == v12;

    if (!v28)
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __109__FPXExtensionContext_performActionWithIdentifier_onItemsWithIdentifiers_domainIdentifier_completionHandler___block_invoke_cold_2(v2, v30, v27);
      }

      exit(1);
    }
  }

  v13 = [v30 vendorInstance];
  if ([v13 conformsToProtocol:&unk_1F1FD7EF0])
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 56);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __109__FPXExtensionContext_performActionWithIdentifier_onItemsWithIdentifiers_domainIdentifier_completionHandler___block_invoke_562;
    v32[3] = &unk_1E7939F98;
    v17 = v30;
    v18 = *(a1 + 40);
    v33 = v17;
    v34 = v18;
    v35 = *(a1 + 72);
    v19 = [v14 performActionWithIdentifier:v15 onItemsWithIdentifiers:v16 completionHandler:v32];
    if (v19)
    {
      [*(a1 + 64) addChild:v19 withPendingUnitCount:100];
    }
  }

  else
  {
    v31 = fpfs_adopt_log(*(*v2 + 80));
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v24 = FPPopLogSectionForBlock(*(a1 + 72));
      v25 = *v2;
      v26 = FPNotSupportedError();
      *buf = 134218754;
      v37 = v24;
      v38 = 2112;
      v39 = v25;
      v40 = 2080;
      v41 = "[FPXExtensionContext performActionWithIdentifier:onItemsWithIdentifiers:domainIdentifier:completionHandler:]_block_invoke";
      v42 = 2112;
      v43 = v26;
      _os_log_debug_impl(&dword_1AAAE1000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v21 = *(a1 + 72);
    v22 = FPNotSupportedError();
    (*(v21 + 16))(v21, v22);

    __fp_pop_log(&v31);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __109__FPXExtensionContext_performActionWithIdentifier_onItemsWithIdentifiers_domainIdentifier_completionHandler___block_invoke_562(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) internalErrorFromVendorError:a2 callerDescription:@"performActionWithIdentifier"];
  v8 = fpfs_adopt_log(*(*(a1 + 40) + 80));
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock(*(a1 + 48));
    v7 = *(a1 + 40);
    *buf = 134218754;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPXExtensionContext performActionWithIdentifier:onItemsWithIdentifiers:domainIdentifier:completionHandler:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log(&v8);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)wakeForSessionIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = fpfs_adopt_log(self->_log);
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FPXExtensionContext wakeForSessionIdentifier:completionHandler:];
  }

  instanceQueue = self->_instanceQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__FPXExtensionContext_wakeForSessionIdentifier_completionHandler___block_invoke;
  v12[3] = &unk_1E7939300;
  v12[4] = self;
  v10 = v7;
  v14 = v10;
  v11 = v6;
  v13 = v11;
  fp_dispatch_async_with_logs(instanceQueue, v12);

  __fp_pop_log(&v15);
}

void __66__FPXExtensionContext_wakeForSessionIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) instanceWithPrivateSelector:sel_handleEventsForBackgroundURLSession_completionHandler_];
  v3 = [NSFileProviderExtension instanceMethodForSelector:sel_handleEventsForBackgroundURLSession_completionHandler_];
  if (v3 == [v2 methodForSelector:sel_handleEventsForBackgroundURLSession_completionHandler_])
  {
    v14 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = FPPopLogSectionForBlock(*(a1 + 48));
      v10 = *(a1 + 32);
      v11 = FPNotSupportedError();
      *buf = 134218754;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2080;
      v20 = "[FPXExtensionContext wakeForSessionIdentifier:completionHandler:]_block_invoke";
      v21 = 2112;
      v22 = v11;
      _os_log_debug_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v6 = *(a1 + 48);
    v7 = FPNotSupportedError();
    (*(v6 + 16))(v6, v7);

    __fp_pop_log(&v14);
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__FPXExtensionContext_wakeForSessionIdentifier_completionHandler___block_invoke_568;
    v12[3] = &unk_1E7939128;
    v4 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = *(a1 + 48);
    [v2 handleEventsForBackgroundURLSession:v4 completionHandler:v12];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __66__FPXExtensionContext_wakeForSessionIdentifier_completionHandler___block_invoke_568(uint64_t a1)
{
  v5[8] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v5[0] = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    FPPopLogSectionForBlock(*(a1 + 40));
    __66__FPXExtensionContext_wakeForSessionIdentifier_completionHandler___block_invoke_568_cold_1(v2);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(v5);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)bulkEvictItemsWithItemIDs:(id)a3 completionHandler:(id)a4
{
  v16[6] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16[0] = fpfs_adopt_log(self->_log);
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    logStringForObjects(v6);
    objc_claimAutoreleasedReturnValue();
    [FPXExtensionContext bulkEvictItemsWithItemIDs:completionHandler:];
  }

  instanceQueue = self->_instanceQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__FPXExtensionContext_bulkEvictItemsWithItemIDs_completionHandler___block_invoke;
  v13[3] = &unk_1E7939300;
  v13[4] = self;
  v10 = v7;
  v15 = v10;
  v11 = v6;
  v14 = v11;
  fp_dispatch_async_with_logs(instanceQueue, v13);

  __fp_pop_log(v16);
  v12 = *MEMORY[0x1E69E9840];
}

void __67__FPXExtensionContext_bulkEvictItemsWithItemIDs_completionHandler___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [*(a1 + 32) instanceWithPrivateSelector:sel_evictItemWithIdentifier_completionHandler_];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __67__FPXExtensionContext_bulkEvictItemsWithItemIDs_completionHandler___block_invoke_569;
    v21[3] = &unk_1E7939FE8;
    v22 = v3;
    v6 = v2;
    v23 = v6;
    [v5 enumerateObjectsUsingBlock:v21];
    v7 = *(*(a1 + 32) + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __67__FPXExtensionContext_bulkEvictItemsWithItemIDs_completionHandler___block_invoke_571;
    v17[3] = &unk_1E7939210;
    v8 = v6;
    v9 = *(a1 + 32);
    v18 = v8;
    v19 = v9;
    v20 = *(a1 + 48);
    dispatch_async(v7, v17);
  }

  else
  {
    v24 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = FPPopLogSectionForBlock(*(a1 + 48));
      v15 = *(a1 + 32);
      v16 = FPNotSupportedError();
      *buf = 134218754;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      v29 = 2080;
      v30 = "[FPXExtensionContext bulkEvictItemsWithItemIDs:completionHandler:]_block_invoke";
      v31 = 2112;
      v32 = v16;
      _os_log_debug_impl(&dword_1AAAE1000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v11 = *(a1 + 48);
    v12 = FPNotSupportedError();
    (*(v11 + 16))(v11, v12);

    __fp_pop_log(&v24);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __67__FPXExtensionContext_bulkEvictItemsWithItemIDs_completionHandler___block_invoke_569(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__FPXExtensionContext_bulkEvictItemsWithItemIDs_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7939B40;
  v8 = v3;
  v9 = *(a1 + 40);
  v6 = v3;
  [v4 evictItemWithIdentifier:v5 completionHandler:v7];
}

void __67__FPXExtensionContext_bulkEvictItemsWithItemIDs_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __67__FPXExtensionContext_bulkEvictItemsWithItemIDs_completionHandler___block_invoke_2_cold_1(a1, v4);
    }

    v6 = [v4 fp_strippedError];
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) identifier];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }
}

void __67__FPXExtensionContext_bulkEvictItemsWithItemIDs_completionHandler___block_invoke_571(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v2 = FPPartialErrorsByItemIdentifiers(*(a1 + 32));
  }

  else
  {
    v2 = 0;
  }

  v7 = fpfs_adopt_log(*(*(a1 + 40) + 80));
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock(*(a1 + 48));
    v6 = *(a1 + 40);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPXExtensionContext bulkEvictItemsWithItemIDs:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v2;
    _os_log_debug_impl(&dword_1AAAE1000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log(&v7);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4 completionHandler:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v19 = fpfs_adopt_log(self->_log);
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v21 = self;
    v22 = 2080;
    v23 = "[FPXExtensionContext attemptRecoveryFromError:optionIndex:completionHandler:]";
    v24 = 2112;
    v25 = v8;
    v26 = 2048;
    v27 = a4;
    _os_log_debug_impl(&dword_1AAAE1000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@ %s %@, %lu", buf, 0x2Au);
  }

  instanceQueue = self->_instanceQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__FPXExtensionContext_attemptRecoveryFromError_optionIndex_completionHandler___block_invoke;
  v15[3] = &unk_1E793A010;
  v15[4] = self;
  v12 = v9;
  v17 = v12;
  v13 = v8;
  v16 = v13;
  v18 = a4;
  fp_dispatch_async_with_logs(instanceQueue, v15);

  __fp_pop_log(&v19);
  v14 = *MEMORY[0x1E69E9840];
}

void __78__FPXExtensionContext_attemptRecoveryFromError_optionIndex_completionHandler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) instanceWithPrivateSelector:sel_attemptRecoveryFromError_optionIndex_completionHandler_];
  if (v2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__FPXExtensionContext_attemptRecoveryFromError_optionIndex_completionHandler___block_invoke_574;
    v12[3] = &unk_1E7939170;
    v3 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v4 = *(a1 + 56);
    v13 = *(a1 + 48);
    [v2 attemptRecoveryFromError:v3 optionIndex:v4 completionHandler:v12];
  }

  else
  {
    v14 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = FPPopLogSectionForBlock(*(a1 + 48));
      v10 = *(a1 + 32);
      v11 = FPNotSupportedError();
      *buf = 134218754;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2080;
      v20 = "[FPXExtensionContext attemptRecoveryFromError:optionIndex:completionHandler:]_block_invoke";
      v21 = 2112;
      v22 = v11;
      _os_log_debug_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v6 = *(a1 + 48);
    v7 = FPNotSupportedError();
    (*(v6 + 16))(v6, v7);

    __fp_pop_log(&v14);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __78__FPXExtensionContext_attemptRecoveryFromError_optionIndex_completionHandler___block_invoke_574(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v8 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock(*(a1 + 40));
    v7 = *(a1 + 32);
    *buf = 134218754;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPXExtensionContext attemptRecoveryFromError:optionIndex:completionHandler:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(&v8);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)userInteractionErrorsForPerformingAction:(id)a3 sourceItems:(id)a4 destinationItem:(id)a5 fpProviderDomainId:(id)a6 sourceItemKeysAllowList:(id)a7 destinationItemKeysAllowList:(id)a8 completionHandler:(id)a9
{
  v50 = *MEMORY[0x1E69E9840];
  v35 = a3;
  v37 = a4;
  v36 = a5;
  v33 = a6;
  v31 = a7;
  v32 = a8;
  v34 = a9;
  v39 = fpfs_adopt_log(self->_log);
  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v29 = logStringForObjects(v37);
    *buf = 138413314;
    v41 = self;
    v42 = 2080;
    v43 = "[FPXExtensionContext userInteractionErrorsForPerformingAction:sourceItems:destinationItem:fpProviderDomainId:sourceItemKeysAllowList:destinationItemKeysAllowList:completionHandler:]";
    v44 = 2112;
    v45 = v35;
    v46 = 2112;
    v47 = v29;
    v48 = 2112;
    v49 = v36;
    _os_log_debug_impl(&dword_1AAAE1000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@ %s %@, %@, %@", buf, 0x34u);
  }

  v16 = [v33 fp_toDomainIdentifier];
  v17 = [(FPXExtensionContext *)self createUserInteractionSuppressingWithDomainIdentifier:v16 withPurpose:@"userInteractionErrorsForPerformingAction"];
  v18 = [MEMORY[0x1E696AAE8] mainBundle];
  v19 = [(FPXDomainContext *)self->_domainContext providerDomain];
  v20 = [v19 providerID];
  v21 = [(FPXDomainContext *)self->_domainContext providerDomain];
  v22 = [v21 identifier];
  v23 = [FPPreflightUserInteraction interactionsForBundle:v18 providerIdentifier:v20 domainIdentifier:v22];

  v24 = [(FPXDomainContext *)self->_domainContext userInfo];
  v25 = [FPPreflightUserInteraction evaluationObjectsForAction:v35 sourceItems:v37 destinationItem:v36 domainUserInfo:v24 sourceItemKeysAllowList:v31 destinationItemKeysAllowList:v32];

  v26 = [FPPreflightUserInteraction gatherErrorsForInteractions:v23 evaluationObjects:v25 suppressionDelegate:v17];
  v38 = fpfs_adopt_log(self->_log);
  v27 = fp_current_or_default_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v30 = FPPopLogSectionForBlock(v34);
    *buf = 134218754;
    v41 = v30;
    v42 = 2112;
    v43 = self;
    v44 = 2080;
    v45 = "[FPXExtensionContext userInteractionErrorsForPerformingAction:sourceItems:destinationItem:fpProviderDomainId:sourceItemKeysAllowList:destinationItemKeysAllowList:completionHandler:]";
    v46 = 2112;
    v47 = v26;
    _os_log_debug_impl(&dword_1AAAE1000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(v34 + 2))(v34, v26);
  __fp_pop_log(&v38);

  __fp_pop_log(&v39);
  v28 = *MEMORY[0x1E69E9840];
}

- (void)fetchTrashIdentifiersWithCompletionHandler:(id)a3
{
  v4 = a3;
  instanceQueue = self->_instanceQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__FPXExtensionContext_fetchTrashIdentifiersWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7939128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  fp_dispatch_async_with_logs(instanceQueue, v7);
}

void __66__FPXExtensionContext_fetchTrashIdentifiersWithCompletionHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) instanceWithPrivateSelector:sel_fetchTrashIdentifiersWithCompletionHandler_];
  if ([v2 conformsToProtocol:&unk_1F1FF3A68])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__FPXExtensionContext_fetchTrashIdentifiersWithCompletionHandler___block_invoke_608;
    v11[3] = &unk_1E7939E58;
    v3 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v3;
    [v2 fetchTrashIdentifiersWithCompletionHandler:v11];
  }

  else
  {
    v13 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = FPPopLogSectionForBlock(*(a1 + 40));
      v9 = *(a1 + 32);
      v10 = FPNotSupportedError();
      *buf = 134219010;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2080;
      v19 = "[FPXExtensionContext fetchTrashIdentifiersWithCompletionHandler:]_block_invoke";
      v20 = 2112;
      v21 = 0;
      v22 = 2112;
      v23 = v10;
      _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v5 = *(a1 + 40);
    v6 = FPNotSupportedError();
    (*(v5 + 16))(v5, 0, v6);

    __fp_pop_log(&v13);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __66__FPXExtensionContext_fetchTrashIdentifiersWithCompletionHandler___block_invoke_608(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__FPXExtensionContext_fetchTrashIdentifiersWithCompletionHandler___block_invoke_2;
  v13[3] = &unk_1E79392B0;
  v13[4] = *(a1 + 32);
  v7 = [v5 fp_map:v13];
  v12 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = FPPopLogSectionForBlock(*(a1 + 40));
    v11 = *(a1 + 32);
    *buf = 134219010;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2080;
    v19 = "[FPXExtensionContext fetchTrashIdentifiersWithCompletionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(&v12);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)updateIgnoreStateOfItemWithIdentifiers:(id)a3 ignoreState:(BOOL)a4 completionHandler:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v14 = fpfs_adopt_log(self->_log);
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = FPPopLogSectionForBlock(v8);
    v13 = FPNotSupportedError();
    *buf = 134219266;
    v16 = v12;
    v17 = 2112;
    v18 = self;
    v19 = 2080;
    v20 = "[FPXExtensionContext updateIgnoreStateOfItemWithIdentifiers:ignoreState:completionHandler:]";
    v21 = 2112;
    v22 = 0;
    v23 = 2112;
    v24 = 0;
    v25 = 2112;
    v26 = v13;
    _os_log_debug_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  v10 = FPNotSupportedError();
  (*(v8 + 2))(v8, 0, 0, v10);

  __fp_pop_log(&v14);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)fetchCustomPushTopicsWithCompletionHandler:(id)a3
{
  v4 = a3;
  instanceQueue = self->_instanceQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__FPXExtensionContext_fetchCustomPushTopicsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7939128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  fp_dispatch_async_with_logs(instanceQueue, v7);
}

void __66__FPXExtensionContext_fetchCustomPushTopicsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) instanceWithPrivateSelector:sel_customPushTopics];
  if ([v2 conformsToProtocol:&unk_1F1FF3A68])
  {
    v3 = [v2 customPushTopics];
    v14 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v12 = FPPopLogSectionForBlock(*(a1 + 40));
      v13 = *(a1 + 32);
      *buf = 134219010;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2080;
      v20 = "[FPXExtensionContext fetchCustomPushTopicsWithCompletionHandler:]_block_invoke";
      v21 = 2112;
      v22 = v3;
      v23 = 2112;
      v24 = 0;
      _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log(&v14);
  }

  else
  {
    v14 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = FPPopLogSectionForBlock(*(a1 + 40));
      v10 = *(a1 + 32);
      v11 = FPNotSupportedError();
      *buf = 134219010;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2080;
      v20 = "[FPXExtensionContext fetchCustomPushTopicsWithCompletionHandler:]_block_invoke";
      v21 = 2112;
      v22 = 0;
      v23 = 2112;
      v24 = v11;
      _os_log_debug_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v6 = *(a1 + 40);
    v7 = FPNotSupportedError();
    (*(v6 + 16))(v6, 0, v7);

    __fp_pop_log(&v14);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)wakeForPushWithCompletionHandler:(id)a3
{
  v7[8] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7[0] = fpfs_adopt_log(self->_log);
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    FPPopLogSectionForBlock(v4);
    [FPXExtensionContext wakeForPushWithCompletionHandler:];
  }

  (*(v4 + 2))(v4, 0);
  __fp_pop_log(v7);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)signalEnumeratorForMaterializedItemsWithCompletionHandler:(id)a3
{
  v4 = a3;
  instanceQueue = self->_instanceQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__FPXExtensionContext_signalEnumeratorForMaterializedItemsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7939128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  fp_dispatch_async_with_logs(instanceQueue, v7);
}

void __81__FPXExtensionContext_signalEnumeratorForMaterializedItemsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = [*(*v2 + 88) vendorInstance];
  objc_sync_exit(v3);

  if (objc_opt_respondsToSelector())
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __81__FPXExtensionContext_signalEnumeratorForMaterializedItemsWithCompletionHandler___block_invoke_2;
    v9[3] = &unk_1E7939128;
    v5 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v5;
    [v4 materializedItemsDidChangeWithCompletionHandler:v9];
  }

  else
  {
    v8 = fpfs_adopt_log(*(*v2 + 80));
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock(*(a1 + 40));
      __81__FPXExtensionContext_signalEnumeratorForMaterializedItemsWithCompletionHandler___block_invoke_cold_1(v2);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log(&v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __81__FPXExtensionContext_signalEnumeratorForMaterializedItemsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v5[8] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v5[0] = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    FPPopLogSectionForBlock(*(a1 + 40));
    __81__FPXExtensionContext_signalEnumeratorForMaterializedItemsWithCompletionHandler___block_invoke_2_cold_1(v2);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(v5);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)signalEnumeratorForPendingItemsWithCompletionHandler:(id)a3
{
  v4 = a3;
  instanceQueue = self->_instanceQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__FPXExtensionContext_signalEnumeratorForPendingItemsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7939128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  fp_dispatch_async_with_logs(instanceQueue, v7);
}

void __76__FPXExtensionContext_signalEnumeratorForPendingItemsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = [*(*v2 + 88) vendorInstance];
  objc_sync_exit(v3);

  if (objc_opt_respondsToSelector())
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76__FPXExtensionContext_signalEnumeratorForPendingItemsWithCompletionHandler___block_invoke_2;
    v9[3] = &unk_1E7939128;
    v5 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v5;
    [v4 pendingItemsDidChangeWithCompletionHandler:v9];
  }

  else
  {
    v8 = fpfs_adopt_log(*(*v2 + 80));
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock(*(a1 + 40));
      __76__FPXExtensionContext_signalEnumeratorForPendingItemsWithCompletionHandler___block_invoke_cold_1(v2);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log(&v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __76__FPXExtensionContext_signalEnumeratorForPendingItemsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v5[8] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v5[0] = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    FPPopLogSectionForBlock(*(a1 + 40));
    __76__FPXExtensionContext_signalEnumeratorForPendingItemsWithCompletionHandler___block_invoke_2_cold_1(v2);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(v5);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)importDidFinishWithCompletionHandler:(id)a3
{
  v4 = a3;
  instanceQueue = self->_instanceQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__FPXExtensionContext_importDidFinishWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7939128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  fp_dispatch_async_with_logs(instanceQueue, v7);
}

void __60__FPXExtensionContext_importDidFinishWithCompletionHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = [*(*v2 + 88) vendorInstance];
  objc_sync_exit(v3);

  if (objc_opt_respondsToSelector())
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__FPXExtensionContext_importDidFinishWithCompletionHandler___block_invoke_2;
    v9[3] = &unk_1E7939128;
    v5 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v5;
    [v4 importDidFinishWithCompletionHandler:v9];
  }

  else
  {
    v8 = fpfs_adopt_log(*(*v2 + 80));
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock(*(a1 + 40));
      __60__FPXExtensionContext_importDidFinishWithCompletionHandler___block_invoke_cold_1(v2);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log(&v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __60__FPXExtensionContext_importDidFinishWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v5[8] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v5[0] = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    FPPopLogSectionForBlock(*(a1 + 40));
    __60__FPXExtensionContext_importDidFinishWithCompletionHandler___block_invoke_2_cold_1(v2);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(v5);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)listRemoteVersionsWithSettings:(id)a3 observer:(id)a4 request:(id)a5 completionHandler:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27 = fpfs_adopt_log(self->_log);
  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v21 = [v10 enumeratedItemID];
    *buf = 138413058;
    v29 = self;
    v30 = 2080;
    v31 = "[FPXExtensionContext listRemoteVersionsWithSettings:observer:request:completionHandler:]";
    v32 = 2112;
    v33 = v21;
    v34 = 2112;
    v35 = v12;
    _os_log_debug_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ipc: %@ %s %@, %@", buf, 0x2Au);
  }

  instanceQueue = self->_instanceQueue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __89__FPXExtensionContext_listRemoteVersionsWithSettings_observer_request_completionHandler___block_invoke;
  v22[3] = &unk_1E793A038;
  v22[4] = self;
  v16 = v10;
  v23 = v16;
  v17 = v12;
  v24 = v17;
  v18 = v13;
  v26 = v18;
  v19 = v11;
  v25 = v19;
  fp_dispatch_async_with_logs(instanceQueue, v22);

  __fp_pop_log(&v27);
  v20 = *MEMORY[0x1E69E9840];
}

void __89__FPXExtensionContext_listRemoteVersionsWithSettings_observer_request_completionHandler___block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v53 = (a1 + 32);
  v52 = (a1 + 40);
  v2 = [*(a1 + 40) enumeratedItemID];
  v55 = [v1 domainContextForItemID:v2];

  v3 = [v55 domain];
  v4 = [v3 personaIdentifier];
  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];
  v7 = [v6 userPersonaUniqueString];
  if ([v4 isEqualToString:v7])
  {
  }

  else
  {
    v8 = [MEMORY[0x1E69DF068] sharedManager];
    v9 = [v8 currentPersona];
    v10 = [v9 userPersonaUniqueString];
    v11 = [v55 domain];
    v12 = [v11 personaIdentifier];

    if (v10 != v12)
    {
      v50 = fp_current_or_default_log();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        __89__FPXExtensionContext_listRemoteVersionsWithSettings_observer_request_completionHandler___block_invoke_cold_1(v53, v55, v50);
      }

      exit(1);
    }
  }

  v13 = [v55 vendorInstance];
  if ([v13 conformsToProtocol:&unk_1F1FF3AC8])
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = [*(a1 + 40) enumeratedItemID];
    v16 = [v15 identifier];
    v17 = *(a1 + 48);
    v57 = 0;
    v18 = [v14 enumeratorForVersionsOfItemWithIdentifier:v16 request:v17 error:&v57];
    v19 = v57;

    if (!v18 || v19)
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v43 = [*v52 enumeratedItemID];
        v44 = [*v53 providerIdentifier];
        v45 = [v44 fp_fpIdentifier];
        *buf = 138412802;
        v59 = v43;
        v60 = 2112;
        v61 = v45;
        v62 = 2112;
        v63 = v19;
        _os_log_debug_impl(&dword_1AAAE1000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] can't create vendor enumerator for %@ owned by %@; %@", buf, 0x20u);
      }

      if (v18 == 0 && v19 == 0)
      {
        v51 = NSStringFromSelector(sel_listRemoteVersionsWithSettings_observer_request_completionHandler_);
        fp_simulate_crash(@"[%@ %@] must return an enumerator or an error.", v28, v29, v30, v31, v32, v33, v34, v13);

        v35 = fp_current_or_default_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          __89__FPXExtensionContext_listRemoteVersionsWithSettings_observer_request_completionHandler___block_invoke_cold_4(v13, sel_listRemoteVersionsWithSettings_observer_request_completionHandler_);
        }
      }

      v22 = [v55 internalErrorFromVendorError:v19 callerDescription:@"fetchAndStartEnumeratingWithSettings"];
      v56 = fpfs_adopt_log(*(*v53 + 10));
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v46 = FPPopLogSectionForBlock(*(a1 + 64));
        v47 = *v53;
        *buf = 134219010;
        v59 = v46;
        v60 = 2112;
        v61 = v47;
        v62 = 2080;
        v63 = "[FPXExtensionContext listRemoteVersionsWithSettings:observer:request:completionHandler:]_block_invoke";
        v64 = 2112;
        v65 = 0;
        v66 = 2112;
        v67 = v19;
        _os_log_debug_impl(&dword_1AAAE1000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }
    }

    else
    {
      v20 = [FPXEnumerator alloc];
      v21 = [*(a1 + 40) enumeratedItemID];
      v22 = [(FPXEnumerator *)v20 initWithObservedItemID:v21 domainContext:v55 vendorEnumerator:v18 nsFileProviderRequest:*(a1 + 48) observer:*(a1 + 56) isWorkingSetEnum:0 queue:*(*(a1 + 32) + 24)];

      if (!v22)
      {
        v36 = fp_current_or_default_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          __89__FPXExtensionContext_listRemoteVersionsWithSettings_observer_request_completionHandler___block_invoke_cold_2(v52, v53, v36);
        }

        v37 = [v55 internalErrorFromVendorError:0 callerDescription:@"fetchAndStartEnumeratingWithSettings"];
        v56 = fpfs_adopt_log(*(*v53 + 10));
        v38 = fp_current_or_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          FPPopLogSectionForBlock(*(a1 + 64));
          __89__FPXExtensionContext_listRemoteVersionsWithSettings_observer_request_completionHandler___block_invoke_cold_3(v53);
        }

        (*(*(a1 + 64) + 16))();
        __fp_pop_log(&v56);

        goto LABEL_31;
      }

      [*(*v53 + 5) addObject:v22];
      v56 = fpfs_adopt_log(*(*v53 + 10));
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v48 = FPPopLogSectionForBlock(*(a1 + 64));
        v49 = *v53;
        *buf = 134219010;
        v59 = v48;
        v60 = 2112;
        v61 = v49;
        v62 = 2080;
        v63 = "[FPXExtensionContext listRemoteVersionsWithSettings:observer:request:completionHandler:]_block_invoke";
        v64 = 2112;
        v65 = v22;
        v66 = 2112;
        v67 = 0;
        _os_log_debug_impl(&dword_1AAAE1000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }
    }

    (*(*(a1 + 64) + 16))();
    __fp_pop_log(&v56);

LABEL_31:
    goto LABEL_32;
  }

  v56 = fpfs_adopt_log(*(*v53 + 10));
  v24 = fp_current_or_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v40 = FPPopLogSectionForBlock(*(a1 + 64));
    v41 = *v53;
    v42 = FPNotSupportedError();
    *buf = 134219010;
    v59 = v40;
    v60 = 2112;
    v61 = v41;
    v62 = 2080;
    v63 = "[FPXExtensionContext listRemoteVersionsWithSettings:observer:request:completionHandler:]_block_invoke";
    v64 = 2112;
    v65 = 0;
    v66 = 2112;
    v67 = v42;
    _os_log_debug_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v25 = *(a1 + 64);
  v26 = FPNotSupportedError();
  (*(v25 + 16))(v25, 0, v26);

  __fp_pop_log(&v56);
LABEL_32:

  v39 = *MEMORY[0x1E69E9840];
}

- (void)spotlightIndexerDidReindexAllSearchableItems:(id)a3
{
  v3 = [(FPXDomainContext *)self->_domainContext domain];
  v4 = [NSFileProviderManager managerForDomain:v3];

  [v4 signalEnumeratorForContainerItemIdentifier:@"NSFileProviderWorkingSetContainerItemIdentifier" completionHandler:&__block_literal_global_619];
}

void __68__FPXExtensionContext_spotlightIndexerDidReindexAllSearchableItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __68__FPXExtensionContext_spotlightIndexerDidReindexAllSearchableItems___block_invoke_cold_1(v2);
    }
  }
}

- (void)getKnownFolderLocations:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v14 = fpfs_adopt_log(self->_log);
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [FPXExtensionContext getKnownFolderLocations:completionHandler:];
  }

  v8 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
  instanceQueue = self->_instanceQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__FPXExtensionContext_getKnownFolderLocations_completionHandler___block_invoke;
  v11[3] = &unk_1E793A088;
  v11[4] = self;
  v10 = v6;
  v12 = v10;
  v13 = a3;
  fp_dispatch_async_with_logs(instanceQueue, v11);

  __fp_pop_log(&v14);
}

void __65__FPXExtensionContext_getKnownFolderLocations_completionHandler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) domainContext];
  v3 = [v2 vendorInstance];
  if ([v3 conformsToProtocol:&unk_1F1FF3B28])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = *(a1 + 48);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__FPXExtensionContext_getKnownFolderLocations_completionHandler___block_invoke_623;
    v16[3] = &unk_1E793A060;
    v6 = v2;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v17 = v6;
    v18 = v7;
    v19 = v8;
    [v4 getKnownFolderLocations:v5 completionHandler:v16];
  }

  else
  {
    v20 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = FPPopLogSectionForBlock(*(a1 + 40));
      v14 = *(a1 + 32);
      v15 = FPNotSupportedError();
      *buf = 134219010;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2080;
      v26 = "[FPXExtensionContext getKnownFolderLocations:completionHandler:]_block_invoke";
      v27 = 2112;
      v28 = 0;
      v29 = 2112;
      v30 = v15;
      _os_log_debug_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v10 = *(a1 + 40);
    v11 = FPNotSupportedError();
    (*(v10 + 16))(v10, 0, v11);

    __fp_pop_log(&v20);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __65__FPXExtensionContext_getKnownFolderLocations_completionHandler___block_invoke_623(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) internalErrorFromVendorError:v6 callerDescription:@"getKnownFolderLocations"];
  if (!(v5 | v7))
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __65__FPXExtensionContext_getKnownFolderLocations_completionHandler___block_invoke_623_cold_1();
    }

    v7 = FPNotSupportedError();
  }

  if (v7)
  {
    v15 = fpfs_adopt_log(*(*(a1 + 40) + 80));
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = FPPopLogSectionForBlock(*(a1 + 48));
      v12 = *(a1 + 40);
      *buf = 134219010;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2080;
      v21 = "[FPXExtensionContext getKnownFolderLocations:completionHandler:]_block_invoke";
      v22 = 2112;
      v23 = 0;
      v24 = 2112;
      v25 = v7;
      _os_log_debug_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }
  }

  else
  {
    v15 = fpfs_adopt_log(*(*(a1 + 40) + 80));
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = FPPopLogSectionForBlock(*(a1 + 48));
      v14 = *(a1 + 40);
      *buf = 134219010;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2080;
      v21 = "[FPXExtensionContext getKnownFolderLocations:completionHandler:]_block_invoke";
      v22 = 2112;
      v23 = v5;
      v24 = 2112;
      v25 = 0;
      _os_log_debug_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }
  }

  (*(*(a1 + 48) + 16))();
  __fp_pop_log(&v15);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_waitForExtensionStabilizationWithCompletionHandler:(id)a3
{
  v4 = a3;
  instanceQueue = self->_instanceQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__FPXExtensionContext__waitForExtensionStabilizationWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7939128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  fp_dispatch_async_with_logs(instanceQueue, v7);
}

void __75__FPXExtensionContext__waitForExtensionStabilizationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) instanceWithPrivateSelector:sel_waitForStabilizationWithCompletionHandler_];
  v3 = *(a1 + 40);
  v4 = v2;
  if (v2)
  {
    [v2 waitForStabilizationWithCompletionHandler:v3];
  }

  else
  {
    (*(v3 + 16))(v3, 0);
  }
}

- (void)waitForStabilizationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__FPXExtensionContext_waitForStabilizationWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7939170;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(FPXExtensionContext *)self _waitForExtensionStabilizationWithCompletionHandler:v6];
}

void __65__FPXExtensionContext_waitForStabilizationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v12 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = FPPopLogSectionForBlock(*(a1 + 40));
      v9 = *(a1 + 32);
      *buf = 134218754;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2080;
      v18 = "[FPXExtensionContext waitForStabilizationWithCompletionHandler:]_block_invoke";
      v19 = 2112;
      v20 = v3;
      _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log(&v12);
  }

  else
  {
    v5 = [*(*(a1 + 32) + 88) domain];
    v6 = [NSFileProviderManager managerForDomain:v5];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__FPXExtensionContext_waitForStabilizationWithCompletionHandler___block_invoke_629;
    v10[3] = &unk_1E7939170;
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 40);
    [v6 waitForSignalDeliveryWithCompletionHandler:v10];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __65__FPXExtensionContext_waitForStabilizationWithCompletionHandler___block_invoke_629(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v8 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock(*(a1 + 40));
    v7 = *(a1 + 32);
    *buf = 134218754;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPXExtensionContext waitForStabilizationWithCompletionHandler:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(&v8);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_test_callFileProviderManagerAPIs:(id)a3
{
  v4 = a3;
  v5 = +[NSFileProviderManager legacyDefaultManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__FPXExtensionContext__test_callFileProviderManagerAPIs___block_invoke;
  v7[3] = &unk_1E7939170;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 signalEnumeratorForContainerItemIdentifier:@"NSFileProviderRootContainerItemIdentifier" completionHandler:v7];
}

void __57__FPXExtensionContext__test_callFileProviderManagerAPIs___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v8 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock(*(a1 + 40));
    v7 = *(a1 + 32);
    *buf = 134218754;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPXExtensionContext _test_callFileProviderManagerAPIs:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log(&v8);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)shouldConnectExternalDomainWithCompletionHandler:(id)a3
{
  v4 = a3;
  instanceQueue = self->_instanceQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__FPXExtensionContext_shouldConnectExternalDomainWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7939128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  fp_dispatch_async_with_logs(instanceQueue, v7);
}

void __72__FPXExtensionContext_shouldConnectExternalDomainWithCompletionHandler___block_invoke(uint64_t a1)
{
  v23[8] = *MEMORY[0x1E69E9840];
  v17 = (a1 + 32);
  v19 = [*(a1 + 32) domainContext];
  v1 = [v19 domain];
  v2 = [v1 personaIdentifier];
  v3 = [MEMORY[0x1E69DF068] sharedManager];
  v4 = [v3 currentPersona];
  v5 = [v4 userPersonaUniqueString];
  if ([v2 isEqualToString:v5])
  {
  }

  else
  {
    v6 = [MEMORY[0x1E69DF068] sharedManager];
    v7 = [v6 currentPersona];
    v8 = [v7 userPersonaUniqueString];
    v9 = [v19 domain];
    v10 = [v9 personaIdentifier];

    if (v8 != v10)
    {
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __72__FPXExtensionContext_shouldConnectExternalDomainWithCompletionHandler___block_invoke_cold_1(v17, v19, v16);
      }

      exit(1);
    }
  }

  v11 = [v19 vendorInstance];
  if ([v11 conformsToProtocol:&unk_1F1FF3B88])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __72__FPXExtensionContext_shouldConnectExternalDomainWithCompletionHandler___block_invoke_635;
    v20[3] = &unk_1E79396E8;
    v13 = *(a1 + 40);
    v20[4] = *(a1 + 32);
    v22 = v13;
    v21 = v19;
    [v12 shouldConnectExternalDomainWithCompletionHandler:v20];
  }

  else
  {
    v23[0] = fpfs_adopt_log(*(*v17 + 80));
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock(*(a1 + 40));
      __72__FPXExtensionContext_shouldConnectExternalDomainWithCompletionHandler___block_invoke_cold_2(v17);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log(v23);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __72__FPXExtensionContext_shouldConnectExternalDomainWithCompletionHandler___block_invoke_635(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = fpfs_adopt_log(*(*(a1 + 32) + 80));
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock(*(a1 + 48));
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) internalErrorFromVendorError:v3 callerDescription:@"shouldConnectExternalDomain"];
    *buf = 134218754;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2080;
    v17 = "[FPXExtensionContext shouldConnectExternalDomainWithCompletionHandler:]_block_invoke";
    v18 = 2112;
    v19 = v10;
    _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) internalErrorFromVendorError:v3 callerDescription:@"shouldConnectExternalDomain"];
  (*(v5 + 16))(v5, v6);

  __fp_pop_log(&v11);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)enumerateSearchResultForRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = fpfs_adopt_log(self->_log);
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FPXExtensionContext enumerateSearchResultForRequest:completionHandler:];
  }

  instanceQueue = self->_instanceQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__FPXExtensionContext_enumerateSearchResultForRequest_completionHandler___block_invoke;
  v11[3] = &unk_1E7939128;
  v11[4] = self;
  v10 = v7;
  v12 = v10;
  fp_dispatch_async_with_logs(instanceQueue, v11);

  __fp_pop_log(&v13);
}

void __73__FPXExtensionContext_enumerateSearchResultForRequest_completionHandler___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) domainContext];
  v3 = [v2 vendorInstance];
  if ([v3 conformsToProtocol:&unk_1F1FF3BE8])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = [v5 initWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
    v17 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = FPPopLogSectionForBlock(*(a1 + 40));
      v13 = *(a1 + 32);
      *buf = 134219010;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2080;
      v23 = "[FPXExtensionContext enumerateSearchResultForRequest:completionHandler:]_block_invoke";
      v24 = 2112;
      v25 = 0;
      v26 = 2112;
      v27 = v6;
      _os_log_debug_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
    __fp_pop_log(&v17);
  }

  else
  {
    v17 = fpfs_adopt_log(*(*(a1 + 32) + 80));
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = FPPopLogSectionForBlock(*(a1 + 40));
      v15 = *(a1 + 32);
      v16 = FPNotSupportedError();
      *buf = 134219010;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v22 = 2080;
      v23 = "[FPXExtensionContext enumerateSearchResultForRequest:completionHandler:]_block_invoke";
      v24 = 2112;
      v25 = 0;
      v26 = 2112;
      v27 = v16;
      _os_log_debug_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
    }

    v9 = *(a1 + 40);
    v10 = FPNotSupportedError();
    (*(v9 + 16))(v9, 0, v10);

    __fp_pop_log(&v17);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)applyFieldChangesToItem:(id)a3 baseVersion:(id)a4 changedFields:(unint64_t)a5 contents:(id)a6 lastKnownVendorItem:(id)a7 extensionInstance:(id)a8 completionHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v47 = a9;
  objc_initWeak(location, self);
  objc_initWeak(&from, v19);
  v45 = v17;
  v46 = v16;
  v43 = v15;
  v44 = v18;
  if ((a5 & 0x40000004) == 4)
  {
    v20 = [v15 itemIdentifier];
    v21 = [v15 parentItemIdentifier];
    v22 = [v15 filename];
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __153__FPXExtensionContext_LegacySupport__applyFieldChangesToItem_baseVersion_changedFields_contents_lastKnownVendorItem_extensionInstance_completionHandler___block_invoke;
    v93[3] = &unk_1E793B780;
    v97 = v47;
    objc_copyWeak(&v98, location);
    v94 = v15;
    v95 = v16;
    v99[1] = a5;
    v96 = v17;
    objc_copyWeak(v99, &from);
    v23 = v19;
    [v19 reparentItemWithIdentifier:v20 toParentItemWithIdentifier:v21 newName:v22 completionHandler:v93];
    v24 = &v97;
    v25 = &v94;
    v26 = &v95;
    v27 = &v96;

    objc_destroyWeak(v99);
    v28 = &v98;
LABEL_17:

    objc_destroyWeak(v28);
    v17 = v45;
    v16 = v46;
    v19 = v23;
    v15 = v43;
    v18 = v44;
    goto LABEL_18;
  }

  if ((a5 & 2) != 0)
  {
    v29 = [v15 itemIdentifier];
    v30 = [v15 filename];
    v31 = v86;
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __153__FPXExtensionContext_LegacySupport__applyFieldChangesToItem_baseVersion_changedFields_contents_lastKnownVendorItem_extensionInstance_completionHandler___block_invoke_2;
    v86[3] = &unk_1E793B780;
    v90 = v47;
    v28 = &v91;
    objc_copyWeak(&v91, location);
    v87 = v15;
    v88 = v16;
    v92[1] = a5;
    v89 = v17;
    objc_copyWeak(v92, &from);
    v23 = v19;
    [v19 renameItemWithIdentifier:v29 toName:v30 completionHandler:v86];
    v24 = &v90;
    v25 = &v87;
    v26 = &v88;
    v27 = &v89;

LABEL_11:
    objc_destroyWeak(v31 + 9);
    goto LABEL_17;
  }

  if ((a5 & 8) != 0)
  {
    v32 = [v15 lastUsedDate];
    v33 = [v15 itemIdentifier];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __153__FPXExtensionContext_LegacySupport__applyFieldChangesToItem_baseVersion_changedFields_contents_lastKnownVendorItem_extensionInstance_completionHandler___block_invoke_3;
    v78[3] = &unk_1E793B7A8;
    v83 = v47;
    v34 = &v84;
    objc_copyWeak(&v84, location);
    v79 = v15;
    v80 = v16;
    v85[1] = a5;
    v81 = v17;
    v82 = v18;
    objc_copyWeak(v85, &from);
    v23 = v19;
    [v19 setLastUsedDate:v32 forItemIdentifier:v33 completionHandler:v78];
    v24 = &v83;
    v25 = &v79;
    v26 = &v80;
    v27 = &v81;

    objc_destroyWeak(v85);
    v35 = v82;
LABEL_15:

    goto LABEL_16;
  }

  if ((a5 & 0x10) != 0)
  {
    v36 = [v15 tagData];
    v37 = [v15 itemIdentifier];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __153__FPXExtensionContext_LegacySupport__applyFieldChangesToItem_baseVersion_changedFields_contents_lastKnownVendorItem_extensionInstance_completionHandler___block_invoke_4;
    v70[3] = &unk_1E793B7A8;
    v75 = v47;
    v34 = &v76;
    objc_copyWeak(&v76, location);
    v71 = v15;
    v72 = v16;
    v77[1] = a5;
    v73 = v17;
    v74 = v18;
    objc_copyWeak(v77, &from);
    v23 = v19;
    [v19 setTagData:v36 forItemIdentifier:v37 completionHandler:v70];
    v24 = &v75;
    v25 = &v71;
    v26 = &v72;
    v27 = &v73;

    objc_destroyWeak(v77);
    v35 = v74;
    goto LABEL_15;
  }

  if ((a5 & 0x20) != 0)
  {
    v38 = [v15 favoriteRank];
    v39 = [v15 itemIdentifier];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __153__FPXExtensionContext_LegacySupport__applyFieldChangesToItem_baseVersion_changedFields_contents_lastKnownVendorItem_extensionInstance_completionHandler___block_invoke_5;
    v62[3] = &unk_1E793B7A8;
    v67 = v47;
    v34 = &v68;
    objc_copyWeak(&v68, location);
    v63 = v15;
    v64 = v16;
    v69[1] = a5;
    v65 = v17;
    v66 = v18;
    objc_copyWeak(v69, &from);
    v23 = v19;
    [v19 setFavoriteRank:v38 forItemIdentifier:v39 completionHandler:v62];
    v24 = &v67;
    v25 = &v63;
    v26 = &v64;
    v27 = &v65;

    objc_destroyWeak(v69);
    v35 = v66;
    goto LABEL_15;
  }

  if ((a5 & 0x40000000) != 0)
  {
    if ([v15 isTrashed])
    {
      v40 = [v15 itemIdentifier];
      v31 = v55;
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __153__FPXExtensionContext_LegacySupport__applyFieldChangesToItem_baseVersion_changedFields_contents_lastKnownVendorItem_extensionInstance_completionHandler___block_invoke_6;
      v55[3] = &unk_1E793B780;
      v59 = v47;
      v28 = &v60;
      objc_copyWeak(&v60, location);
      v56 = v15;
      v57 = v16;
      v61[1] = a5;
      v58 = v17;
      objc_copyWeak(v61, &from);
      v23 = v19;
      [v19 trashItemWithIdentifier:v40 completionHandler:v55];
      v24 = &v59;
      v25 = &v56;
      v26 = &v57;
      v27 = &v58;

      goto LABEL_11;
    }

    v41 = [v15 itemIdentifier];
    if ((a5 & 4) != 0)
    {
      v42 = [v15 parentItemIdentifier];
    }

    else
    {
      v42 = 0;
    }

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __153__FPXExtensionContext_LegacySupport__applyFieldChangesToItem_baseVersion_changedFields_contents_lastKnownVendorItem_extensionInstance_completionHandler___block_invoke_7;
    v48[3] = &unk_1E793B780;
    v52 = v47;
    v34 = &v53;
    objc_copyWeak(&v53, location);
    v49 = v15;
    v50 = v16;
    v54[1] = a5;
    v51 = v17;
    objc_copyWeak(v54, &from);
    v23 = v19;
    [v19 untrashItemWithIdentifier:v41 toParentItemIdentifier:v42 completionHandler:v48];
    v24 = &v52;
    v25 = &v49;
    v26 = &v50;
    v27 = &v51;
    if ((a5 & 4) != 0)
    {
    }

    objc_destroyWeak(v54);
LABEL_16:
    v28 = v34;
    goto LABEL_17;
  }

  if (a5)
  {
    if (!v17)
    {
      __assert_rtn("[FPXExtensionContext(LegacySupport) applyFieldChangesToItem:baseVersion:changedFields:contents:lastKnownVendorItem:extensionInstance:completionHandler:]", "FPXExtensionContext_Legacy.m", 166, "newContent");
    }

    [(FPXExtensionContext *)self applyItemChange:v15 baseVersion:v16 contents:v17 completionHandler:v47];
  }

  else
  {
    (*(v47 + 2))(v47, v18, 0);
  }

LABEL_18:
  objc_destroyWeak(&from);
  objc_destroyWeak(location);
}

void __153__FPXExtensionContext_LegacySupport__applyFieldChangesToItem_baseVersion_changedFields_contents_lastKnownVendorItem_extensionInstance_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 80);
    v9 = *(a1 + 48);
    v10 = objc_loadWeakRetained((a1 + 72));
    [WeakRetained applyFieldChangesToItem:v6 baseVersion:v7 changedFields:v8 & 0xFFFFFFFFFFFFFFF9 contents:v9 lastKnownVendorItem:v11 extensionInstance:v10 completionHandler:*(a1 + 56)];
  }
}

void __153__FPXExtensionContext_LegacySupport__applyFieldChangesToItem_baseVersion_changedFields_contents_lastKnownVendorItem_extensionInstance_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 80);
    v9 = *(a1 + 48);
    v10 = objc_loadWeakRetained((a1 + 72));
    [WeakRetained applyFieldChangesToItem:v6 baseVersion:v7 changedFields:v8 & 0xFFFFFFFFFFFFFFFDLL contents:v9 lastKnownVendorItem:v11 extensionInstance:v10 completionHandler:*(a1 + 56)];
  }
}

void __153__FPXExtensionContext_LegacySupport__applyFieldChangesToItem_baseVersion_changedFields_contents_lastKnownVendorItem_extensionInstance_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = v5;
  if (v5 && ([v5 fp_isFeatureUnsupportedError] & 1) == 0)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 88);
    v11 = v14;
    v12 = *(a1 + 48);
    if (!v14)
    {
      v11 = *(a1 + 56);
    }

    v13 = objc_loadWeakRetained((a1 + 80));
    [WeakRetained applyFieldChangesToItem:v8 baseVersion:v9 changedFields:v10 & 0xFFFFFFFFFFFFFFF7 contents:v12 lastKnownVendorItem:v11 extensionInstance:v13 completionHandler:*(a1 + 64)];
  }
}

void __153__FPXExtensionContext_LegacySupport__applyFieldChangesToItem_baseVersion_changedFields_contents_lastKnownVendorItem_extensionInstance_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = v5;
  if (v5 && ([v5 fp_isFeatureUnsupportedError] & 1) == 0)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 88);
    v11 = v14;
    v12 = *(a1 + 48);
    if (!v14)
    {
      v11 = *(a1 + 56);
    }

    v13 = objc_loadWeakRetained((a1 + 80));
    [WeakRetained applyFieldChangesToItem:v8 baseVersion:v9 changedFields:v10 & 0xFFFFFFFFFFFFFFEFLL contents:v12 lastKnownVendorItem:v11 extensionInstance:v13 completionHandler:*(a1 + 64)];
  }
}

void __153__FPXExtensionContext_LegacySupport__applyFieldChangesToItem_baseVersion_changedFields_contents_lastKnownVendorItem_extensionInstance_completionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = v5;
  if (v5 && ([v5 fp_isFeatureUnsupportedError] & 1) == 0)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 88);
    v11 = v14;
    v12 = *(a1 + 48);
    if (!v14)
    {
      v11 = *(a1 + 56);
    }

    v13 = objc_loadWeakRetained((a1 + 80));
    [WeakRetained applyFieldChangesToItem:v8 baseVersion:v9 changedFields:v10 & 0xFFFFFFFFFFFFFFDFLL contents:v12 lastKnownVendorItem:v11 extensionInstance:v13 completionHandler:*(a1 + 64)];
  }
}

void __153__FPXExtensionContext_LegacySupport__applyFieldChangesToItem_baseVersion_changedFields_contents_lastKnownVendorItem_extensionInstance_completionHandler___block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 80);
    v9 = *(a1 + 48);
    v10 = objc_loadWeakRetained((a1 + 72));
    [WeakRetained applyFieldChangesToItem:v6 baseVersion:v7 changedFields:v8 & 0xFFFFFFFFBFFFFFFBLL contents:v9 lastKnownVendorItem:v11 extensionInstance:v10 completionHandler:*(a1 + 56)];
  }
}

void __153__FPXExtensionContext_LegacySupport__applyFieldChangesToItem_baseVersion_changedFields_contents_lastKnownVendorItem_extensionInstance_completionHandler___block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 80);
    v9 = *(a1 + 48);
    v10 = objc_loadWeakRetained((a1 + 72));
    [WeakRetained applyFieldChangesToItem:v6 baseVersion:v7 changedFields:v8 & 0xFFFFFFFFBFFFFFFBLL contents:v9 lastKnownVendorItem:v11 extensionInstance:v10 completionHandler:*(a1 + 56)];
  }
}

- (void)applyItemChange:(id)a3 baseVersion:(id)a4 contents:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 itemID];
  v15 = [(FPXExtensionContext *)self instanceForItemID:v14];

  v16 = [v10 itemID];
  v17 = [v16 identifier];

  v18 = [v15 URLForItemWithPersistentIdentifier:v17];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__7;
  v40 = __Block_byref_object_dispose__7;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (v18)
  {
    v25 = v11;
    v19 = objc_opt_new();
    v20 = objc_opt_new();
    v31 = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __93__FPXExtensionContext_LegacySupport__applyItemChange_baseVersion_contents_completionHandler___block_invoke;
    v27[3] = &unk_1E793B7D0;
    v29 = &v32;
    v21 = v20;
    v28 = v21;
    v30 = &v36;
    [v19 coordinateReadingItemAtURL:v12 options:0 writingItemAtURL:v18 options:0 error:&v31 byAccessor:v27];
    v22 = v31;
    if (v22)
    {
      v23 = v22;
      v13[2](v13, 0, v22);
    }

    else if (*(v33 + 24) == 1)
    {
      v13[2](v13, 0, v37[5]);
      v23 = 0;
    }

    else
    {
      [v15 itemChangedAtURL:v18];
      v26 = 0;
      v24 = [v15 itemForIdentifier:v17 error:&v26];
      v23 = v26;
      (v13)[2](v13, v24, v23);
    }

    v11 = v25;
  }

  else
  {
    v19 = [MEMORY[0x1E696ABC0] fileProviderErrorForNonExistentItemWithIdentifier:v17];
    v13[2](v13, 0, v19);
    v23 = 0;
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
}

void __93__FPXExtensionContext_LegacySupport__applyItemChange_baseVersion_contents_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = *(a1[6] + 8);
  v20 = *(v8 + 40);
  v9 = [v7 copyItemAtURL:v5 toURL:v6 error:&v20];
  objc_storeStrong((v8 + 40), v20);
  *(*(a1[5] + 8) + 24) = v9 ^ 1;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v10 = [*(*(a1[6] + 8) + 40) domain];
    if (![v10 isEqualToString:*MEMORY[0x1E696A250]])
    {
LABEL_15:

      goto LABEL_16;
    }

    v11 = [*(*(a1[6] + 8) + 40) code];

    if (v11 == 516)
    {
      memset(&v19, 0, sizeof(v19));
      v18 = 0;
      [v6 getResourceValue:&v18 forKey:*MEMORY[0x1E695DAB8] error:0];
      v10 = v18;
      v12 = [v6 path];
      stat([v12 fileSystemRepresentation], &v19);

      v13 = a1[4];
      v14 = *(a1[6] + 8);
      obj = *(v14 + 40);
      v15 = [v13 replaceItemAtURL:v6 withItemAtURL:v5 backupItemName:0 options:1 resultingItemURL:0 error:&obj];
      objc_storeStrong((v14 + 40), obj);
      *(*(a1[5] + 8) + 24) = v15 ^ 1;
      if (v10 && [v10 intValue] && v19.st_ino)
      {
        while (v19.st_dev)
        {
          [v10 unsignedIntValue];
          v16 = GSLibraryResolveDocumentId2();
          if (v16)
          {
            if (v16 != v19.st_ino)
            {
              goto LABEL_15;
            }
          }

          else if (*__error() != 16 && *__error() != 70 && *__error() != 2)
          {
            goto LABEL_15;
          }

          usleep(0x64u);
        }
      }

      goto LABEL_15;
    }
  }

LABEL_16:
}

- (void)importDocumentAtURL:(id)a3 intoFolderWithIdentifier:(id)a4 originalName:(id)a5 extensionInstance:(id)a6 reply:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = v11;
  v17 = [v16 lastPathComponent];
  v18 = [v17 isEqualToString:v13];

  v19 = v16;
  if (v18)
  {
LABEL_7:
    v23 = v18 ^ 1;
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [FPXExtensionContext(LegacySupport) importDocumentAtURL:v19 intoFolderWithIdentifier:v12 originalName:v24 extensionInstance:? reply:?];
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __120__FPXExtensionContext_LegacySupport__importDocumentAtURL_intoFolderWithIdentifier_originalName_extensionInstance_reply___block_invoke;
    v25[3] = &unk_1E793B7F8;
    v29 = v23;
    v19 = v19;
    v26 = v19;
    v27 = v16;
    v28 = v15;
    [v14 importDocumentAtURL:v19 toParentItemIdentifier:v12 completionHandler:v25];

    v20 = v26;
    goto LABEL_13;
  }

  v30 = 0;
  v19 = [v16 fp_moveToTempFolderWithFilename:v13 error:&v30];
  v20 = v30;

  v21 = fp_current_or_default_log();
  v22 = v21;
  if (v19 && !v20)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [FPXExtensionContext(LegacySupport) importDocumentAtURL:v19 intoFolderWithIdentifier:v22 originalName:? extensionInstance:? reply:?];
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [FPXExtensionContext(LegacySupport) importDocumentAtURL:v13 intoFolderWithIdentifier:v20 originalName:v22 extensionInstance:? reply:?];
  }

  (*(v15 + 2))(v15, 0, 0, v20);
LABEL_13:
}

void __120__FPXExtensionContext_LegacySupport__importDocumentAtURL_intoFolderWithIdentifier_originalName_extensionInstance_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (*(a1 + 56) == 1)
  {
    v6 = objc_opt_new();
    v7 = v6;
    if (v5)
    {
      [v6 moveItemAtURL:*(a1 + 32) toURL:*(a1 + 40) error:0];
    }

    v8 = [*(a1 + 32) URLByDeletingLastPathComponent];
    [v7 removeItemAtURL:v8 error:0];
  }

  v9 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
}

void __37__FPXExtensionContext_principalClass__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_39(&dword_1AAAE1000, v0, v1, "[CRIT] %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)beginRequestWithDomain:(NSObject *)a3 alternateContentsDictionary:domainServicer:providerDomain:domainVersion:completionHandler:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_44(&dword_1AAAE1000, a2, a3, "[DEBUG] started extension: %@", a2);
}

- (void)beginRequestWithDomain:alternateContentsDictionary:domainServicer:providerDomain:domainVersion:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_24();
  v3 = OUTLINED_FUNCTION_4_0(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_18(v3, v4);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v5, v6);
}

- (void)domainContext
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, v0, v1, "[ERROR] Context does not exist for %@ - is the extension deallocating?", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)domainContextForIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPXExtensionContext.m" lineNumber:398 description:@"Sent to wrong instance"];
}

- (void)domainContextForItemID:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [a1 domain];
  v9 = [v8 identifier];
  [v10 handleFailureInMethod:a2 object:a3 file:@"FPXExtensionContext.m" lineNumber:431 description:{@"Sent to wrong instance, itemID=%@, domainContext.domain=%@", a4, v9}];
}

- (void)didChangeItemID:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __57__FPXExtensionContext_didChangeItemID_completionHandler___block_invoke_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_6_1(a1);
  OUTLINED_FUNCTION_2_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v6, v7);
}

void __80__FPXExtensionContext_startProvidingItemAtURL_readingOptions_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 40) fp_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __80__FPXExtensionContext_startProvidingItemAtURL_readingOptions_completionHandler___block_invoke_198_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a2 + 40) fp_shortDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __80__FPXExtensionContext_startProvidingItemAtURL_readingOptions_completionHandler___block_invoke_198_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 40) fp_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)evictItemAtURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_10(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_13_0(v4, v5, v6);
  OUTLINED_FUNCTION_23();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);
}

- (void)userCheckedSuppressionCheckboxForUserInteractionIdentifier:domainIdentifier:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)userCheckedSuppressionCheckboxForUserInteractionIdentifier:domainIdentifier:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_24();
  v3 = OUTLINED_FUNCTION_4_0(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_18(v3, v4);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v5, v6);
}

- (void)createUserInteractionSuppressingWithDomainIdentifier:withPurpose:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)createUserInteractionSuppressingWithDomainIdentifier:withPurpose:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_37(&dword_1AAAE1000, v0, v1, "[ERROR] Extension didn't conform to protocol NSFileProviderUserInteractionSuppressing for domainIdentifier %@ for purpose %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)createUserInteractionSuppressingWithDomainIdentifier:withPurpose:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_37(&dword_1AAAE1000, v0, v1, "[ERROR] Couldn't retrieve extension for domainIdentifier %{public}@ for purpose %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)createUserInteractionSuppressingWithDomainIdentifier:withPurpose:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, v0, v1, "[ERROR] Passed nil domainIdentifier for purpose %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteSearchableItemsWithSpotlightDomainIdentifiers:(uint64_t)a3 domainIdentifier:indexReason:completionHandler:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10(a1, 5.7781e-34, a2, a3);
  *(v3 + 14) = "[FPXExtensionContext deleteSearchableItemsWithSpotlightDomainIdentifiers:domainIdentifier:indexReason:completionHandler:]";
  *(v3 + 22) = 1024;
  *(v3 + 24) = v4;
  OUTLINED_FUNCTION_23();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

- (void)removeTrashedItemsOlderThanDate:domainIdentifier:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __90__FPXExtensionContext_removeTrashedItemsOlderThanDate_domainIdentifier_completionHandler___block_invoke_cold_2(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_6_1(a1);
  OUTLINED_FUNCTION_2_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v6, v7);
}

void __88__FPXExtensionContext_dumpInternalStateToTermDumper_domainIdentifier_completionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_6_1(a1);
  OUTLINED_FUNCTION_2_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v6, v7);
}

- (void)itemChangedAtURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_10(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_13_0(v4, v5, v6);
  OUTLINED_FUNCTION_23();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);
}

void __58__FPXExtensionContext_itemChangedAtURL_completionHandler___block_invoke_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_6_1(a1);
  OUTLINED_FUNCTION_2_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v6, v7);
}

- (void)fetchContentsForItemWithID:(NSObject *)a3 version:request:estimatedItemSize:isSymlink:extent:alignment:options:completionHandler:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  OUTLINED_FUNCTION_44(&dword_1AAAE1000, a2, a3, "[DEBUG] total unit count %lld", a1);
}

void __100__FPXExtensionContext__singleItemChange_changedFields_bounce_bounceIndex_request_completionHandler___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)bulkItemChanges:changedFields:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_24();
  *v0 = 134219010;
  *(v0 + 4) = v1;
  *(v0 + 12) = 2112;
  *(v0 + 14) = v2;
  *(v0 + 22) = 2080;
  *(v0 + 24) = "[FPXExtensionContext bulkItemChanges:changedFields:completionHandler:]";
  *(v0 + 32) = 2112;
  *(v0 + 34) = 0;
  *(v0 + 42) = 2112;
  *(v0 + 44) = 0;
  OUTLINED_FUNCTION_23();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x34u);
}

- (void)indexOneBatchInDomain:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)indexOneBatchInDomain:completionHandler:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)indexOneBatchInDomain:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_24();
  v3 = OUTLINED_FUNCTION_4_0(v0, v1, v2, 3.8524e-34);
  OUTLINED_FUNCTION_38(v3, v4);
  OUTLINED_FUNCTION_23();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x30u);
}

- (void)indexOneBatchInDomain:completionHandler:.cold.6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, v0, v1, "[ERROR] no context for domain %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dropIndexForDomain:dropReason:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)dropIndexForDomain:dropReason:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_24();
  v3 = OUTLINED_FUNCTION_4_0(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_18(v3, v4);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v5, v6);
}

- (void)dropIndexForDomain:dropReason:completionHandler:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __109__FPXExtensionContext_signalNeedsReindexItemsWithIdentifiers_domainIdentifier_indexReason_completionHandler___block_invoke_305_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)dumpIndexStateForDomain:toFileHandler:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_24();
  v3 = OUTLINED_FUNCTION_4_0(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_18(v3, v4);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v5, v6);
}

void __63__FPXExtensionContext_preflightTrashItemIDs_completionHandler___block_invoke_cold_2(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_6_1(a1);
  OUTLINED_FUNCTION_2_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v6, v7);
}

- (void)alternateContentsURLWrapperForItemID:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __80__FPXExtensionContext_fetchAlternateContentsURLWrapperForURL_completionHandler___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_45(a1, *MEMORY[0x1E69E9840]);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Au);
  v8 = *MEMORY[0x1E69E9840];
}

void __94__FPXExtensionContext_didUpdateAlternateContentsDocumentForDocumentWithURL_completionHandler___block_invoke_319_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_6_1(a1);
  OUTLINED_FUNCTION_2_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v6, v7);
}

void __94__FPXExtensionContext_didUpdateAlternateContentsDocumentForDocumentWithURL_completionHandler___block_invoke_319_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_45(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, v1, v2, "[ERROR] FPDidUpdateAlternateContentsDocumentForDocumentAtURL was called with no alternate contents association in place for document with ID: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __94__FPXExtensionContext_didUpdateAlternateContentsDocumentForDocumentWithURL_completionHandler___block_invoke_319_cold_3(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_6_1(a1);
  OUTLINED_FUNCTION_2_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v6, v7);
}

void __94__FPXExtensionContext_didUpdateAlternateContentsDocumentForDocumentWithURL_completionHandler___block_invoke_319_cold_4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)identifierForItemAtURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_10(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_13_0(v4, v5, v6);
  OUTLINED_FUNCTION_23();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);
}

- (void)itemForURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_10(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_13_0(v4, v5, v6);
  OUTLINED_FUNCTION_23();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);
}

void __110__FPXExtensionContext_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_completionHandler___block_invoke_337_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_45(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_37(&dword_1AAAE1000, v1, v2, "[ERROR] couldn't create wrapper from original document URL %@: %@");
  v3 = *MEMORY[0x1E69E9840];
}

void __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __56__FPXExtensionContext_trashItemAtURL_completionHandler___block_invoke_2_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:a1[7] object:a1[4] file:@"FPXExtensionContext.m" lineNumber:1765 description:{@"Vendor extension instance returned neither an item nor an error during trash operation of item %@", a1[5]}];
}

void __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_40(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_382_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_40(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __97__FPXExtensionContext_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler___block_invoke_2_386_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_40(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)createFPTempDirectoryWithError:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)createFPTempDirectoryAppropriateForURL:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __93__FPXExtensionContext_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) allKeys];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __93__FPXExtensionContext_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler___block_invoke_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __95__FPXExtensionContext_fetchAndStartEnumeratingWithSettings_observer_request_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __95__FPXExtensionContext_fetchAndStartEnumeratingWithSettings_observer_request_completionHandler___block_invoke_cold_3(int a1, SEL aSelector)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = NSStringFromSelector(aSelector);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_42();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetchServicesForItemID:allowRestrictedSources:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __72__FPXExtensionContext__proxyWithCancellationHandler_forClientOperation___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)preflightReparentItemIDs:underParentID:reply:.cold.1()
{
  OUTLINED_FUNCTION_24();
  v3 = OUTLINED_FUNCTION_4_0(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_18(v3, v4);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v5, v6);
}

void __68__FPXExtensionContext_preflightReparentItemIDs_underParentID_reply___block_invoke_cold_2(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_6_1(a1);
  OUTLINED_FUNCTION_2_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v6, v7);
}

- (void)deleteItemsWithIDs:baseVersions:options:reply:.cold.1()
{
  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_10(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_13_0(v4, v5, v6);
  OUTLINED_FUNCTION_23();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);
}

void __69__FPXExtensionContext_deleteItemsWithIDs_baseVersions_options_reply___block_invoke_cold_1(uint64_t a1, id *a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 64) object:*(a1 + 48) file:@"FPXExtensionContext.m" lineNumber:2494 description:{@"Number of itemIDs %lu doesn't match number of versions %lu", a3, objc_msgSend(*a2, "count")}];
}

void __69__FPXExtensionContext_deleteItemsWithIDs_baseVersions_options_reply___block_invoke_cold_3(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_6_1(a1);
  OUTLINED_FUNCTION_2_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v6, v7);
}

void __69__FPXExtensionContext_deleteItemsWithIDs_baseVersions_options_reply___block_invoke_519_cold_1()
{
  OUTLINED_FUNCTION_19();
  *v1 = 138412546;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v3;
  _os_log_error_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_ERROR, "[ERROR] Received malformed out-of-date error %@ from %@", v4, 0x16u);
}

void __69__FPXExtensionContext_deleteItemsWithIDs_baseVersions_options_reply___block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = NSStringFromSelector(sel_deleteItemWithIdentifier_baseVersion_options_completionHandler_);
  v3 = *(*(*a1 + 8) + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_inlineSymlinkTarget:url:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_freeSlotHeldByItem:request:bounceIndex:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_cold_2(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [a1 description];
  v4 = *(a2 + 56);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_532_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 64);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_532_cold_2()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_532_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_532_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_532_cold_5(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 64);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __120__FPXExtensionContext__createItemBasedOnTemplate_fields_contents_options_request_bounce_bounceNumber_completionHandler___block_invoke_532_cold_6(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 64);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __80__FPXExtensionContext__fetchHierarchyForItemID_into_maxDepth_completionHandler___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_45(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, v1, v2, "[ERROR] Failed to fetch item %@ during fetchHierarchyForItemID:", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)fetchItemID:reply:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __112__FPXExtensionContext_fetchDefaultContainerForBundleIdentifier_defaultName_inDomainIdentifier_lookupOnly_reply___block_invoke_4_cold_1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __112__FPXExtensionContext_fetchDefaultContainerForBundleIdentifier_defaultName_inDomainIdentifier_lookupOnly_reply___block_invoke_4_cold_2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_42();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)fetchPublishingURLForItemID:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)disconnectDomainID:options:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __109__FPXExtensionContext_performActionWithIdentifier_onItemsWithIdentifiers_domainIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_40(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)wakeForSessionIdentifier:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __66__FPXExtensionContext_wakeForSessionIdentifier_completionHandler___block_invoke_568_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_6_1(a1);
  OUTLINED_FUNCTION_2_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v6, v7);
}

- (void)bulkEvictItemsWithItemIDs:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_10(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_13_0(v4, v5, v6);
  OUTLINED_FUNCTION_23();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);
}

void __67__FPXExtensionContext_bulkEvictItemsWithItemIDs_completionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) identifier];
  v4 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)wakeForPushWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_24();
  v3 = OUTLINED_FUNCTION_4_0(v0, v1, v2, 3.8523e-34);
  OUTLINED_FUNCTION_18(v3, v4);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v5, v6);
}

void __81__FPXExtensionContext_signalEnumeratorForMaterializedItemsWithCompletionHandler___block_invoke_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_6_1(a1);
  OUTLINED_FUNCTION_2_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v6, v7);
}

void __81__FPXExtensionContext_signalEnumeratorForMaterializedItemsWithCompletionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_6_1(a1);
  OUTLINED_FUNCTION_2_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v6, v7);
}

void __76__FPXExtensionContext_signalEnumeratorForPendingItemsWithCompletionHandler___block_invoke_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_6_1(a1);
  OUTLINED_FUNCTION_2_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v6, v7);
}

void __76__FPXExtensionContext_signalEnumeratorForPendingItemsWithCompletionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_6_1(a1);
  OUTLINED_FUNCTION_2_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v6, v7);
}

void __60__FPXExtensionContext_importDidFinishWithCompletionHandler___block_invoke_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_6_1(a1);
  OUTLINED_FUNCTION_2_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v6, v7);
}

void __60__FPXExtensionContext_importDidFinishWithCompletionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_6_1(a1);
  OUTLINED_FUNCTION_2_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v6, v7);
}

void __89__FPXExtensionContext_listRemoteVersionsWithSettings_observer_request_completionHandler___block_invoke_cold_2(id *a1, id *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [*a1 enumeratedItemID];
  v6 = [*a2 providerIdentifier];
  v7 = [v6 fp_fpIdentifier];
  v9 = 138412546;
  v10 = v5;
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] can't create enumerator for %@ owned by %@", &v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __89__FPXExtensionContext_listRemoteVersionsWithSettings_observer_request_completionHandler___block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_6_1(a1);
  *v1 = 134219010;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v3;
  *(v1 + 22) = 2080;
  *(v1 + 24) = "[FPXExtensionContext listRemoteVersionsWithSettings:observer:request:completionHandler:]_block_invoke";
  *(v1 + 32) = 2112;
  *(v1 + 34) = 0;
  *(v1 + 42) = 2112;
  *(v1 + 44) = 0;
  OUTLINED_FUNCTION_23();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x34u);
}

void __89__FPXExtensionContext_listRemoteVersionsWithSettings_observer_request_completionHandler___block_invoke_cold_4(int a1, SEL aSelector)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = NSStringFromSelector(aSelector);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_42();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __68__FPXExtensionContext_spotlightIndexerDidReindexAllSearchableItems___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)getKnownFolderLocations:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

void __72__FPXExtensionContext_shouldConnectExternalDomainWithCompletionHandler___block_invoke_cold_2(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_6_1(a1);
  OUTLINED_FUNCTION_2_0(3.8523e-34, v1, v2, v3);
  OUTLINED_FUNCTION_8(v4, v5);
  OUTLINED_FUNCTION_22(&dword_1AAAE1000, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v6, v7);
}

- (void)enumerateSearchResultForRequest:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

@end