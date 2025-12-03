@interface BADownloadManager
+ (BADownloadManager)sharedManager;
+ (void)_enforceCallerConformsToRequirements;
- (BADownloadManager)init;
- (BOOL)cancelDownload:(BADownload *)download error:(NSError *)error;
- (BOOL)scheduleDownload:(BADownload *)download error:(NSError *)error;
- (BOOL)startForegroundDownload:(BADownload *)download error:(NSError *)error;
- (NSArray)fetchCurrentDownloads:(NSError *)error;
- (id)delegate;
- (id)extensionConnection;
- (uint64_t)setScheduleLocked:(uint64_t)result;
- (void)downloadIdentifier:(id)identifier didFailWithError:(id)error wasHandled:(id)handled;
- (void)downloadIdentifier:(id)identifier didReceiveChallenge:(id)challenge authChallengeHandler:(id)handler;
- (void)downloadIdentifier:(id)identifier didWriteBytes:(int64_t)bytes totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)downloadIdentifierDidBegin:(id)begin;
- (void)downloadIdentifierDidFinish:(id)finish sandboxExtensionToken:(id)token wasHandled:(id)handled;
- (void)downloadIdentifierDidPause:(id)pause;
- (void)fetchCurrentDownloadsWithCompletionHandler:(void *)completionHandler;
- (void)initWithApplicationIdentifier:(void *)identifier;
- (void)performWithExclusiveControl:(void *)performHandler;
- (void)performWithExclusiveControlBeforeDate:(NSDate *)date performHandler:(void *)performHandler;
- (void)removeDownloadIdentifier:(id)identifier;
- (void)setExtensionConnection:(uint64_t)connection;
- (void)syncDownloads:(id)downloads;
@end

@implementation BADownloadManager

+ (BADownloadManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[BADownloadManager sharedManager];
  }

  v3 = sharedManager_sDownloader;

  return v3;
}

void __34__BADownloadManager_sharedManager__block_invoke()
{
  v0 = [BADownloadManager alloc];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v4 bundleIdentifier];
  [(BADownloadManager *)v0 initWithApplicationIdentifier:v1];
  v2 = sharedManager_sDownloader;
  sharedManager_sDownloader = v3;
}

- (void)initWithApplicationIdentifier:(void *)identifier
{
  v3 = a2;
  if (!identifier)
  {
    goto LABEL_3;
  }

  v14.receiver = identifier;
  v14.super_class = BADownloadManager;
  v4 = objc_msgSendSuper2(&v14, sel_init);
  if (!v4)
  {
    goto LABEL_3;
  }

  if (v3)
  {
    [(BADownloadManager *)v4 initWithApplicationIdentifier:v3, &v13];
LABEL_3:

    return;
  }

  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
  if (v5)
  {
    [(BADownloadManager *)v5 initWithApplicationIdentifier:v6, v7, v8, v9, v10, v11, v12];
  }

  qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: BADownloadManager requires the app and extension to have a valid bundle identifier";
  __break(0xB001u);
}

+ (void)_enforceCallerConformsToRequirements
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (BADownloadManager)init
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
  if (result)
  {
    v3 = 136315138;
    v4 = "BADownloadManager cannot be constructed using -init.";
    _os_log_fault_impl(&dword_236E28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF BackgroundAssets: %s", &v3, 0xCu);
  }

  qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: BADownloadManager cannot be constructed using -init.";
  __break(0xB001u);
  return result;
}

- (BOOL)scheduleDownload:(BADownload *)download error:(NSError *)error
{
  v6 = download;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v11)
    {
      [(BADownloadManager *)v11 scheduleDownload:v12 error:v13, v14, v15, v16, v17, v18];
    }

    __break(0xB001u);
    goto LABEL_12;
  }

  if ([(BADownload *)v6 necessity]== 1)
  {
LABEL_12:
    v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v19)
    {
      [(BADownloadManager *)v19 scheduleDownload:v20 error:v21, v22, v23, v24, v25, v26];
    }

    __break(0xB001u);
    goto LABEL_15;
  }

  if (!self)
  {
LABEL_15:
    Property = 0;
    goto LABEL_6;
  }

  if (!self->_scheduleLocked)
  {
    Property = objc_getProperty(self, v7, 56, 1);
LABEL_6:
    v9 = [(BAAgentClientProxy *)Property scheduleDownload:v6 error:error];
    if (v9)
    {
      [(BADownloadManager *)self scheduleDownload:v6 error:?];
    }

    LOBYTE(v10) = v9;
    return v10;
  }

  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
  if (v10)
  {
    [(BADownloadManager *)v10 scheduleDownload:v27 error:v28, v29, v30, v31, v32, v33];
  }

  __break(0xB001u);
  return v10;
}

