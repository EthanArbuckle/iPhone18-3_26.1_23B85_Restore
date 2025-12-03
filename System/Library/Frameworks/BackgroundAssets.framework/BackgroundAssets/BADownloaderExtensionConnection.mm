@interface BADownloaderExtensionConnection
- (BADownloaderExtension)principalObject;
- (BADownloaderExtensionConnection)initWithPrincipalObject:(id)object;
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (id)acquireWakeAssertion;
- (uint64_t)_markPurgeableWithFileURL:(void *)l error:;
- (void)backgroundDownload:(id)download failedWithError:(id)error completionHandler:(id)handler;
- (void)backgroundDownload:(id)download finishedWithSandboxToken:(id)token completionHandler:(id)handler;
- (void)downloadsForRequest:(int64_t)request manifestURL:(id)l manifestToken:(id)token extensionInfo:(id)info completionHandler:(id)handler;
- (void)extensionWillTerminate;
- (void)receivedAuthenticationChallenge:(id)challenge download:(id)download completionHandler:(id)handler;
- (void)setPrincipalObject:(id)object;
@end

@implementation BADownloaderExtensionConnection

- (BADownloaderExtensionConnection)initWithPrincipalObject:(id)object
{
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = BADownloaderExtensionConnection;
  v5 = [(BADownloaderExtensionConnection *)&v14 init];
  if (v5)
  {
    v6 = +[BADownloadManager sharedManager];
    [(BADownloadManager *)v6 setExtensionConnection:v5];

    v7 = MEMORY[0x277CCACA8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v10 = [v7 stringWithFormat:@"%@.work-queue", bundleIdentifier];

    v11 = dispatch_queue_create([v10 UTF8String], 0);
    objc_setProperty_atomic(v5, v12, v11, 32);

    [(BADownloaderExtensionConnection *)v5 setPrincipalObject:objectCopy];
  }

  return v5;
}

- (BADownloaderExtension)principalObject
{
  principalObject = self->_principalObject;
  if ([objc_opt_class() conformsToProtocol:&unk_2849E2B90])
  {
    extensionWrapper = [(BADownloaderExtensionConnection *)self extensionWrapper];
  }

  else
  {
    extensionWrapper = self->_principalObject;
  }

  return extensionWrapper;
}

- (void)setPrincipalObject:(id)object
{
  objectCopy = object;
  objc_storeStrong(&self->_principalObject, object);
  if ([objc_opt_class() conformsToProtocol:&unk_2849E2B90])
  {
    v5 = [[BAManagedDownloaderExtensionWrapper alloc] initWithWrappedExtension:objectCopy];
    [(BADownloaderExtensionConnection *)self setExtensionWrapper:v5];
  }

  else
  {
    [(BADownloaderExtensionConnection *)self setExtensionWrapper:0];
  }
}

void __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke(uint64_t a1)
{
  v1 = a1;
  v49 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) UTF8String];
  if (sandbox_extension_consume() != -1)
  {
    v2 = +[BADownloadManager sharedManager];
    [(BADownloadManager *)v2 setScheduleLocked:?];

    v3 = [MEMORY[0x277CBEB98] set];
    v4 = *(v1 + 48);
    if (objc_opt_respondsToSelector())
    {
      v5 = [*(v1 + 48) downloadsForRequest:*(v1 + 72) manifestURL:*(v1 + 40) extensionInfo:*(v1 + 56)];

      v3 = v5;
    }

    sandbox_extension_release();
    if (!v3)
    {
      goto LABEL_27;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_27;
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = v7;
    v9 = *v45;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v1 = *(v1 + 64);
          v16 = [MEMORY[0x277CBEB98] set];
          (*(v1 + 16))(v1, 0, v16);

          v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
          if (v17)
          {
            __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
          }

          __break(0xB001u);
LABEL_24:
          v1 = *(v1 + 64);
          v25 = [MEMORY[0x277CBEB98] set];
          (*(v1 + 16))(v1, 0, v25);

          v26 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
          if (v26)
          {
            __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke_cold_2(v26, v27, v28, v29, v30, v31, v32, v33);
          }

          __break(0xB001u);
LABEL_27:
          v34 = *(v1 + 64);
          v35 = [MEMORY[0x277CBEB98] set];
          (*(v34 + 16))(v34, 0, v35);

          v36 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
          if (v36)
          {
            __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke_cold_3(v36, v37, v38, v39, v40, v41, v42, v43);
          }

          __break(0xB001u);
        }

        if ((*(v1 + 72) - 1) >= 2 && [v11 necessity] == 1)
        {
          goto LABEL_24;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (!v8)
      {
LABEL_16:

        (*(*(v1 + 64) + 16))();
        v12 = +[BADownloadManager sharedManager];
        [(BADownloadManager *)v12 setScheduleLocked:?];

        goto LABEL_20;
      }
    }
  }

  v13 = BASystemLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke_cold_4(v1, v13);
  }

  v14 = *(v1 + 64);
  v6 = [MEMORY[0x277CBEB98] set];
  (*(v14 + 16))(v14, 0, v6);
