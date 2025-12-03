@interface FPDaemonConnection
+ (BOOL)runningInSyncBubble;
+ (NSString)disallowedConnectionReason;
+ (id)remoteObjectProxyWithErrorHandler:(id)handler;
+ (id)sharedConnection;
+ (id)sharedConnectionProxy;
+ (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
+ (id)synchronousSharedConnectionProxy;
+ (void)setDisallowedConnectionReason:(id)reason;
- (FPDaemonConnection)initWithUser:(unsigned int)user;
- (id)bookmarkableStringFromDocumentURL:(id)l error:(id *)error;
- (id)connectionProxy;
- (id)documentURLFromBookmarkableString:(id)string error:(id *)error;
- (id)listOfMonitoredAppsWithError:(id *)error;
- (id)newXPCConnection;
- (id)nonErrorCheckingConnection;
- (id)valuesForAttributes:(id)attributes forItemAtURL:(id)l error:(id *)error;
- (void)_test_callFileProviderManagerAPIs:(id)is;
- (void)_test_retrieveItemWithName:(id)name completionHandler:(id)handler;
- (void)attachItemWithID:(id)d options:(unint64_t)options completionHandler:(id)handler;
- (void)attachKnownFolders:(id)folders options:(unint64_t)options completionHandler:(id)handler;
- (void)backUpUserURL:(id)l outputUserURL:(id)rL completionHandler:(id)handler;
- (void)bookmarkableStringFromDocumentURL:(id)l completionHandler:(id)handler;
- (void)calculateNonPurgeableSpaceUsageOfDomain:(id)domain completionHandler:(id)handler;
- (void)checkErrorAgainstDiagnosticsJson:(id)json inputError:(id)error errorDirection:(id)direction jobCode:(id)code underlying:(id)underlying completionHandler:(id)handler;
- (void)clearDiagnosticsState:(id)state completionHandler:(id)handler;
- (void)copyDatabaseForFPCKStartingAtPath:(id)path completionHandler:(id)handler;
- (void)detachItemWithID:(id)d relocatingAtURL:(id)l options:(unint64_t)options completionHandler:(id)handler;
- (void)detachKnownFolders:(id)folders completionHandler:(id)handler;
- (void)documentURLFromBookmarkableString:(id)string completionHandler:(id)handler;
- (void)dumpIndexerInfoFor:(id)for withName:(id)name to:(id)to completionHandler:(id)handler;
- (void)dumpStateTo:(id)to providerFilter:(id)filter options:(unint64_t)options completionHandler:(id)handler;
- (void)dumpTelemetryTo:(id)to providerFilter:(id)filter completionHandler:(id)handler;
- (void)enumerateSearchResultForRequest:(id)request providerDomainID:(id)d completionHandler:(id)handler;
- (void)extendBookmarkForFileURL:(id)l toConsumerID:(id)d completionHandler:(id)handler;
- (void)extendSandboxAndCreatePlaceholderForFileURL:(id)l fromProviderID:(id)d toConsumerID:(id)iD completionHandler:(id)handler;
- (void)extendSandboxForFileURL:(id)l fromProviderID:(id)d toConsumerID:(id)iD completionHandler:(id)handler;
- (void)fetchAndStartEnumeratingWithSettings:(id)settings observer:(id)observer completionHandler:(id)handler;
- (void)fetchDomainServicerForProviderDomainID:(id)d handler:(id)handler;
- (void)forceIngestionForItemID:(id)d completionHandler:(id)handler;
- (void)forceIngestionForItemIDs:(id)ds completionHandler:(id)handler;
- (void)forceLatestVersionOnDiskForItemID:(id)d completionHandler:(id)handler;
- (void)getPersonaForProvider:(id)provider completionHandler:(id)handler;
- (void)getSavedDiagnosticsFor:(id)for completionHandler:(id)handler;
- (void)getURLForContainerWithItemID:(id)d inDataScopeDomainWithIdentifier:(id)identifier documentsScopeDomainIdentifier:(id)domainIdentifier documentsFolderItemIdentifier:(id)itemIdentifier completionHandler:(id)handler;
- (void)importDetachedFolder:(id)folder parentID:(id)d logicalName:(id)name options:(unint64_t)options completionHandler:(id)handler;
- (void)pauseIndexingFor:(id)for completionHandler:(id)handler;
- (void)pinItemWithID:(id)d completionHandler:(id)handler;
- (void)providerDomainsCompletionHandler:(id)handler;
- (void)providersCompletionHandler:(id)handler;
- (void)resolveConflictAtURL:(id)l completionHandler:(id)handler;
- (void)restoreUserURL:(id)l fromBuild:(id)build restoreType:(id)type completionHandler:(id)handler;
- (void)resumeIndexingFor:(id)for completionHandler:(id)handler;
- (void)runFPCKForDomainWithID:(id)d databasesBackupsPath:(id)path options:(unint64_t)options reason:(unint64_t)reason completionHandler:(id)handler;
- (void)runFPCKForDomainWithID:(id)d domainRootURL:(id)l databaseBackupPath:(id)path options:(unint64_t)options reason:(unint64_t)reason launchType:(unint64_t)type contentBarrier:(int64_t)barrier completionHandler:(id)self0;
- (void)spotlightReindexAllItemsForBundleID:(id)d protectionClass:(id)class completionHandler:(id)handler;
- (void)spotlightReindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class completionHandler:(id)handler;
- (void)startProvidingItemAtURL:(id)l fromProviderID:(id)d forConsumerID:(id)iD completionHandler:(id)handler;
- (void)stateForDomainWithID:(id)d completionHandler:(id)handler;
- (void)unpinItemWithID:(id)d completionHandler:(id)handler;
- (void)updateLastUsedDateForFileURL:(id)l completionHandler:(id)handler;
- (void)validateDiagnosticsJson:(id)json completionHandler:(id)handler;
- (void)waitForStabilizationOfDomainWithID:(id)d mode:(unint64_t)mode completionHandler:(id)handler;
- (void)wakeUpForURL:(id)l completionHandler:(id)handler;
@end

@implementation FPDaemonConnection

+ (id)sharedConnection
{
  v2 = fp_default_log();
  if (sharedConnection_onceToken != -1)
  {
    +[FPDaemonConnection sharedConnection];
  }

  v3 = sharedConnection_connection;

  return v3;
}

uint64_t __38__FPDaemonConnection_sharedConnection__block_invoke()
{
  sharedConnection_connection = [[FPDaemonConnection alloc] initWithUser:0];

  return MEMORY[0x1EEE66BB8]();
}

- (id)nonErrorCheckingConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = selfCopy->_connection;
  if (connection)
  {
    v4 = connection;
  }

  else
  {
    [MEMORY[0x1E696ABC0] fp_initLocalizationStrings];
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_INFO, "[INFO] Creating new FPDaemonConnection connection.", buf, 2u);
    }

    newXPCConnection = [(FPDaemonConnection *)selfCopy newXPCConnection];
    objc_initWeak(buf, selfCopy);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__FPDaemonConnection_nonErrorCheckingConnection__block_invoke;
    v13[3] = &unk_1E7939010;
    objc_copyWeak(&v14, buf);
    [newXPCConnection setInvalidationHandler:v13];
    objc_initWeak(&location, newXPCConnection);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__FPDaemonConnection_nonErrorCheckingConnection__block_invoke_13;
    v10[3] = &unk_1E7939010;
    objc_copyWeak(&v11, &location);
    [newXPCConnection setInterruptionHandler:v10];
    [newXPCConnection resume];
    v7 = selfCopy->_connection;
    selfCopy->_connection = newXPCConnection;
    v8 = newXPCConnection;

    v4 = selfCopy->_connection;
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)newXPCConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (daemonConnectionDisallowedReason)
  {
    daemonConnectionDisallowedReason = [MEMORY[0x1E696AEC0] stringWithFormat:@"Establishing connection to fileproviderd is disallowed in this context: %@", daemonConnectionDisallowedReason];
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [FPXEnumerator initWithObservedItemID:domainContext:vendorEnumerator:nsFileProviderRequest:observer:isWorkingSetEnum:queue:];
    }

    __assert_rtn("-[FPDaemonConnection newXPCConnection]", "/Library/Caches/com.apple.xbs/Sources/FileProvider/framework/FPDaemonConnection.m", 126, [daemonConnectionDisallowedReason UTF8String]);
  }

  objc_sync_exit(selfCopy);

  v3 = FPDDaemonXPCInterface();
  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.FileProvider" options:0];
  [v4 setRemoteObjectInterface:v3];

  return v4;
}

