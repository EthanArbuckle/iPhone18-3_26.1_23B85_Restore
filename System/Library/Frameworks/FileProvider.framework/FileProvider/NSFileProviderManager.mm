@interface NSFileProviderManager
+ (BOOL)addDomain:(id)a3 forProviderIdentifier:(id)a4 byImportingDirectoryAtURL:(id)a5 knownFolders:(id)a6 error:(id *)a7;
+ (BOOL)checkDomainsCanBeStored:(BOOL *)a3 onVolumeAtURL:(id)a4 unsupportedReason:(unint64_t *)a5 error:(id *)a6;
+ (BOOL)fileProviderReadyForBackupOrMigrationForSourceURL:(id)a3 error:(id *)a4;
+ (BOOL)writePlaceholderAtURL:(NSURL *)placeholderURL withMetadata:(NSFileProviderItem)metadata error:(NSError *)error;
+ (BOOL)writePlaceholderAtURL:(id)a3 withDictionary:(id)a4 error:(id *)a5;
+ (NSFileProviderManager)legacyDefaultManager;
+ (NSFileProviderManager)managerForDomain:(NSFileProviderDomain *)domain;
+ (NSFileProviderManager)managerWithProviderIdentifier:(id)a3 groupName:(id)a4 domain:(id)a5;
+ (NSURL)placeholderURLForURL:(NSURL *)url;
+ (id)resolvableErrorCodes;
+ (void)_registerNotificationsForProviderIdentifier:(id)a3;
+ (void)addDomain:(id)a3 forProviderIdentifier:(id)a4 byImportingDirectoryAtURL:(id)a5 userAllowedDBDrop:(BOOL)a6 knownFolders:(id)a7 synchronous:(BOOL)a8 completionHandler:(id)a9;
+ (void)addDomain:(id)a3 forProviderIdentifier:(id)a4 persona:(id)a5 completionHandler:(id)a6;
+ (void)getDomainsForProviderIdentifier:(id)a3 completionHandler:(id)a4;
+ (void)getDomainsWithCompletionHandler:(void *)completionHandler;
+ (void)getIdentifierForUserVisibleFileAtURL:(NSURL *)url completionHandler:(void *)completionHandler;
+ (void)importDomain:(NSFileProviderDomain *)domain fromDirectoryAtURL:(NSURL *)url completionHandler:(void *)completionHandler;
+ (void)importDomain:(id)a3 forProviderIdentifier:(id)a4 fromDirectoryAtURL:(id)a5 completionHandler:(id)a6;
+ (void)importDomain:(id)a3 forProviderIdentifier:(id)a4 fromDirectoryAtURL:(id)a5 knownFolders:(id)a6 completionHandler:(id)a7;
+ (void)registerDomainServicer:(id)a3 forDomain:(id)a4;
+ (void)registerRootURL:(id)a3 forDomain:(id)a4;
+ (void)removeAllDomainsForProviderIdentifier:(id)a3 completionHandler:(id)a4;
+ (void)removeDomain:(NSFileProviderDomain *)domain completionHandler:(void *)completionHandler;
+ (void)removeDomain:(NSFileProviderDomain *)domain mode:(NSFileProviderDomainRemovalMode)mode completionHandler:(void *)completionHandler;
+ (void)removeDomain:(id)a3 forProviderIdentifier:(id)a4 completionHandler:(id)a5;
- (BOOL)isErrorSupportedForSignalResolved:(id)a3;
- (BOOL)removeDomain:(id)a3 options:(int64_t)a4 preservedLocation:(id *)a5 error:(id *)a6;
- (NSArray)listAvailableTestingOperationsWithError:(NSError *)error;
- (NSDictionary)runTestingOperations:(NSArray *)operations error:(NSError *)error;
- (NSProgress)globalProgressForKind:(NSProgressFileOperationKind)kind;
- (NSString)providerIdentifier;
- (NSURL)documentStorageURL;
- (NSURL)temporaryDirectoryURLWithError:(NSError *)error;
- (id)_connection;
- (id)_initWithProviderIdentifier:(id)a3 groupName:(id)a4 domain:(id)a5;
- (id)_test_existingProgressForKind:(id)a3;
- (id)description;
- (id)enumeratorForMaterializedItems;
- (id)enumeratorForPendingItems;
- (id)itemIDForIdentifier:(id)a3;
- (id)providerDomainID;
- (id)startObservingGlobalProgressForKind:(id)a3;
- (id)stateDirectoryURLWithError:(id *)a3;
- (void)_cacheProviderInfo;
- (void)_callCompletionHandlers:(id)a3 error:(id)a4;
- (void)_failToSignalPendingChangesWithError:(id)a3 completionHandlersByItemID:(id)a4;
- (void)_signalPendingEnumerators;
- (void)claimKnownFolders:(id)a3 localizedReason:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)deleteSearchableItemsWithSpotlightDomainIdentifiers:(id)a3 indexReason:(int64_t)a4 completionHandler:(id)a5;
- (void)disconnectWithReason:(NSString *)localizedReason options:(NSFileProviderManagerDisconnectionOptions)options completionHandler:(void *)completionHandler;
- (void)evictItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler;
- (void)fetchDomainServicerSynchronously:(BOOL)a3 useOutgoingConnection:(BOOL)a4 completionHandler:(id)a5;
- (void)getDiagnosticAttributesForItems:(id)a3 completionHandler:(id)a4;
- (void)getDomainsWithCompletionHandler:(id)a3;
- (void)getServiceWithName:(NSFileProviderServiceName)serviceName itemIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler;
- (void)getUserVisibleURLForItemIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler;
- (void)ingestFromCacheItemWithIdentifier:(id)a3 requestedFields:(unint64_t)a4 completionHandler:(id)a5;
- (void)lookupRequestingApplicationIdentifier:(id)a3 reason:(id)a4 completionHandler:(id)a5;
- (void)reconnectWithCompletionHandler:(void *)completionHandler;
- (void)registerURLSessionTask:(NSURLSessionTask *)task forItemWithIdentifier:(NSFileProviderItemIdentifier)identifier completionHandler:(void *)completion;
- (void)reimportItemsBelowItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler;
- (void)releaseKnownFolders:(unint64_t)a3 localizedReason:(id)a4 completionHandler:(id)a5;
- (void)removeAllDomainsWithCompletionHandler:(id)a3;
- (void)removeDomain:(id)a3 completionHandler:(id)a4;
- (void)removeDomain:(id)a3 options:(int64_t)a4 completionHandler:(id)a5;
- (void)requestDiagnosticCollectionForItemWithIdentifier:(id)a3 errorReason:(id)a4 completionHandler:(id)a5;
- (void)requestDownloadForItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier requestedRange:(NSRange)rangeToMaterialize completionHandler:(void *)completionHandler;
- (void)requestModificationOfFields:(NSFileProviderItemFields)fields forItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier options:(NSFileProviderModifyItemOptions)options completionHandler:(void *)completionHandler;
- (void)setEjectable:(BOOL)a3 completionHandler:(id)a4;
- (void)signalEnumeratorForContainerItemIdentifier:(NSFileProviderItemIdentifier)containerItemIdentifier completionHandler:(void *)completion;
- (void)signalErrorResolved:(NSError *)error completionHandler:(void *)completionHandler;
- (void)startObservingDownloadProgress;
- (void)startObservingUploadProgress;
- (void)waitForChangesOnItemsBelowItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler;
- (void)waitForSignalDeliveryWithCompletionHandler:(id)a3;
- (void)waitForStabilizationWithMode:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation NSFileProviderManager

- (NSURL)documentStorageURL
{
  v3 = self;
  objc_sync_enter(v3);
  documentStorageURL = v3->_documentStorageURL;
  if (!documentStorageURL)
  {
    [(NSFileProviderManager *)v3 _cacheProviderInfo];
    documentStorageURL = v3->_documentStorageURL;
    if (!documentStorageURL)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:v3 file:@"NSFileProviderManager.m" lineNumber:925 description:{@"%@: documentStorageURL is not set. Extension may be missing %@ key, or current process may be missing necessary entitlements to access the specified container.", objc_opt_class(), @"NSExtensionFileProviderDocumentGroup"}];

      documentStorageURL = v3->_documentStorageURL;
    }
  }

  v5 = documentStorageURL;
  objc_sync_exit(v3);

  return v5;
}

+ (NSFileProviderManager)legacyDefaultManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__NSFileProviderManager_legacyDefaultManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (legacyDefaultManager_onceToken != -1)
  {
    dispatch_once(&legacyDefaultManager_onceToken, block);
  }

  v2 = legacyDefaultManager__defaultManager;

  return v2;
}

- (NSString)providerIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  providerIdentifier = v2->_providerIdentifier;
  if (!providerIdentifier)
  {
    [(NSFileProviderManager *)v2 _cacheProviderInfo];
    providerIdentifier = v2->_providerIdentifier;
  }

  v4 = providerIdentifier;
  objc_sync_exit(v2);

  return v4;
}

void __50__NSFileProviderManager__signalPendingEnumerators__block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) allKeys];
  v15 = v3;
  v5 = [v3 synchronousRemoteObjectProxy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [*(a1 + 32) objectForKeyedSubscript:v10];
        v12 = fp_current_or_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v24 = v10;
          v25 = 2112;
          v26 = v5;
          _os_log_debug_impl(&dword_1AAAE1000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] sending signal for %@ on %@", buf, 0x16u);
        }

        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __50__NSFileProviderManager__signalPendingEnumerators__block_invoke_175;
        v17[3] = &unk_1E793D0B0;
        v17[4] = *(a1 + 40);
        v18 = v11;
        v13 = v11;
        [v5 didChangeItemID:v10 completionHandler:v17];
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_signalPendingEnumerators
{
  v6 = *MEMORY[0x1E69E9840];
  *(a1 + 72);
  OUTLINED_FUNCTION_11_2();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (id)_initWithProviderIdentifier:(id)a3 groupName:(id)a4 domain:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (_initWithProviderIdentifier_groupName_domain__onceToken != -1)
  {
    [NSFileProviderManager _initWithProviderIdentifier:groupName:domain:];
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = [v11 identifier];
  v14 = v13;
  if (v9 | v10)
  {
    [v12 stringWithFormat:@"%@;%@;%@", v9, v10, v13];
  }

  else
  {
    [v12 stringWithFormat:@"%@", v13, v41, v42];
  }
  v15 = ;

  v16 = fileProviderManagerByDomain;
  objc_sync_enter(v16);
  v17 = [fileProviderManagerByDomain objectForKey:v15];
  objc_sync_exit(v16);

  if (!v17)
  {
    v46.receiver = self;
    v46.super_class = NSFileProviderManager;
    v18 = [(NSFileProviderManager *)&v46 init];
    self = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_domain, a5);
      objc_storeStrong(&self->_providerIdentifier, a3);
      objc_storeStrong(&self->_groupName, a4);
      v19 = objc_opt_new();
      presentedFileObserver = self->_presentedFileObserver;
      self->_presentedFileObserver = v19;

      [(_FPFilePresenterObserver *)self->_presentedFileObserver setParentConnection:self];
      [(NSFileProviderManager *)self domainServicerWithCompletionHandler:&__block_literal_global_72];
      v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v22 = dispatch_queue_create("FPM-SignalUpdateQueue", v21);
      signalUpdateQueue = self->_signalUpdateQueue;
      self->_signalUpdateQueue = v22;

      v24 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, self->_signalUpdateQueue);
      signalUpdateSource = self->_signalUpdateSource;
      self->_signalUpdateSource = v24;

      v26 = dispatch_group_create();
      signalUpdateGroup = self->_signalUpdateGroup;
      self->_signalUpdateGroup = v26;

      objc_initWeak(&location, self);
      v28 = self->_signalUpdateSource;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __70__NSFileProviderManager__initWithProviderIdentifier_groupName_domain___block_invoke_3;
      block[3] = &unk_1E7939010;
      objc_copyWeak(&v44, &location);
      v29 = v28;
      v30 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
      dispatch_source_set_event_handler(v29, v30);

      dispatch_resume(self->_signalUpdateSource);
      v31 = [MEMORY[0x1E695DF90] dictionary];
      completionHandlersByItemID = self->_completionHandlersByItemID;
      self->_completionHandlersByItemID = v31;

      v33 = objc_alloc_init(FPProgressUpdater);
      uploadProxy = self->_uploadProxy;
      self->_uploadProxy = v33;

      v35 = objc_alloc_init(FPProgressUpdater);
      downloadProxy = self->_downloadProxy;
      self->_downloadProxy = v35;

      [(FPProgressUpdater *)self->_uploadProxy setProgress:0];
      [(FPProgressUpdater *)self->_downloadProxy setProgress:0];
      objc_destroyWeak(&v44);
      objc_destroyWeak(&location);
    }

    v37 = fileProviderManagerByDomain;
    objc_sync_enter(v37);
    v38 = [fileProviderManagerByDomain objectForKey:v15];
    v17 = v38;
    if (v38)
    {
      v39 = v38;
    }

    else
    {
      [fileProviderManagerByDomain setObject:self forKey:v15];
    }

    objc_sync_exit(v37);
    if (!v17)
    {
      self = self;
      v17 = self;
    }
  }

  return v17;
}

