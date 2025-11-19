@interface NSFileProviderProxy
- (BOOL)allowedForURL:(id)a3;
- (NSFileProviderProxy)initWithClient:(id)a3 remoteProvider:(id)a4 reactorID:(id)a5 secureID:(id)a6 uniqueID:(id)a7;
- (id)provideItemAtURL:(id)a3 withOptions:(unint64_t)a4 forAccessClaim:(id)a5 completionHandler:(id)a6;
- (id)provideItemForKernelRequestWithInfo:(id)a3 atURL:(id)a4 forProcess:(id *)a5 withOptions:(unint64_t)a6 completionHandler:(id)a7;
- (void)dealloc;
- (void)forwardUsingProxy:(id)a3;
- (void)invalidate;
- (void)movingItemAtURL:(id)a3 requiresProvidingWithDestinationDirectoryURL:(id)a4 newFileName:(id)a5 completionHandler:(id)a6;
- (void)observeEndOfWriteAtLocation:(id)a3 forAccessClaim:(id)a4;
- (void)observePresentationChangeOfKind:(id)a3 withPresenter:(id)a4 url:(id)a5 newURL:(id)a6;
- (void)provideLogicalURLForURL:(id)a3 completionHandler:(id)a4;
- (void)providePhysicalURLForURL:(id)a3 completionHandler:(id)a4;
- (void)setItemLocation:(id)a3;
@end

@implementation NSFileProviderProxy

- (NSFileProviderProxy)initWithClient:(id)a3 remoteProvider:(id)a4 reactorID:(id)a5 secureID:(id)a6 uniqueID:(id)a7
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSFileProviderProxy;
  v10 = [(NSFileReactorProxy *)&v12 initWithClient:a3 reactorID:a5];
  if (v10)
  {
    v10->_remoteProvider = a4;
    v10->_uniqueID = [a7 copy];
    v10->_secureID = [a6 copy];
  }

  return v10;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileProviderProxy;
  [(NSFileReactorProxy *)&v3 dealloc];
}

- (void)setItemLocation:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  itemLocation = self->super._itemLocation;
  if (a3 && itemLocation)
  {
    v6 = _NSFCProviderLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18075C000, v6, OS_LOG_TYPE_DEFAULT, "[NSFileProviderProxy setItemLocation:] was invoked for a provider proxy that already has a location. Ignoring it.", buf, 2u);
    }
  }

  else
  {
    if (itemLocation)
    {
      [(NSFileAccessNode *)itemLocation forEachPresenterOfItemOrContainedItemPerformProcedure:&__block_literal_global_205_0];
    }

    v7 = self;
    [(NSFileAccessNode *)self->super._itemLocation removeProvider:self];
    if ([a3 setProvider:self])
    {
      self->super._itemLocation = a3;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __39__NSFileProviderProxy_setItemLocation___block_invoke_2;
      v8[3] = &unk_1E69F9008;
      v8[4] = self;
      [a3 forEachPresenterOfItemOrContainedItemPerformProcedure:v8];
    }

    else
    {
      self->super._itemLocation = 0;
    }
  }
}

uint64_t __39__NSFileProviderProxy_setItemLocation___block_invoke_2(uint64_t a1, void *a2)
{
  [*(a1 + 32) observePresentationChangeOfKind:@"added" withPresenter:a2 url:objc_msgSend(objc_msgSend(a2 newURL:{"itemLocation"), "url"), 0}];
  v4 = *(a1 + 32);

  return [a2 observeNewProvider:v4];
}

- (void)forwardUsingProxy:(id)a3
{
  forwardedMessenger = self->_forwardedMessenger;
  if (!forwardedMessenger)
  {
    forwardedMessenger = [[NSFileProviderXPCMessenger alloc] initWithFileProviderProxy:self];
    self->_forwardedMessenger = forwardedMessenger;
  }

  [a3 addProvider:forwardedMessenger withID:self->super._reactorID uniqueID:self->_uniqueID forProvidedItemsURL:-[NSFileAccessNode url](self->super._itemLocation options:"url") withServer:0 reply:{0, &__block_literal_global_209}];
}

- (void)invalidate
{
  [(NSFileProviderXPCMessenger *)self->_forwardedMessenger invalidate];

  self->_forwardedMessenger = 0;
}