+ (id)synchronousSharedConnectionProxy
{
  v2 = +[FPDaemonConnection sharedConnection];
  connectionProxy = [v2 connectionProxy];
  synchronousRemoteObjectProxy = [connectionProxy synchronousRemoteObjectProxy];

  return synchronousRemoteObjectProxy;
}

+ (id)sharedConnectionProxy
{
  v2 = +[FPDaemonConnection sharedConnection];
  connectionProxy = [v2 connectionProxy];

  return connectionProxy;
}

- (id)connectionProxy
{
  v3 = [FPXPCAutomaticErrorProxy alloc];
  nonErrorCheckingConnection = [(FPDaemonConnection *)self nonErrorCheckingConnection];
  v5 = [(FPXPCAutomaticErrorProxy *)v3 initWithConnection:nonErrorCheckingConnection protocol:&unk_1F1FF3CA8 orError:0 name:@"FPDaemonConnection proxy" requestPid:getpid()];

  [(FPXPCAutomaticErrorProxy *)v5 setSanitizeErrors:0];
  [(FPXPCAutomaticErrorProxy *)v5 setGenerateSignposts:1];

  return v5;
}

+ (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  sharedConnection = [self sharedConnection];
  nonErrorCheckingConnection = [sharedConnection nonErrorCheckingConnection];
  v7 = [nonErrorCheckingConnection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v7;
}

+ (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  sharedConnection = [self sharedConnection];
  nonErrorCheckingConnection = [sharedConnection nonErrorCheckingConnection];
  v7 = [nonErrorCheckingConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v7;
}

uint64_t __40__FPDaemonConnection_connectionForUser___block_invoke()
{
  connectionForUser__connectionByUID = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (FPDaemonConnection)initWithUser:(unsigned int)user
{
  v5.receiver = self;
  v5.super_class = FPDaemonConnection;
  result = [(FPDaemonConnection *)&v5 init];
  if (result)
  {
    result->_user = user;
  }

  return result;
}

+ (void)setDisallowedConnectionReason:(id)reason
{
  reasonCopy = reason;
  obj = self;
  objc_sync_enter(obj);
  v5 = daemonConnectionDisallowedReason;
  daemonConnectionDisallowedReason = reasonCopy;

  objc_sync_exit(obj);
}

+ (NSString)disallowedConnectionReason
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = daemonConnectionDisallowedReason;
  objc_sync_exit(selfCopy);

  return v3;
}

void __48__FPDaemonConnection_nonErrorCheckingConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_INFO, "[INFO] FPDaemonConnection invalidated.", v6, 2u);
    }

    v5 = v3[6];
    v3[6] = 0;

    objc_sync_exit(v3);
  }
}

