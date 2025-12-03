@interface BAAgentClientProxy
- (id)currentDownloads:(void *)downloads;
- (id)initWithApplicationIdentifier:(void *)identifier downloadManager:;
- (uint64_t)_setupConnection;
- (uint64_t)cancelDownload:(void *)download error:;
- (uint64_t)markPurgeableWithFileURL:(void *)l error:;
- (uint64_t)scheduleDownload:(void *)download error:;
- (uint64_t)startForegroundDownload:(void *)download error:;
- (void)_exclusiveControlEndedWithToken:(void *)token;
- (void)acquireExclusiveControlBeforeDate:(void *)date handler:;
- (void)acquireExclusiveControlWithHandler:(uint64_t)handler;
- (void)currentDownloadsWithCompletion:(uint64_t)completion;
@end

@implementation BAAgentClientProxy

- (uint64_t)_setupConnection
{
  Property = objc_getProperty(self, a2, 24, 1);

  return [Property unlock];
}

void __53__BAAgentClientProxy_currentDownloadsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BAClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__BAAgentClientProxy_currentDownloadsWithCompletion___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)currentDownloads:(void *)downloads
{
  if (downloads)
  {
    [(BAAgentClientProxy *)downloads _setupConnection];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    v5 = objc_getProperty(downloads, v4, 8, 1);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__BAAgentClientProxy_currentDownloads___block_invoke;
    v10[3] = &unk_278A0D0B8;
    v10[4] = &v17;
    v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__BAAgentClientProxy_currentDownloads___block_invoke_110;
    v9[3] = &unk_278A0D0E0;
    v9[4] = &v17;
    v9[5] = &v11;
    [v6 currentDownloads:v9];

    if (a2)
    {
      *a2 = v18[5];
    }

    v7 = v12[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __39__BAAgentClientProxy_currentDownloads___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BAClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __39__BAAgentClientProxy_currentDownloads___block_invoke_cold_1(v3);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __39__BAAgentClientProxy_currentDownloads___block_invoke_110(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (uint64_t)scheduleDownload:(void *)download error:
{
  v6 = a2;
  if (self)
  {
    [(BAAgentClientProxy *)self _setupConnection];
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__0;
    v22 = __Block_byref_object_dispose__0;
    v23 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v8 = objc_getProperty(self, v7, 8, 1);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __45__BAAgentClientProxy_scheduleDownload_error___block_invoke;
    v13[3] = &unk_278A0D0B8;
    v13[4] = &v18;
    v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__BAAgentClientProxy_scheduleDownload_error___block_invoke_111;
    v12[3] = &unk_278A0CFA0;
    v12[4] = &v14;
    v12[5] = &v18;
    [v9 scheduleDownload:v6 reply:v12];

    if (download)
    {
      *download = v19[5];
    }

    v10 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void __45__BAAgentClientProxy_scheduleDownload_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BAClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __45__BAAgentClientProxy_scheduleDownload_error___block_invoke_cold_1(v3);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __57__BAAgentClientProxy_acquireExclusiveControlWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BAClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57__BAAgentClientProxy_acquireExclusiveControlWithHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __57__BAAgentClientProxy_acquireExclusiveControlWithHandler___block_invoke_113(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  (*(*(a1 + 40) + 16))();
  v5 = v6;
  if (v6)
  {
    [(BAAgentClientProxy *)*(a1 + 32) _exclusiveControlEndedWithToken:v6];
    v5 = v6;
  }
}

void __64__BAAgentClientProxy_acquireExclusiveControlBeforeDate_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BAClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__BAAgentClientProxy_acquireExclusiveControlBeforeDate_handler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __64__BAAgentClientProxy_acquireExclusiveControlBeforeDate_handler___block_invoke_115(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  (*(*(a1 + 40) + 16))();
  v5 = v6;
  if (v6)
  {
    [(BAAgentClientProxy *)*(a1 + 32) _exclusiveControlEndedWithToken:v6];
    v5 = v6;
  }
}

void __54__BAAgentClientProxy__exclusiveControlEndedWithToken___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BAClientLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__BAAgentClientProxy__exclusiveControlEndedWithToken___block_invoke_cold_1(v2);
  }
}

- (uint64_t)startForegroundDownload:(void *)download error:
{
  v6 = a2;
  if (self)
  {
    [(BAAgentClientProxy *)self _setupConnection];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v8 = objc_getProperty(self, v7, 8, 1);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__BAAgentClientProxy_startForegroundDownload_error___block_invoke;
    v13[3] = &unk_278A0D0B8;
    v13[4] = &v14;
    v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__BAAgentClientProxy_startForegroundDownload_error___block_invoke_116;
    v12[3] = &unk_278A0CFA0;
    v12[4] = &v14;
    v12[5] = &v20;
    [v9 startForegroundDownload:v6 reply:v12];

    if (download)
    {
      *download = v15[5];
    }

    v10 = *(v21 + 24);
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void __52__BAAgentClientProxy_startForegroundDownload_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BAClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__BAAgentClientProxy_startForegroundDownload_error___block_invoke_cold_1(v3);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __52__BAAgentClientProxy_startForegroundDownload_error___block_invoke_116(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (uint64_t)cancelDownload:(void *)download error:
{
  v6 = a2;
  if (self)
  {
    [(BAAgentClientProxy *)self _setupConnection];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__0;
    v19 = __Block_byref_object_dispose__0;
    v20 = 0;
    v8 = objc_getProperty(self, v7, 8, 1);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __43__BAAgentClientProxy_cancelDownload_error___block_invoke;
    v14[3] = &unk_278A0D0B8;
    v14[4] = &v15;
    v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
    uniqueIdentifier = [v6 uniqueIdentifier];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__BAAgentClientProxy_cancelDownload_error___block_invoke_117;
    v13[3] = &unk_278A0CFA0;
    v13[4] = &v21;
    v13[5] = &v15;
    [v9 cancelDownload:uniqueIdentifier reply:v13];

    if (download)
    {
      *download = v16[5];
    }

    v11 = *(v22 + 24);
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void __43__BAAgentClientProxy_cancelDownload_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BAClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __43__BAAgentClientProxy_cancelDownload_error___block_invoke_cold_1(v3);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (uint64_t)markPurgeableWithFileURL:(void *)l error:
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (self)
  {
    [(BAAgentClientProxy *)self _setupConnection];
    [v6 fileSystemRepresentation];
    Property = objc_getProperty(self, v7, 8, 1);
    if (Property)
    {
      [Property auditToken];
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    v9 = *MEMORY[0x277D861C0];
    v10 = *MEMORY[0x277D861E8];
    v11 = sandbox_extension_issue_file_to_process();
    if (v11)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
      free(v11);
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 0;
      *&v22 = 0;
      *(&v22 + 1) = &v22;
      *&v23 = 0x3032000000;
      *(&v23 + 1) = __Block_byref_object_copy__0;
      v24 = __Block_byref_object_dispose__0;
      v25 = 0;
      v14 = objc_getProperty(self, v13, 8, 1);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __53__BAAgentClientProxy_markPurgeableWithFileURL_error___block_invoke;
      v21[3] = &unk_278A0D0B8;
      v21[4] = &v22;
      v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v21];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __53__BAAgentClientProxy_markPurgeableWithFileURL_error___block_invoke_122;
      v20[3] = &unk_278A0CFA0;
      v20[4] = &v26;
      v20[5] = &v22;
      [v15 markPurgeableWithFileURL:v6 sandboxToken:v12 reply:v20];

      if (l)
      {
        *l = *(*(&v22 + 1) + 40);
      }

      LOBYTE(self) = *(v27 + 24);
      _Block_object_dispose(&v22, 8);

      _Block_object_dispose(&v26, 8);
    }

    else
    {
      if (!l)
      {
        LOBYTE(self) = 0;
        goto LABEL_12;
      }

      v16 = MEMORY[0x277CCA9B8];
      self = *__error();
      v30 = @"FileURL";
      v31[0] = v6;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v12 = [v16 errorWithDomain:*MEMORY[0x277CCA5B8] code:self userInfo:v17];

      NSErrorWithBAErrorDomainCodeUnderlying(@"BAErrorDomain", -107, v12);
      *l = LOBYTE(self) = 0;
    }
  }

LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
  return self & 1;
}

void __53__BAAgentClientProxy_markPurgeableWithFileURL_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BAClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__BAAgentClientProxy_markPurgeableWithFileURL_error___block_invoke_cold_1(v3);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)initWithApplicationIdentifier:(void *)identifier downloadManager:
{
  v5 = a2;
  identifierCopy = identifier;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = BAAgentClientProxy;
    self = objc_msgSendSuper2(&v13, sel_init);
    if (self)
    {
      selfCopy = [v5 _baassets_validUTI];
      if ([selfCopy isEqualToString:v5])
      {
        objc_setProperty_atomic(self, v8, v5, 16);
        objc_storeWeak(self + 4, identifierCopy);
        v9 = objc_alloc_init(MEMORY[0x277CCAAF8]);
        objc_setProperty_atomic(self, v10, v9, 24);

        [(BAAgentClientProxy *)self _setupConnection];
      }

      else
      {

        selfCopy = self;
        self = 0;
      }
    }
  }

  return self;
}

void __38__BAAgentClientProxy__setupConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_setProperty_atomic(WeakRetained, v2, 0, 8);
    WeakRetained = v3;
  }
}

void __38__BAAgentClientProxy__setupConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_setProperty_atomic(WeakRetained, v2, 0, 8);
    WeakRetained = v3;
  }
}

- (void)currentDownloadsWithCompletion:(uint64_t)completion
{
  v4 = a2;
  if (completion)
  {
    _setupConnection = [(BAAgentClientProxy *)completion _setupConnection];
    v7 = OUTLINED_FUNCTION_5(_setupConnection, v6);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__BAAgentClientProxy_currentDownloadsWithCompletion___block_invoke;
    v12[3] = &unk_278A0D068;
    v8 = v4;
    v13 = v8;
    v9 = [v7 remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__BAAgentClientProxy_currentDownloadsWithCompletion___block_invoke_108;
    v10[3] = &unk_278A0D090;
    v11 = v8;
    [v9 currentDownloads:v10];
  }
}

- (void)acquireExclusiveControlWithHandler:(uint64_t)handler
{
  v4 = a2;
  if (handler)
  {
    _setupConnection = [(BAAgentClientProxy *)handler _setupConnection];
    v7 = OUTLINED_FUNCTION_5(_setupConnection, v6);
    OUTLINED_FUNCTION_4();
    v16 = 3221225472;
    v17 = __57__BAAgentClientProxy_acquireExclusiveControlWithHandler___block_invoke;
    v18 = &unk_278A0D068;
    v8 = v4;
    v19 = v8;
    v9 = [v7 remoteObjectProxyWithErrorHandler:v15];
    OUTLINED_FUNCTION_3_0();
    v11 = __57__BAAgentClientProxy_acquireExclusiveControlWithHandler___block_invoke_113;
    v12 = &unk_278A0D108;
    handlerCopy = handler;
    v14 = v8;
    [v9 performWithExclusiveControlWithHandler:v10];
  }
}

- (void)_exclusiveControlEndedWithToken:(void *)token
{
  if (token)
  {
    v3 = a2;
    [(BAAgentClientProxy *)token _setupConnection];
    v6 = [objc_getProperty(token v5];
    [v6 exclusiveControlExitedWithToken:v3];
  }
}

- (void)acquireExclusiveControlBeforeDate:(void *)date handler:
{
  dateCopy = date;
  if (self)
  {
    v6 = a2;
    _setupConnection = [(BAAgentClientProxy *)self _setupConnection];
    v10 = OUTLINED_FUNCTION_5(_setupConnection, v9);
    OUTLINED_FUNCTION_4();
    v19 = 3221225472;
    v20 = __64__BAAgentClientProxy_acquireExclusiveControlBeforeDate_handler___block_invoke;
    v21 = &unk_278A0D068;
    v11 = dateCopy;
    v22 = v11;
    v12 = [v10 remoteObjectProxyWithErrorHandler:v18];
    OUTLINED_FUNCTION_3_0();
    v14 = __64__BAAgentClientProxy_acquireExclusiveControlBeforeDate_handler___block_invoke_115;
    v15 = &unk_278A0D108;
    selfCopy = self;
    v17 = v11;
    [v12 performWithExclusiveControlBeforeDate:v6 handler:v13];
  }
}

void __53__BAAgentClientProxy_currentDownloadsWithCompletion___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3(&dword_236E28000, v2, v3, "Message failed: %{public}s error: %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __39__BAAgentClientProxy_currentDownloads___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3(&dword_236E28000, v2, v3, "Message failed: %{public}s error: %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __45__BAAgentClientProxy_scheduleDownload_error___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3(&dword_236E28000, v2, v3, "Message failed: %{public}s error: %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __57__BAAgentClientProxy_acquireExclusiveControlWithHandler___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3(&dword_236E28000, v2, v3, "Message failed: %{public}s error: %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __64__BAAgentClientProxy_acquireExclusiveControlBeforeDate_handler___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3(&dword_236E28000, v2, v3, "Message failed: %{public}s error: %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __54__BAAgentClientProxy__exclusiveControlEndedWithToken___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3(&dword_236E28000, v2, v3, "Message failed: %{public}s error: %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __52__BAAgentClientProxy_startForegroundDownload_error___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3(&dword_236E28000, v2, v3, "Message failed: %{public}s error: %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __43__BAAgentClientProxy_cancelDownload_error___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3(&dword_236E28000, v2, v3, "Message failed: %{public}s error: %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __53__BAAgentClientProxy_markPurgeableWithFileURL_error___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3(&dword_236E28000, v2, v3, "Message failed: %{public}s error: %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end