- (void)performWithExclusiveControl:(void *)performHandler
{
  v7 = performHandler;
  if (!v7)
  {
    v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v20)
    {
      [(BADownloadManager *)v20 performWithExclusiveControl:v21, v22, v23, v24, v25, v26, v27];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Calling 'performWithExclusiveControl' must be called with a valid performHandler.";
    __break(0xB001u);
LABEL_13:
    Property = 0;
    goto LABEL_7;
  }

  v3 = v7;
  extensionConnection = [(BADownloadManager *)self extensionConnection];
  if (!extensionConnection)
  {
    [(BADownloadManager *)self performWithExclusiveControl:v28, v3];
    goto LABEL_8;
  }

  v8 = BAClientLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    [(BADownloadManager *)self performWithExclusiveControl:v8, v9, v10, v11, v12, v13, v14];
  }

  extensionConnection2 = [(BADownloadManager *)self extensionConnection];
  acquireWakeAssertion = [extensionConnection2 acquireWakeAssertion];

  if (!self)
  {
    goto LABEL_13;
  }

  Property = objc_getProperty(self, v16, 56, 1);
LABEL_7:
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __49__BADownloadManager_performWithExclusiveControl___block_invoke;
  v29[3] = &unk_278A0D288;
  v29[4] = self;
  v30 = v3;
  v31 = acquireWakeAssertion;
  v18 = acquireWakeAssertion;
  v19 = v3;
  [(BAAgentClientProxy *)Property acquireExclusiveControlWithHandler:v29];

LABEL_8:
}

- (void)performWithExclusiveControlBeforeDate:(NSDate *)date performHandler:(void *)performHandler
{
  v8 = date;
  v9 = performHandler;
  if (!v9)
  {
    v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v22)
    {
      [(BADownloadManager *)v22 performWithExclusiveControlBeforeDate:v23 performHandler:v24, v25, v26, v27, v28, v29];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Calling 'performWithExclusiveControlBeforeDate' must be called with a valid performHandler.";
    __break(0xB001u);
    goto LABEL_14;
  }

  performHandler = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_14:
    v30 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v30)
    {
      [(BADownloadManager *)v30 performWithExclusiveControlBeforeDate:v31 performHandler:v32, v33, v34, v35, v36, v37];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Calling 'performWithExclusiveControlBeforeDate' must be called with a valid date.";
    __break(0xB001u);
LABEL_17:
    Property = 0;
    goto LABEL_8;
  }

  extensionConnection = [(BADownloadManager *)self extensionConnection];
  if (!extensionConnection)
  {
    [(BADownloadManager *)self performWithExclusiveControlBeforeDate:v38 performHandler:performHandler, v8];
    goto LABEL_9;
  }

  v10 = BAClientLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    [(BADownloadManager *)self performWithExclusiveControl:v10, v11, v12, v13, v14, v15, v16];
  }

  extensionConnection2 = [(BADownloadManager *)self extensionConnection];
  acquireWakeAssertion = [extensionConnection2 acquireWakeAssertion];

  if (!self)
  {
    goto LABEL_17;
  }

  Property = objc_getProperty(self, v18, 56, 1);
LABEL_8:
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __74__BADownloadManager_performWithExclusiveControlBeforeDate_performHandler___block_invoke;
  v39[3] = &unk_278A0D288;
  v39[4] = self;
  v40 = performHandler;
  v41 = acquireWakeAssertion;
  v20 = acquireWakeAssertion;
  v21 = performHandler;
  [(BAAgentClientProxy *)Property acquireExclusiveControlBeforeDate:v8 handler:v39];

LABEL_9:
}

- (BOOL)startForegroundDownload:(BADownload *)download error:(NSError *)error
{
  v6 = download;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v11)
    {
      [(BADownloadManager *)v11 startForegroundDownload:v12 error:v13, v14, v15, v16, v17, v18];
    }

    __break(0xB001u);
    goto LABEL_10;
  }

  if ([(BADownload *)v6 necessity]== 1)
  {
LABEL_10:
    v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v19)
    {
      [(BADownloadManager *)v19 startForegroundDownload:v20 error:v21, v22, v23, v24, v25, v26];
    }

    __break(0xB001u);
    goto LABEL_13;
  }

  if (!self)
  {
LABEL_13:
    Property = 0;
    goto LABEL_6;
  }

  if (!self->_scheduleLocked)
  {
    Property = objc_getProperty(self, v7, 56, 1);
LABEL_6:
    v9 = [(BAAgentClientProxy *)Property startForegroundDownload:v6 error:error];

    LOBYTE(v10) = v9;
    return v10;
  }

  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
  if (v10)
  {
    [(BADownloadManager *)v10 startForegroundDownload:v27 error:v28, v29, v30, v31, v32, v33];
  }

  __break(0xB001u);
  return v10;
}

