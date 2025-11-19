@interface FPDaemonConnection
+ (BOOL)runningInSyncBubble;
+ (NSString)disallowedConnectionReason;
+ (id)remoteObjectProxyWithErrorHandler:(id)a3;
+ (id)sharedConnection;
+ (id)sharedConnectionProxy;
+ (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
+ (id)synchronousSharedConnectionProxy;
+ (void)setDisallowedConnectionReason:(id)a3;
- (FPDaemonConnection)initWithUser:(unsigned int)a3;
- (id)bookmarkableStringFromDocumentURL:(id)a3 error:(id *)a4;
- (id)connectionProxy;
- (id)documentURLFromBookmarkableString:(id)a3 error:(id *)a4;
- (id)listOfMonitoredAppsWithError:(id *)a3;
- (id)newXPCConnection;
- (id)nonErrorCheckingConnection;
- (id)valuesForAttributes:(id)a3 forItemAtURL:(id)a4 error:(id *)a5;
- (void)_test_callFileProviderManagerAPIs:(id)a3;
- (void)_test_retrieveItemWithName:(id)a3 completionHandler:(id)a4;
- (void)attachItemWithID:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)attachKnownFolders:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)backUpUserURL:(id)a3 outputUserURL:(id)a4 completionHandler:(id)a5;
- (void)bookmarkableStringFromDocumentURL:(id)a3 completionHandler:(id)a4;
- (void)calculateNonPurgeableSpaceUsageOfDomain:(id)a3 completionHandler:(id)a4;
- (void)checkErrorAgainstDiagnosticsJson:(id)a3 inputError:(id)a4 errorDirection:(id)a5 jobCode:(id)a6 underlying:(id)a7 completionHandler:(id)a8;
- (void)clearDiagnosticsState:(id)a3 completionHandler:(id)a4;
- (void)copyDatabaseForFPCKStartingAtPath:(id)a3 completionHandler:(id)a4;
- (void)detachItemWithID:(id)a3 relocatingAtURL:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (void)detachKnownFolders:(id)a3 completionHandler:(id)a4;
- (void)documentURLFromBookmarkableString:(id)a3 completionHandler:(id)a4;
- (void)dumpIndexerInfoFor:(id)a3 withName:(id)a4 to:(id)a5 completionHandler:(id)a6;
- (void)dumpStateTo:(id)a3 providerFilter:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (void)dumpTelemetryTo:(id)a3 providerFilter:(id)a4 completionHandler:(id)a5;
- (void)enumerateSearchResultForRequest:(id)a3 providerDomainID:(id)a4 completionHandler:(id)a5;
- (void)extendBookmarkForFileURL:(id)a3 toConsumerID:(id)a4 completionHandler:(id)a5;
- (void)extendSandboxAndCreatePlaceholderForFileURL:(id)a3 fromProviderID:(id)a4 toConsumerID:(id)a5 completionHandler:(id)a6;
- (void)extendSandboxForFileURL:(id)a3 fromProviderID:(id)a4 toConsumerID:(id)a5 completionHandler:(id)a6;
- (void)fetchAndStartEnumeratingWithSettings:(id)a3 observer:(id)a4 completionHandler:(id)a5;
- (void)fetchDomainServicerForProviderDomainID:(id)a3 handler:(id)a4;
- (void)forceIngestionForItemID:(id)a3 completionHandler:(id)a4;
- (void)forceIngestionForItemIDs:(id)a3 completionHandler:(id)a4;
- (void)forceLatestVersionOnDiskForItemID:(id)a3 completionHandler:(id)a4;
- (void)getPersonaForProvider:(id)a3 completionHandler:(id)a4;
- (void)getSavedDiagnosticsFor:(id)a3 completionHandler:(id)a4;
- (void)getURLForContainerWithItemID:(id)a3 inDataScopeDomainWithIdentifier:(id)a4 documentsScopeDomainIdentifier:(id)a5 documentsFolderItemIdentifier:(id)a6 completionHandler:(id)a7;
- (void)importDetachedFolder:(id)a3 parentID:(id)a4 logicalName:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7;
- (void)pauseIndexingFor:(id)a3 completionHandler:(id)a4;
- (void)pinItemWithID:(id)a3 completionHandler:(id)a4;
- (void)providerDomainsCompletionHandler:(id)a3;
- (void)providersCompletionHandler:(id)a3;
- (void)resolveConflictAtURL:(id)a3 completionHandler:(id)a4;
- (void)restoreUserURL:(id)a3 fromBuild:(id)a4 restoreType:(id)a5 completionHandler:(id)a6;
- (void)resumeIndexingFor:(id)a3 completionHandler:(id)a4;
- (void)runFPCKForDomainWithID:(id)a3 databasesBackupsPath:(id)a4 options:(unint64_t)a5 reason:(unint64_t)a6 completionHandler:(id)a7;
- (void)runFPCKForDomainWithID:(id)a3 domainRootURL:(id)a4 databaseBackupPath:(id)a5 options:(unint64_t)a6 reason:(unint64_t)a7 launchType:(unint64_t)a8 contentBarrier:(int64_t)a9 completionHandler:(id)a10;
- (void)spotlightReindexAllItemsForBundleID:(id)a3 protectionClass:(id)a4 completionHandler:(id)a5;
- (void)spotlightReindexItemsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 completionHandler:(id)a6;
- (void)startProvidingItemAtURL:(id)a3 fromProviderID:(id)a4 forConsumerID:(id)a5 completionHandler:(id)a6;
- (void)stateForDomainWithID:(id)a3 completionHandler:(id)a4;
- (void)unpinItemWithID:(id)a3 completionHandler:(id)a4;
- (void)updateLastUsedDateForFileURL:(id)a3 completionHandler:(id)a4;
- (void)validateDiagnosticsJson:(id)a3 completionHandler:(id)a4;
- (void)waitForStabilizationOfDomainWithID:(id)a3 mode:(unint64_t)a4 completionHandler:(id)a5;
- (void)wakeUpForURL:(id)a3 completionHandler:(id)a4;
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
  v2 = self;
  objc_sync_enter(v2);
  connection = v2->_connection;
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

    v6 = [(FPDaemonConnection *)v2 newXPCConnection];
    objc_initWeak(buf, v2);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__FPDaemonConnection_nonErrorCheckingConnection__block_invoke;
    v13[3] = &unk_1E7939010;
    objc_copyWeak(&v14, buf);
    [v6 setInvalidationHandler:v13];
    objc_initWeak(&location, v6);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__FPDaemonConnection_nonErrorCheckingConnection__block_invoke_13;
    v10[3] = &unk_1E7939010;
    objc_copyWeak(&v11, &location);
    [v6 setInterruptionHandler:v10];
    [v6 resume];
    v7 = v2->_connection;
    v2->_connection = v6;
    v8 = v6;

    v4 = v2->_connection;
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)newXPCConnection
{
  v2 = self;
  objc_sync_enter(v2);
  if (daemonConnectionDisallowedReason)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Establishing connection to fileproviderd is disallowed in this context: %@", daemonConnectionDisallowedReason];
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [FPXEnumerator initWithObservedItemID:domainContext:vendorEnumerator:nsFileProviderRequest:observer:isWorkingSetEnum:queue:];
    }

    __assert_rtn("-[FPDaemonConnection newXPCConnection]", "/Library/Caches/com.apple.xbs/Sources/FileProvider/framework/FPDaemonConnection.m", 126, [v6 UTF8String]);
  }

  objc_sync_exit(v2);

  v3 = FPDDaemonXPCInterface();
  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.FileProvider" options:0];
  [v4 setRemoteObjectInterface:v3];

  return v4;
}