- (BOOL)allowedForURL:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if ([a3 isFileURL])
  {
    *v20 = 0;
    *&v20[8] = v20;
    *&v20[16] = 0x2020000000;
    v21 = 0;
    v18 = 0u;
    v19 = 0u;
    v5 = [(NSFileReactorProxy *)self client];
    if (v5)
    {
      [v5 auditToken];
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v8 = [NSFileAccessArbiter entitlementForConnection:[(NSFileReactorProxy *)self client] key:@"application-identifier"];
    if (([v8 isEqualToString:@"com.apple.bird"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"com.apple.fileprovider.fileproviderd") & 1) != 0 || (*buf = v18, *&buf[16] = v19, !sandbox_check_by_audit_token()))
    {
      *(*&v20[8] + 24) = 1;
    }

    else
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v15 = v18;
      v16 = v19;
      v14[2] = __37__NSFileProviderProxy_allowedForURL___block_invoke;
      v14[3] = &unk_1E69F96B8;
      v14[4] = v20;
      [NSFileReactorProxy _enumerateParentDirectoriesStartingAtURL:a3 usingBlock:v14];
      if ((*(*&v20[8] + 24) & 1) == 0)
      {
        v9 = _NSFCPresenterLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          reactorID = self->super._reactorID;
          v11 = [-[NSFileReactorProxy client](self "client")];
          v12 = [a3 path];
          *buf = 138543875;
          *&buf[4] = reactorID;
          *&buf[12] = 1024;
          *&buf[14] = v11;
          *&buf[18] = 2113;
          *&buf[20] = v12;
          _os_log_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEFAULT, "Registering provider %{public}@ disallowed. Process %d is not allowed to access the requested path or any of its parent directories: %{private}@", buf, 0x1Cu);
        }
      }
    }

    v7 = *(*&v20[8] + 24);
    _Block_object_dispose(v20, 8);
  }

  else
  {
    v6 = _NSFCPresenterLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v20 = 138543619;
      *&v20[4] = self;
      *&v20[12] = 2113;
      *&v20[14] = a3;
      _os_log_error_impl(&dword_18075C000, v6, OS_LOG_TYPE_ERROR, "Registering provider %{public}@ disallowed. Only file URLs are allowed, unlike this one: %{private}@", v20, 0x16u);
    }

    v7 = 0;
  }

  return v7 & 1;
}

uint64_t __37__NSFileProviderProxy_allowedForURL___block_invoke(uint64_t a1, void *a2, char *a3)
{
  v8 = [a2 fileSystemRepresentation];
  v6 = 1;
  result = sandbox_check_by_audit_token();
  if (result)
  {
    result = [a2 checkResourceIsReachableAndReturnError:{0, v8}];
    v6 = result;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  *a3 = v6;
  return result;
}

- (id)provideItemAtURL:(id)a3 withOptions:(unint64_t)a4 forAccessClaim:(id)a5 completionHandler:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v11 = [a5 claimID];
  v12 = [a5 client];
  if (v12)
  {
    [v12 auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  v13 = [NSFileProvidingInfo infoWithReaderID:v11 options:a4 auditToken:buf kernelMaterializationInfo:0];
  v14 = _NSFCProviderLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [a5 claimID];
    reactorID = self->super._reactorID;
    *buf = 138543618;
    *&buf[4] = v15;
    *&buf[12] = 2114;
    *&buf[14] = reactorID;
    _os_log_impl(&dword_18075C000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ asking provider %{public}@ to provide", buf, 0x16u);
  }

  remoteProvider = self->_remoteProvider;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __85__NSFileProviderProxy_provideItemAtURL_withOptions_forAccessClaim_completionHandler___block_invoke;
  v22[3] = &unk_1E69F9838;
  v22[4] = a3;
  v22[5] = a6;
  v18 = [(NSFileProviderXPCInterface *)remoteProvider remoteObjectProxyWithErrorHandler:v22];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __85__NSFileProviderProxy_provideItemAtURL_withOptions_forAccessClaim_completionHandler___block_invoke_226;
  v21[3] = &unk_1E69F9860;
  v21[4] = self;
  v21[5] = a5;
  v21[6] = a6;
  [v18 provideItemAtURL:a3 withInfo:v13 completionHandler:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__NSFileProviderProxy_provideItemAtURL_withOptions_forAccessClaim_completionHandler___block_invoke_228;
  v20[3] = &unk_1E69F68D8;
  v20[4] = a5;
  v20[5] = self;
  v20[6] = a3;
  return [v20 copy];
}

uint64_t __85__NSFileProviderProxy_provideItemAtURL_withOptions_forAccessClaim_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543618;
    v9 = @"provide";
    v10 = 2114;
    v11 = a2;
    _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "Sending of a '%{public}@' message was interrupted: %{public}@", &v8, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = [NSFileProvidingResponse responseWithError:_NSErrorWithFilePath(256, *(a1 + 32))];
  return (*(v5 + 16))(v5, v6);
}

uint64_t __85__NSFileProviderProxy_provideItemAtURL_withOptions_forAccessClaim_completionHandler___block_invoke_226(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _NSFCProviderLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 16);
    v4 = [*(a1 + 40) claimID];
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "Provider %{public}@ finished providing for %{public}@", &v6, 0x16u);
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t __85__NSFileProviderProxy_provideItemAtURL_withOptions_forAccessClaim_completionHandler___block_invoke_228(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _NSFCProviderLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) claimID];
    v4 = *(*(a1 + 40) + 16);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelled providing by %{public}@", &v6, 0x16u);
  }

  return [*(*(a1 + 40) + 56) cancelProvidingItemAtURL:*(a1 + 48) forClaimWithID:{objc_msgSend(*(a1 + 32), "claimID")}];
}

