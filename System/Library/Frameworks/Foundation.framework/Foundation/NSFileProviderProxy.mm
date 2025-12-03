@interface NSFileProviderProxy
- (BOOL)allowedForURL:(id)l;
- (NSFileProviderProxy)initWithClient:(id)client remoteProvider:(id)provider reactorID:(id)d secureID:(id)iD uniqueID:(id)uniqueID;
- (id)provideItemAtURL:(id)l withOptions:(unint64_t)options forAccessClaim:(id)claim completionHandler:(id)handler;
- (id)provideItemForKernelRequestWithInfo:(id)info atURL:(id)l forProcess:(id *)process withOptions:(unint64_t)options completionHandler:(id)handler;
- (void)dealloc;
- (void)forwardUsingProxy:(id)proxy;
- (void)invalidate;
- (void)movingItemAtURL:(id)l requiresProvidingWithDestinationDirectoryURL:(id)rL newFileName:(id)name completionHandler:(id)handler;
- (void)observeEndOfWriteAtLocation:(id)location forAccessClaim:(id)claim;
- (void)observePresentationChangeOfKind:(id)kind withPresenter:(id)presenter url:(id)url newURL:(id)l;
- (void)provideLogicalURLForURL:(id)l completionHandler:(id)handler;
- (void)providePhysicalURLForURL:(id)l completionHandler:(id)handler;
- (void)setItemLocation:(id)location;
@end

@implementation NSFileProviderProxy