+ (id)synchronousSharedConnectionProxy
{
  v2 = +[FPDaemonConnection sharedConnection];
  v3 = [v2 connectionProxy];
  v4 = [v3 synchronousRemoteObjectProxy];

  return v4;
}

+ (id)sharedConnectionProxy
{
  v2 = +[FPDaemonConnection sharedConnection];
  v3 = [v2 connectionProxy];

  return v3;
}

- (id)connectionProxy
{
  v3 = [FPXPCAutomaticErrorProxy alloc];
  v4 = [(FPDaemonConnection *)self nonErrorCheckingConnection];
  v5 = [(FPXPCAutomaticErrorProxy *)v3 initWithConnection:v4 protocol:&unk_1F1FF3CA8 orError:0 name:@"FPDaemonConnection proxy" requestPid:getpid()];

  [(FPXPCAutomaticErrorProxy *)v5 setSanitizeErrors:0];
  [(FPXPCAutomaticErrorProxy *)v5 setGenerateSignposts:1];

  return v5;
}

+ (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedConnection];
  v6 = [v5 nonErrorCheckingConnection];
  v7 = [v6 remoteObjectProxyWithErrorHandler:v4];

  return v7;
}

+ (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedConnection];
  v6 = [v5 nonErrorCheckingConnection];
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v4];

  return v7;
}