void __48__FPDaemonConnection_nonErrorCheckingConnection__block_invoke_13(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AAAE1000, v2, OS_LOG_TYPE_INFO, "[INFO] FPDaemonConnection interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

+ (BOOL)runningInSyncBubble
{
  if (runningInSyncBubble_onceToken != -1)
  {
    +[FPDaemonConnection runningInSyncBubble];
  }

  return runningInSyncBubble_res;
}

void __41__FPDaemonConnection_runningInSyncBubble__block_invoke()
{
  v2 = [MEMORY[0x1E69DF068] sharedManager];
  if ([v2 isSharedIPad])
  {
    v0 = [v2 currentUser];
    v1 = [v0 uid];
    runningInSyncBubble_res = v1 != geteuid();
  }

  else
  {
    runningInSyncBubble_res = 0;
  }
}

- (void)wakeUpForURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__FPDaemonConnection_wakeUpForURL_completionHandler___block_invoke;
  v10[3] = &unk_1E793C650;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [connectionProxy wakeUpForURLFixed:lCopy completionHandler:v10];
}

void __53__FPDaemonConnection_wakeUpForURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__FPDaemonConnection_wakeUpForURL_completionHandler___block_invoke_cold_1(v6);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v5);
  }
}

- (void)extendSandboxForFileURL:(id)l fromProviderID:(id)d toConsumerID:(id)iD completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (void)extendSandboxAndCreatePlaceholderForFileURL:(id)l fromProviderID:(id)d toConsumerID:(id)iD completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, v8, 0, 0, 0);
}

- (void)startProvidingItemAtURL:(id)l fromProviderID:(id)d forConsumerID:(id)iD completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, v8);
}

void __98__FPDaemonConnection_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __98__FPDaemonConnection_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_completionHandler___block_invoke_cold_1(a1, v3);
    }
  }

  if (*(a1 + 40))
  {
    v5 = *MEMORY[0x1E696A250];
    v17[0] = @"NSFileProviderErrorDomain";
    v17[1] = v5;
    v17[2] = *MEMORY[0x1E696A798];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
    v7 = [v3 fp_unwrappedErrorForDomains:v6];

    if ([v7 fp_isPOSIXErrorCode:16])
    {
      v8 = [v3 userInfo];
      v9 = [v8 objectForKey:*MEMORY[0x1E696A278]];

      v10 = *(a1 + 40);
      v11 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696AA08];
      v16 = v7;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v13 = [v11 errorWithDomain:v5 code:255 userInfo:v12];
      (*(v10 + 16))(v10, v13);
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __71__FPDaemonConnection_evictItemWithID_evictionReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__FPDaemonConnection_evictItemWithID_evictionReason_completionHandler___block_invoke_cold_1(a1, v3);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)pinItemWithID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy pinItemWithID:dCopy completionHandler:handlerCopy];
}

- (void)unpinItemWithID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy unpinItemWithID:dCopy completionHandler:handlerCopy];
}

- (void)providerDomainsCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__FPDaemonConnection_providerDomainsCompletionHandler___block_invoke;
  v7[3] = &unk_1E793C678;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [connectionProxy providerDomainsCompletionHandler:v7];
}

void __55__FPDaemonConnection_providerDomainsCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__FPDaemonConnection_providerDomainsCompletionHandler___block_invoke_cold_1(v6);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v5);
  }
}

- (void)providersCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__FPDaemonConnection_providersCompletionHandler___block_invoke;
  v7[3] = &unk_1E793C678;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [connectionProxy providerDomainsCompletionHandler:v7];
}

void __49__FPDaemonConnection_providersCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__FPDaemonConnection_providerDomainsCompletionHandler___block_invoke_cold_1(v6);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v5);
  }
}

- (void)fetchDomainServicerForProviderDomainID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__FPDaemonConnection_fetchDomainServicerForProviderDomainID_handler___block_invoke;
  v11[3] = &unk_1E793C6A0;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  [connectionProxy fetchDomainServicerForProviderDomainID:v10 handler:v11];
}