- (BOOL)cancelDownload:(BADownload *)download error:(NSError *)error
{
  v6 = download;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BADownloadManager *)self cancelDownload:v6 error:error, &v16];
    LOBYTE(v7) = v16;
  }

  else
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v7)
    {
      [(BADownloadManager *)v7 cancelDownload:v8 error:v9, v10, v11, v12, v13, v14];
    }

    __break(0xB001u);
  }

  return v7;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)syncDownloads:(id)downloads
{
  v23 = *MEMORY[0x277D85DE8];
  downloadsCopy = downloads;
  os_unfair_lock_lock(&self->_stateLock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = downloadsCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        if (self)
        {
          Property = objc_getProperty(self, v7, 72, 1);
        }

        else
        {
          Property = 0;
        }

        v13 = Property;
        uniqueIdentifier = [v11 uniqueIdentifier];
        v15 = [v13 objectForKey:uniqueIdentifier];

        if (v15)
        {
          [v15 syncTo:v11];
        }

        else
        {
          [(BADownloadManager(XPCDownloadSync) *)self == 0 syncDownloads:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v16 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v8 = v16;
    }

    while (v16);
  }

  os_unfair_lock_unlock(&self->_stateLock);
  v17 = *MEMORY[0x277D85DE8];
}

void __65__BADownloadManager_XPCDownloadSync__downloadIdentifierDidBegin___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 downloadDidBegin:*(a1 + 40)];
}

void __65__BADownloadManager_XPCDownloadSync__downloadIdentifierDidPause___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 downloadDidPause:*(a1 + 40)];
}

void __98__BADownloadManager_XPCDownloadSync__downloadIdentifier_didReceiveChallenge_authChallengeHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 download:*(a1 + 40) didReceiveChallenge:*(a1 + 48) completionHandler:*(a1 + 56)];
}

void __85__BADownloadManager_XPCDownloadSync__downloadIdentifier_didFailWithError_wasHandled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 download:*(a1 + 40) failedWithError:*(a1 + 48)];
}

void __99__BADownloadManager_XPCDownloadSync__downloadIdentifierDidFinish_sandboxExtensionToken_wasHandled___block_invoke(uint64_t a1)
{
  v3 = NSErrorWithBAErrorCode(-108);
  v2 = [*(a1 + 32) delegate];
  [v2 download:*(a1 + 40) failedWithError:v3];
}

void __99__BADownloadManager_XPCDownloadSync__downloadIdentifierDidFinish_sandboxExtensionToken_wasHandled___block_invoke_110(uint64_t a1)
{
  v3 = NSErrorWithBAErrorCode(-108);
  v2 = [*(a1 + 32) delegate];
  [v2 download:*(a1 + 40) failedWithError:v3];
}

void __99__BADownloadManager_XPCDownloadSync__downloadIdentifierDidFinish_sandboxExtensionToken_wasHandled___block_invoke_111(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 download:*(a1 + 40) failedWithError:*(a1 + 48)];
}

void __99__BADownloadManager_XPCDownloadSync__downloadIdentifierDidFinish_sandboxExtensionToken_wasHandled___block_invoke_113(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 download:*(a1 + 40) failedWithError:*(a1 + 48)];
}

void __99__BADownloadManager_XPCDownloadSync__downloadIdentifierDidFinish_sandboxExtensionToken_wasHandled___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 download:*(a1 + 40) finishedWithFileURL:*(a1 + 48)];
}

void __99__BADownloadManager_XPCDownloadSync__downloadIdentifierDidFinish_sandboxExtensionToken_wasHandled___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) path];
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = *(a1 + 32);
    v10 = 0;
    v7 = [v5 removeItemAtURL:v6 error:&v10];
    v8 = v10;

    if ((v7 & 1) == 0)
    {
      v9 = BAClientLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __99__BADownloadManager_XPCDownloadSync__downloadIdentifierDidFinish_sandboxExtensionToken_wasHandled___block_invoke_3_cold_1(a1, v8, v9);
      }
    }
  }
}

- (id)extensionConnection
{
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    WeakRetained = objc_loadWeakRetained((self + 16));
    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (void)setExtensionConnection:(uint64_t)connection
{
  if (connection)
  {
    v3 = a2;
    os_unfair_lock_lock((connection + 8));
    objc_storeWeak((connection + 16), v3);

    os_unfair_lock_unlock((connection + 8));
  }
}

void __51__BADownloadManager_initWithApplicationIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  Property = *(a1 + 32);
  if (Property)
  {
    OUTLINED_FUNCTION_6_1();
    Property = objc_getProperty(v6, v7, v8, v9);
  }

  [Property removeAllObjects];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * v14);
        v16 = *(a1 + 32);
        if (v16)
        {
          OUTLINED_FUNCTION_6_1();
          v16 = objc_getProperty(v17, v18, v19, v20);
        }

        v21 = v16;
        [v15 uniqueIdentifier];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_12_1() setObject:v15 forKey:v2];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v22 = *MEMORY[0x277D85DE8];
}