uint64_t __40__FPDaemonConnection_connectionForUser___block_invoke()
{
  connectionForUser__connectionByUID = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (FPDaemonConnection)initWithUser:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = FPDaemonConnection;
  result = [(FPDaemonConnection *)&v5 init];
  if (result)
  {
    result->_user = a3;
  }

  return result;
}

+ (void)setDisallowedConnectionReason:(id)a3
{
  v4 = a3;
  obj = a1;
  objc_sync_enter(obj);
  v5 = daemonConnectionDisallowedReason;
  daemonConnectionDisallowedReason = v4;

  objc_sync_exit(obj);
}

+ (NSString)disallowedConnectionReason
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = daemonConnectionDisallowedReason;
  objc_sync_exit(v2);

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

- (void)wakeUpForURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPDaemonConnection *)self connectionProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__FPDaemonConnection_wakeUpForURL_completionHandler___block_invoke;
  v10[3] = &unk_1E793C650;
  v11 = v6;
  v9 = v6;
  [v8 wakeUpForURLFixed:v7 completionHandler:v10];
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

- (void)extendSandboxForFileURL:(id)a3 fromProviderID:(id)a4 toConsumerID:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v8 = FPNotSupportedError();
  (*(a6 + 2))(v7, 0, v8);
}

- (void)extendSandboxAndCreatePlaceholderForFileURL:(id)a3 fromProviderID:(id)a4 toConsumerID:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v8 = FPNotSupportedError();
  (*(a6 + 2))(v7, v8, 0, 0, 0);
}

- (void)startProvidingItemAtURL:(id)a3 fromProviderID:(id)a4 forConsumerID:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v8 = FPNotSupportedError();
  (*(a6 + 2))(v7, v8);
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

- (void)pinItemWithID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPDaemonConnection *)self connectionProxy];
  [v8 pinItemWithID:v7 completionHandler:v6];
}

- (void)unpinItemWithID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPDaemonConnection *)self connectionProxy];
  [v8 unpinItemWithID:v7 completionHandler:v6];
}

- (void)providerDomainsCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(FPDaemonConnection *)self connectionProxy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__FPDaemonConnection_providerDomainsCompletionHandler___block_invoke;
  v7[3] = &unk_1E793C678;
  v8 = v4;
  v6 = v4;
  [v5 providerDomainsCompletionHandler:v7];
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

- (void)providersCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(FPDaemonConnection *)self connectionProxy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__FPDaemonConnection_providersCompletionHandler___block_invoke;
  v7[3] = &unk_1E793C678;
  v8 = v4;
  v6 = v4;
  [v5 providerDomainsCompletionHandler:v7];
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