void __69__FPDaemonConnection_fetchDomainServicerForProviderDomainID_handler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __69__FPDaemonConnection_fetchDomainServicerForProviderDomainID_handler___block_invoke_cold_1(a1, v9);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v7, v8, v9);
  }
}

- (void)extendBookmarkForFileURL:(id)l toConsumerID:(id)d completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  dCopy = d;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__FPDaemonConnection_extendBookmarkForFileURL_toConsumerID_completionHandler___block_invoke;
  v14[3] = &unk_1E793C6C8;
  v15 = lCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = lCopy;
  [connectionProxy extendBookmarkForFileURL:v13 toConsumerID:dCopy options:0 completionHandler:v14];
}

void __78__FPDaemonConnection_extendBookmarkForFileURL_toConsumerID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __78__FPDaemonConnection_extendBookmarkForFileURL_toConsumerID_completionHandler___block_invoke_cold_1(a1, v6);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

- (void)updateLastUsedDateForFileURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [FPDaemonConnection updateLastUsedDateForFileURL:completionHandler:];
  }

  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy updateLastUsedDate:lCopy completionHandler:handlerCopy];
}

- (void)forceIngestionForItemID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [FPDaemonConnection forceIngestionForItemID:completionHandler:];
  }

  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__FPDaemonConnection_forceIngestionForItemID_completionHandler___block_invoke;
  v10[3] = &unk_1E7939100;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [connectionProxy forceIngestionForItemID:dCopy completionHandler:v10];
}

void __64__FPDaemonConnection_forceIngestionForItemID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__FPDaemonConnection_forceIngestionForItemID_completionHandler___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)forceIngestionForItemIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [FPDaemonConnection forceIngestionForItemIDs:completionHandler:];
  }

  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__FPDaemonConnection_forceIngestionForItemIDs_completionHandler___block_invoke;
  v10[3] = &unk_1E793C678;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [connectionProxy forceIngestionForItemIDs:dsCopy completionHandler:v10];
}

void __65__FPDaemonConnection_forceIngestionForItemIDs_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__FPDaemonConnection_forceIngestionForItemIDs_completionHandler___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)forceLatestVersionOnDiskForItemID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [FPDaemonConnection forceLatestVersionOnDiskForItemID:completionHandler:];
  }

  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__FPDaemonConnection_forceLatestVersionOnDiskForItemID_completionHandler___block_invoke;
  v10[3] = &unk_1E793C6F0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [connectionProxy forceLatestVersionOnDiskForItemID:dCopy completionHandler:v10];
}

void __74__FPDaemonConnection_forceLatestVersionOnDiskForItemID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74__FPDaemonConnection_forceLatestVersionOnDiskForItemID_completionHandler___block_invoke_cold_1(v6);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)detachItemWithID:(id)d relocatingAtURL:(id)l options:(unint64_t)options completionHandler:(id)handler
{
  dCopy = d;
  lCopy = l;
  handlerCopy = handler;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__FPDaemonConnection_detachItemWithID_relocatingAtURL_options_completionHandler___block_invoke;
  v17[3] = &unk_1E793C718;
  v18 = dCopy;
  v19 = lCopy;
  v21 = handlerCopy;
  optionsCopy = options;
  selfCopy = self;
  v14 = lCopy;
  v15 = dCopy;
  v16 = handlerCopy;
  [connectionProxy documentURLFromItemID:v15 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 completionHandler:v17];
}

void __81__FPDaemonConnection_detachItemWithID_relocatingAtURL_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v18 = *(a1 + 56);
    if (v9)
    {
      (*(v18 + 16))(*(a1 + 56), v9);
    }

    else
    {
      v19 = [*(a1 + 32) identifier];
      v20 = FPItemNotFoundError(v19);
      (*(v18 + 16))(v18, v20);
    }
  }

  else
  {
    v11 = [NSFileProviderKnownFolderDescriptor alloc];
    v12 = *(a1 + 40);
    v13 = v12;
    if (!v12)
    {
      v13 = [v7 url];
    }

    v14 = [v7 url];
    v15 = [(NSFileProviderKnownFolderDescriptor *)v11 initWithKnownFolder:v13 logicalLocation:v14 detachOptions:*(a1 + 64)];

    if (!v12)
    {
    }

    v16 = *(a1 + 48);
    v22[0] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [v16 detachKnownFolders:v17 completionHandler:*(a1 + 56)];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)detachKnownFolders:(id)folders completionHandler:(id)handler
{
  handlerCopy = handler;
  foldersCopy = folders;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy detachKnownFolders:foldersCopy completionHandler:handlerCopy];
}

- (void)importDetachedFolder:(id)folder parentID:(id)d logicalName:(id)name options:(unint64_t)options completionHandler:(id)handler
{
  folderCopy = folder;
  dCopy = d;
  nameCopy = name;
  handlerCopy = handler;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __90__FPDaemonConnection_importDetachedFolder_parentID_logicalName_options_completionHandler___block_invoke;
  v21[3] = &unk_1E793C740;
  v22 = dCopy;
  v23 = nameCopy;
  v26 = handlerCopy;
  optionsCopy = options;
  v24 = folderCopy;
  selfCopy = self;
  v17 = folderCopy;
  v18 = nameCopy;
  v19 = dCopy;
  v20 = handlerCopy;
  [connectionProxy documentURLFromItemID:v19 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 completionHandler:v21];
}