- (id)provideItemForKernelRequestWithInfo:(id)a3 atURL:(id)a4 forProcess:(id *)a5 withOptions:(unint64_t)a6 completionHandler:(id)a7
{
  v25 = *MEMORY[0x1E69E9840];
  v13 = [+[NSUUID UUID](NSUUID UUIDString];
  v14 = *&a5->var0[4];
  *buf = *a5->var0;
  *&buf[16] = v14;
  v15 = [NSFileProvidingInfo infoWithReaderID:v13 options:a6 auditToken:buf kernelMaterializationInfo:a3];
  v16 = _NSFCProviderLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    reactorID = self->super._reactorID;
    *buf = 138543619;
    *&buf[4] = reactorID;
    *&buf[12] = 2113;
    *&buf[14] = a4;
    _os_log_impl(&dword_18075C000, v16, OS_LOG_TYPE_DEFAULT, "Kernel asking provider %{public}@ to provide %{private}@", buf, 0x16u);
  }

  remoteProvider = self->_remoteProvider;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __106__NSFileProviderProxy_provideItemForKernelRequestWithInfo_atURL_forProcess_withOptions_completionHandler___block_invoke;
  v23[3] = &unk_1E69F3938;
  v23[4] = a7;
  v19 = [(NSFileProviderXPCInterface *)remoteProvider remoteObjectProxyWithErrorHandler:v23];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __106__NSFileProviderProxy_provideItemForKernelRequestWithInfo_atURL_forProcess_withOptions_completionHandler___block_invoke_230;
  v22[3] = &unk_1E69F9888;
  v22[4] = self;
  v22[5] = a7;
  [v19 provideItemAtURL:a4 withInfo:v15 completionHandler:v22];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __106__NSFileProviderProxy_provideItemForKernelRequestWithInfo_atURL_forProcess_withOptions_completionHandler___block_invoke_231;
  v21[3] = &unk_1E69F68D8;
  v21[4] = v13;
  v21[5] = self;
  v21[6] = a4;
  return [v21 copy];
}

uint64_t __106__NSFileProviderProxy_provideItemForKernelRequestWithInfo_atURL_forProcess_withOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = @"provide";
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "Sending of a '%{public}@' message was interrupted: %{public}@", &v6, 0x16u);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), [NSFileProvidingResponse responseWithError:a2]);
}

uint64_t __106__NSFileProviderProxy_provideItemForKernelRequestWithInfo_atURL_forProcess_withOptions_completionHandler___block_invoke_230(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _NSFCProviderLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 16);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "Provider %{public}@ finished providing for kernel", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __106__NSFileProviderProxy_provideItemForKernelRequestWithInfo_atURL_forProcess_withOptions_completionHandler___block_invoke_231(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _NSFCProviderLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = *(a1[5] + 16);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelled providing by %{public}@", &v6, 0x16u);
  }

  return [*(a1[5] + 56) cancelProvidingItemAtURL:a1[6] forClaimWithID:a1[4]];
}