- (void)fetchDomainServicerForProviderDomainID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FPDaemonConnection *)self connectionProxy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__FPDaemonConnection_fetchDomainServicerForProviderDomainID_handler___block_invoke;
  v11[3] = &unk_1E793C6A0;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 fetchDomainServicerForProviderDomainID:v10 handler:v11];
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

- (void)extendBookmarkForFileURL:(id)a3 toConsumerID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(FPDaemonConnection *)self connectionProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__FPDaemonConnection_extendBookmarkForFileURL_toConsumerID_completionHandler___block_invoke;
  v14[3] = &unk_1E793C6C8;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [v11 extendBookmarkForFileURL:v13 toConsumerID:v10 options:0 completionHandler:v14];
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

- (void)updateLastUsedDateForFileURL:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (!v6)
  {
    [FPDaemonConnection updateLastUsedDateForFileURL:completionHandler:];
  }

  v7 = [(FPDaemonConnection *)self connectionProxy];
  [v7 updateLastUsedDate:v8 completionHandler:v6];
}

- (void)forceIngestionForItemID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [FPDaemonConnection forceIngestionForItemID:completionHandler:];
  }

  v8 = [(FPDaemonConnection *)self connectionProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__FPDaemonConnection_forceIngestionForItemID_completionHandler___block_invoke;
  v10[3] = &unk_1E7939100;
  v11 = v7;
  v9 = v7;
  [v8 forceIngestionForItemID:v6 completionHandler:v10];
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

- (void)forceIngestionForItemIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [FPDaemonConnection forceIngestionForItemIDs:completionHandler:];
  }

  v8 = [(FPDaemonConnection *)self connectionProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__FPDaemonConnection_forceIngestionForItemIDs_completionHandler___block_invoke;
  v10[3] = &unk_1E793C678;
  v11 = v7;
  v9 = v7;
  [v8 forceIngestionForItemIDs:v6 completionHandler:v10];
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

- (void)forceLatestVersionOnDiskForItemID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [FPDaemonConnection forceLatestVersionOnDiskForItemID:completionHandler:];
  }

  v8 = [(FPDaemonConnection *)self connectionProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__FPDaemonConnection_forceLatestVersionOnDiskForItemID_completionHandler___block_invoke;
  v10[3] = &unk_1E793C6F0;
  v11 = v7;
  v9 = v7;
  [v8 forceLatestVersionOnDiskForItemID:v6 completionHandler:v10];
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

- (void)detachItemWithID:(id)a3 relocatingAtURL:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(FPDaemonConnection *)self connectionProxy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__FPDaemonConnection_detachItemWithID_relocatingAtURL_options_completionHandler___block_invoke;
  v17[3] = &unk_1E793C718;
  v18 = v10;
  v19 = v11;
  v21 = v12;
  v22 = a5;
  v20 = self;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  [v13 documentURLFromItemID:v15 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 completionHandler:v17];
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

- (void)detachKnownFolders:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPDaemonConnection *)self connectionProxy];
  [v8 detachKnownFolders:v7 completionHandler:v6];
}

- (void)importDetachedFolder:(id)a3 parentID:(id)a4 logicalName:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(FPDaemonConnection *)self connectionProxy];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __90__FPDaemonConnection_importDetachedFolder_parentID_logicalName_options_completionHandler___block_invoke;
  v21[3] = &unk_1E793C740;
  v22 = v13;
  v23 = v14;
  v26 = v15;
  v27 = a6;
  v24 = v12;
  v25 = self;
  v17 = v12;
  v18 = v14;
  v19 = v13;
  v20 = v15;
  [v16 documentURLFromItemID:v19 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 completionHandler:v21];
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

- (void)attachItemWithID:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(FPDaemonConnection *)self connectionProxy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__FPDaemonConnection_attachItemWithID_options_completionHandler___block_invoke;
  v13[3] = &unk_1E793C768;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a4;
  v11 = v8;
  v12 = v9;
  [v10 documentURLFromItemID:v11 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 completionHandler:v13];
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