void __90__FPDaemonConnection_importDetachedFolder_parentID_logicalName_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v16 = *(a1 + 64);
    if (v9)
    {
      (*(v16 + 16))(*(a1 + 64), v9);
    }

    else
    {
      v17 = [*(a1 + 32) identifier];
      v18 = FPItemNotFoundError(v17);
      (*(v16 + 16))(v16, v18);
    }
  }

  else
  {
    v11 = [v7 url];
    v12 = [v11 URLByAppendingPathComponent:*(a1 + 40) isDirectory:1];

    v13 = [[NSFileProviderKnownFolderDescriptor alloc] initWithKnownFolder:*(a1 + 48) logicalLocation:v12 detachOptions:*(a1 + 72)];
    v14 = *(a1 + 56);
    v20[0] = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [v14 detachKnownFolders:v15 completionHandler:*(a1 + 64)];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)attachItemWithID:(id)d options:(unint64_t)options completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__FPDaemonConnection_attachItemWithID_options_completionHandler___block_invoke;
  v13[3] = &unk_1E793C768;
  v14 = dCopy;
  selfCopy = self;
  v16 = handlerCopy;
  optionsCopy = options;
  v11 = dCopy;
  v12 = handlerCopy;
  [connectionProxy documentURLFromItemID:v11 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 completionHandler:v13];
}

void __65__FPDaemonConnection_attachItemWithID_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v14 = *(a1 + 48);
    if (v9)
    {
      (*(v14 + 16))(*(a1 + 48), v9);
    }

    else
    {
      v15 = [*(a1 + 32) identifier];
      v16 = FPItemNotFoundError(v15);
      (*(v14 + 16))(v14, v16);
    }
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = [v7 url];
    v18[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [v11 attachKnownFolders:v13 options:*(a1 + 56) completionHandler:*(a1 + 48)];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)attachKnownFolders:(id)folders options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  foldersCopy = folders;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy attachKnownFolders:foldersCopy options:options completionHandler:handlerCopy];
}

- (void)bookmarkableStringFromDocumentURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy bookmarkableStringFromDocumentURL:lCopy options:0 completionHandler:handlerCopy];
}

- (id)bookmarkableStringFromDocumentURL:(id)l error:(id *)error
{
  lCopy = l;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__15;
  v23 = __Block_byref_object_dispose__15;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__15;
  v17 = __Block_byref_object_dispose__15;
  v18 = 0;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  synchronousRemoteObjectProxy = [connectionProxy synchronousRemoteObjectProxy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__FPDaemonConnection_bookmarkableStringFromDocumentURL_error___block_invoke;
  v12[3] = &unk_1E793C790;
  v12[4] = &v19;
  v12[5] = &v13;
  [synchronousRemoteObjectProxy bookmarkableStringFromDocumentURL:lCopy options:0 completionHandler:v12];

  if (error)
  {
    v9 = v14[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v10;
}

void __62__FPDaemonConnection_bookmarkableStringFromDocumentURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)documentURLFromBookmarkableString:(id)string completionHandler:(id)handler
{
  handlerCopy = handler;
  stringCopy = string;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__FPDaemonConnection_documentURLFromBookmarkableString_completionHandler___block_invoke;
  v10[3] = &unk_1E793C7B8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [connectionProxy documentURLFromBookmarkableString:stringCopy creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 completionHandler:v10];
}

void __74__FPDaemonConnection_documentURLFromBookmarkableString_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = a4;
    v7 = [a2 url];
    (*(v4 + 16))(v4, v7, v6);
  }
}