void __49__BADownloadManager_performWithExclusiveControl___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_14(v7, v5);
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_1();
  v35 = *(a1 + 40);
  LOBYTE(v36) = a2;
  v8 = v6;
  OUTLINED_FUNCTION_19(v8, v9, v10, v11, v12, v13, v14, v15, v25, v27, v29, __49__BADownloadManager_performWithExclusiveControl___block_invoke_2, &unk_278A0D260, v33);
  v16 = BAClientLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v23 = *(a1 + 32);
    if (v23)
    {
      OUTLINED_FUNCTION_15(v23, v17);
    }

    OUTLINED_FUNCTION_21(&dword_236E28000, v17, v18, "Releasing exclusive control extension wake assertion for: %{public}@", v19, v20, v21, v22, v26, v28, v30, v31, v32, v34, v35, v36, 2u);
  }

  (*(*(a1 + 48) + 16))();
  v24 = *MEMORY[0x277D85DE8];
}

void __49__BADownloadManager_performWithExclusiveControl___block_invoke_43(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_14(v7, v5);
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_1();
  v11 = *(a1 + 40);
  v8 = v6;
  v9 = OUTLINED_FUNCTION_11_1();
  dispatch_sync(v9, v10);
}

void __74__BADownloadManager_performWithExclusiveControlBeforeDate_performHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_14(v7, v5);
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_1();
  v35 = *(a1 + 40);
  LOBYTE(v36) = a2;
  v8 = v6;
  OUTLINED_FUNCTION_19(v8, v9, v10, v11, v12, v13, v14, v15, v25, v27, v29, __74__BADownloadManager_performWithExclusiveControlBeforeDate_performHandler___block_invoke_2, &unk_278A0D260, v33);
  v16 = BAClientLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v23 = *(a1 + 32);
    if (v23)
    {
      OUTLINED_FUNCTION_15(v23, v17);
    }

    OUTLINED_FUNCTION_21(&dword_236E28000, v17, v18, "Releasing exclusive control extension wake assertion for: %{public}@", v19, v20, v21, v22, v26, v28, v30, v31, v32, v34, v35, v36, 2u);
  }

  (*(*(a1 + 48) + 16))();
  v24 = *MEMORY[0x277D85DE8];
}

void __74__BADownloadManager_performWithExclusiveControlBeforeDate_performHandler___block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_14(v7, v5);
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_1();
  v11 = *(a1 + 40);
  v8 = v6;
  v9 = OUTLINED_FUNCTION_11_1();
  dispatch_sync(v9, v10);
}

- (NSArray)fetchCurrentDownloads:(NSError *)error
{
  if (self)
  {
    self = OUTLINED_FUNCTION_13(self, a2);
  }

  return [(BAAgentClientProxy *)self currentDownloads:?];
}

- (void)fetchCurrentDownloadsWithCompletionHandler:(void *)completionHandler
{
  v5 = completionHandler;
  if (self)
  {
    v6 = OUTLINED_FUNCTION_13(self, v4);
  }

  else
  {
    v6 = 0;
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16();
  v8[2] = __64__BADownloadManager_fetchCurrentDownloadsWithCompletionHandler___block_invoke;
  v8[3] = &unk_278A0D2D8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(BAAgentClientProxy *)v6 currentDownloadsWithCompletion:v8];
}

void __64__BADownloadManager_fetchCurrentDownloadsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  if (v8)
  {
    OUTLINED_FUNCTION_14(v8, v6);
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_1();
  v13 = *(a1 + 40);
  v9 = v7;
  v10 = v5;
  v11 = OUTLINED_FUNCTION_11_1();
  dispatch_async(v11, v12);
}

- (uint64_t)setScheduleLocked:(uint64_t)result
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

- (void)downloadIdentifierDidBegin:(id)begin
{
  beginCopy = begin;
  os_unfair_lock_lock(&self->_stateLock);
  if (self)
  {
    OUTLINED_FUNCTION_6_1();
    Property = objc_getProperty(v6, v7, v8, v9);
  }

  else
  {
    Property = 0;
  }

  v11 = [Property objectForKey:beginCopy];
  os_unfair_lock_unlock(&self->_stateLock);
  if (v11)
  {
    [(BADownloadManager *)self delegate];
    if (objc_claimAutoreleasedReturnValue())
    {
      delegate = [OUTLINED_FUNCTION_17() delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        if (self)
        {
          v15 = objc_getProperty(self, v14, 40, 1);
        }

        else
        {
          v15 = 0;
        }

        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_16();
        v16[2] = __65__BADownloadManager_XPCDownloadSync__downloadIdentifierDidBegin___block_invoke;
        v16[3] = &unk_278A0D300;
        v16[4] = self;
        v17 = v11;
        dispatch_async(v15, v16);
      }
    }
  }
}