- (void)attachKnownFolders:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(FPDaemonConnection *)self connectionProxy];
  [v10 attachKnownFolders:v9 options:a4 completionHandler:v8];
}

- (void)bookmarkableStringFromDocumentURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPDaemonConnection *)self connectionProxy];
  [v8 bookmarkableStringFromDocumentURL:v7 options:0 completionHandler:v6];
}

- (id)bookmarkableStringFromDocumentURL:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v7 = [(FPDaemonConnection *)self connectionProxy];
  v8 = [v7 synchronousRemoteObjectProxy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__FPDaemonConnection_bookmarkableStringFromDocumentURL_error___block_invoke;
  v12[3] = &unk_1E793C790;
  v12[4] = &v19;
  v12[5] = &v13;
  [v8 bookmarkableStringFromDocumentURL:v6 options:0 completionHandler:v12];

  if (a4)
  {
    v9 = v14[5];
    if (v9)
    {
      *a4 = v9;
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

- (void)documentURLFromBookmarkableString:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPDaemonConnection *)self connectionProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__FPDaemonConnection_documentURLFromBookmarkableString_completionHandler___block_invoke;
  v10[3] = &unk_1E793C7B8;
  v11 = v6;
  v9 = v6;
  [v8 documentURLFromBookmarkableString:v7 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 completionHandler:v10];
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

- (id)documentURLFromBookmarkableString:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v7 = [(FPDaemonConnection *)self connectionProxy];
  v8 = [v7 synchronousRemoteObjectProxy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__FPDaemonConnection_documentURLFromBookmarkableString_error___block_invoke;
  v12[3] = &unk_1E793C7E0;
  v12[4] = &v19;
  v12[5] = &v13;
  [v8 documentURLFromBookmarkableString:v6 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 completionHandler:v12];

  if (a4)
  {
    v9 = v14[5];
    if (v9)
    {
      *a4 = v9;
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

- (id)valuesForAttributes:(id)a3 forItemAtURL:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  v10 = [(FPDaemonConnection *)self connectionProxy];
  v11 = [v10 synchronousRemoteObjectProxy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__FPDaemonConnection_valuesForAttributes_forItemAtURL_error___block_invoke;
  v15[3] = &unk_1E793C808;
  v12 = v9;
  v16 = v12;
  v17 = &v19;
  v18 = &v25;
  [v11 valuesForAttributes:v8 forItemAtURL:v12 completionHandler:v15];

  if (a5)
  {
    *a5 = v26[5];
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

- (id)listOfMonitoredAppsWithError:(id *)a3
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
  v4 = [(FPDaemonConnection *)self connectionProxy];
  v5 = [v4 synchronousRemoteObjectProxy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__FPDaemonConnection_listOfMonitoredAppsWithError___block_invoke;
  v9[3] = &unk_1E793C830;
  v9[4] = &v16;
  v9[5] = &v10;
  [v5 fetchListOfMonitoredApps:v9];

  if (a3)
  {
    v6 = v11[5];
    if (v6)
    {
      *a3 = v6;
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

- (void)dumpStateTo:(id)a3 providerFilter:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(FPDaemonConnection *)self connectionProxy];
  [v13 dumpStateTo:v12 providerFilter:v11 options:a5 completionHandler:v10];
}

- (void)dumpTelemetryTo:(id)a3 providerFilter:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(FPDaemonConnection *)self connectionProxy];
  [v11 dumpTelemetryTo:v10 providerFilter:v9 completionHandler:v8];
}

- (void)getPersonaForProvider:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(FPDaemonConnection *)self connectionProxy];
  v8 = [v9 synchronousRemoteObjectProxy];
  [v8 getPersonaForProvider:v7 completionHandler:v6];
}

- (void)copyDatabaseForFPCKStartingAtPath:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = [(FPDaemonConnection *)self connectionProxy];
  v9 = [v8 synchronousRemoteObjectProxy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__FPDaemonConnection_copyDatabaseForFPCKStartingAtPath_completionHandler___block_invoke;
  v11[3] = &unk_1E793C858;
  v13 = v17;
  v14 = v15;
  v10 = v7;
  v12 = v10;
  [v9 copyDatabaseForFPCKStartingAtPath:v6 completionHandler:v11];

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

- (void)waitForStabilizationOfDomainWithID:(id)a3 mode:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v11 = [(FPDaemonConnection *)self connectionProxy];
  v10 = [v11 synchronousRemoteObjectProxy];
  [v10 waitForStabilizationOfDomainWithID:v9 mode:a4 completionHandler:v8];
}

- (void)spotlightReindexAllItemsForBundleID:(id)a3 protectionClass:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(FPDaemonConnection *)self connectionProxy];
  v11 = [v12 synchronousRemoteObjectProxy];
  [v11 spotlightReindexAllItemsForBundleID:v10 protectionClass:v9 completionHandler:v8];
}

- (void)spotlightReindexItemsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = [(FPDaemonConnection *)self connectionProxy];
  v14 = [v15 synchronousRemoteObjectProxy];
  [v14 spotlightReindexItemsWithIdentifiers:v13 bundleID:v12 protectionClass:v11 completionHandler:v10];
}

- (void)_test_retrieveItemWithName:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPDaemonConnection *)self connectionProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__FPDaemonConnection__test_retrieveItemWithName_completionHandler___block_invoke;
  v10[3] = &unk_1E793C4D0;
  v11 = v6;
  v9 = v6;
  [v8 _test_retrieveItemWithName:v7 completionHandler:v10];
}