- (id)documentURLFromBookmarkableString:(id)string error:(id *)error
{
  stringCopy = string;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__15;
  v23 = __Block_byref_object_dispose__15;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__15;
  v17 = __Block_byref_object_dispose__15;
  v18 = 0;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  synchronousRemoteObjectProxy = [connectionProxy synchronousRemoteObjectProxy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__FPDaemonConnection_documentURLFromBookmarkableString_error___block_invoke;
  v12[3] = &unk_1E793C7E0;
  v12[4] = &v19;
  v12[5] = &v13;
  [synchronousRemoteObjectProxy documentURLFromBookmarkableString:stringCopy creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 completionHandler:v12];

  if (error)
  {
    v9 = v14[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v10;
}

void __62__FPDaemonConnection_documentURLFromBookmarkableString_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [a2 url];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (id)valuesForAttributes:(id)attributes forItemAtURL:(id)l error:(id *)error
{
  attributesCopy = attributes;
  lCopy = l;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__15;
  v29 = __Block_byref_object_dispose__15;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__15;
  v23 = __Block_byref_object_dispose__15;
  v24 = 0;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  synchronousRemoteObjectProxy = [connectionProxy synchronousRemoteObjectProxy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__FPDaemonConnection_valuesForAttributes_forItemAtURL_error___block_invoke;
  v15[3] = &unk_1E793C808;
  v12 = lCopy;
  v16 = v12;
  v17 = &v19;
  v18 = &v25;
  [synchronousRemoteObjectProxy valuesForAttributes:attributesCopy forItemAtURL:v12 completionHandler:v15];

  if (error)
  {
    *error = v26[5];
  }

  v13 = v20[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v13;
}

void __61__FPDaemonConnection_valuesForAttributes_forItemAtURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __61__FPDaemonConnection_valuesForAttributes_forItemAtURL_error___block_invoke_cold_1(a1, v5, v7);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
}

- (id)listOfMonitoredAppsWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__15;
  v20 = __Block_byref_object_dispose__15;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__15;
  v14 = __Block_byref_object_dispose__15;
  v15 = 0;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  synchronousRemoteObjectProxy = [connectionProxy synchronousRemoteObjectProxy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__FPDaemonConnection_listOfMonitoredAppsWithError___block_invoke;
  v9[3] = &unk_1E793C830;
  v9[4] = &v16;
  v9[5] = &v10;
  [synchronousRemoteObjectProxy fetchListOfMonitoredApps:v9];

  if (error)
  {
    v6 = v11[5];
    if (v6)
    {
      *error = v6;
    }
  }

  v7 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

void __51__FPDaemonConnection_listOfMonitoredAppsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)dumpStateTo:(id)to providerFilter:(id)filter options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  filterCopy = filter;
  toCopy = to;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy dumpStateTo:toCopy providerFilter:filterCopy options:options completionHandler:handlerCopy];
}

- (void)dumpTelemetryTo:(id)to providerFilter:(id)filter completionHandler:(id)handler
{
  handlerCopy = handler;
  filterCopy = filter;
  toCopy = to;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy dumpTelemetryTo:toCopy providerFilter:filterCopy completionHandler:handlerCopy];
}

- (void)getPersonaForProvider:(id)provider completionHandler:(id)handler
{
  handlerCopy = handler;
  providerCopy = provider;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  synchronousRemoteObjectProxy = [connectionProxy synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy getPersonaForProvider:providerCopy completionHandler:handlerCopy];
}

- (void)copyDatabaseForFPCKStartingAtPath:(id)path completionHandler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__15;
  v17[4] = __Block_byref_object_dispose__15;
  v18 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__15;
  v15[4] = __Block_byref_object_dispose__15;
  v16 = 0;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  synchronousRemoteObjectProxy = [connectionProxy synchronousRemoteObjectProxy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__FPDaemonConnection_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke;
  v11[3] = &unk_1E793C858;
  v13 = v17;
  v14 = v15;
  v10 = handlerCopy;
  v12 = v10;
  [synchronousRemoteObjectProxy copyDatabaseForFPCKStartingAtPath:pathCopy completionHandler:v11];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
}

void __74__FPDaemonConnection_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke(void *a1, void *a2, id obj)
{
  objc_storeStrong((*(a1[5] + 8) + 40), obj);
  v12 = obj;
  v6 = a2;
  v7 = [v6 copy];

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1[6] + 8) + 40);
  v11 = *(*(a1[5] + 8) + 40);
  (*(a1[4] + 16))();
}

- (void)waitForStabilizationOfDomainWithID:(id)d mode:(unint64_t)mode completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  synchronousRemoteObjectProxy = [connectionProxy synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy waitForStabilizationOfDomainWithID:dCopy mode:mode completionHandler:handlerCopy];
}

- (void)spotlightReindexAllItemsForBundleID:(id)d protectionClass:(id)class completionHandler:(id)handler
{
  handlerCopy = handler;
  classCopy = class;
  dCopy = d;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  synchronousRemoteObjectProxy = [connectionProxy synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy spotlightReindexAllItemsForBundleID:dCopy protectionClass:classCopy completionHandler:handlerCopy];
}

- (void)spotlightReindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class completionHandler:(id)handler
{
  handlerCopy = handler;
  classCopy = class;
  dCopy = d;
  identifiersCopy = identifiers;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  synchronousRemoteObjectProxy = [connectionProxy synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy spotlightReindexItemsWithIdentifiers:identifiersCopy bundleID:dCopy protectionClass:classCopy completionHandler:handlerCopy];
}

- (void)_test_retrieveItemWithName:(id)name completionHandler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__FPDaemonConnection__test_retrieveItemWithName_completionHandler___block_invoke;
  v10[3] = &unk_1E793C4D0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [connectionProxy _test_retrieveItemWithName:nameCopy completionHandler:v10];
}

void __67__FPDaemonConnection__test_retrieveItemWithName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 url];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)_test_callFileProviderManagerAPIs:(id)is
{
  isCopy = is;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy _test_callFileProviderManagerAPIs:isCopy];
}