uint64_t __70__NSFileProviderManager__initWithProviderIdentifier_groupName_domain___block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v1 = fileProviderManagerByDomain;
  fileProviderManagerByDomain = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __70__NSFileProviderManager__initWithProviderIdentifier_groupName_domain___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _signalPendingEnumerators];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  providerIdentifier = self->_providerIdentifier;
  return [v3 stringWithFormat:@"<%@:%p %@:%@>", v4, self, providerIdentifier, self->_domain];
}

+ (void)registerDomainServicer:(id)a3 forDomain:(id)a4
{
  v11 = a3;
  v5 = a4;
  if (createCaches_onceToken != -1)
  {
    +[NSFileProviderManager registerDomainServicer:forDomain:];
  }

  v6 = domainServicerByDomain;
  objc_sync_enter(v6);
  v7 = domainServicerByDomain;
  v8 = [v5 identifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"NSFileProviderDomainDefaultIdentifier";
  }

  [v7 setObject:v11 forKey:v10];

  objc_sync_exit(v6);
}

+ (void)registerRootURL:(id)a3 forDomain:(id)a4
{
  v11 = a3;
  v5 = a4;
  if (createCaches_onceToken != -1)
  {
    +[NSFileProviderManager registerDomainServicer:forDomain:];
  }

  v6 = rootURLByDomain;
  objc_sync_enter(v6);
  v7 = rootURLByDomain;
  v8 = [v5 identifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"NSFileProviderDomainDefaultIdentifier";
  }

  [v7 setObject:v11 forKey:v10];

  objc_sync_exit(v6);
}

- (void)fetchDomainServicerSynchronously:(BOOL)a3 useOutgoingConnection:(BOOL)a4 completionHandler:(id)a5
{
  v48 = a4;
  v5 = a3;
  v69 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = self;
  objc_sync_enter(v8);
  if (!v8->_providerIdentifier)
  {
    [(NSFileProviderManager *)v8 _cacheProviderInfo];
  }

  objc_sync_exit(v8);

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(NSFileProviderDomain *)v8->_domain identifier];
  v11 = [v10 fp_obfuscatedFilename];
  v12 = v11;
  v13 = @"NSFileProviderDomainDefaultIdentifier";
  if (v11)
  {
    v13 = v11;
  }

  v14 = [v9 stringWithFormat:@"domain servicer for %@", v13];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__NSFileProviderManager_fetchDomainServicerSynchronously_useOutgoingConnection_completionHandler___block_invoke;
  aBlock[3] = &unk_1E79396E8;
  aBlock[4] = v8;
  v15 = v7;
  v68 = v15;
  v16 = v14;
  v67 = v16;
  v52 = _Block_copy(aBlock);
  if (v8->_providerIdentifier)
  {
    v17 = [MEMORY[0x1E69DF068] sharedManager];
    v49 = [v17 currentPersona];

    v65 = 0;
    v50 = [v49 userPersonaUniqueString];
    v18 = [(NSFileProviderDomain *)v8->_domain personaIdentifier];
    if (v50 == v18)
    {
      v51 = 0;
    }

    else
    {
      v19 = [(NSFileProviderDomain *)v8->_domain personaIdentifier];
      v20 = [v50 isEqualToString:v19];

      if ((v20 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
      {
        goto LABEL_17;
      }

      v64 = 0;
      v21 = [v49 copyCurrentPersonaContextWithError:&v64];
      v22 = v64;
      v23 = v65;
      v65 = v21;

      if (v22)
      {
        v24 = fp_current_or_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [FPSpotlightIndexer _fetchClientStateIfNeeded];
        }
      }

      v25 = [(NSFileProviderDomain *)v8->_domain personaIdentifier];
      v51 = [v49 generateAndRestorePersonaContextWithPersonaUniqueString:v25];

      if (!v51)
      {
LABEL_17:
        v51 = 0;
        goto LABEL_20;
      }

      v18 = fp_current_or_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(NSFileProviderDomain *)v8->_domain personaIdentifier];
        objc_claimAutoreleasedReturnValue();
        [NSFileProviderManager fetchDomainServicerSynchronously:useOutgoingConnection:completionHandler:];
      }
    }

LABEL_20:
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 1;
    v26 = v8;
    objc_sync_enter(v26);
    v27 = v26->_remoteFileProvider;
    if (v27)
    {
      v28 = v27;
      isIncomingConnection = v26->_isIncomingConnection;
    }

    else
    {
      if (createCaches_onceToken != -1)
      {
        [NSFileProviderManager fetchDomainServicerSynchronously:useOutgoingConnection:completionHandler:];
      }

      v30 = [(NSFileProviderDomain *)v8->_domain identifier];
      v31 = v30;
      v32 = @"NSFileProviderDomainDefaultIdentifier";
      if (v30)
      {
        v32 = v30;
      }

      v33 = v32;

      v34 = domainServicerByDomain;
      objc_sync_enter(v34);
      v28 = [domainServicerByDomain objectForKey:v33];
      objc_sync_exit(v34);

      isIncomingConnection = 1;
    }

    objc_sync_exit(v26);

    if (v28)
    {
      if ((isIncomingConnection & v48 & 1) == 0)
      {
        if (v15)
        {
          (*(v15 + 2))(v15, v28);
        }

        goto LABEL_41;
      }

      v35 = fp_current_or_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1AAAE1000, v35, OS_LOG_TYPE_INFO, "[INFO] forcing creation of a new connection to the daemon", buf, 2u);
      }

      *(v61 + 24) = 0;
    }

    v36 = [(NSFileProviderManager *)v26 _connection];
    v37 = v36;
    if (v5)
    {
      [v36 synchronousRemoteObjectProxyWithErrorHandler:v52];
    }

    else
    {
      [v36 remoteObjectProxyWithErrorHandler:v52];
    }
    v38 = ;
    v39 = v16;
    v40 = MEMORY[0x1E696AEC0];
    providerIdentifier = v8->_providerIdentifier;
    v42 = [(NSFileProviderDomain *)v8->_domain identifier];
    v43 = v42;
    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = @"NSFileProviderDomainDefaultIdentifier";
    }

    v45 = [v40 fp_providerDomainIDFromProviderID:providerIdentifier domainIdentifier:v44];

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __98__NSFileProviderManager_fetchDomainServicerSynchronously_useOutgoingConnection_completionHandler___block_invoke_145;
    v53[3] = &unk_1E793E2E8;
    v53[4] = v26;
    v57 = &v60;
    v16 = v39;
    v54 = v39;
    v46 = v37;
    v55 = v46;
    v58 = v48;
    v56 = v15;
    [(NSFileProviderManager *)v26 _fetchDomainServicer:v38 forProviderDomainID:v45 handler:v53];

LABEL_41:
    _Block_object_dispose(&v60, 8);

    _FPRestorePersona(&v65);
    goto LABEL_42;
  }

  v51 = FPProviderNotRegistered(0, 0);
  v52[2](v52, v51);
LABEL_42:

  v47 = *MEMORY[0x1E69E9840];
}

void __98__NSFileProviderManager_fetchDomainServicerSynchronously_useOutgoingConnection_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __98__NSFileProviderManager_fetchDomainServicerSynchronously_useOutgoingConnection_completionHandler___block_invoke_cold_1(a1, v4, v5, v6, v7, v8, v9, v10);
  }

  if (*(a1 + 48))
  {
    v11 = [FPXPCAutomaticErrorProxy alloc];
    v12 = MEMORY[0x1E696AEC0];
    v13 = *(a1 + 40);
    v14 = [v3 fp_prettyDescription];
    v15 = [v12 stringWithFormat:@"%@ (%@)", v13, v14];
    v16 = [(FPXPCAutomaticErrorProxy *)v11 initWithConnection:0 protocol:&unk_1F1FF3948 orError:v3 name:v15 requestPid:0];

    [(FPXPCAutomaticErrorProxy *)v16 setGenerateSignposts:1];
    (*(*(a1 + 48) + 16))();
  }
}

void __98__NSFileProviderManager_fetchDomainServicerSynchronously_useOutgoingConnection_completionHandler___block_invoke_145(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v11 = *(*(a1 + 32) + 56);
    v12 = fp_current_or_default_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v13)
      {
        __98__NSFileProviderManager_fetchDomainServicerSynchronously_useOutgoingConnection_completionHandler___block_invoke_145_cold_1(a1 + 32, v10);
      }
    }

    else if (v13)
    {
      __98__NSFileProviderManager_fetchDomainServicerSynchronously_useOutgoingConnection_completionHandler___block_invoke_145_cold_2(v10);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v14 = [[FPXPCAutomaticErrorProxy alloc] initWithConnection:v7 protocol:&unk_1F1FF3948 orError:v10 name:*(a1 + 40) requestPid:0];
  [(FPXPCAutomaticErrorProxy *)v14 setGenerateSignposts:1];
  v15 = v14;
  v16 = a1 + 32;
  v17 = *(a1 + 32);
  objc_sync_enter(v17);
  v18 = *(a1 + 32);
  v19 = *(v18 + 16);
  if (v19)
  {
    if (*(v18 + 24) != 1 || (v20 = v15, (*(a1 + 72) & 1) == 0))
    {
      v20 = v19;
    }
  }

  else
  {
    if (*(v18 + 32) != *(a1 + 48))
    {
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __98__NSFileProviderManager_fetchDomainServicerSynchronously_useOutgoingConnection_completionHandler___block_invoke_145_cold_3(a1 + 32, (a1 + 48));
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }

    v20 = v15;
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      objc_storeStrong((*v16 + 16), v14);
      *(*v16 + 24) = 0;
      v20 = v15;
    }
  }

  if (v8)
  {
    [NSFileProviderManager _registerNotificationsForProviderIdentifier:v8];
  }

  objc_sync_exit(v17);

  [(FPXPCAutomaticErrorProxy *)v20 _t_setFilePresenterObserver:*(*(a1 + 32) + 40)];
  v22 = *(a1 + 56);
  if (v22)
  {
    (*(v22 + 16))(v22, v20);
  }
}