void __67__FPDaemonConnection__test_retrieveItemWithName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 url];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)_test_callFileProviderManagerAPIs:(id)a3
{
  v4 = a3;
  v5 = [(FPDaemonConnection *)self connectionProxy];
  [v5 _test_callFileProviderManagerAPIs:v4];
}

- (void)getURLForContainerWithItemID:(id)a3 inDataScopeDomainWithIdentifier:(id)a4 documentsScopeDomainIdentifier:(id)a5 documentsFolderItemIdentifier:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(FPDaemonConnection *)self connectionProxy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __162__FPDaemonConnection_getURLForContainerWithItemID_inDataScopeDomainWithIdentifier_documentsScopeDomainIdentifier_documentsFolderItemIdentifier_completionHandler___block_invoke;
  v19[3] = &unk_1E793C7B8;
  v20 = v12;
  v18 = v12;
  [v17 getURLForContainerWithItemID:v16 inDataScopeDomainWithIdentifier:v15 documentsScopeDomainIdentifier:v14 documentsFolderItemIdentifier:v13 completionHandler:v19];
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

- (void)backUpUserURL:(id)a3 outputUserURL:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(FPDaemonConnection *)self connectionProxy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__FPDaemonConnection_backUpUserURL_outputUserURL_completionHandler___block_invoke;
  v13[3] = &unk_1E793A3D0;
  v14 = v8;
  v12 = v8;
  [v11 backUpUserURL:v10 outputUserURL:v9 completionHandler:v13];
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

- (void)restoreUserURL:(id)a3 fromBuild:(id)a4 restoreType:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(FPDaemonConnection *)self connectionProxy];
  [v14 restoreUserURL:v13 fromBuild:v12 restoreType:v11 cleanupOnSuccess:1 completionHandler:v10];
}

- (void)stateForDomainWithID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPDaemonConnection *)self connectionProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__FPDaemonConnection_stateForDomainWithID_completionHandler___block_invoke;
  v10[3] = &unk_1E793C880;
  v11 = v6;
  v9 = v6;
  [v8 stateForDomainWithID:v7 completionHandler:v10];
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