- (void)getURLForContainerWithItemID:(id)d inDataScopeDomainWithIdentifier:(id)identifier documentsScopeDomainIdentifier:(id)domainIdentifier documentsFolderItemIdentifier:(id)itemIdentifier completionHandler:(id)handler
{
  handlerCopy = handler;
  itemIdentifierCopy = itemIdentifier;
  domainIdentifierCopy = domainIdentifier;
  identifierCopy = identifier;
  dCopy = d;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __162__FPDaemonConnection_getURLForContainerWithItemID_inDataScopeDomainWithIdentifier_documentsScopeDomainIdentifier_documentsFolderItemIdentifier_completionHandler___block_invoke;
  v19[3] = &unk_1E793C7B8;
  v20 = handlerCopy;
  v18 = handlerCopy;
  [connectionProxy getURLForContainerWithItemID:dCopy inDataScopeDomainWithIdentifier:identifierCopy documentsScopeDomainIdentifier:domainIdentifierCopy documentsFolderItemIdentifier:itemIdentifierCopy completionHandler:v19];
}

void __162__FPDaemonConnection_getURLForContainerWithItemID_inDataScopeDomainWithIdentifier_documentsScopeDomainIdentifier_documentsFolderItemIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  v10 = [a2 url];
  v9 = [v8 url];

  (*(v6 + 16))(v6, v10, v9, v7);
}

- (void)backUpUserURL:(id)l outputUserURL:(id)rL completionHandler:(id)handler
{
  handlerCopy = handler;
  rLCopy = rL;
  lCopy = l;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__FPDaemonConnection_backUpUserURL_outputUserURL_completionHandler___block_invoke;
  v13[3] = &unk_1E793A3D0;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [connectionProxy backUpUserURL:lCopy outputUserURL:rLCopy completionHandler:v13];
}

void __68__FPDaemonConnection_backUpUserURL_outputUserURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __68__FPDaemonConnection_backUpUserURL_outputUserURL_completionHandler___block_invoke_cold_1();
    }

    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v5 path];
    v10 = [v8 fileExistsAtPath:v9];

    if (v10)
    {
      v17 = 0;
      v11 = [v8 removeItemAtURL:v5 error:&v17];
      v12 = v17;
      if ((v11 & 1) == 0)
      {
        v13 = fp_current_or_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __68__FPDaemonConnection_backUpUserURL_outputUserURL_completionHandler___block_invoke_cold_2();
        }
      }
    }

    v14 = [v6 domain];
    if ([v14 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v15 = [v6 code];

      if (v15 == 4099)
      {
        v16 = *(*(a1 + 32) + 16);
LABEL_16:
        v16();

        goto LABEL_17;
      }
    }

    else
    {
    }

    v16 = *(*(a1 + 32) + 16);
    goto LABEL_16;
  }

  (*(*(a1 + 32) + 16))();
LABEL_17:
}

- (void)restoreUserURL:(id)l fromBuild:(id)build restoreType:(id)type completionHandler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  buildCopy = build;
  lCopy = l;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy restoreUserURL:lCopy fromBuild:buildCopy restoreType:typeCopy cleanupOnSuccess:1 completionHandler:handlerCopy];
}

- (void)stateForDomainWithID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__FPDaemonConnection_stateForDomainWithID_completionHandler___block_invoke;
  v10[3] = &unk_1E793C880;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [connectionProxy stateForDomainWithID:dCopy completionHandler:v10];
}

uint64_t __61__FPDaemonConnection_stateForDomainWithID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)runFPCKForDomainWithID:(id)d databasesBackupsPath:(id)path options:(unint64_t)options reason:(unint64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  pathCopy = path;
  dCopy = d;
  if ([pathCopy count] != 1)
  {
    [FPDaemonConnection runFPCKForDomainWithID:databasesBackupsPath:options:reason:completionHandler:];
  }

  v15 = MEMORY[0x1E695DFF8];
  allKeys = [pathCopy allKeys];
  v17 = [allKeys objectAtIndexedSubscript:0];
  v22 = [v15 URLWithString:v17];

  v18 = MEMORY[0x1E695DFF8];
  allValues = [pathCopy allValues];

  v20 = [allValues objectAtIndexedSubscript:0];
  v21 = [v18 URLWithString:v20];

  [(FPDaemonConnection *)self runFPCKForDomainWithID:dCopy domainRootURL:v22 databaseBackupPath:v21 options:options reason:reason launchType:2 completionHandler:handlerCopy];
}

- (void)runFPCKForDomainWithID:(id)d domainRootURL:(id)l databaseBackupPath:(id)path options:(unint64_t)options reason:(unint64_t)reason launchType:(unint64_t)type contentBarrier:(int64_t)barrier completionHandler:(id)self0
{
  handlerCopy = handler;
  pathCopy = path;
  lCopy = l;
  dCopy = d;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy runFPCKForDomainWithID:dCopy domainRootURL:lCopy databaseBackupPath:pathCopy options:options reason:reason launchType:type contentBarrier:barrier completionHandler:handlerCopy];
}

- (void)calculateNonPurgeableSpaceUsageOfDomain:(id)domain completionHandler:(id)handler
{
  handlerCopy = handler;
  domainCopy = domain;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy calculateNonPurgeableSpaceUsageOfDomain:domainCopy completionHandler:handlerCopy];
}