LABEL_20:

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __94__BADownloaderExtensionConnection_receivedAuthenticationChallenge_download_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];

    return [v3 backgroundDownload:v4 didReceiveChallenge:v5 completionHandler:v6];
  }

  else
  {
    v8 = *(a1[7] + 16);

    return v8();
  }
}

- (void)extensionWillTerminate
{
  principalObject = [(BADownloaderExtensionConnection *)self principalObject];
  if (objc_opt_respondsToSelector())
  {
    [principalObject extensionWillTerminate];
  }
}

uint64_t __88__BADownloaderExtensionConnection_backgroundDownload_failedWithError_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) backgroundDownload:*(a1 + 40) failedWithError:*(a1 + 48)];
  }

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

void __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) UTF8String];
  if (sandbox_extension_consume() != -1)
  {
    v2 = *(a1 + 40);
    v29 = 0;
    v30 = 0;
    v3 = [v2 cloneDownloadToFinalDestinationURL:&v30 error:&v29];
    v4 = v30;
    v5 = v29;
    v6 = *(a1 + 40);
    if ((v3 & 1) == 0)
    {
      [(BADownload *)v6 setInternalState:?];
      v20 = *(a1 + 48);
      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 48) backgroundDownload:*(a1 + 40) failedWithError:v5];
      }

      v16 = BAClientLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_1();
      }

      goto LABEL_31;
    }

    if (([(BADownload *)v6 isForManagedAssetPack]& 1) == 0)
    {
      v7 = *(a1 + 56);
      v28 = v5;
      v8 = [(BADownloaderExtensionConnection *)v7 _markPurgeableWithFileURL:v4 error:&v28];
      v9 = v28;

      if ((v8 & 1) == 0)
      {
        v21 = BAClientLogObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_2();
        }

        [(BADownload *)*(a1 + 40) setInternalState:?];
        v22 = [MEMORY[0x277CCAA00] defaultManager];
        v27 = 0;
        v23 = [v22 removeItemAtURL:v4 error:&v27];
        v16 = v27;

        if ((v23 & 1) == 0)
        {
          v24 = BAClientLogObject();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_3();
          }
        }

        v25 = *(a1 + 48);
        if (objc_opt_respondsToSelector())
        {
          [*(a1 + 48) backgroundDownload:*(a1 + 40) failedWithError:v9];
        }

        v5 = v9;
        goto LABEL_31;
      }

      v5 = v9;
    }

    v10 = *(a1 + 48);
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 48) backgroundDownload:*(a1 + 40) finishedWithFileURL:v4];
    }

    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [v4 path];
    v13 = [v11 fileExistsAtPath:v12];

    if (!v13)
    {
      goto LABEL_32;
    }

    v14 = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    v15 = [v14 removeItemAtURL:v4 error:&v26];
    v16 = v26;

    if ((v15 & 1) == 0)
    {
      v17 = BAClientLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_4();
      }
    }

LABEL_31:

LABEL_32:
    sandbox_extension_release();
    (*(*(a1 + 64) + 16))();

    goto LABEL_33;
  }

  v18 = BASystemLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_5(a1, v18);
  }

  v4 = NSErrorWithBAErrorCode(-108);
  [(BADownload *)*(a1 + 40) setInternalState:?];
  v19 = *(a1 + 48);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 48) backgroundDownload:*(a1 + 40) failedWithError:v4];
  }

  (*(*(a1 + 64) + 16))();
LABEL_33:
}

- (uint64_t)_markPurgeableWithFileURL:(void *)l error:
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    [v5 fileSystemRepresentation];
    Property = objc_getProperty(self, v7, 48, 1);
    if (Property)
    {
      [Property auditToken];
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v9 = *MEMORY[0x277D861C0];
    v10 = *MEMORY[0x277D861E8];
    v11 = sandbox_extension_issue_file_to_process();
    if (v11)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
      free(v11);
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      *&v21 = 0;
      *(&v21 + 1) = &v21;
      *&v22 = 0x3032000000;
      *(&v22 + 1) = __Block_byref_object_copy__119;
      v23 = __Block_byref_object_dispose__120;
      v24 = 0;
      v14 = objc_getProperty(self, v13, 48, 1);
      v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_122];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __67__BADownloaderExtensionConnection__markPurgeableWithFileURL_error___block_invoke_123;
      v20[3] = &unk_278A0CFA0;
      v20[4] = &v25;
      v20[5] = &v21;
      [v15 markPurgeableWithFileURL:v6 sandboxToken:v12 reply:v20];

      if (l)
      {
        *l = *(*(&v21 + 1) + 40);
      }

      LOBYTE(self) = *(v26 + 24);
      _Block_object_dispose(&v21, 8);

      _Block_object_dispose(&v25, 8);
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
      v29 = @"FileURL";
      v30[0] = v6;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v12 = [v16 errorWithDomain:*MEMORY[0x277CCA5B8] code:self userInfo:v17];

      NSErrorWithBAErrorDomainCodeUnderlying(@"BAErrorDomain", -107, v12);
      *l = LOBYTE(self) = 0;
    }
  }

LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
  return self & 1;
}

- (id)acquireWakeAssertion
{
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
  }

  v2 = [(BADownloaderExtensionConnection *)self synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = dispatch_block_create(0, &__block_literal_global_111);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__BADownloaderExtensionConnection_acquireWakeAssertion__block_invoke_2;
  v6[3] = &unk_278A0CF78;
  v8 = &v9;
  v3 = v2;
  v7 = v3;
  [v3 incrementWakeAssertionWithReply:v6];
  v4 = _Block_copy(v10[5]);

  _Block_object_dispose(&v9, 8);

  return v4;
}

void __55__BADownloaderExtensionConnection_acquireWakeAssertion__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BAClientLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__BADownloaderExtensionConnection_acquireWakeAssertion__block_invoke_cold_1(v2);
  }
}

void __55__BADownloaderExtensionConnection_acquireWakeAssertion__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__BADownloaderExtensionConnection_acquireWakeAssertion__block_invoke_3;
  block[3] = &unk_278A0CF50;
  v6 = *(a1 + 32);
  v2 = dispatch_block_create(0, block);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __67__BADownloaderExtensionConnection__markPurgeableWithFileURL_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BAClientLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __67__BADownloaderExtensionConnection__markPurgeableWithFileURL_error___block_invoke_cold_1(v2);
  }
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  v27[4] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2849DEC78];
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v5 forSelector:sel_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler_ argumentIndex:1 ofReply:0];

  v6 = MEMORY[0x277CBEB98];
  objc_opt_class();
  [OUTLINED_FUNCTION_7() setWithObjects:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1() setClasses:? forSelector:? argumentIndex:? ofReply:?];

  v7 = MEMORY[0x277CBEB98];
  objc_opt_class();
  [OUTLINED_FUNCTION_7() setWithObjects:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1() setClasses:? forSelector:? argumentIndex:? ofReply:?];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1() setClasses:? forSelector:? argumentIndex:? ofReply:?];

  v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v11 forSelector:sel_receivedAuthenticationChallenge_download_completionHandler_ argumentIndex:0 ofReply:0];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  [v12 setWithObjects:{v13, v14, v15, objc_opt_class(), 0}];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1() setClasses:? forSelector:? argumentIndex:? ofReply:?];

  v16 = MEMORY[0x277CBEB98];
  objc_opt_class();
  [OUTLINED_FUNCTION_7() setWithObjects:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1() setClasses:? forSelector:? argumentIndex:? ofReply:?];

  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v27[2] = objc_opt_class();
  v27[3] = objc_opt_class();
  [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
  objc_claimAutoreleasedReturnValue();
  v17 = [OUTLINED_FUNCTION_6() setWithArray:?];
  [v4 setClasses:v17 forSelector:sel_backgroundDownload_failedWithError_completionHandler_ argumentIndex:0 ofReply:0];

  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v26[2] = objc_opt_class();
  v26[3] = objc_opt_class();
  [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  objc_claimAutoreleasedReturnValue();
  v18 = [OUTLINED_FUNCTION_6() setWithArray:?];
  [v4 setClasses:v18 forSelector:sel_backgroundDownload_finishedWithSandboxToken_completionHandler_ argumentIndex:0 ofReply:0];

  v25 = objc_opt_class();
  [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  objc_claimAutoreleasedReturnValue();
  v19 = [OUTLINED_FUNCTION_6() setWithArray:?];
  [v4 setClasses:v19 forSelector:sel_backgroundDownload_finishedWithSandboxToken_completionHandler_ argumentIndex:1 ofReply:0];

  v20 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2849E2B30];
  [connectionCopy setExportedInterface:v4];
  [connectionCopy setRemoteObjectInterface:v20];
  [connectionCopy setExportedObject:self];
  if (self)
  {
    objc_setProperty_atomic(self, v21, connectionCopy, 48);
  }

  [connectionCopy resume];

  v22 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)downloadsForRequest:(int64_t)request manifestURL:(id)l manifestToken:(id)token extensionInfo:(id)info completionHandler:(id)handler
{
  lCopy = l;
  tokenCopy = token;
  infoCopy = info;
  handlerCopy = handler;
  principalObject = [(BADownloaderExtensionConnection *)self principalObject];
  if (self)
  {
    self = objc_getProperty(self, v16, 32, 1);
  }

  OUTLINED_FUNCTION_0();
  v23[1] = 3221225472;
  v23[2] = __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke;
  v23[3] = &unk_278A0CE98;
  v24 = tokenCopy;
  v25 = lCopy;
  v28 = handlerCopy;
  requestCopy = request;
  v26 = principalObject;
  v27 = infoCopy;
  v18 = infoCopy;
  v19 = principalObject;
  v20 = handlerCopy;
  v21 = lCopy;
  v22 = tokenCopy;
  dispatch_async(&self->super.super, v23);
}

- (void)receivedAuthenticationChallenge:(id)challenge download:(id)download completionHandler:(id)handler
{
  challengeCopy = challenge;
  downloadCopy = download;
  handlerCopy = handler;
  principalObject = [(BADownloaderExtensionConnection *)self principalObject];
  if (self)
  {
    self = objc_getProperty(self, v11, 32, 1);
  }

  OUTLINED_FUNCTION_0();
  v17[1] = 3221225472;
  v17[2] = __94__BADownloaderExtensionConnection_receivedAuthenticationChallenge_download_completionHandler___block_invoke;
  v17[3] = &unk_278A0CEC0;
  v18 = principalObject;
  v19 = downloadCopy;
  v20 = challengeCopy;
  v21 = handlerCopy;
  v13 = handlerCopy;
  v14 = challengeCopy;
  v15 = downloadCopy;
  v16 = principalObject;
  dispatch_async(&self->super.super, v17);
}

- (void)backgroundDownload:(id)download failedWithError:(id)error completionHandler:(id)handler
{
  downloadCopy = download;
  errorCopy = error;
  handlerCopy = handler;
  principalObject = [(BADownloaderExtensionConnection *)self principalObject];
  if (self)
  {
    self = objc_getProperty(self, v11, 32, 1);
  }

  OUTLINED_FUNCTION_0();
  v17[1] = 3221225472;
  v17[2] = __88__BADownloaderExtensionConnection_backgroundDownload_failedWithError_completionHandler___block_invoke;
  v17[3] = &unk_278A0CEC0;
  v18 = principalObject;
  v19 = downloadCopy;
  v20 = errorCopy;
  v21 = handlerCopy;
  v13 = handlerCopy;
  v14 = errorCopy;
  v15 = downloadCopy;
  v16 = principalObject;
  dispatch_async(&self->super.super, v17);
}

- (void)backgroundDownload:(id)download finishedWithSandboxToken:(id)token completionHandler:(id)handler
{
  downloadCopy = download;
  tokenCopy = token;
  handlerCopy = handler;
  principalObject = [(BADownloaderExtensionConnection *)self principalObject];
  if (self)
  {
    Property = objc_getProperty(self, v11, 32, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke;
  block[3] = &unk_278A0CEE8;
  v19 = tokenCopy;
  v20 = downloadCopy;
  selfCopy = self;
  v23 = handlerCopy;
  v21 = principalObject;
  v14 = handlerCopy;
  v15 = principalObject;
  v16 = downloadCopy;
  v17 = tokenCopy;
  dispatch_async(Property, block);
}

void __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __113__BADownloaderExtensionConnection_downloadsForRequest_manifestURL_manifestToken_extensionInfo_completionHandler___block_invoke_cold_4(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_236E28000, a2, OS_LOG_TYPE_ERROR, "Manifest of %{public}@ finished but sandbox_extension_consume() failed.", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_10(v2) identifier];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_9() description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_236E28000, v4, v5, "Download %{public}@ failed to be cloned after download. Error:%{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_10(v2) identifier];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_9() description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_236E28000, v4, v5, "Download %{public}@ failed to mark cloned file as purgeable. Error:%{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_10(v2) identifier];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_9() description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_236E28000, v4, v5, "Download %{public}@ failed to remove cloned file failing to be marked as purgeable. Error:%{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_10(v2) identifier];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_9() description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_236E28000, v4, v5, "Download %{public}@ failed to remove cloned file after the client serviced the download. Error:%{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __97__BADownloaderExtensionConnection_backgroundDownload_finishedWithSandboxToken_completionHandler___block_invoke_cold_5(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_236E28000, a2, OS_LOG_TYPE_ERROR, "Download  %{public}@ finished but sandbox_extension_consume() failed.", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __55__BADownloaderExtensionConnection_acquireWakeAssertion__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3(&dword_236E28000, v2, v3, "Message failed: %{public}s error: %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __67__BADownloaderExtensionConnection__markPurgeableWithFileURL_error___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3(&dword_236E28000, v2, v3, "Message failed: %{public}s error: %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end