+ (void)_registerNotificationsForProviderIdentifier:(id)a3
{
  v4 = a3;
  if (_registerNotificationsForProviderIdentifier__onceToken != -1)
  {
    +[NSFileProviderManager _registerNotificationsForProviderIdentifier:];
  }

  v5 = a1;
  objc_sync_enter(v5);
  if (([_registerNotificationsForProviderIdentifier__registeredNotificationDomains containsObject:v4] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.pendingSetChanged", v4];
    out_token = 0;
    v7 = [v6 fp_libnotifyPerUserNotificationName];
    v8 = [v7 UTF8String];
    v9 = _registerNotificationsForProviderIdentifier__setNotificationQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __69__NSFileProviderManager__registerNotificationsForProviderIdentifier___block_invoke_2;
    handler[3] = &unk_1E793E310;
    v10 = v4;
    v19 = v10;
    notify_register_dispatch(v8, &out_token, v9, handler);

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.materializedSetChanged", v10];
    v12 = [v11 fp_libnotifyPerUserNotificationName];
    v13 = [v12 UTF8String];
    v14 = _registerNotificationsForProviderIdentifier__setNotificationQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __69__NSFileProviderManager__registerNotificationsForProviderIdentifier___block_invoke_3;
    v16[3] = &unk_1E793E310;
    v15 = v10;
    v17 = v15;
    notify_register_dispatch(v13, &out_token, v14, v16);

    [_registerNotificationsForProviderIdentifier__registeredNotificationDomains addObject:v15];
  }

  objc_sync_exit(v5);
}

void __69__NSFileProviderManager__registerNotificationsForProviderIdentifier___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _registerNotificationsForProviderIdentifier__registeredNotificationDomains;
  _registerNotificationsForProviderIdentifier__registeredNotificationDomains = v0;

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("set notifications", v4);
  v3 = _registerNotificationsForProviderIdentifier__setNotificationQueue;
  _registerNotificationsForProviderIdentifier__setNotificationQueue = v2;
}

void __69__NSFileProviderManager__registerNotificationsForProviderIdentifier___block_invoke_2(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = [*(a1 + 32) fp_toDomainIdentifier];
  [v3 postNotificationName:@"NSFileProviderPendingSetDidChange" object:v2];
}

void __69__NSFileProviderManager__registerNotificationsForProviderIdentifier___block_invoke_3(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = [*(a1 + 32) fp_toDomainIdentifier];
  [v3 postNotificationName:@"NSFileProviderMaterializedSetDidChange" object:v2];
}

- (id)_connection
{
  v2 = self;
  objc_sync_enter(v2);
  connection = v2->_connection;
  if (connection)
  {
    v4 = connection;
  }

  else
  {
    v5 = objc_opt_new();
    v6 = [v5 newXPCConnection];

    objc_initWeak(&location, v2);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __36__NSFileProviderManager__connection__block_invoke;
    v16[3] = &unk_1E7939010;
    objc_copyWeak(&v17, &location);
    [v6 setInvalidationHandler:v16];
    objc_initWeak(&from, v6);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __36__NSFileProviderManager__connection__block_invoke_161;
    v13 = &unk_1E7939010;
    objc_copyWeak(&v14, &from);
    [v6 setInterruptionHandler:&v10];
    [v6 resume];
    v7 = v2->_connection;
    v2->_connection = v6;
    v8 = v6;

    v4 = v2->_connection;
    objc_destroyWeak(&v14);
    objc_destroyWeak(&from);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v2);

  return v4;
}

void __36__NSFileProviderManager__connection__block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1AAAE1000, v2, OS_LOG_TYPE_INFO, "[INFO] file provider manager connection invalidated", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[4];
    v5[4] = 0;

    v7 = v5[2];
    v5[2] = 0;

    objc_sync_exit(v5);
  }
}

void __36__NSFileProviderManager__connection__block_invoke_161(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AAAE1000, v2, OS_LOG_TYPE_INFO, "[INFO] file provider manager connection interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

uint64_t __45__NSFileProviderManager_legacyDefaultManager__block_invoke(uint64_t a1)
{
  legacyDefaultManager__defaultManager = [objc_alloc(*(a1 + 32)) _initWithProviderIdentifier:0 domain:0];

  return MEMORY[0x1EEE66BB8]();
}

- (id)itemIDForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [FPItemID alloc];
  v6 = [(NSFileProviderManager *)self providerIdentifier];
  v7 = [(NSFileProviderDomain *)self->_domain identifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"NSFileProviderDomainDefaultIdentifier";
  }

  v10 = [(FPItemID *)v5 initWithProviderID:v6 domainIdentifier:v9 itemIdentifier:v4];

  return v10;
}

- (id)providerDomainID
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSFileProviderManager *)self providerIdentifier];
  v5 = [(NSFileProviderDomain *)self->_domain identifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"NSFileProviderDomainDefaultIdentifier";
  }

  v8 = [v3 fp_providerDomainIDFromProviderID:v4 domainIdentifier:v7];

  return v8;
}

- (void)signalEnumeratorForContainerItemIdentifier:(NSFileProviderItemIdentifier)containerItemIdentifier completionHandler:(void *)completion
{
  v6 = containerItemIdentifier;
  v7 = completion;
  v8 = [(NSFileProviderManager *)self itemIDForIdentifier:v6];
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [NSFileProviderManager signalEnumeratorForContainerItemIdentifier:completionHandler:];
  }

  v10 = self;
  objc_sync_enter(v10);
  v11 = [(NSMutableDictionary *)v10->_completionHandlersByItemID objectForKeyedSubscript:v8];
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DF70] array];
    [(NSMutableDictionary *)v10->_completionHandlersByItemID setObject:v11 forKeyedSubscript:v8];
  }

  dispatch_group_enter(v10->_signalUpdateGroup);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __86__NSFileProviderManager_signalEnumeratorForContainerItemIdentifier_completionHandler___block_invoke;
  v17 = &unk_1E7939170;
  v18 = v10;
  v12 = v7;
  v19 = v12;
  v13 = _Block_copy(&v14);
  [v11 addObject:{v13, v14, v15, v16, v17, v18}];

  objc_sync_exit(v10);
  dispatch_source_merge_data(v10->_signalUpdateSource, 1uLL);
}

void __86__NSFileProviderManager_signalEnumeratorForContainerItemIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 32) + 96);

  dispatch_group_leave(v3);
}

- (void)waitForSignalDeliveryWithCompletionHandler:(id)a3
{
  v4 = a3;
  signalUpdateGroup = self->_signalUpdateGroup;
  signalUpdateQueue = self->_signalUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__NSFileProviderManager_waitForSignalDeliveryWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7939EA8;
  v9 = v4;
  v7 = v4;
  dispatch_group_notify(signalUpdateGroup, signalUpdateQueue, block);
}

- (void)_callCompletionHandlers:(id)a3 error:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_signalUpdateQueue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v14 + 1) + 8 * v12) + 16))(*(*(&v14 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_failToSignalPendingChangesWithError:(id)a3 completionHandlersByItemID:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_signalUpdateQueue);
  if (!v6)
  {
    [NSFileProviderManager _failToSignalPendingChangesWithError:completionHandlersByItemID:];
  }

  v8 = [v7 allKeys];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v7 objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v12)];
        [(NSFileProviderManager *)self _callCompletionHandlers:v13 error:v6];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)registerURLSessionTask:(NSURLSessionTask *)task forItemWithIdentifier:(NSFileProviderItemIdentifier)identifier completionHandler:(void *)completion
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = task;
  v10 = identifier;
  v11 = completion;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [NSFileProviderManager registerURLSessionTask:forItemWithIdentifier:completionHandler:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [NSFileProviderManager registerURLSessionTask:forItemWithIdentifier:completionHandler:];
LABEL_3:
  v12 = [(NSURLSessionTask *)v9 state];
  if (v12 != 1)
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(a2);
      *buf = 138413314;
      v27 = v14;
      v28 = 2048;
      v29 = 1;
      v30 = 2112;
      v31 = v9;
      v32 = 2048;
      v33 = [(NSURLSessionTask *)v9 state];
      v34 = 2112;
      v35 = objc_opt_class();
      v15 = v35;
      _os_log_impl(&dword_1AAAE1000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ must be called with a task in suspended (%li) state, but task %@ has state %li. %@ will suspend the task and resume it again to work around this. To avoid this warning, resume the task from the completion handler.", buf, 0x34u);
    }
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __88__NSFileProviderManager_registerURLSessionTask_forItemWithIdentifier_completionHandler___block_invoke;
  v20[3] = &unk_1E793E388;
  v20[4] = self;
  v21 = v10;
  v25 = v12 != 1;
  v23 = v11;
  v24 = a2;
  v22 = v9;
  v16 = v11;
  v17 = v9;
  v18 = v10;
  [(NSFileProviderManager *)self domainServicerWithCompletionHandler:v20];

  v19 = *MEMORY[0x1E69E9840];
}

void __88__NSFileProviderManager_registerURLSessionTask_forItemWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 itemIDForIdentifier:v4];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__NSFileProviderManager_registerURLSessionTask_forItemWithIdentifier_completionHandler___block_invoke_2;
  v13[3] = &unk_1E793E360;
  v7 = *(a1 + 48);
  v17 = *(a1 + 72);
  v16 = *(a1 + 64);
  v12 = *(a1 + 32);
  v8 = v12.i64[1];
  v9 = *(a1 + 56);
  v10.i64[0] = v7;
  v10.i64[1] = v9;
  v11 = vzip2q_s64(v12, v10);
  v10.i64[1] = v12.i64[0];
  v14 = v10;
  v15 = v11;
  [v5 resolveItemID:v6 completionHandler:v13];
}

void __88__NSFileProviderManager_registerURLSessionTask_forItemWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      if ([*(a1 + 32) state] == 1)
      {
        [*(a1 + 32) set_publishingURL:v5];
      }

      else
      {
        if ((*(a1 + 72) & 1) == 0)
        {
          v10 = fp_current_or_default_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = NSStringFromSelector(*(a1 + 64));
            v12 = *(a1 + 32);
            v13 = [v12 state];
            v14 = *(a1 + 40);
            *v18 = 138413314;
            *&v18[4] = v11;
            *&v18[12] = 2048;
            *&v18[14] = 1;
            *&v18[22] = 2112;
            v19 = v12;
            *v20 = 2048;
            *&v20[2] = v13;
            *&v20[10] = 2112;
            *&v20[12] = objc_opt_class();
            v15 = *&v20[12];
            _os_log_impl(&dword_1AAAE1000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ must be called with a task in suspended (%li) state, but task %@ has state %li. %@ will suspend the task and resume it again to work around this. To avoid this warning, resume the task from the completion handler.", v18, 0x34u);
          }
        }

        [*(a1 + 32) suspend];
        [*(a1 + 32) set_publishingURL:v5];
        [*(a1 + 32) resume];
      }
    }
  }

  else if (v6)
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __88__NSFileProviderManager_registerURLSessionTask_forItemWithIdentifier_completionHandler___block_invoke_2_cold_1(a1, v7);
    }
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    (*(v16 + 16))(v16, v7);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)deleteSearchableItemsWithSpotlightDomainIdentifiers:(id)a3 indexReason:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __107__NSFileProviderManager_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke;
  v12[3] = &unk_1E793E3B0;
  v13 = v8;
  v14 = self;
  v15 = v9;
  v16 = a4;
  v10 = v9;
  v11 = v8;
  [(NSFileProviderManager *)self domainServicerWithCompletionHandler:v12];
}

void __107__NSFileProviderManager_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke(void *a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __107__NSFileProviderManager_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7939170;
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[7];
  v6[4] = a1[5];
  v7 = v4;
  [a2 deleteSearchableItemsWithSpotlightDomainIdentifiers:v3 indexReason:v5 completionHandler:v6];
}