- (void)downloadIdentifierDidPause:(id)pause
{
  pauseCopy = pause;
  os_unfair_lock_lock(&self->_stateLock);
  if (self)
  {
    OUTLINED_FUNCTION_6_1();
    Property = objc_getProperty(v6, v7, v8, v9);
  }

  else
  {
    Property = 0;
  }

  v11 = [Property objectForKey:pauseCopy];
  os_unfair_lock_unlock(&self->_stateLock);
  if (v11)
  {
    [(BADownloadManager *)self delegate];
    if (objc_claimAutoreleasedReturnValue())
    {
      delegate = [OUTLINED_FUNCTION_17() delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        if (self)
        {
          v15 = objc_getProperty(self, v14, 40, 1);
        }

        else
        {
          v15 = 0;
        }

        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_16();
        v16[2] = __65__BADownloadManager_XPCDownloadSync__downloadIdentifierDidPause___block_invoke;
        v16[3] = &unk_278A0D300;
        v16[4] = self;
        v17 = v11;
        dispatch_async(v15, v16);
      }
    }
  }
}

- (void)downloadIdentifier:(id)identifier didWriteBytes:(int64_t)bytes totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_stateLock);
  if (self)
  {
    OUTLINED_FUNCTION_6_1();
    Property = objc_getProperty(v10, v11, v12, v13);
  }

  else
  {
    Property = 0;
  }

  v15 = [Property objectForKey:identifierCopy];
  os_unfair_lock_unlock(&self->_stateLock);
  if (v15)
  {
    delegate = [(BADownloadManager *)self delegate];
    if (delegate)
    {
      v17 = delegate;
      delegate2 = [(BADownloadManager *)self delegate];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        delegate3 = [(BADownloadManager *)self delegate];
        [delegate3 download:v15 didWriteBytes:bytes totalBytesWritten:written totalBytesExpectedToWrite:write];
      }
    }
  }
}

- (void)downloadIdentifier:(id)identifier didReceiveChallenge:(id)challenge authChallengeHandler:(id)handler
{
  OUTLINED_FUNCTION_10_1();
  v10 = v9;
  v11 = v5;
  v12 = v6;
  os_unfair_lock_lock(v7 + 2);
  if (v7)
  {
    OUTLINED_FUNCTION_6_1();
    Property = objc_getProperty(v13, v14, v15, v16);
  }

  else
  {
    Property = 0;
  }

  v18 = [Property objectForKey:v10];
  os_unfair_lock_unlock(v7 + 2);
  if (!v18)
  {
    v24 = OUTLINED_FUNCTION_4_0();
    v26 = 2;
    goto LABEL_11;
  }

  [(os_unfair_lock_s *)v7 delegate];
  if (!objc_claimAutoreleasedReturnValue() || ([OUTLINED_FUNCTION_12_1() delegate], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_opt_respondsToSelector(), v19, v8, (v20 & 1) == 0))
  {
    v24 = OUTLINED_FUNCTION_4_0();
    v26 = 1;
LABEL_11:
    v25(v24, v26, 0);
    goto LABEL_12;
  }

  if (v7)
  {
    v23 = OUTLINED_FUNCTION_5_1(v21, v22);
  }

  else
  {
    v23 = 0;
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16();
  v27[2] = __98__BADownloadManager_XPCDownloadSync__downloadIdentifier_didReceiveChallenge_authChallengeHandler___block_invoke;
  v27[3] = &unk_278A0CEC0;
  v27[4] = v7;
  v28 = v18;
  v29 = v11;
  v30 = v12;
  dispatch_async(v23, v27);

LABEL_12:
}

- (void)downloadIdentifier:(id)identifier didFailWithError:(id)error wasHandled:(id)handled
{
  OUTLINED_FUNCTION_10_1();
  v10 = v9;
  v11 = v5;
  v12 = v6;
  os_unfair_lock_lock(v7 + 2);
  if (v7)
  {
    OUTLINED_FUNCTION_6_1();
    Property = objc_getProperty(v13, v14, v15, v16);
  }

  else
  {
    Property = 0;
  }

  v18 = [Property objectForKey:v10];
  os_unfair_lock_unlock(v7 + 2);
  if (v18)
  {
    [(os_unfair_lock_s *)v7 delegate];
    if (objc_claimAutoreleasedReturnValue())
    {
      delegate = [OUTLINED_FUNCTION_12_1() delegate];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        if (v7)
        {
          v23 = OUTLINED_FUNCTION_5_1(v21, v22);
        }

        else
        {
          v23 = 0;
        }

        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_8_1();
        v27 = __85__BADownloadManager_XPCDownloadSync__downloadIdentifier_didFailWithError_wasHandled___block_invoke;
        v28 = &unk_278A0D328;
        v29 = v7;
        v30 = v18;
        v31 = v11;
        dispatch_async(v23, block);
      }
    }
  }

  v24 = OUTLINED_FUNCTION_4_0();
  v25(v24);
}