- (void)resolveConflictAtURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  FPPrecheckTCCReadAccess(lCopy);
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy resolveConflictAtURL:lCopy completionHandler:handlerCopy];
}

- (void)fetchAndStartEnumeratingWithSettings:(id)settings observer:(id)observer completionHandler:(id)handler
{
  handlerCopy = handler;
  observerCopy = observer;
  settingsCopy = settings;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy fetchAndStartEnumeratingWithSettings:settingsCopy observer:observerCopy completionHandler:handlerCopy];
}

- (void)dumpIndexerInfoFor:(id)for withName:(id)name to:(id)to completionHandler:(id)handler
{
  handlerCopy = handler;
  toCopy = to;
  nameCopy = name;
  forCopy = for;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy dumpIndexerInfoFor:forCopy withName:nameCopy to:toCopy completionHandler:handlerCopy];
}

- (void)pauseIndexingFor:(id)for completionHandler:(id)handler
{
  handlerCopy = handler;
  forCopy = for;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy pauseIndexingFor:forCopy completionHandler:handlerCopy];
}

- (void)resumeIndexingFor:(id)for completionHandler:(id)handler
{
  handlerCopy = handler;
  forCopy = for;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy resumeIndexingFor:forCopy completionHandler:handlerCopy];
}

- (void)getSavedDiagnosticsFor:(id)for completionHandler:(id)handler
{
  handlerCopy = handler;
  forCopy = for;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy getSavedDiagnosticsFor:forCopy completionHandler:handlerCopy];
}

- (void)clearDiagnosticsState:(id)state completionHandler:(id)handler
{
  handlerCopy = handler;
  stateCopy = state;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy clearDiagnosticsState:stateCopy completionHandler:handlerCopy];
}

- (void)validateDiagnosticsJson:(id)json completionHandler:(id)handler
{
  handlerCopy = handler;
  jsonCopy = json;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy validateDiagnosticsJson:jsonCopy completionHandler:handlerCopy];
}

- (void)checkErrorAgainstDiagnosticsJson:(id)json inputError:(id)error errorDirection:(id)direction jobCode:(id)code underlying:(id)underlying completionHandler:(id)handler
{
  handlerCopy = handler;
  underlyingCopy = underlying;
  codeCopy = code;
  directionCopy = direction;
  errorCopy = error;
  jsonCopy = json;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy checkErrorAgainstDiagnosticsJson:jsonCopy inputError:errorCopy errorDirection:directionCopy jobCode:codeCopy underlying:underlyingCopy completionHandler:handlerCopy];
}

- (void)enumerateSearchResultForRequest:(id)request providerDomainID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  requestCopy = request;
  connectionProxy = [(FPDaemonConnection *)self connectionProxy];
  [connectionProxy enumerateSearchResultForRequest:requestCopy providerDomainID:dCopy completionHandler:handlerCopy];
}

void __53__FPDaemonConnection_wakeUpForURL_completionHandler___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __98__FPDaemonConnection_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) fp_shortDescription];
  v4 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __71__FPDaemonConnection_evictItemWithID_evictionReason_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __55__FPDaemonConnection_providerDomainsCompletionHandler___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __69__FPDaemonConnection_fetchDomainServicerForProviderDomainID_handler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __78__FPDaemonConnection_extendBookmarkForFileURL_toConsumerID_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) fp_shortDescription];
  v4 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)updateLastUsedDateForFileURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"completionHandler" object:? file:? lineNumber:? description:?];
}

- (void)forceIngestionForItemID:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"completionHandler" object:? file:? lineNumber:? description:?];
}

void __64__FPDaemonConnection_forceIngestionForItemID_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, v0, v1, "[ERROR] Cannot forceIngestionOnDomainForItemID. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)forceIngestionForItemIDs:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"completionHandler" object:? file:? lineNumber:? description:?];
}

void __65__FPDaemonConnection_forceIngestionForItemIDs_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, v0, v1, "[ERROR] Cannot forceIngestionForItems. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)forceLatestVersionOnDiskForItemID:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"completionHandler" object:? file:? lineNumber:? description:?];
}

void __74__FPDaemonConnection_forceLatestVersionOnDiskForItemID_completionHandler___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)createItemBasedOnTemplate:fields:urlWrapper:options:bounceOnCollision:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"completionHandler" object:? file:? lineNumber:? description:?];
}

void __61__FPDaemonConnection_valuesForAttributes_forItemAtURL_error___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) fp_shortDescription];
  OUTLINED_FUNCTION_2();
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] returning URL properties for %@\n value: %@", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __68__FPDaemonConnection_backUpUserURL_outputUserURL_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, v0, v1, "[ERROR] backup failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __68__FPDaemonConnection_backUpUserURL_outputUserURL_completionHandler___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, v0, v1, "[ERROR] backup cleanup failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)runFPCKForDomainWithID:databasesBackupsPath:options:reason:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:"-[FPDaemonConnection runFPCKForDomainWithID:databasesBackupsPath:options:reason:completionHandler:]" object:? file:? lineNumber:? description:?];
}

@end