+ (BOOL)writePlaceholderAtURL:(id)a3 withDictionary:(id)a4 error:(id *)a5
{
  v7 = a3;
  v14 = 0;
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:a4 format:200 options:0 error:&v14];
  v9 = v14;
  v10 = v9;
  if (v9)
  {
    NSLog(&cfstr_CouldNotSerial.isa, v9);
    if (a5)
    {
      v11 = v10;
      v12 = 0;
      *a5 = v10;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [v8 writeToURL:v7 options:1 error:a5];
  }

  return v12;
}

+ (BOOL)writePlaceholderAtURL:(NSURL *)placeholderURL withMetadata:(NSFileProviderItem)metadata error:(NSError *)error
{
  v8 = placeholderURL;
  v9 = metadata;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[NSFileProviderManager writePlaceholderAtURL:withMetadata:error:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  +[NSFileProviderManager writePlaceholderAtURL:withMetadata:error:];
LABEL_3:
  if (!_CFURLIsItemPromiseAtURL())
  {
    +[NSFileProviderManager writePlaceholderAtURL:withMetadata:error:];
  }

  v11 = objc_opt_new();
  v12 = [v10 filename];
  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E695DC30]];

  if (objc_opt_respondsToSelector())
  {
    v13 = [v10 contentType];
    v14 = [v13 identifier];
    [v11 setObject:v14 forKeyedSubscript:*MEMORY[0x1E695DC68]];
  }

  else
  {
    v15 = *MEMORY[0x1E695DC68];
    v13 = [v10 typeIdentifier];
    [v11 setObject:v13 forKeyedSubscript:v15];
  }

  v16 = [v10 documentSize];
  [v11 setObject:v16 forKeyedSubscript:*MEMORY[0x1E695DB50]];

  [v11 setObject:*MEMORY[0x1E695DB30] forKeyedSubscript:*MEMORY[0x1E695DB20]];
  v17 = [a1 writePlaceholderAtURL:v8 withDictionary:v11 error:error];

  return v17;
}

+ (NSURL)placeholderURLForURL:(NSURL *)url
{
  v3 = url;
  if (_CFURLIsItemPromiseAtURL())
  {
    v4 = v3;
  }

  else
  {
    v4 = _CFURLCopyPromiseURLOfLogicalURL();
  }

  v5 = v4;

  return v5;
}

- (void)setEjectable:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__NSFileProviderManager_setEjectable_completionHandler___block_invoke;
  v8[3] = &unk_1E793E3D8;
  v10 = a3;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(NSFileProviderManager *)self domainServicerWithCompletionHandler:v8];
}

void __56__NSFileProviderManager_setEjectable_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__NSFileProviderManager_setEjectable_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7939170;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 setDomainEjectable:v3 completionHandler:v5];
}

- (void)_cacheProviderInfo
{
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v1 = v0;
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __43__NSFileProviderManager__cacheProviderInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 bundleIdentifier];
  v6 = [v4 bundleIdentifier];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)stateDirectoryURLWithError:(id *)a3
{
  if (createCaches_onceToken != -1)
  {
    +[NSFileProviderManager registerDomainServicer:forDomain:];
  }

  v5 = [(NSFileProviderDomain *)self->_domain identifier];
  v6 = v5;
  v7 = @"NSFileProviderDomainDefaultIdentifier";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = stateURLByDomain;
  objc_sync_enter(v9);
  v10 = [stateURLByDomain objectForKey:v8];
  objc_sync_exit(v9);

  if (!v10)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__28;
    v31 = __Block_byref_object_dispose__28;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__28;
    v25 = __Block_byref_object_dispose__28;
    v26 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __52__NSFileProviderManager_stateDirectoryURLWithError___block_invoke;
    v17[3] = &unk_1E793E448;
    v11 = v8;
    v18 = v11;
    v19 = &v27;
    v20 = &v21;
    [(NSFileProviderManager *)self fetchDomainServicerSynchronously:1 useOutgoingConnection:0 completionHandler:v17];
    if (v28[5])
    {
LABEL_7:
      v12 = stateURLByDomain;
      objc_sync_enter(v12);
      [stateURLByDomain setObject:v28[5] forKey:v11];
      objc_sync_exit(v12);

      v13 = v28[5];
      goto LABEL_10;
    }

    if (v22[5])
    {
      v13 = 0;
    }

    else
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:0];
      v16 = v22[5];
      v22[5] = v15;

      v13 = v28[5];
      if (v13)
      {
        goto LABEL_7;
      }
    }

LABEL_10:
    if (a3 && !v13)
    {
      *a3 = v22[5];
      v13 = v28[5];
    }

    v10 = v13;

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);
  }

  return v10;
}

void __52__NSFileProviderManager_stateDirectoryURLWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 synchronousRemoteObjectProxy];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__NSFileProviderManager_stateDirectoryURLWithError___block_invoke_2;
  v4[3] = &unk_1E793E420;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 stateDirectoryWithCompletionHandler:v4];
}

void __52__NSFileProviderManager_stateDirectoryURLWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v3 = a3;
  v6 = a3;
  v7 = [a2 url];
  if (v7)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __52__NSFileProviderManager_stateDirectoryURLWithError___block_invoke_2_cold_1(v7, a1);
    }

    v9 = 40;
    v3 = v7;
  }

  else
  {
    v9 = 48;
  }

  objc_storeStrong((*(*(a1 + v9) + 8) + 40), v3);
}

- (NSURL)temporaryDirectoryURLWithError:(NSError *)error
{
  v75 = *MEMORY[0x1E69E9840];
  if (createCaches_onceToken != -1)
  {
    +[NSFileProviderManager registerDomainServicer:forDomain:];
  }

  v5 = [(NSFileProviderDomain *)self->_domain identifier];
  v6 = v5;
  v7 = @"NSFileProviderDomainDefaultIdentifier";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = temporaryURLByDomain;
  objc_sync_enter(v9);
  v10 = [temporaryURLByDomain objectForKey:v8];
  if (!v10)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = v10;
    getpid();
    v15 = [(NSError *)v14 path];
    v16 = [v15 fileSystemRepresentation];
    v17 = (*MEMORY[0x1E69E9BD0] | *MEMORY[0x1E69E9BC8]);
    v50 = v16;
    v18 = sandbox_check();

    if (!v18)
    {
      v41 = v14;
      v12 = 0;
      goto LABEL_13;
    }

    [temporaryURLByDomain removeObjectForKey:{v8, v50}];
    if ([cachedDirectoriesWithSecurityScope containsObject:v14])
    {
      [(NSError *)v14 stopAccessingSecurityScopedResource];
      [cachedDirectoriesWithSecurityScope removeObject:v14];
    }

LABEL_12:
    v12 = 1;
LABEL_13:

    v13 = v10;
    goto LABEL_14;
  }

  if (error)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    *error = v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

LABEL_14:

  objc_sync_exit(v9);
  if (!v12)
  {
    goto LABEL_52;
  }

  v19 = [MEMORY[0x1E69DF068] sharedManager];
  v52 = [v19 currentPersona];

  v68 = 0;
  v20 = [v52 userPersonaUniqueString];
  v21 = [(NSFileProviderDomain *)self->_domain personaIdentifier];
  v22 = v21;
  if (v20 == v21)
  {

LABEL_27:
    v51 = 0;
    goto LABEL_28;
  }

  v23 = [(NSFileProviderDomain *)self->_domain personaIdentifier];
  v24 = [v20 isEqualToString:v23];

  if ((v24 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_27;
  }

  v67 = 0;
  v25 = [v52 copyCurrentPersonaContextWithError:&v67];
  v26 = v67;
  v27 = v68;
  v68 = v25;

  if (v26)
  {
    v28 = fp_current_or_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v29 = [(NSFileProviderDomain *)self->_domain personaIdentifier];
  v51 = [v52 generateAndRestorePersonaContextWithPersonaUniqueString:v29];

  if (!v51)
  {
    goto LABEL_27;
  }

  v30 = fp_current_or_default_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [(NSFileProviderDomain *)self->_domain personaIdentifier];
    objc_claimAutoreleasedReturnValue();
    [NSFileProviderManager fetchDomainServicerSynchronously:useOutgoingConnection:completionHandler:];
  }

LABEL_28:
  v31 = [MEMORY[0x1E696AC08] defaultManager];
  v32 = [v31 temporaryDirectory];

  v66 = 0;
  v33 = *MEMORY[0x1E695DD70];
  [v32 getResourceValue:&v66 forKey:*MEMORY[0x1E695DD70] error:0];
  v34 = v66;
  v35 = rootURLByDomain;
  objc_sync_enter(v35);
  v36 = [rootURLByDomain objectForKey:v8];
  objc_sync_exit(v35);

  if (!v34 || !v36)
  {
LABEL_35:
    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = __Block_byref_object_copy__28;
    v73 = __Block_byref_object_dispose__28;
    v74 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__28;
    v63 = __Block_byref_object_dispose__28;
    v64 = 0;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __56__NSFileProviderManager_temporaryDirectoryURLWithError___block_invoke;
    v53[3] = &unk_1E793E498;
    v54 = v34;
    v55 = v32;
    v40 = v8;
    v56 = v40;
    v57 = &v69;
    v58 = &v59;
    [(NSFileProviderManager *)self fetchDomainServicerSynchronously:1 useOutgoingConnection:0 completionHandler:v53];
    if (!v70[5])
    {
      if (v60[5])
      {
        if (!v36)
        {
          goto LABEL_45;
        }

LABEL_42:
        v44 = fp_current_or_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          [v60[5] fp_prettyDescription];
          objc_claimAutoreleasedReturnValue();
          [NSFileProviderManager temporaryDirectoryURLWithError:];
        }

        goto LABEL_45;
      }

      v42 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:0];
      v43 = v60[5];
      v60[5] = v42;

      if (v70[5] == 0 && v36 != 0)
      {
        goto LABEL_42;
      }
    }

LABEL_45:
    v45 = temporaryURLByDomain;
    objc_sync_enter(v45);
    v46 = v70[5];
    if (!v46)
    {
      v46 = v60[5];
    }

    [temporaryURLByDomain setObject:v46 forKey:v40];
    objc_sync_exit(v45);

    v47 = v70[5];
    if (error && !v47)
    {
      *error = v60[5];
      v47 = v70[5];
    }

    v13 = v47;

    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(&v69, 8);

    goto LABEL_51;
  }

  v65 = 0;
  [v36 getResourceValue:&v65 forKey:v33 error:0];
  v37 = v65;
  if (![v34 isEqual:v37])
  {

    goto LABEL_35;
  }

  v38 = fp_current_or_default_log();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    [v32 fp_shortDescription];
    objc_claimAutoreleasedReturnValue();
    [(__CFString *)v8 fp_obfuscatedFilename];
    objc_claimAutoreleasedReturnValue();
    [NSFileProviderManager temporaryDirectoryURLWithError:];
  }

  v39 = temporaryURLByDomain;
  objc_sync_enter(v39);
  [temporaryURLByDomain setObject:v32 forKey:v8];
  objc_sync_exit(v39);

  v13 = v32;
LABEL_51:

  _FPRestorePersona(&v68);
LABEL_52:

  v48 = *MEMORY[0x1E69E9840];

  return v13;
}

void __56__NSFileProviderManager_temporaryDirectoryURLWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 synchronousRemoteObjectProxy];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__NSFileProviderManager_temporaryDirectoryURLWithError___block_invoke_2;
  v4[3] = &unk_1E793E470;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v3 temporaryDirectoryWithCompletionHandler:v4];
}

void __56__NSFileProviderManager_temporaryDirectoryURLWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 url];
  v18 = 0;
  [v7 getResourceValue:&v18 forKey:*MEMORY[0x1E695DD70] error:0];
  v8 = v18;
  v9 = *(a1 + 32);
  if (v9 && [v9 isEqual:v8])
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __56__NSFileProviderManager_temporaryDirectoryURLWithError___block_invoke_2_cold_1(a1);
    }