- (void)downloadIdentifierDidFinish:(id)finish sandboxExtensionToken:(id)token wasHandled:(id)handled
{
  OUTLINED_FUNCTION_10_1();
  v111 = *MEMORY[0x277D85DE8];
  v9 = v8;
  v10 = v5;
  v11 = v6;
  os_unfair_lock_lock(v7 + 2);
  if (v7)
  {
    OUTLINED_FUNCTION_6_1();
    Property = objc_getProperty(v12, v13, v14, v15);
  }

  else
  {
    Property = 0;
  }

  v17 = [Property objectForKey:v9];
  os_unfair_lock_unlock(v7 + 2);
  if (!v17)
  {
    v23 = BASystemLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_236E28000, v23, OS_LOG_TYPE_ERROR, "Download finished but the local app has no knowledge of the download.", buf, 2u);
    }

    goto LABEL_27;
  }

  if (!v10)
  {
    v24 = BASystemLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      OUTLINED_FUNCTION_20(&dword_236E28000, v25, v26, "Download finished but did not pass sandbox token.");
    }

    [(os_unfair_lock_s *)v7 delegate];
    if (!objc_claimAutoreleasedReturnValue())
    {
      goto LABEL_27;
    }

    delegate = [OUTLINED_FUNCTION_12_1() delegate];
    v28 = objc_opt_respondsToSelector();

    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }

    if (v7)
    {
      v31 = OUTLINED_FUNCTION_5_1(v29, v30);
    }

    else
    {
      v31 = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __99__BADownloadManager_XPCDownloadSync__downloadIdentifierDidFinish_sandboxExtensionToken_wasHandled___block_invoke;
    block[3] = &unk_278A0D300;
    block[4] = v7;
    v106 = v17;
    dispatch_async(v31, block);
    v32 = v106;
    goto LABEL_26;
  }

  [v10 UTF8String];
  if (sandbox_extension_consume() != -1)
  {
    v101 = 0;
    v102 = 0;
    v18 = [v17 cloneDownloadToFinalDestinationURL:&v102 error:&v101];
    v19 = v102;
    v20 = v101;
    if ((v18 & 1) == 0)
    {
      v43 = BAClientLogObject();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        identifier = [v17 identifier];
        v77 = [v20 description];
        *buf = 138543618;
        v108 = identifier;
        v109 = 2114;
        v110 = v77;
        OUTLINED_FUNCTION_22(&dword_236E28000, v43, v78, "Download %{public}@ failed to be cloned after download. Error:%{public}@", buf);
      }

      [(BADownload *)v17 setInternalState:?];
      delegate2 = [(os_unfair_lock_s *)v7 delegate];
      if (delegate2)
      {
        v45 = delegate2;
        v46 = v19;
        delegate3 = [(os_unfair_lock_s *)v7 delegate];
        v48 = objc_opt_respondsToSelector();

        if (v48)
        {
          if (v7)
          {
            v51 = OUTLINED_FUNCTION_5_1(v49, v50);
          }

          else
          {
            v51 = 0;
          }

          v19 = v46;
          v98[0] = MEMORY[0x277D85DD0];
          v98[1] = 3221225472;
          v98[2] = __99__BADownloadManager_XPCDownloadSync__downloadIdentifierDidFinish_sandboxExtensionToken_wasHandled___block_invoke_111;
          v98[3] = &unk_278A0D328;
          v98[4] = v7;
          v99 = v17;
          v22 = v20;
          v100 = v22;
          dispatch_async(v51, v98);

          v52 = 0;
        }

        else
        {
          v52 = 0;
          v22 = v20;
          v19 = v46;
        }
      }

      else
      {
        v52 = 0;
        v22 = v20;
      }

      goto LABEL_49;
    }

    v86 = v19;
    if (([(BADownload *)v17 isForManagedAssetPack]& 1) != 0)
    {
      v22 = v20;
    }

    else
    {
      if (v7)
      {
        v53 = OUTLINED_FUNCTION_13(v7, v21);
      }

      else
      {
        v53 = 0;
      }

      v97 = v20;
      v54 = [(BAAgentClientProxy *)v53 markPurgeableWithFileURL:v19 error:&v97];
      v22 = v97;

      if ((v54 & 1) == 0)
      {
        v64 = BAClientLogObject();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          identifier2 = [v17 identifier];
          v80 = [v22 description];
          OUTLINED_FUNCTION_9_1(v80, 5.8382e-34);
          OUTLINED_FUNCTION_22(&dword_236E28000, v64, v81, "Download %{public}@ failed to mark cloned file as purgeable. Error:%{public}@", buf);
        }

        [(BADownload *)v17 setInternalState:?];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v96 = 0;
        v66 = [defaultManager removeItemAtURL:v86 error:&v96];
        v67 = v96;

        if ((v66 & 1) == 0)
        {
          v68 = BAClientLogObject();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            identifier3 = [v17 identifier];
            v85 = [v67 description];
            OUTLINED_FUNCTION_9_1(v85, 5.8382e-34);
            OUTLINED_FUNCTION_22(&dword_236E28000, v68, v83, "Download %{public}@ failed to remove cloned file failing to be marked as purgeable. Error:%{public}@", buf);
          }
        }

        v84 = v67;
        delegate4 = [(os_unfair_lock_s *)v7 delegate];
        if (delegate4)
        {
          v70 = delegate4;
          delegate5 = [(os_unfair_lock_s *)v7 delegate];
          v72 = objc_opt_respondsToSelector();

          if (v72)
          {
            if (v7)
            {
              v75 = OUTLINED_FUNCTION_5_1(v73, v74);
            }

            else
            {
              v75 = 0;
            }

            v93[0] = MEMORY[0x277D85DD0];
            v93[1] = 3221225472;
            v93[2] = __99__BADownloadManager_XPCDownloadSync__downloadIdentifierDidFinish_sandboxExtensionToken_wasHandled___block_invoke_113;
            v93[3] = &unk_278A0D328;
            v93[4] = v7;
            v94 = v17;
            v95 = v22;
            dispatch_async(v75, v93);
          }
        }

        v52 = 0;
        v19 = v86;
        goto LABEL_49;
      }
    }

    delegate6 = [(os_unfair_lock_s *)v7 delegate];
    if (delegate6 && (v57 = delegate6, [(os_unfair_lock_s *)v7 delegate], v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_opt_respondsToSelector(), v58, v57, (v59 & 1) != 0))
    {
      v19 = v86;
      if (v7)
      {
        v60 = OUTLINED_FUNCTION_5_1(delegate6, v56);
      }

      else
      {
        v60 = 0;
      }

      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __99__BADownloadManager_XPCDownloadSync__downloadIdentifierDidFinish_sandboxExtensionToken_wasHandled___block_invoke_2;
      v90[3] = &unk_278A0D328;
      v90[4] = v7;
      v91 = v17;
      v92 = v86;
      dispatch_async(v60, v90);

      v52 = 1;
    }

    else
    {
      v52 = 0;
      v19 = v86;
    }

    if (v7)
    {
      v7 = OUTLINED_FUNCTION_5_1(delegate6, v56);
    }

    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __99__BADownloadManager_XPCDownloadSync__downloadIdentifierDidFinish_sandboxExtensionToken_wasHandled___block_invoke_3;
    v87[3] = &unk_278A0D300;
    v88 = v19;
    v89 = v17;
    dispatch_async(v7, v87);