- (void)runFPCKForDomainWithID:(id)a3 databasesBackupsPath:(id)a4 options:(unint64_t)a5 reason:(unint64_t)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a4;
  v14 = a3;
  if ([v13 count] != 1)
  {
    [FPDaemonConnection runFPCKForDomainWithID:databasesBackupsPath:options:reason:completionHandler:];
  }

  v15 = MEMORY[0x1E695DFF8];
  v16 = [v13 allKeys];
  v17 = [v16 objectAtIndexedSubscript:0];
  v22 = [v15 URLWithString:v17];

  v18 = MEMORY[0x1E695DFF8];
  v19 = [v13 allValues];

  v20 = [v19 objectAtIndexedSubscript:0];
  v21 = [v18 URLWithString:v20];

  [(FPDaemonConnection *)self runFPCKForDomainWithID:v14 domainRootURL:v22 databaseBackupPath:v21 options:a5 reason:a6 launchType:2 completionHandler:v12];
}

- (void)runFPCKForDomainWithID:(id)a3 domainRootURL:(id)a4 databaseBackupPath:(id)a5 options:(unint64_t)a6 reason:(unint64_t)a7 launchType:(unint64_t)a8 contentBarrier:(int64_t)a9 completionHandler:(id)a10
{
  v17 = a10;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [(FPDaemonConnection *)self connectionProxy];
  [v21 runFPCKForDomainWithID:v20 domainRootURL:v19 databaseBackupPath:v18 options:a6 reason:a7 launchType:a8 contentBarrier:a9 completionHandler:v17];
}

- (void)calculateNonPurgeableSpaceUsageOfDomain:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPDaemonConnection *)self connectionProxy];
  [v8 calculateNonPurgeableSpaceUsageOfDomain:v7 completionHandler:v6];
}

- (void)resolveConflictAtURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  FPPrecheckTCCReadAccess(v7);
  v8 = [(FPDaemonConnection *)self connectionProxy];
  [v8 resolveConflictAtURL:v7 completionHandler:v6];
}

- (void)fetchAndStartEnumeratingWithSettings:(id)a3 observer:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(FPDaemonConnection *)self connectionProxy];
  [v11 fetchAndStartEnumeratingWithSettings:v10 observer:v9 completionHandler:v8];
}

- (void)dumpIndexerInfoFor:(id)a3 withName:(id)a4 to:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(FPDaemonConnection *)self connectionProxy];
  [v14 dumpIndexerInfoFor:v13 withName:v12 to:v11 completionHandler:v10];
}

- (void)pauseIndexingFor:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPDaemonConnection *)self connectionProxy];
  [v8 pauseIndexingFor:v7 completionHandler:v6];
}

- (void)resumeIndexingFor:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPDaemonConnection *)self connectionProxy];
  [v8 resumeIndexingFor:v7 completionHandler:v6];
}

- (void)getSavedDiagnosticsFor:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPDaemonConnection *)self connectionProxy];
  [v8 getSavedDiagnosticsFor:v7 completionHandler:v6];
}

- (void)clearDiagnosticsState:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPDaemonConnection *)self connectionProxy];
  [v8 clearDiagnosticsState:v7 completionHandler:v6];
}

- (void)validateDiagnosticsJson:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPDaemonConnection *)self connectionProxy];
  [v8 validateDiagnosticsJson:v7 completionHandler:v6];
}

- (void)checkErrorAgainstDiagnosticsJson:(id)a3 inputError:(id)a4 errorDirection:(id)a5 jobCode:(id)a6 underlying:(id)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(FPDaemonConnection *)self connectionProxy];
  [v20 checkErrorAgainstDiagnosticsJson:v19 inputError:v18 errorDirection:v17 jobCode:v16 underlying:v15 completionHandler:v14];
}

- (void)enumerateSearchResultForRequest:(id)a3 providerDomainID:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(FPDaemonConnection *)self connectionProxy];
  [v11 enumerateSearchResultForRequest:v10 providerDomainID:v9 completionHandler:v8];
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