LABEL_14:

    v14 = *(a1 + 40);
    v13 = 56;
    goto LABEL_16;
  }

  if (!v7)
  {
    if (![v6 fp_isFeatureUnsupportedError])
    {
      v13 = 64;
      v14 = v6;
      goto LABEL_16;
    }

    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __56__NSFileProviderManager_temporaryDirectoryURLWithError___block_invoke_2_cold_3(a1);
    }

    goto LABEL_14;
  }

  if ([v7 startAccessingSecurityScopedResource])
  {
    v11 = temporaryURLByDomain;
    objc_sync_enter(v11);
    [cachedDirectoriesWithSecurityScope addObject:v7];
    objc_sync_exit(v11);
  }

  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __56__NSFileProviderManager_temporaryDirectoryURLWithError___block_invoke_2_cold_2(v7, a1);
  }

  v13 = 56;
  v14 = v7;
LABEL_16:
  v15 = *(*(a1 + v13) + 8);
  v16 = v14;
  v17 = *(v15 + 40);
  *(v15 + 40) = v16;
}

+ (id)resolvableErrorCodes
{
  if (resolvableErrorCodes_onceToken != -1)
  {
    +[NSFileProviderManager resolvableErrorCodes];
  }

  v3 = resolvableErrorCodes__resolvableErrorCodes;

  return v3;
}

void __45__NSFileProviderManager_resolvableErrorCodes__block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v8 = [MEMORY[0x1E696AD98] numberWithLong:-1000];
  v1 = [MEMORY[0x1E696AD98] numberWithLong:-1004];
  v2 = [MEMORY[0x1E696AD98] numberWithLong:-1003];
  v3 = [MEMORY[0x1E696AD98] numberWithLong:-2005];
  v4 = [MEMORY[0x1E696AD98] numberWithLong:-2010];
  v5 = [MEMORY[0x1E696AD98] numberWithLong:-5009];
  v6 = [v0 setWithObjects:{v8, v1, v2, v3, v4, v5, 0}];
  v7 = resolvableErrorCodes__resolvableErrorCodes;
  resolvableErrorCodes__resolvableErrorCodes = v6;
}

- (BOOL)isErrorSupportedForSignalResolved:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"FPResolveErrorItemIdentifierKey"];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 domain];
    if ([v7 isEqualToString:@"NSFileProviderErrorDomain"])
    {
      v8 = +[NSFileProviderManager resolvableErrorCodes];
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "code")}];
      v6 = [v8 containsObject:v9];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)signalErrorResolved:(NSError *)error completionHandler:(void *)completionHandler
{
  v6 = error;
  v7 = completionHandler;
  v8 = [(NSFileProviderManager *)self isErrorSupportedForSignalResolved:v6];
  v9 = fp_current_or_default_log();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [NSFileProviderManager signalErrorResolved:v6 completionHandler:?];
    }

    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v18 = [(NSError *)v6 code]== -1000;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__NSFileProviderManager_signalErrorResolved_completionHandler___block_invoke;
    v12[3] = &unk_1E793E4E8;
    v16 = v17;
    v13 = v6;
    v14 = self;
    v15 = v7;
    [(NSFileProviderManager *)self fetchDomainServicerSynchronously:0 useOutgoingConnection:0 completionHandler:v12];

    _Block_object_dispose(v17, 8);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NSFileProviderManager signalErrorResolved:v6 completionHandler:?];
    }

    v11 = FPNotSupportedError();
    (*(v7 + 2))(v7, v11);
  }
}

void __63__NSFileProviderManager_signalErrorResolved_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__NSFileProviderManager_signalErrorResolved_completionHandler___block_invoke_2;
  v7[3] = &unk_1E793E4C0;
  v4 = *(a1 + 32);
  v7[4] = *(a1 + 40);
  v6 = *(a1 + 48);
  v5 = v6;
  v8 = v6;
  [v3 signalErrorResolved:v4 completionHandler:v7];
}

void __63__NSFileProviderManager_signalErrorResolved_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 || *(*(*(a1 + 48) + 8) + 24) != 1)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__NSFileProviderManager_signalErrorResolved_completionHandler___block_invoke_3;
    v5[3] = &unk_1E7939170;
    v5[4] = v4;
    v6 = *(a1 + 40);
    [v4 signalEnumeratorForContainerItemIdentifier:@"NSFileProviderWorkingSetContainerItemIdentifier" completionHandler:v5];
  }
}

- (void)getUserVisibleURLForItemIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = itemIdentifier;
  v8 = [FPItemID alloc];
  providerIdentifier = self->_providerIdentifier;
  v10 = [(NSFileProviderDomain *)self->_domain identifier];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"NSFileProviderDomainDefaultIdentifier";
  }

  v13 = [(FPItemID *)v8 initWithProviderID:providerIdentifier domainIdentifier:v12 itemIdentifier:v7];

  v14 = +[FPItemManager defaultManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__NSFileProviderManager_getUserVisibleURLForItemIdentifier_completionHandler___block_invoke;
  v16[3] = &unk_1E793A1E0;
  v16[4] = self;
  v17 = v6;
  v15 = v6;
  [v14 fetchURLForItemID:v13 completionHandler:v16];
}

+ (void)getIdentifierForUserVisibleFileAtURL:(NSURL *)url completionHandler:(void *)completionHandler
{
  v5 = url;
  v6 = completionHandler;
  v7 = +[FPDaemonConnection sharedConnectionProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__NSFileProviderManager_getIdentifierForUserVisibleFileAtURL_completionHandler___block_invoke;
  v10[3] = &unk_1E793E510;
  v11 = v5;
  v12 = v6;
  v8 = v5;
  v9 = v6;
  [v7 providerItemIDForURL:v8 completionHandler:v10];
}

void __80__NSFileProviderManager_getIdentifierForUserVisibleFileAtURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v9)
  {
    v7 = [v9 identifier];
    v8 = [v9 domainIdentifier];
    (*(v6 + 16))(v6, v7, v8, v5);

LABEL_3:
    goto LABEL_6;
  }

  if (!v5)
  {
    v7 = FPItemNotFoundErrorAtURL(*(a1 + 32));
    (*(v6 + 16))(v6, 0, 0, v7);
    goto LABEL_3;
  }

  (*(v6 + 16))(*(a1 + 40), 0, 0, v5);
LABEL_6:
}

+ (BOOL)checkDomainsCanBeStored:(BOOL *)a3 onVolumeAtURL:(id)a4 unsupportedReason:(unint64_t *)a5 error:(id *)a6
{
  v9 = a4;
  if (FPFeatureFlagEbihilIsEnabled())
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__28;
    v18 = __Block_byref_object_dispose__28;
    v19 = 0;
    v10 = +[FPDaemonConnection synchronousSharedConnectionProxy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87__NSFileProviderManager_checkDomainsCanBeStored_onVolumeAtURL_unsupportedReason_error___block_invoke;
    v13[3] = &unk_1E793E538;
    v13[4] = &v24;
    v13[5] = &v20;
    v13[6] = &v14;
    [v10 checkLocationEligibilityForDomain:v9 completionHandler:v13];
    if (a3)
    {
      *a3 = *(v25 + 24);
    }

    if (a5)
    {
      *a5 = v21[3];
    }

    if (a6)
    {
      *a6 = v15[5];
    }

    v11 = v15[5] == 0;

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v24, 8);
  }

  else if (a6)
  {
    FPNotSupportedError();
    *a6 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __87__NSFileProviderManager_checkDomainsCanBeStored_onVolumeAtURL_unsupportedReason_error___block_invoke(void *a1, char a2, uint64_t a3, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

+ (void)removeDomain:(NSFileProviderDomain *)domain mode:(NSFileProviderDomainRemovalMode)mode completionHandler:(void *)completionHandler
{
  v7 = domain;
  v8 = completionHandler;
  if (mode >= (NSFileProviderDomainRemovalModePreserveDownloadedUserData|NSFileProviderDomainRemovalModePreserveDirtyUserData))
  {
    v11 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:22 description:{@"Invalid options provided to removeDomain:options:%lu completionHandler:", mode}];
    v8[2](v8, 0, v11);
  }

  else
  {
    v9 = qword_1AAC268B0[mode];
    v10 = +[FPDaemonConnection sharedConnectionProxy];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__NSFileProviderManager_removeDomain_mode_completionHandler___block_invoke;
    v12[3] = &unk_1E793C4D0;
    v13 = v8;
    [v10 removeDomain:v7 mode:v9 completionHandler:v12];
  }
}

void __61__NSFileProviderManager_removeDomain_mode_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 url];
  (*(v4 + 16))(v4, v6, v5);
}

+ (void)removeDomain:(NSFileProviderDomain *)domain completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__NSFileProviderManager_removeDomain_completionHandler___block_invoke;
  v8[3] = &unk_1E793A3D0;
  v9 = v6;
  v7 = v6;
  [a1 removeDomain:domain mode:0 completionHandler:v8];
}

uint64_t __56__NSFileProviderManager_removeDomain_completionHandler___block_invoke(uint64_t a1)
{
  return (*(*(a1 + 32) + 16))();
}

{
  return (*(*(a1 + 32) + 16))();
}

+ (void)removeDomain:(id)a3 forProviderIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[FPDaemonConnection sharedConnectionProxy];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [v9 identifier];

  v13 = [v11 fp_providerDomainIDFromProviderID:v8 domainIdentifier:v12];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__NSFileProviderManager_removeDomain_forProviderIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_1E793C4D0;
  v16 = v7;
  v14 = v7;
  [v10 removeDomainAndPreserveDataWithID:v13 mode:0 completionHandler:v15];
}

+ (void)addDomain:(id)a3 forProviderIdentifier:(id)a4 byImportingDirectoryAtURL:(id)a5 userAllowedDBDrop:(BOOL)a6 knownFolders:(id)a7 synchronous:(BOOL)a8 completionHandler:(id)a9
{
  v11 = a6;
  v51 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a9;
  if (dyld_program_sdk_at_least())
  {
    v40 = a8;
    v20 = a1;
    v21 = v11;
    v22 = [v15 identifier];
    v48 = 0;
    v23 = [v22 fp_isValidDomainIdentifierWithError:&v48];
    v24 = v48;

    if ((v23 & 1) == 0)
    {
LABEL_21:
      v19[2](v19, v24);
      goto LABEL_22;
    }

    v11 = v21;
    a1 = v20;
    a8 = v40;
  }

  if ([v18 count])
  {
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AAAE1000, v25, OS_LOG_TYPE_DEFAULT, "[WARNING] Known folders are not supported outside of macOS", buf, 2u);
    }

    v26 = FPNotSupportedError();
    goto LABEL_20;
  }

  v27 = [v15 identifier];
  v28 = [v27 length];

  if (!v28)
  {
    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AAAE1000, v29, OS_LOG_TYPE_DEFAULT, "[WARNING] Domain identifier may not be empty.", buf, 2u);
    }

    v30 = MEMORY[0x1E696ABC0];
    v31 = @"Domain identifier may not be empty.";
    goto LABEL_19;
  }

  if (([v15 experimentIDIsValid] & 1) == 0)
  {
    v32 = fp_current_or_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v15 userInfo];
      v34 = [v33 objectForKeyedSubscript:@"NSFileProviderUserInfoExperimentID"];
      *buf = 138412290;
      v50 = v34;
      _os_log_impl(&dword_1AAAE1000, v32, OS_LOG_TYPE_DEFAULT, "[WARNING] Invalid experimentID: %@", buf, 0xCu);
    }

    v30 = MEMORY[0x1E696ABC0];
    v31 = @"NSFileProviderUserInfoExperimentIDKey is not within boundaries.";
LABEL_19:
    v26 = [v30 fp_invalidArgumentError:v31];