LABEL_49:
    sandbox_extension_release();
    v61 = OUTLINED_FUNCTION_4_0();
    v62(v61, v52);

    goto LABEL_50;
  }

  v33 = BASystemLogObject();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    OUTLINED_FUNCTION_20(&dword_236E28000, v34, v35, "Download finished but sandbox_extension_consume() failed.");
  }

  [(os_unfair_lock_s *)v7 delegate];
  if (objc_claimAutoreleasedReturnValue())
  {
    delegate7 = [OUTLINED_FUNCTION_12_1() delegate];
    v37 = objc_opt_respondsToSelector();

    if (v37)
    {
      if (v7)
      {
        v40 = OUTLINED_FUNCTION_5_1(v38, v39);
      }

      else
      {
        v40 = 0;
      }

      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __99__BADownloadManager_XPCDownloadSync__downloadIdentifierDidFinish_sandboxExtensionToken_wasHandled___block_invoke_110;
      v103[3] = &unk_278A0D300;
      v103[4] = v7;
      v104 = v17;
      dispatch_async(v40, v103);
      v32 = v104;
LABEL_26:
    }
  }

LABEL_27:
  v41 = OUTLINED_FUNCTION_4_0();
  v42(v41, 0);
LABEL_50:

  v63 = *MEMORY[0x277D85DE8];
}