- (NSFileProviderProxy)initWithClient:(id)client remoteProvider:(id)provider reactorID:(id)d secureID:(id)iD uniqueID:(id)uniqueID
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSFileProviderProxy;
  v10 = [(NSFileReactorProxy *)&v12 initWithClient:client reactorID:d];
  if (v10)
  {
    v10->_remoteProvider = provider;
    v10->_uniqueID = [uniqueID copy];
    v10->_secureID = [iD copy];
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

- (void)setItemLocation:(id)location
{
  v10 = *MEMORY[0x1E69E9840];
  itemLocation = self->super._itemLocation;
  if (location && itemLocation)
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

    selfCopy = self;
    [(NSFileAccessNode *)self->super._itemLocation removeProvider:self];
    if ([location setProvider:self])
    {
      self->super._itemLocation = location;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __39__NSFileProviderProxy_setItemLocation___block_invoke_2;
      v8[3] = &unk_1E69F9008;
      v8[4] = self;
      [location forEachPresenterOfItemOrContainedItemPerformProcedure:v8];
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

- (void)forwardUsingProxy:(id)proxy
{
  forwardedMessenger = self->_forwardedMessenger;
  if (!forwardedMessenger)
  {
    forwardedMessenger = [[NSFileProviderXPCMessenger alloc] initWithFileProviderProxy:self];
    self->_forwardedMessenger = forwardedMessenger;
  }

  [proxy addProvider:forwardedMessenger withID:self->super._reactorID uniqueID:self->_uniqueID forProvidedItemsURL:-[NSFileAccessNode url](self->super._itemLocation options:"url") withServer:0 reply:{0, &__block_literal_global_209}];
}

- (void)invalidate
{
  [(NSFileProviderXPCMessenger *)self->_forwardedMessenger invalidate];

  self->_forwardedMessenger = 0;
}

- (BOOL)allowedForURL:(id)l
{
  v22 = *MEMORY[0x1E69E9840];
  if ([l isFileURL])
  {
    *v20 = 0;
    *&v20[8] = v20;
    *&v20[16] = 0x2020000000;
    v21 = 0;
    v18 = 0u;
    v19 = 0u;
    client = [(NSFileReactorProxy *)self client];
    if (client)
    {
      [client auditToken];
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
      [NSFileReactorProxy _enumerateParentDirectoriesStartingAtURL:l usingBlock:v14];
      if ((*(*&v20[8] + 24) & 1) == 0)
      {
        v9 = _NSFCPresenterLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          reactorID = self->super._reactorID;
          v11 = [-[NSFileReactorProxy client](self "client")];
          path = [l path];
          *buf = 138543875;
          *&buf[4] = reactorID;
          *&buf[12] = 1024;
          *&buf[14] = v11;
          *&buf[18] = 2113;
          *&buf[20] = path;
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
      *&v20[14] = l;
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

- (id)provideItemAtURL:(id)l withOptions:(unint64_t)options forAccessClaim:(id)claim completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  claimID = [claim claimID];
  client = [claim client];
  if (client)
  {
    [client auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  v13 = [NSFileProvidingInfo infoWithReaderID:claimID options:options auditToken:buf kernelMaterializationInfo:0];
  v14 = _NSFCProviderLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    claimID2 = [claim claimID];
    reactorID = self->super._reactorID;
    *buf = 138543618;
    *&buf[4] = claimID2;
    *&buf[12] = 2114;
    *&buf[14] = reactorID;
    _os_log_impl(&dword_18075C000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ asking provider %{public}@ to provide", buf, 0x16u);
  }

  remoteProvider = self->_remoteProvider;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __85__NSFileProviderProxy_provideItemAtURL_withOptions_forAccessClaim_completionHandler___block_invoke;
  v22[3] = &unk_1E69F9838;
  v22[4] = l;
  v22[5] = handler;
  v18 = [(NSFileProviderXPCInterface *)remoteProvider remoteObjectProxyWithErrorHandler:v22];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __85__NSFileProviderProxy_provideItemAtURL_withOptions_forAccessClaim_completionHandler___block_invoke_226;
  v21[3] = &unk_1E69F9860;
  v21[4] = self;
  v21[5] = claim;
  v21[6] = handler;
  [v18 provideItemAtURL:l withInfo:v13 completionHandler:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__NSFileProviderProxy_provideItemAtURL_withOptions_forAccessClaim_completionHandler___block_invoke_228;
  v20[3] = &unk_1E69F68D8;
  v20[4] = claim;
  v20[5] = self;
  v20[6] = l;
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

- (id)provideItemForKernelRequestWithInfo:(id)info atURL:(id)l forProcess:(id *)process withOptions:(unint64_t)options completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  uUIDString = [+[NSUUID UUID](NSUUID UUIDString];
  v14 = *&process->var0[4];
  *buf = *process->var0;
  *&buf[16] = v14;
  v15 = [NSFileProvidingInfo infoWithReaderID:uUIDString options:options auditToken:buf kernelMaterializationInfo:info];
  v16 = _NSFCProviderLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    reactorID = self->super._reactorID;
    *buf = 138543619;
    *&buf[4] = reactorID;
    *&buf[12] = 2113;
    *&buf[14] = l;
    _os_log_impl(&dword_18075C000, v16, OS_LOG_TYPE_DEFAULT, "Kernel asking provider %{public}@ to provide %{private}@", buf, 0x16u);
  }

  remoteProvider = self->_remoteProvider;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __106__NSFileProviderProxy_provideItemForKernelRequestWithInfo_atURL_forProcess_withOptions_completionHandler___block_invoke;
  v23[3] = &unk_1E69F3938;
  v23[4] = handler;
  v19 = [(NSFileProviderXPCInterface *)remoteProvider remoteObjectProxyWithErrorHandler:v23];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __106__NSFileProviderProxy_provideItemForKernelRequestWithInfo_atURL_forProcess_withOptions_completionHandler___block_invoke_230;
  v22[3] = &unk_1E69F9888;
  v22[4] = self;
  v22[5] = handler;
  [v19 provideItemAtURL:l withInfo:v15 completionHandler:v22];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __106__NSFileProviderProxy_provideItemForKernelRequestWithInfo_atURL_forProcess_withOptions_completionHandler___block_invoke_231;
  v21[3] = &unk_1E69F68D8;
  v21[4] = uUIDString;
  v21[5] = self;
  v21[6] = l;
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

- (void)providePhysicalURLForURL:(id)l completionHandler:(id)handler
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
  v12[4] = handler;
  v10 = [(NSFileProviderXPCInterface *)remoteProvider remoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__NSFileProviderProxy_providePhysicalURLForURL_completionHandler___block_invoke_235;
  v11[3] = &unk_1E69F84D8;
  v11[4] = self;
  v11[5] = handler;
  [v10 providePhysicalItemForURL:l completionHandler:v11];
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

- (void)provideLogicalURLForURL:(id)l completionHandler:(id)handler
{
  if (!_CFURLIsItemPromiseAtURL())
  {
    v7 = [NSURLPromisePair pairWithLogicalURL:l physicalURL:0];
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
  v9 = *(handler + 2);

  v9(handler, v8);
}

- (void)observePresentationChangeOfKind:(id)kind withPresenter:(id)presenter url:(id)url newURL:(id)l
{
  v18 = *MEMORY[0x1E69E9840];
  if ([kind isEqualToString:@"added"])
  {
    observedUbiquityAttributes = [presenter observedUbiquityAttributes];
  }

  else
  {
    observedUbiquityAttributes = 0;
  }

  reactorID = [presenter reactorID];
  client = [presenter client];
  if (client)
  {
    [client auditToken];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v14 = [NSFileProviderPresenterInfo infoWithPresenterID:reactorID auditToken:&v16 observedUbiquityAttributes:observedUbiquityAttributes];
  v15 = v14;
  if (l)
  {
    [(NSFileProviderPresenterInfo *)v14 setChangedURL:l];
  }

  [(NSFileProviderXPCInterface *)self->_remoteProvider observePresentationChangeOfKind:kind forPresenterOfURL:url withInfo:v15, v16, v17];
}

- (void)observeEndOfWriteAtLocation:(id)location forAccessClaim:(id)claim
{
  if (self->_wantsWriteNotifications && ([objc_msgSend(claim "purposeID")] & 1) == 0)
  {
    standardizedURL = [location standardizedURL];
    claimID = [claim claimID];
    clientProcessIdentifier = [claim clientProcessIdentifier];
    remoteProvider = self->_remoteProvider;

    [(NSFileProviderXPCInterface *)remoteProvider observeEndOfWriteAtURL:standardizedURL forClaimWithID:claimID fromProcessWithIdentifier:clientProcessIdentifier];
  }
}

- (void)movingItemAtURL:(id)l requiresProvidingWithDestinationDirectoryURL:(id)rL newFileName:(id)name completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = [NSFileProviderMovingInfo infoWithDestinationDirectoryURL:rL];
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
  v14[5] = handler;
  [(NSFileProviderXPCInterface *)remoteProvider movingItemAtURL:l withInfo:v10 fileName:name completionHandler:v14];
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