LABEL_20:
    v24 = v26;
    goto LABEL_21;
  }

  v39 = v11;
  if (v17)
  {
    v47 = 0;
    v24 = [FPSandboxingURLWrapper wrapperWithURL:v17 readonly:0 error:&v47];
    if (v24)
    {

      v17 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v36 = [MEMORY[0x1E69DF078] currentPersona];
  v37 = [v36 userPersonaUniqueString];

  if (a8)
  {
    +[FPDaemonConnection synchronousSharedConnectionProxy];
  }

  else
  {
    +[FPDaemonConnection sharedConnectionProxy];
  }
  v41 = ;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __144__NSFileProviderManager_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_userAllowedDBDrop_knownFolders_synchronous_completionHandler___block_invoke;
  v42[3] = &unk_1E793E560;
  v43 = v37;
  v44 = v15;
  v46 = a1;
  v45 = v19;
  v38 = v37;
  [v41 addDomain:v44 forProviderIdentifier:v16 byImportingDirectoryAtURL:v24 nonWrappedURL:v17 userAllowedDBDrop:v39 knownFolders:v18 completionHandler:v42];

LABEL_22:
  v35 = *MEMORY[0x1E69E9840];
}

void __144__NSFileProviderManager_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_userAllowedDBDrop_knownFolders_synchronous_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 fp_isFileProviderInternalError:3])
  {
    v7 = [v6 userInfo];
    v8 = [v7 objectForKey:@"parameter"];
    v9 = [v8 isEqual:@"currentPersona"];

    if (v9)
    {
      v10 = [v6 userInfo];
      v11 = [v10 objectForKey:@"actual"];

      v12 = [v6 userInfo];
      v13 = [v12 objectForKey:@"expected"];

      v14 = [*(a1 + 32) isEqual:v11];
      v15 = fp_current_or_default_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);
      if (v14)
      {
        if (v16)
        {
          v17 = *(a1 + 32);
          v22 = 138412802;
          v23 = v11;
          v24 = 2112;
          v25 = v13;
          v26 = 2112;
          v27 = v17;
          _os_log_fault_impl(&dword_1AAAE1000, v15, OS_LOG_TYPE_FAULT, "[CRIT] Called addDomain with an invalid persona; actual persona was %@, expected %@. Caller persona was %@.", &v22, 0x20u);
        }
      }

      else if (v16)
      {
        __144__NSFileProviderManager_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_userAllowedDBDrop_knownFolders_synchronous_completionHandler___block_invoke_cold_1((a1 + 32));
      }
    }
  }

  if (v5)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = [*(a1 + 40) identifier];
    v20 = [v18 fp_providerDomainIDFromProviderID:v5 domainIdentifier:v19];

    [*(a1 + 56) _registerNotificationsForProviderIdentifier:v20];
  }

  (*(*(a1 + 48) + 16))();

  v21 = *MEMORY[0x1E69E9840];
}

+ (void)addDomain:(id)a3 forProviderIdentifier:(id)a4 persona:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E69DF068] sharedManager];
  v15 = [v14 currentPersona];

  v25 = 0;
  v16 = [v15 userPersonaUniqueString];
  v17 = v16;
  if (v16 == v12 || ([v16 isEqualToString:v12] & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    v22 = 0;
  }

  else
  {
    v24 = 0;
    v18 = [v15 copyCurrentPersonaContextWithError:&v24];
    v19 = v24;
    v20 = v25;
    v25 = v18;

    if (v19)
    {
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [FPSpotlightIndexer _fetchClientStateIfNeeded];
      }
    }

    v22 = [v15 generateAndRestorePersonaContextWithPersonaUniqueString:v12];

    if (v22)
    {
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        +[NSFileProviderManager addDomain:forProviderIdentifier:persona:completionHandler:];
      }
    }
  }

  [a1 addDomain:v10 forProviderIdentifier:v11 byImportingDirectoryAtURL:0 userAllowedDBDrop:0 knownFolders:MEMORY[0x1E695E0F0] completionHandler:v13];

  _FPRestorePersona(&v25);
}

+ (void)removeAllDomainsForProviderIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[FPDaemonConnection sharedConnectionProxy];
  [v7 removeAllDomainsForProviderIdentifier:v6 completionHandler:v5];
}

+ (void)getDomainsForProviderIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[FPDaemonConnection sharedConnectionProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__NSFileProviderManager_getDomainsForProviderIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_1E793E588;
  v11 = v6;
  v12 = a1;
  v9 = v6;
  [v8 getDomainsForProviderIdentifier:v7 completionHandler:v10];
}

void __75__NSFileProviderManager_getDomainsForProviderIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = MEMORY[0x1E696AEC0];
        v15 = [*(*(&v18 + 1) + 8 * v13) identifier];
        v16 = [v14 fp_providerDomainIDFromProviderID:v7 domainIdentifier:v15];

        [*(a1 + 40) _registerNotificationsForProviderIdentifier:v16];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  (*(*(a1 + 32) + 16))();

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)getDomainsWithCompletionHandler:(void *)completionHandler
{
  v4 = getDomainsWithCompletionHandler__onceToken;
  v5 = completionHandler;
  v7 = v5;
  if (v4 == -1)
  {
    v6 = v5;
  }

  else
  {
    +[NSFileProviderManager getDomainsWithCompletionHandler:];
    v6 = v7;
  }

  [a1 getDomainsForProviderIdentifier:0 completionHandler:v6];
}

void __57__NSFileProviderManager_getDomainsWithCompletionHandler___block_invoke()
{
  v5 = [@"com.apple.fileprovider.providers-changed" fp_libnotifyPerUserNotificationName];
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.fileprovider.domain.changes", v0);
  v2 = getDomainsWithCompletionHandler__queue;
  getDomainsWithCompletionHandler__queue = v1;

  v3 = v5;
  v4 = [v5 UTF8String];
  notify_register_dispatch(v4, &getDomainsWithCompletionHandler__notifyToken, getDomainsWithCompletionHandler__queue, &__block_literal_global_266);
}

void __57__NSFileProviderManager_getDomainsWithCompletionHandler___block_invoke_2()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"NSFileProviderDomainDidChange" object:0];
}

+ (NSFileProviderManager)managerForDomain:(NSFileProviderDomain *)domain
{
  v4 = domain;
  v5 = [[a1 alloc] _initWithProviderIdentifier:0 domain:v4];

  return v5;
}

+ (NSFileProviderManager)managerWithProviderIdentifier:(id)a3 groupName:(id)a4 domain:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] _initWithProviderIdentifier:v10 groupName:v9 domain:v8];

  return v11;
}

+ (BOOL)fileProviderReadyForBackupOrMigrationForSourceURL:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = FPNotSupportedError();
  }

  return 0;
}

- (void)dealloc
{
  connection = self->_connection;
  v4 = objc_initWeak(&location, connection);
  [(FPDDaemon *)connection invalidate];

  objc_destroyWeak(&location);
  v5.receiver = self;
  v5.super_class = NSFileProviderManager;
  [(NSFileProviderManager *)&v5 dealloc];
}

- (void)removeDomain:(id)a3 options:(int64_t)a4 completionHandler:(id)a5
{
  v14 = a3;
  v8 = a5;
  if (a4 >= 3)
  {
    v11 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:22 description:{@"Invalid options provided to removeDomain:options:%lu completionHandler:", a4}];
    v8[2](v8, 0, v11);
  }

  else
  {
    v9 = qword_1AAC268B0[a4];
    v10 = MEMORY[0x1E696AEC0];
    v11 = [(NSFileProviderManager *)self providerIdentifier];
    v12 = [v14 identifier];
    v13 = [v10 fp_providerDomainIDFromProviderID:v11 domainIdentifier:v12];
    [FPProviderDomain removeDomainAndPreserveDataWithID:v13 mode:v9 completionHandler:v8];
  }
}

- (BOOL)removeDomain:(id)a3 options:(int64_t)a4 preservedLocation:(id *)a5 error:(id *)a6
{
  v10 = a3;
  if (a4 >= 3)
  {
    if (a6)
    {
      [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:22 description:{@"Invalid options provided to removeDomain:options:%lu completionHandler:", a4}];
      *a6 = v18 = 0;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v11 = qword_1AAC268B0[a4];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__28;
    v31 = __Block_byref_object_dispose__28;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__28;
    v25 = __Block_byref_object_dispose__28;
    v26 = 0;
    v12 = +[FPDaemonConnection synchronousSharedConnectionProxy];
    v13 = MEMORY[0x1E696AEC0];
    v14 = [(NSFileProviderManager *)self providerIdentifier];
    v15 = [v10 identifier];
    v16 = [v13 fp_providerDomainIDFromProviderID:v14 domainIdentifier:v15];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __70__NSFileProviderManager_removeDomain_options_preservedLocation_error___block_invoke;
    v20[3] = &unk_1E793E5D0;
    v20[4] = &v27;
    v20[5] = &v21;
    [v12 removeDomainAndPreserveDataWithID:v16 mode:v11 completionHandler:v20];

    v17 = v22[5];
    v18 = v17 == 0;
    if (v17)
    {
      if (a6)
      {
        *a6 = v17;
      }
    }

    else if (a5)
    {
      *a5 = [v28[5] url];
    }

    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
  }

  return v18;
}

void __70__NSFileProviderManager_removeDomain_options_preservedLocation_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)removeDomain:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__NSFileProviderManager_removeDomain_completionHandler___block_invoke;
  v8[3] = &unk_1E793A3D0;
  v9 = v6;
  v7 = v6;
  [(NSFileProviderManager *)self removeDomain:a3 options:0 completionHandler:v8];
}

- (void)getDomainsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(NSFileProviderManager *)self providerIdentifier];
  [v5 getDomainsForProviderIdentifier:v6 completionHandler:v4];
}

- (void)removeAllDomainsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(NSFileProviderManager *)self providerIdentifier];
  [v5 removeAllDomainsForProviderIdentifier:v6 completionHandler:v4];
}

- (NSProgress)globalProgressForKind:(NSProgressFileOperationKind)kind
{
  v4 = kind;
  if (![(NSString *)v4 isEqualToString:*MEMORY[0x1E696A870]]&& ![(NSString *)v4 isEqualToString:*MEMORY[0x1E696A848]])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid kind given for global progress: %@", v4];
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [FPXEnumerator initWithObservedItemID:domainContext:vendorEnumerator:nsFileProviderRequest:observer:isWorkingSetEnum:queue:];
    }

    __assert_rtn("-[NSFileProviderManager globalProgressForKind:]", "/Library/Caches/com.apple.xbs/Sources/FileProvider/framework/NSFileProviderManager.m", 1636, [v7 UTF8String]);
  }

  v5 = [(NSFileProviderManager *)self startObservingGlobalProgressForKind:v4];

  return v5;
}

- (void)startObservingUploadProgress
{
  v3 = [(FPProgressUpdater *)self->_uploadProxy progress];

  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __53__NSFileProviderManager_startObservingUploadProgress__block_invoke;
    v4[3] = &unk_1E793E5F8;
    v4[4] = self;
    [(NSFileProviderManager *)self domainServicerWithCompletionHandler:v4];
  }
}

uint64_t __53__NSFileProviderManager_startObservingUploadProgress__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__NSFileProviderManager_startObservingUploadProgress__block_invoke_2;
  v5[3] = &unk_1E7939C00;
  v5[4] = v2;
  return [a2 subscribeToUploadProgressUpdates:v3 completionHandler:v5];
}

void __53__NSFileProviderManager_startObservingUploadProgress__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_10;
  }

  v5 = [v3 domain];
  if (![v5 isEqualToString:*MEMORY[0x1E696A250]] || objc_msgSend(v4, "code") > 4223)
  {

    goto LABEL_9;
  }

  v6 = [v4 code];

  if (v6 <= 4096)
  {
LABEL_9:
    [*(*(a1 + 32) + 120) setProgress:0];
    goto LABEL_10;
  }

  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __53__NSFileProviderManager_startObservingUploadProgress__block_invoke_2_cold_1();
  }

  [*(a1 + 32) startObservingUploadProgress];