- (void)providePhysicalURLForURL:(id)a3 completionHandler:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = _NSFCProviderLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    reactorID = self->super._reactorID;
    *buf = 138543362;
    v14 = reactorID;
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEFAULT, "Asking provider %{public}@ to provide physical URL", buf, 0xCu);
  }

  remoteProvider = self->_remoteProvider;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__NSFileProviderProxy_providePhysicalURLForURL_completionHandler___block_invoke;
  v12[3] = &unk_1E69F3938;
  v12[4] = a4;
  v10 = [(NSFileProviderXPCInterface *)remoteProvider remoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__NSFileProviderProxy_providePhysicalURLForURL_completionHandler___block_invoke_235;
  v11[3] = &unk_1E69F84D8;
  v11[4] = self;
  v11[5] = a4;
  [v10 providePhysicalItemForURL:a3 completionHandler:v11];
}

uint64_t __66__NSFileProviderProxy_providePhysicalURLForURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = @"providePhysical";
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "Sending of a '%{public}@' message was interrupted: %{public}@", &v6, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __66__NSFileProviderProxy_providePhysicalURLForURL_completionHandler___block_invoke_235(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _NSFCProviderLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 16);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "Provider %{public}@ finished providing physical URL", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)provideLogicalURLForURL:(id)a3 completionHandler:(id)a4
{
  if (!_CFURLIsItemPromiseAtURL())
  {
    v7 = [NSURLPromisePair pairWithLogicalURL:a3 physicalURL:0];
    goto LABEL_5;
  }

  v6 = _CFURLCopyLogicalURLOfPromiseAtURL();
  if (v6)
  {
    v7 = [NSURLPromisePair pairWithURL:v6];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v9 = *(a4 + 2);

  v9(a4, v8);
}

- (void)observePresentationChangeOfKind:(id)a3 withPresenter:(id)a4 url:(id)a5 newURL:(id)a6
{
  v18 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"added"])
  {
    v11 = [a4 observedUbiquityAttributes];
  }

  else
  {
    v11 = 0;
  }

  v12 = [a4 reactorID];
  v13 = [a4 client];
  if (v13)
  {
    [v13 auditToken];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v14 = [NSFileProviderPresenterInfo infoWithPresenterID:v12 auditToken:&v16 observedUbiquityAttributes:v11];
  v15 = v14;
  if (a6)
  {
    [(NSFileProviderPresenterInfo *)v14 setChangedURL:a6];
  }

  [(NSFileProviderXPCInterface *)self->_remoteProvider observePresentationChangeOfKind:a3 forPresenterOfURL:a5 withInfo:v15, v16, v17];
}

- (void)observeEndOfWriteAtLocation:(id)a3 forAccessClaim:(id)a4
{
  if (self->_wantsWriteNotifications && ([objc_msgSend(a4 "purposeID")] & 1) == 0)
  {
    v7 = [a3 standardizedURL];
    v8 = [a4 claimID];
    v9 = [a4 clientProcessIdentifier];
    remoteProvider = self->_remoteProvider;

    [(NSFileProviderXPCInterface *)remoteProvider observeEndOfWriteAtURL:v7 forClaimWithID:v8 fromProcessWithIdentifier:v9];
  }
}

- (void)movingItemAtURL:(id)a3 requiresProvidingWithDestinationDirectoryURL:(id)a4 newFileName:(id)a5 completionHandler:(id)a6
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = [NSFileProviderMovingInfo infoWithDestinationDirectoryURL:a4];
  v11 = _NSFCProviderLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    reactorID = self->super._reactorID;
    *buf = 138543362;
    v16 = reactorID;
    _os_log_impl(&dword_18075C000, v11, OS_LOG_TYPE_DEFAULT, "Asking provider %{public}@ if moving item within its container requires providing", buf, 0xCu);
  }

  remoteProvider = self->_remoteProvider;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __114__NSFileProviderProxy_movingItemAtURL_requiresProvidingWithDestinationDirectoryURL_newFileName_completionHandler___block_invoke;
  v14[3] = &unk_1E69F98B0;
  v14[4] = self;
  v14[5] = a6;
  [(NSFileProviderXPCInterface *)remoteProvider movingItemAtURL:a3 withInfo:v10 fileName:a5 completionHandler:v14];
}

uint64_t __114__NSFileProviderProxy_movingItemAtURL_requiresProvidingWithDestinationDirectoryURL_newFileName_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = _NSFCProviderLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 16);
    v7 = 138543618;
    v8 = v5;
    v9 = 2112;
    v10 = a2;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "Provider %{public}@ responded to moving check: %@", &v7, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

@end