- (void)removeDownloadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_stateLock);
  if (self)
  {
    OUTLINED_FUNCTION_6_1();
    Property = objc_getProperty(v4, v5, v6, v7);
  }

  else
  {
    Property = 0;
  }

  [Property removeObjectForKey:identifierCopy];
  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)initWithApplicationIdentifier:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithApplicationIdentifier:(id *)a3 .cold.2(uint64_t a1, void *a2, id *a3)
{
  +[BADownloadManager _enforceCallerConformsToRequirements];
  *(a1 + 8) = 0;
  objc_storeWeak((a1 + 16), 0);
  dispatch_queue_create("com.apple.backgroundassets.BADownloadManager.CallbackQueue", 0);
  v7 = OUTLINED_FUNCTION_17();
  objc_setProperty_atomic(v7, v8, v3, 40);

  dispatch_queue_create("com.apple.backgroundassets.BADownloadManager.Completion", 0);
  v9 = OUTLINED_FUNCTION_17();
  objc_setProperty_atomic(v9, v10, v3, 48);

  objc_setProperty_atomic(a1, v11, a2, 64);
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = OUTLINED_FUNCTION_9();
  objc_setProperty_atomic(v13, v14, a2, 72);

  v15 = [BAAgentClientProxy alloc];
  v16 = OUTLINED_FUNCTION_9();
  v18 = OUTLINED_FUNCTION_15(v16, v17);
  [(BAAgentClientProxy *)a2 initWithApplicationIdentifier:v18 downloadManager:a1];
  v19 = OUTLINED_FUNCTION_9();
  objc_setProperty_atomic(v19, v20, a2, 56);

  v22 = OUTLINED_FUNCTION_13(a1, v21);
  *a3 = MEMORY[0x277D85DD0];
  a3[1] = 3221225472;
  a3[2] = __51__BADownloadManager_initWithApplicationIdentifier___block_invoke;
  a3[3] = &unk_278A0D238;
  a3[4] = a1;
  [(BAAgentClientProxy *)v22 currentDownloadsWithCompletion:a3];
}

- (void)scheduleDownload:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)scheduleDownload:(uint64_t)a3 error:(uint64_t)a4 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)scheduleDownload:(uint64_t)a3 error:.cold.3(os_unfair_lock_s *a1, void *a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 2);
  if (a2)
  {
    Property = 0;
  }

  else
  {
    OUTLINED_FUNCTION_6_1();
    Property = objc_getProperty(v6, v7, v8, v9);
  }

  v11 = Property;
  v12 = [OUTLINED_FUNCTION_9() uniqueIdentifier];
  [a2 setObject:a3 forKey:v12];

  os_unfair_lock_unlock(a1 + 2);
}

- (void)scheduleDownload:(uint64_t)a3 error:(uint64_t)a4 .cold.4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)performWithExclusiveControl:(uint64_t)a3 .cold.1(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_15(a1, a2);
  }

  OUTLINED_FUNCTION_18(&dword_236E28000, a2, a3, "Acquiring exclusive control extension wake assertion for: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)performWithExclusiveControl:(void *)a3 .cold.2(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v6 = OUTLINED_FUNCTION_13(a1, a2);
  }

  else
  {
    v6 = 0;
  }

  *a2 = MEMORY[0x277D85DD0];
  *(a2 + 8) = 3221225472;
  *(a2 + 16) = __49__BADownloadManager_performWithExclusiveControl___block_invoke_43;
  *(a2 + 24) = &unk_278A0D2B0;
  *(a2 + 32) = a1;
  *(a2 + 40) = a3;
  v7 = a3;
  [(BAAgentClientProxy *)v6 acquireExclusiveControlWithHandler:a2];
}

- (void)performWithExclusiveControl:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)performWithExclusiveControlBeforeDate:(uint64_t)a3 performHandler:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)performWithExclusiveControlBeforeDate:(void *)a3 performHandler:(void *)a4 .cold.3(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (a1)
  {
    v8 = OUTLINED_FUNCTION_13(a1, a2);
  }

  else
  {
    v8 = 0;
  }

  *a2 = MEMORY[0x277D85DD0];
  *(a2 + 8) = 3221225472;
  *(a2 + 16) = __74__BADownloadManager_performWithExclusiveControlBeforeDate_performHandler___block_invoke_50;
  *(a2 + 24) = &unk_278A0D2B0;
  *(a2 + 32) = a1;
  *(a2 + 40) = a3;
  v9 = a3;
  [(BAAgentClientProxy *)v8 acquireExclusiveControlBeforeDate:a4 handler:a2];
}

- (void)performWithExclusiveControlBeforeDate:(uint64_t)a3 performHandler:(uint64_t)a4 .cold.4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)startForegroundDownload:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)startForegroundDownload:(uint64_t)a3 error:(uint64_t)a4 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)startForegroundDownload:(uint64_t)a3 error:(uint64_t)a4 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancelDownload:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancelDownload:(void *)a3 error:(_BYTE *)a4 .cold.2(id a1, char *a2, void *a3, _BYTE *a4)
{
  if (a1)
  {
    a1 = OUTLINED_FUNCTION_13(a1, a2);
  }

  *a4 = [(BAAgentClientProxy *)a1 cancelDownload:a2 error:a3];
}

void __99__BADownloadManager_XPCDownloadSync__downloadIdentifierDidFinish_sandboxExtensionToken_wasHandled___block_invoke_3_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(a1 + 40) identifier];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_9() description];
  v8 = 138543618;
  v9 = v3;
  v10 = 2114;
  v11 = v5;
  OUTLINED_FUNCTION_22(&dword_236E28000, a3, v6, "Download %{public}@ failed to remove cloned file after the client serviced the download. Error:%{public}@", &v8);

  v7 = *MEMORY[0x277D85DE8];
}

@end