LABEL_10:
}

- (void)startObservingDownloadProgress
{
  v3 = [(FPProgressUpdater *)self->_downloadProxy progress];

  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __55__NSFileProviderManager_startObservingDownloadProgress__block_invoke;
    v4[3] = &unk_1E793E5F8;
    v4[4] = self;
    [(NSFileProviderManager *)self domainServicerWithCompletionHandler:v4];
  }
}

uint64_t __55__NSFileProviderManager_startObservingDownloadProgress__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__NSFileProviderManager_startObservingDownloadProgress__block_invoke_2;
  v5[3] = &unk_1E7939C00;
  v5[4] = v2;
  return [a2 subscribeToDownloadProgressUpdates:v3 completionHandler:v5];
}

void __55__NSFileProviderManager_startObservingDownloadProgress__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_10;
  }

  v5 = [v3 domain];
  if (![v5 isEqualToString:*MEMORY[0x1E696A250]] || objc_msgSend(v4, "code") > 4223)
  {

    goto LABEL_9;
  }

  v6 = [v4 code];

  if (v6 <= 4096)
  {
LABEL_9:
    [*(*(a1 + 32) + 112) setProgress:0];
    goto LABEL_10;
  }

  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __55__NSFileProviderManager_startObservingDownloadProgress__block_invoke_2_cold_1();
  }

  [*(a1 + 32) startObservingDownloadProgress];
LABEL_10:
}

- (id)startObservingGlobalProgressForKind:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_domain)
  {
    v6 = *MEMORY[0x1E696A870];
    v7 = [v4 isEqualToString:*MEMORY[0x1E696A870]];
    v8 = MEMORY[0x1E696A848];
    if (!v7 || (p_downloadProxy = &self->_uploadProxy, [(FPProgressUpdater *)self->_uploadProxy progress], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
    {
      if (![v5 isEqualToString:*v8])
      {
        goto LABEL_7;
      }

      p_downloadProxy = &self->_downloadProxy;
      v11 = [(FPProgressUpdater *)self->_downloadProxy progress];

      if (!v11)
      {
        goto LABEL_7;
      }
    }

    v12 = [(FPProgressUpdater *)*p_downloadProxy progress];
    if (!v12)
    {
LABEL_7:
      v12 = objc_alloc_init(FPProgressProxy);
      [(FPProgressProxy *)v12 setUpdateFileCount:1];
      [(FPProgressProxy *)v12 setCompletedUnitCount:1];
      [(FPProgressProxy *)v12 setTotalUnitCount:1];
      [(FPProgressProxy *)v12 setFileCompletedCount:&unk_1F1FC9AA0];
      [(FPProgressProxy *)v12 setFileTotalCount:&unk_1F1FC9AA0];
      [(FPProgressProxy *)v12 setKind:*MEMORY[0x1E696A888]];
      [(FPProgressProxy *)v12 setFileOperationKind:v5];
      if ([v5 isEqualToString:v6])
      {
        [(FPProgressUpdater *)self->_uploadProxy setProgress:v12];
        [(NSFileProviderManager *)self startObservingUploadProgress];
      }

      if ([v5 isEqualToString:*v8])
      {
        [(FPProgressUpdater *)self->_downloadProxy setProgress:v12];
        [(NSFileProviderManager *)self startObservingDownloadProgress];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)enumeratorForMaterializedItems
{
  v2 = [[FPMaterializedSetEnumerator alloc] initWithManager:self];

  return v2;
}

- (id)enumeratorForPendingItems
{
  v2 = [[FPPendingSetEnumerator alloc] initWithManager:self];

  return v2;
}

+ (void)importDomain:(NSFileProviderDomain *)domain fromDirectoryAtURL:(NSURL *)url completionHandler:(void *)completionHandler
{
  v10 = domain;
  v8 = url;
  v9 = completionHandler;
  if (![(NSFileProviderDomain *)v10 isReplicated]&& ![(NSFileProviderDomain *)v10 isReplicated])
  {
    +[NSFileProviderManager(Import) importDomain:fromDirectoryAtURL:completionHandler:];
  }

  [a1 addDomain:v10 forProviderIdentifier:0 byImportingDirectoryAtURL:v8 userAllowedDBDrop:0 knownFolders:MEMORY[0x1E695E0F0] completionHandler:v9];
}

- (void)reimportItemsBelowItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler
{
  v6 = itemIdentifier;
  v7 = completionHandler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__NSFileProviderManager_Import__reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_1E793E708;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [(NSFileProviderManager *)self fetchDomainServicerSynchronously:0 useOutgoingConnection:1 completionHandler:v10];
}

void __88__NSFileProviderManager_Import__reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__NSFileProviderManager_Import__reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7939170;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 reimportItemsBelowItemWithIdentifier:v3 completionHandler:v5];
}

- (void)requestModificationOfFields:(NSFileProviderItemFields)fields forItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier options:(NSFileProviderModifyItemOptions)options completionHandler:(void *)completionHandler
{
  v9 = itemIdentifier;
  v10 = completionHandler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __109__NSFileProviderManager_Import__requestModificationOfFields_forItemWithIdentifier_options_completionHandler___block_invoke;
  v13[3] = &unk_1E793E3B0;
  v14 = v9;
  v15 = self;
  v16 = v10;
  v17 = fields;
  v11 = v10;
  v12 = v9;
  [(NSFileProviderManager *)self domainServicerWithCompletionHandler:v13];
}

void __109__NSFileProviderManager_Import__requestModificationOfFields_forItemWithIdentifier_options_completionHandler___block_invoke(void *a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __109__NSFileProviderManager_Import__requestModificationOfFields_forItemWithIdentifier_options_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7939170;
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[7];
  v6[4] = a1[5];
  v7 = v4;
  [a2 ingestFromCacheItemWithIdentifier:v3 requestedFields:v5 completionHandler:v6];
}

+ (void)importDomain:(id)a3 forProviderIdentifier:(id)a4 fromDirectoryAtURL:(id)a5 completionHandler:(id)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (([v13 isReplicated] & 1) == 0 && (objc_msgSend(v13, "isReplicated") & 1) == 0)
  {
    +[NSFileProviderManager(ImportPrivate) importDomain:forProviderIdentifier:fromDirectoryAtURL:completionHandler:];
  }

  [a1 addDomain:v13 forProviderIdentifier:v10 byImportingDirectoryAtURL:v11 userAllowedDBDrop:0 knownFolders:MEMORY[0x1E695E0F0] completionHandler:v12];
}

+ (void)importDomain:(id)a3 forProviderIdentifier:(id)a4 fromDirectoryAtURL:(id)a5 knownFolders:(id)a6 completionHandler:(id)a7
{
  v16 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (([v16 isReplicated] & 1) == 0 && (objc_msgSend(v16, "isReplicated") & 1) == 0)
  {
    +[NSFileProviderManager(ImportPrivate) importDomain:forProviderIdentifier:fromDirectoryAtURL:knownFolders:completionHandler:];
  }

  [a1 addDomain:v16 forProviderIdentifier:v12 byImportingDirectoryAtURL:v13 userAllowedDBDrop:0 knownFolders:v14 completionHandler:v15];
}

+ (BOOL)addDomain:(id)a3 forProviderIdentifier:(id)a4 byImportingDirectoryAtURL:(id)a5 knownFolders:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__28;
  v24 = __Block_byref_object_dispose__28;
  v25 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __117__NSFileProviderManager_ImportPrivate__addDomain_forProviderIdentifier_byImportingDirectoryAtURL_knownFolders_error___block_invoke;
  v19[3] = &unk_1E793B278;
  v19[4] = &v20;
  [a1 addDomain:v12 forProviderIdentifier:v13 byImportingDirectoryAtURL:v14 userAllowedDBDrop:0 knownFolders:v15 synchronous:1 completionHandler:v19];
  v16 = v21[5];
  if (a7 && v16)
  {
    *a7 = v16;
    v16 = v21[5];
  }

  v17 = v16 == 0;
  _Block_object_dispose(&v20, 8);

  return v17;
}

- (void)waitForChangesOnItemsBelowItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler
{
  v6 = itemIdentifier;
  v7 = completionHandler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __97__NSFileProviderManager_Barrier__waitForChangesOnItemsBelowItemWithIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_1E793E708;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(NSFileProviderManager *)self domainServicerWithCompletionHandler:v10];
}

- (void)waitForStabilizationWithMode:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__NSFileProviderManager_Stabilization__waitForStabilizationWithMode_completionHandler___block_invoke;
  v8[3] = &unk_1E793E730;
  v9 = v6;
  v10 = a3;
  v8[4] = self;
  v7 = v6;
  [(NSFileProviderManager *)self domainServicerWithCompletionHandler:v8];
}

- (void)evictItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler
{
  v6 = itemIdentifier;
  v7 = completionHandler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__NSFileProviderManager_Eviction__evictItemWithIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_1E793E708;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [(NSFileProviderManager *)self domainServicerWithCompletionHandler:v10];
}

void __77__NSFileProviderManager_Eviction__evictItemWithIdentifier_completionHandler___block_invoke(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__NSFileProviderManager_Eviction__evictItemWithIdentifier_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7939170;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 evictItemWithIdentifier:v3 completionHandler:v5];
}

void __77__NSFileProviderManager_Eviction__evictItemWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
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

- (void)lookupRequestingApplicationIdentifier:(id)a3 reason:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = FPNotSupportedError();
  (*(a5 + 2))(v6, 0, v7);
}

- (void)ingestFromCacheItemWithIdentifier:(id)a3 requestedFields:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __109__NSFileProviderManager_ForceIngestion__ingestFromCacheItemWithIdentifier_requestedFields_completionHandler___block_invoke;
  v12[3] = &unk_1E793E3B0;
  v13 = v8;
  v14 = self;
  v15 = v9;
  v16 = a4;
  v10 = v9;
  v11 = v8;
  [(NSFileProviderManager *)self domainServicerWithCompletionHandler:v12];
}

void __109__NSFileProviderManager_ForceIngestion__ingestFromCacheItemWithIdentifier_requestedFields_completionHandler___block_invoke(void *a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __109__NSFileProviderManager_ForceIngestion__ingestFromCacheItemWithIdentifier_requestedFields_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7939170;
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[7];
  v6[4] = a1[5];
  v7 = v4;
  [a2 ingestFromCacheItemWithIdentifier:v3 requestedFields:v5 completionHandler:v6];
}

- (void)disconnectWithReason:(NSString *)localizedReason options:(NSFileProviderManagerDisconnectionOptions)options completionHandler:(void *)completionHandler
{
  domain = self->_domain;
  v9 = completionHandler;
  v10 = localizedReason;
  v11 = [(NSFileProviderDomain *)domain copy];
  [v11 setDisconnected:1];
  [v11 _setDisconnectionReason:v10];

  [v11 _setDisconnectionOptions:options];
  [(NSFileProviderManager *)self addDomain:v11 completionHandler:v9];
}

- (void)reconnectWithCompletionHandler:(void *)completionHandler
{
  domain = self->_domain;
  v5 = completionHandler;
  v6 = [(NSFileProviderDomain *)domain copy];
  [v6 setDisconnected:0];
  [v6 _setDisconnectionReason:0];
  [v6 _setDisconnectionOptions:0];
  [(NSFileProviderManager *)self addDomain:v6 completionHandler:v5];
}

- (NSArray)listAvailableTestingOperationsWithError:(NSError *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__28;
  v22 = __Block_byref_object_dispose__28;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__28;
  v16 = __Block_byref_object_dispose__28;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__NSFileProviderManager_TestingModeInteractive__listAvailableTestingOperationsWithError___block_invoke;
  v11[3] = &unk_1E793E758;
  v11[4] = &v18;
  v11[5] = &v12;
  [(NSFileProviderManager *)self fetchDomainServicerSynchronously:1 useOutgoingConnection:0 completionHandler:v11];
  v6 = v13[5];
  if (v6)
  {
    v7 = 0;
    if (error)
    {
      *error = v6;
    }
  }

  else
  {
    v8 = v19[5];
    if (!v8)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"NSFileProviderManager.m" lineNumber:2251 description:@"missing operations"];

      v8 = v19[5];
    }

    if (!v8)
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v7 = v8;
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v7;
}

void __89__NSFileProviderManager_TestingModeInteractive__listAvailableTestingOperationsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 synchronousRemoteObjectProxy];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __89__NSFileProviderManager_TestingModeInteractive__listAvailableTestingOperationsWithError___block_invoke_2;
  v4[3] = &unk_1E793C830;
  v5 = *(a1 + 32);
  [v3 listAvailableTestingOperationsWithCompletionHandler:v4];
}

void __89__NSFileProviderManager_TestingModeInteractive__listAvailableTestingOperationsWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (NSDictionary)runTestingOperations:(NSArray *)operations error:(NSError *)error
{
  v46 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__28;
  v43 = __Block_byref_object_dispose__28;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__28;
  v37 = __Block_byref_object_dispose__28;
  v38 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = operations;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v29 objects:v45 count:16];
  if (v8)
  {
    v9 = *v30;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            FPInvalidParameterError(@"testingOperations", v7, v12, v13, v14, v15, v16, v17);
            *error = v19 = 0;
          }

          else
          {
            v19 = 0;
          }

          v20 = v7;
          goto LABEL_22;
        }
      }

      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v29 objects:v45 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __76__NSFileProviderManager_TestingModeInteractive__runTestingOperations_error___block_invoke;
  v25[3] = &unk_1E793E448;
  v26 = v7;
  v27 = &v39;
  v28 = &v33;
  [(NSFileProviderManager *)self fetchDomainServicerSynchronously:1 useOutgoingConnection:0 completionHandler:v25];
  v18 = v34[5];
  if (v18)
  {
    v19 = 0;
    if (error)
    {
      *error = v18;
    }
  }

  else
  {
    v21 = v40[5];
    if (!v21)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"NSFileProviderManager.m" lineNumber:2284 description:@"missing operations"];

      v21 = v40[5];
    }

    if (!v21)
    {
      v21 = MEMORY[0x1E695E0F8];
    }

    v19 = v21;
  }

  v20 = v26;
LABEL_22:

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  v23 = *MEMORY[0x1E69E9840];

  return v19;
}

void __76__NSFileProviderManager_TestingModeInteractive__runTestingOperations_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 synchronousRemoteObjectProxy];
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__NSFileProviderManager_TestingModeInteractive__runTestingOperations_error___block_invoke_2;
  v5[3] = &unk_1E793C4A8;
  v6 = *(a1 + 40);
  [v3 runTestingOperations:v4 completionHandler:v5];
}

void __76__NSFileProviderManager_TestingModeInteractive__runTestingOperations_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)_test_existingProgressForKind:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x1E696A870]])
  {
    v5 = 120;
LABEL_5:
    v6 = [*(&self->super.isa + v5) progress];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E696A848]])
  {
    v5 = 112;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)getServiceWithName:(NSFileProviderServiceName)serviceName itemIdentifier:(NSFileProviderItemIdentifier)itemIdentifier completionHandler:(void *)completionHandler
{
  v8 = serviceName;
  v9 = itemIdentifier;
  v10 = completionHandler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __100__NSFileProviderManager_NSFileProviderService__getServiceWithName_itemIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E793E7A8;
  v15 = v8;
  v16 = self;
  v17 = v9;
  v18 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(NSFileProviderManager *)self fetchDomainServicerSynchronously:0 useOutgoingConnection:0 completionHandler:v14];
}

void __100__NSFileProviderManager_NSFileProviderService__getServiceWithName_itemIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v4 itemIDForIdentifier:v5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __100__NSFileProviderManager_NSFileProviderService__getServiceWithName_itemIdentifier_completionHandler___block_invoke_2;
  v10[3] = &unk_1E793E780;
  v12 = *(a1 + 56);
  v9 = *(a1 + 32);
  v8 = v9.i64[0];
  v11 = vextq_s8(v9, v9, 8uLL);
  [v6 startAccessingServiceWithName:v3 itemID:v7 completionHandler:v10];
}

void __100__NSFileProviderManager_NSFileProviderService__getServiceWithName_itemIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (!v7 || a4)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = [FPService alloc];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FCF918];
    v11 = [*(a1 + 32) providerDomainID];
    v12 = [(FPService *)v9 initWithEndpoint:v7 interface:v10 lifetimeExtender:v8 providerDomainID:v11];

    v13 = dispatch_group_create();
    v14 = *(a1 + 48);
    v15 = objc_alloc(MEMORY[0x1E696AC18]);
    v16 = *(a1 + 40);
    v17 = [(FPService *)v12 remoteObjectProxyCreating];
    v18 = [v15 initWithName:v16 endpointCreatingProxy:v17 requestFinishedGroup:v13];
    (*(v14 + 16))(v14, v18, 0);

    v19 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__NSFileProviderManager_NSFileProviderService__getServiceWithName_itemIdentifier_completionHandler___block_invoke_3;
    block[3] = &unk_1E79399B0;
    v22 = v12;
    v20 = v12;
    dispatch_group_notify(v13, v19, block);
  }
}

- (void)requestDownloadForItemWithIdentifier:(NSFileProviderItemIdentifier)itemIdentifier requestedRange:(NSRange)rangeToMaterialize completionHandler:(void *)completionHandler
{
  length = rangeToMaterialize.length;
  location = rangeToMaterialize.location;
  v9 = itemIdentifier;
  v10 = completionHandler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __108__NSFileProviderManager_Materialize__requestDownloadForItemWithIdentifier_requestedRange_completionHandler___block_invoke;
  v13[3] = &unk_1E793E7D0;
  v13[4] = self;
  v14 = v9;
  v16 = location;
  v17 = length;
  v15 = v10;
  v11 = v10;
  v12 = v9;
  [(NSFileProviderManager *)self domainServicerWithCompletionHandler:v13];
}

void __108__NSFileProviderManager_Materialize__requestDownloadForItemWithIdentifier_requestedRange_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __108__NSFileProviderManager_Materialize__requestDownloadForItemWithIdentifier_requestedRange_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7939170;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  [a2 materializeItemWithIdentifier:v4 requestedRange:*(a1 + 56) completionHandler:{*(a1 + 64), v5}];
}

void __108__NSFileProviderManager_Materialize__requestDownloadForItemWithIdentifier_requestedRange_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
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

- (void)getDiagnosticAttributesForItems:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__NSFileProviderManager_PrivateDiagnostics__getDiagnosticAttributesForItems_completionHandler___block_invoke;
  v10[3] = &unk_1E793E708;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [(NSFileProviderManager *)self domainServicerWithCompletionHandler:v10];
}

void __95__NSFileProviderManager_PrivateDiagnostics__getDiagnosticAttributesForItems_completionHandler___block_invoke(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __95__NSFileProviderManager_PrivateDiagnostics__getDiagnosticAttributesForItems_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7939E58;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 getDiagnosticAttributesForItems:v3 completionHandler:v5];
}

- (void)claimKnownFolders:(id)a3 localizedReason:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = FPNotSupportedError();
  (*(a5 + 2))(v6, v7);
}

- (void)releaseKnownFolders:(unint64_t)a3 localizedReason:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = FPNotSupportedError();
  (*(a5 + 2))(v6, v7);
}

- (void)requestDiagnosticCollectionForItemWithIdentifier:(id)a3 errorReason:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = FPNotSupportedError();
  (*(a5 + 2))(v6, v7);
}

- (void)fetchDomainServicerSynchronously:useOutgoingConnection:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_10_5();
  v1 = v0;
  OUTLINED_FUNCTION_9_0(v0, v2, v3, 5.778e-34);
  _os_log_error_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", v4, 0x16u);
}

void __98__NSFileProviderManager_fetchDomainServicerSynchronously_useOutgoingConnection_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(*(a1 + 32) + 56));
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, a2, a3, "[ERROR] failed fetching remote file provider with identifier %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __98__NSFileProviderManager_fetchDomainServicerSynchronously_useOutgoingConnection_completionHandler___block_invoke_145_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 56);
  v3 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __98__NSFileProviderManager_fetchDomainServicerSynchronously_useOutgoingConnection_completionHandler___block_invoke_145_cold_2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __98__NSFileProviderManager_fetchDomainServicerSynchronously_useOutgoingConnection_completionHandler___block_invoke_145_cold_3(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *(*a1 + 32);
  v8 = *a2;
  OUTLINED_FUNCTION_11_2();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)signalEnumeratorForContainerItemIdentifier:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] signaling change on %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_failToSignalPendingChangesWithError:completionHandlersByItemID:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"error" object:? file:? lineNumber:? description:?];
}

- (void)registerURLSessionTask:forItemWithIdentifier:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"task" object:? file:? lineNumber:? description:?];
}

- (void)registerURLSessionTask:forItemWithIdentifier:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

void __88__NSFileProviderManager_registerURLSessionTask_forItemWithIdentifier_completionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

+ (void)writePlaceholderAtURL:withMetadata:error:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"placeholderURL" object:? file:? lineNumber:? description:?];
}

+ (void)writePlaceholderAtURL:withMetadata:error:.cold.2()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"metadata" object:? file:? lineNumber:? description:?];
}

+ (void)writePlaceholderAtURL:withMetadata:error:.cold.3()
{
  OUTLINED_FUNCTION_6_0();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = NSStringFromSelector(v0);
  v2 = NSStringFromSelector(sel_placeholderURLForURL_);
  OUTLINED_FUNCTION_6();
  [v3 handleFailureInMethod:v1 object:v2 file:? lineNumber:? description:?];
}

void __52__NSFileProviderManager_stateDirectoryURLWithError___block_invoke_2_cold_1(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [a1 fp_shortDescription];
  v4 = *(a2 + 32);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)temporaryDirectoryURLWithError:.cold.4()
{
  OUTLINED_FUNCTION_10_5();
  v1 = v0;
  OUTLINED_FUNCTION_9_0(v2, v0, v3, 5.778e-34);
  _os_log_fault_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_FAULT, "[CRIT] cannot get a temporary URL for domain %@: %@", v4, 0x16u);
}

- (void)temporaryDirectoryURLWithError:.cold.5()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_9_0(v2, v3, v4, 5.778e-34);
  _os_log_debug_impl(&dword_1AAAE1000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] registering temporary URL (system) %@ for domain %@", v5, 0x16u);
}

void __56__NSFileProviderManager_temporaryDirectoryURLWithError___block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) fp_shortDescription];
  v3 = *(a1 + 48);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __56__NSFileProviderManager_temporaryDirectoryURLWithError___block_invoke_2_cold_2(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [a1 fp_shortDescription];
  v4 = *(a2 + 48);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __56__NSFileProviderManager_temporaryDirectoryURLWithError___block_invoke_2_cold_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) fp_shortDescription];
  v3 = *(a1 + 48);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)signalErrorResolved:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)signalErrorResolved:(void *)a1 completionHandler:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __144__NSFileProviderManager_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_userAllowedDBDrop_knownFolders_synchronous_completionHandler___block_invoke_cold_1(uint64_t *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_11_2();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)addDomain:forProviderIdentifier:persona:completionHandler:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_11_2();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __53__NSFileProviderManager_startObservingUploadProgress__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] Restarting upload observation (%@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__NSFileProviderManager_startObservingDownloadProgress__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] Restarting download observation (%@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end