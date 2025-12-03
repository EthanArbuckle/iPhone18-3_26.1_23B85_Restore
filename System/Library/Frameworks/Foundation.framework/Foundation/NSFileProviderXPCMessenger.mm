@interface NSFileProviderXPCMessenger
- (NSFileProviderXPCMessenger)initWithFileProvider:(id)provider queue:(id)queue;
- (NSFileProviderXPCMessenger)initWithFileProviderProxy:(id)proxy;
- (void)_makeProvider:(id)provider provideItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler;
- (void)cancelProvidingItemAtURL:(id)l forClaimWithID:(id)d;
- (void)collectDebuggingInformationWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
- (void)movingItemAtURL:(id)l withInfo:(id)info fileName:(id)name completionHandler:(id)handler;
- (void)observeEndOfWriteAtURL:(id)l forClaimWithID:(id)d fromProcessWithIdentifier:(int)identifier;
- (void)observePresentationChangeOfKind:(id)kind forPresenterOfURL:(id)l withInfo:(id)info;
- (void)provideItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler;
- (void)providePhysicalItemForURL:(id)l completionHandler:(id)handler;
@end

@implementation NSFileProviderXPCMessenger

- (NSFileProviderXPCMessenger)initWithFileProvider:(id)provider queue:(id)queue
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSFileProviderXPCMessenger;
  v6 = [(NSFileProviderXPCMessenger *)&v8 init];
  if (v6)
  {
    v6->_fileProvider = provider;
    v6->_queue = queue;
    dispatch_retain(queue);
  }

  return v6;
}

- (NSFileProviderXPCMessenger)initWithFileProviderProxy:(id)proxy
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSFileProviderXPCMessenger;
  v4 = [(NSFileProviderXPCMessenger *)&v6 init];
  if (v4)
  {
    v4->_fileProviderProxy = proxy;
  }

  return v4;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v4.receiver = self;
  v4.super_class = NSFileProviderXPCMessenger;
  [(NSFileProviderXPCMessenger *)&v4 dealloc];
}

- (void)invalidate
{
  self->_fileProvider = 0;

  self->_fileProviderProxy = 0;
}

- (void)_makeProvider:(id)provider provideItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  v11 = [NSFileAccessArbiterProxy _idForReactor:?];
  readerID = [info readerID];
  v13 = _NSFCProviderLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543875;
    v18 = v11;
    v19 = 2113;
    path = [l path];
    v21 = 2114;
    v22 = readerID;
    _os_log_impl(&dword_18075C000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ providing %{private}@ for claim %{public}@", buf, 0x20u);
  }

  v14 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:provider withDescription:@"Provide"];
  _providedItemsOperationQueue = [provider _providedItemsOperationQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__NSFileProviderXPCMessenger__makeProvider_provideItemAtURL_withInfo_completionHandler___block_invoke;
  v16[3] = &unk_1E69F9530;
  v16[4] = v11;
  v16[5] = v14;
  v16[6] = provider;
  v16[7] = l;
  v16[8] = info;
  v16[9] = self;
  v16[10] = readerID;
  v16[11] = handler;
  [_providedItemsOperationQueue _fc_addUncancellableOperationForReactorID:v11 block:v16];
}

uint64_t __88__NSFileProviderXPCMessenger__makeProvider_provideItemAtURL_withInfo_completionHandler___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = _NSFCProviderLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v24 = v3;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ began providing", buf, 0xCu);
  }

  [*(a1 + 40) didBegin];
  v4 = objc_opt_respondsToSelector();
  v5 = *(a1 + 48);
  if (v4)
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __88__NSFileProviderXPCMessenger__makeProvider_provideItemAtURL_withInfo_completionHandler___block_invoke_722;
    v19[3] = &unk_1E69F8C70;
    v20 = *(a1 + 32);
    v8 = *(a1 + 88);
    v21 = *(a1 + 72);
    v22 = v8;
    return [v5 _provideItemAtURL:v6 withInfo:v7 completionHandler:v19];
  }

  else if (objc_opt_respondsToSelector())
  {
    v10 = *(a1 + 64);
    if (v10)
    {
      [v10 readerAuditToken];
      v11 = v25;
    }

    else
    {
      v11 = 0;
    }

    [NSFileCoordinator _addProcessIdentifier:v11 observedUbiquityAttributes:0 forID:*(a1 + 80)];
    +[NSFileCoordinator _setReadingOptions:](NSFileCoordinator, "_setReadingOptions:", [*(a1 + 64) readingOptions]);
    +[NSFileCoordinator _setKernelMaterializationInfo:](NSFileCoordinator, "_setKernelMaterializationInfo:", [*(a1 + 64) kernelMaterializationInfo]);
    [*(a1 + 48) _provideItemAtURL:*(a1 + 56) toReaderWithID:? completionHandler:?];
    [NSFileCoordinator _setReadingOptions:0];
    return [NSFileCoordinator _setKernelMaterializationInfo:0];
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __88__NSFileProviderXPCMessenger__makeProvider_provideItemAtURL_withInfo_completionHandler___block_invoke_2_728;
    v15[3] = &unk_1E69F9328;
    v16 = *(a1 + 32);
    v14 = *(a1 + 88);
    v17 = *(a1 + 72);
    v18 = v14;
    return [v12 _provideItemAtURL:v13 completionHandler:v15];
  }
}

void __88__NSFileProviderXPCMessenger__makeProvider_provideItemAtURL_withInfo_completionHandler___block_invoke_722(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = _NSFCProviderLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ finished providing", buf, 0xCu);
  }

  [*(a1 + 40) willEnd];
  v6 = *(*(a1 + 48) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__NSFileProviderXPCMessenger__makeProvider_provideItemAtURL_withInfo_completionHandler___block_invoke_723;
  block[3] = &unk_1E69F9288;
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  block[5] = a2;
  block[6] = v8;
  block[4] = v7;
  dispatch_async(v6, block);
}

uint64_t __88__NSFileProviderXPCMessenger__makeProvider_provideItemAtURL_withInfo_completionHandler___block_invoke_723(uint64_t a1)
{
  [*(a1 + 32) didEnd];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __88__NSFileProviderXPCMessenger__makeProvider_provideItemAtURL_withInfo_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = _NSFCProviderLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ finished providing", buf, 0xCu);
  }

  [NSFileCoordinator _removeInfoForID:*(a1 + 40)];
  [*(a1 + 48) willEnd];
  v6 = [NSFileProvidingResponse responseWithError:a2];
  [(NSFileProvidingResponse *)v6 setProvidedItemRecursiveGenerationCount:+[NSFileCoordinator _providedItemGenerationCount]];
  v7 = *(*(a1 + 56) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__NSFileProviderXPCMessenger__makeProvider_provideItemAtURL_withInfo_completionHandler___block_invoke_727;
  block[3] = &unk_1E69F9288;
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  block[5] = v6;
  block[6] = v9;
  block[4] = v8;
  dispatch_async(v7, block);
}

uint64_t __88__NSFileProviderXPCMessenger__makeProvider_provideItemAtURL_withInfo_completionHandler___block_invoke_727(uint64_t a1)
{
  [*(a1 + 32) didEnd];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __88__NSFileProviderXPCMessenger__makeProvider_provideItemAtURL_withInfo_completionHandler___block_invoke_2_728(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = _NSFCProviderLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ finished providing", buf, 0xCu);
  }

  [*(a1 + 40) willEnd];
  v6 = *(*(a1 + 48) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__NSFileProviderXPCMessenger__makeProvider_provideItemAtURL_withInfo_completionHandler___block_invoke_729;
  block[3] = &unk_1E69F9288;
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  block[5] = a2;
  block[6] = v8;
  block[4] = v7;
  dispatch_async(v6, block);
}

uint64_t __88__NSFileProviderXPCMessenger__makeProvider_provideItemAtURL_withInfo_completionHandler___block_invoke_729(uint64_t a1)
{
  [*(a1 + 32) didEnd];
  v2 = *(a1 + 48);
  v3 = [NSFileProvidingResponse responseWithError:*(a1 + 40)];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)provideItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler
{
  v13[8] = *MEMORY[0x1E69E9840];
  fileProvider = self->_fileProvider;
  if (fileProvider)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__NSFileProviderXPCMessenger_provideItemAtURL_withInfo_completionHandler___block_invoke;
    v13[3] = &unk_1E69F8C70;
    v13[4] = self;
    v13[5] = l;
    v13[6] = info;
    v13[7] = handler;
    [(NSFileProviderXPCMessenger *)self _makeProvider:fileProvider provideItemAtURL:l withInfo:info completionHandler:v13];
  }

  else
  {
    fileProviderProxy = self->_fileProviderProxy;
    if (fileProviderProxy)
    {
      remoteProvider = [(NSFileProviderProxy *)fileProviderProxy remoteProvider];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __74__NSFileProviderXPCMessenger_provideItemAtURL_withInfo_completionHandler___block_invoke_3;
      v12[3] = &unk_1E69F3938;
      v12[4] = handler;
      [-[NSFileProviderXPCInterface remoteObjectProxyWithErrorHandler:](remoteProvider remoteObjectProxyWithErrorHandler:{v12), "provideItemAtURL:withInfo:completionHandler:", l, info, handler}];
    }

    else
    {
      v11 = *(handler + 2);

      v11(handler, 0);
    }
  }
}

uint64_t __74__NSFileProviderXPCMessenger_provideItemAtURL_withInfo_completionHandler___block_invoke(uint64_t a1, NSFileProvidingResponse *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if ([NSStringFromClass(v4) hasSuffix:@"TiWorkFileProvider"]&& ![(NSFileProvidingResponse *)a2 error])
  {
    v5 = [*(a1 + 40) fileSystemRepresentation];
    if (v5)
    {
      v8 = *(a1 + 48);
      if (v8)
      {
        [v8 readerAuditToken];
      }

      else
      {
        v11 = 0u;
        v12 = 0u;
      }

      v9 = sandbox_extension_issue_file_to_process();
      v5 = v9;
      if (a2 || !v9)
      {
        if (!v9)
        {
          goto LABEL_4;
        }
      }

      else
      {
        a2 = objc_alloc_init(NSFileProvidingResponse);
      }

      -[NSFileProvidingResponse setSandboxToken:](a2, "setSandboxToken:", [+[NSFileManager defaultManager](NSFileManager stringWithFileSystemRepresentation:"stringWithFileSystemRepresentation:length:" length:v5, strlen(v5)]);
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_4:
  free(v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__NSFileProviderXPCMessenger_provideItemAtURL_withInfo_completionHandler___block_invoke_2;
  v10[3] = &unk_1E69F3910;
  v6 = *(a1 + 56);
  v10[4] = a2;
  v10[5] = v6;
  return [NSFileCoordinator _performBarrierAsync:v10];
}

uint64_t __74__NSFileProviderXPCMessenger_provideItemAtURL_withInfo_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
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

- (void)cancelProvidingItemAtURL:(id)l forClaimWithID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_fileProvider)
  {
    v7 = _NSFCProviderLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      dCopy = d;
      _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEFAULT, "Cancelling providing for claim %{public}@", buf, 0xCu);
    }

    v8 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:self->_fileProvider withDescription:@"Provide"];
    _providedItemsOperationQueue = [(NSFileProvider *)self->_fileProvider _providedItemsOperationQueue];
    v10 = [NSFileAccessArbiterProxy _idForReactor:self->_fileProvider];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__NSFileProviderXPCMessenger_cancelProvidingItemAtURL_forClaimWithID___block_invoke;
    v11[3] = &unk_1E69F9148;
    v11[4] = v8;
    v11[5] = self;
    v11[6] = l;
    v11[7] = d;
    [_providedItemsOperationQueue _fc_addUncancellableOperationForReactorID:v10 block:v11];
  }
}

uint64_t __70__NSFileProviderXPCMessenger_cancelProvidingItemAtURL_forClaimWithID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didBegin];
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 40) + 8) _cancelProvidingItemAtURL:*(a1 + 48) toReaderWithID:*(a1 + 56)];
  }

  v2 = *(a1 + 32);

  return [v2 didEnd];
}

- (void)providePhysicalItemForURL:(id)l completionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_fileProvider)
  {
    v7 = [NSFileAccessArbiterProxy _idForReactor:?];
    v8 = _NSFCProviderLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ providing physical URL", buf, 0xCu);
    }

    v9 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:self->_fileProvider withDescription:@"Provide Physical URL"];
    _providedItemsOperationQueue = [(NSFileProvider *)self->_fileProvider _providedItemsOperationQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__NSFileProviderXPCMessenger_providePhysicalItemForURL_completionHandler___block_invoke;
    v12[3] = &unk_1E69F9558;
    v12[4] = v9;
    v12[5] = self;
    v12[6] = l;
    v12[7] = handler;
    [_providedItemsOperationQueue _fc_addUncancellableOperationForReactorID:v7 block:v12];
  }

  else
  {
    v11 = *(handler + 2);

    v11(handler, 0);
  }
}

uint64_t __74__NSFileProviderXPCMessenger_providePhysicalItemForURL_completionHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) didBegin];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __74__NSFileProviderXPCMessenger_providePhysicalItemForURL_completionHandler___block_invoke_2;
  v7 = &unk_1E69F85A0;
  v2 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v2;
  v10 = *(a1 + 56);
  if (objc_opt_respondsToSelector())
  {
    return (v6)(&v4, [*(*(a1 + 40) + 8) _physicalURLForURL:{*(a1 + 48), v4, v5}]);
  }

  if (objc_opt_respondsToSelector())
  {
    return [*(*(a1 + 40) + 8) _getPhysicalURLForURL:*(a1 + 48) completionHandler:&v4];
  }

  return (v6)(&v4, 0);
}

void __74__NSFileProviderXPCMessenger_providePhysicalItemForURL_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7[7] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) willEnd];
  v4 = *(*(a1 + 40) + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__NSFileProviderXPCMessenger_providePhysicalItemForURL_completionHandler___block_invoke_3;
  v7[3] = &unk_1E69F9288;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7[5] = a2;
  v7[6] = v6;
  v7[4] = v5;
  dispatch_async(v4, v7);
}

uint64_t __74__NSFileProviderXPCMessenger_providePhysicalItemForURL_completionHandler___block_invoke_3(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) didEnd];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__NSFileProviderXPCMessenger_providePhysicalItemForURL_completionHandler___block_invoke_4;
  v3[3] = &unk_1E69F3910;
  v4 = *(a1 + 40);
  return [NSFileCoordinator _performBarrierAsync:v3];
}

- (void)observePresentationChangeOfKind:(id)kind forPresenterOfURL:(id)l withInfo:(id)info
{
  v13[10] = *MEMORY[0x1E69E9840];
  if (self->_fileProvider)
  {
    v9 = [+[NSProcessInfo processInfo](NSProcessInfo beginActivityWithOptions:"beginActivityWithOptions:reason:" reason:0x80000000000, @"Sending an NSFileProvider an observePresentationChangeOfKind: message"];
    v10 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:self->_fileProvider withDescription:@"Observe Presentation Change"];
    _providedItemsOperationQueue = [(NSFileProvider *)self->_fileProvider _providedItemsOperationQueue];
    v12 = [NSFileAccessArbiterProxy _idForReactor:self->_fileProvider];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__NSFileProviderXPCMessenger_observePresentationChangeOfKind_forPresenterOfURL_withInfo___block_invoke;
    v13[3] = &unk_1E69F9170;
    v13[4] = v10;
    v13[5] = kind;
    v13[6] = self;
    v13[7] = l;
    v13[8] = info;
    v13[9] = v9;
    [_providedItemsOperationQueue _fc_addUncancellableOperationForReactorID:v12 block:v13];
  }
}

void __89__NSFileProviderXPCMessenger_observePresentationChangeOfKind_forPresenterOfURL_withInfo___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) didBegin];
  if ([*(a1 + 40) isEqualToString:@"added"])
  {
    if (objc_opt_respondsToSelector())
    {
      [*(*(a1 + 48) + 8) _providedItemAtURL:*(a1 + 56) didGainPresenterWithInfo:*(a1 + 64)];
    }

    else if (objc_opt_respondsToSelector())
    {
      v2 = *(a1 + 64);
      if (v2)
      {
        [v2 presenterAuditToken];
        v3 = v7;
        v2 = *(a1 + 64);
      }

      else
      {
        v3 = 0;
      }

      +[NSFileCoordinator _addProcessIdentifier:observedUbiquityAttributes:forID:](NSFileCoordinator, "_addProcessIdentifier:observedUbiquityAttributes:forID:", v3, [v2 observedUbiquityAttributes], objc_msgSend(*(a1 + 64), "presenterID"));
      [*(*(a1 + 48) + 8) _providedItemAtURL:*(a1 + 56) didGainPresenterWithID:{objc_msgSend(*(a1 + 64), "presenterID")}];
    }
  }

  else if ([*(a1 + 40) isEqualToString:@"removed"])
  {
    if (objc_opt_respondsToSelector())
    {
      [*(*(a1 + 48) + 8) _providedItemAtURL:*(a1 + 56) didLosePresenterWithID:{objc_msgSend(*(a1 + 64), "presenterID")}];
    }

    +[NSFileCoordinator _removeInfoForID:](NSFileCoordinator, "_removeInfoForID:", [*(a1 + 64) presenterID]);
  }

  else if ([*(a1 + 40) isEqualToString:@"itemMoved"] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(*(a1 + 48) + 8) _providedItemAtURL:*(a1 + 56) withPresenterWithID:objc_msgSend(*(a1 + 64) didMoveToURL:{"presenterID"), objc_msgSend(*(a1 + 64), "changedURL")}];
  }

  [*(a1 + 32) willEnd];
  v4 = *(*(a1 + 48) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__NSFileProviderXPCMessenger_observePresentationChangeOfKind_forPresenterOfURL_withInfo___block_invoke_2;
  block[3] = &unk_1E69F2080;
  v5 = *(a1 + 72);
  block[4] = *(a1 + 32);
  block[5] = v5;
  dispatch_async(v4, block);
}

uint64_t __89__NSFileProviderXPCMessenger_observePresentationChangeOfKind_forPresenterOfURL_withInfo___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) didEnd];
  v2 = +[NSProcessInfo processInfo];
  v3 = *(a1 + 40);

  return [(NSProcessInfo *)v2 endActivity:v3];
}

- (void)observeEndOfWriteAtURL:(id)l forClaimWithID:(id)d fromProcessWithIdentifier:(int)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_fileProvider)
  {
    v9 = [NSFileAccessArbiterProxy _idForReactor:?];
    v10 = _NSFCProviderLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = v9;
      v17 = 2114;
      dCopy = d;
      _os_log_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ observing end of writing claim %{public}@", buf, 0x16u);
    }

    v11 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:self->_fileProvider withDescription:@"Observe End Of Write"];
    _providedItemsOperationQueue = [(NSFileProvider *)self->_fileProvider _providedItemsOperationQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __94__NSFileProviderXPCMessenger_observeEndOfWriteAtURL_forClaimWithID_fromProcessWithIdentifier___block_invoke;
    v13[3] = &unk_1E69F9580;
    v13[4] = v11;
    v13[5] = self;
    identifierCopy = identifier;
    v13[6] = d;
    v13[7] = l;
    [_providedItemsOperationQueue _fc_addUncancellableOperationForReactorID:v9 block:v13];
  }
}

uint64_t __94__NSFileProviderXPCMessenger_observeEndOfWriteAtURL_forClaimWithID_fromProcessWithIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didBegin];
  if (objc_opt_respondsToSelector())
  {
    [NSFileCoordinator _addProcessIdentifier:*(a1 + 64) observedUbiquityAttributes:0 forID:*(a1 + 48)];
    [*(*(a1 + 40) + 8) _writerWithID:*(a1 + 48) didFinishWritingForURL:*(a1 + 56)];
    [NSFileCoordinator _removeInfoForID:*(a1 + 48)];
  }

  v2 = *(a1 + 32);

  return [v2 didEnd];
}

- (void)movingItemAtURL:(id)l withInfo:(id)info fileName:(id)name completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_fileProvider)
  {
    v11 = [NSFileAccessArbiterProxy _idForReactor:?];
    v12 = _NSFCProviderLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v11;
      _os_log_impl(&dword_18075C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ checking if moving an item within its container requires providing", buf, 0xCu);
    }

    v13 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:self->_fileProvider withDescription:@"Check Moving Requires Providing"];
    _providedItemsOperationQueue = [(NSFileProvider *)self->_fileProvider _providedItemsOperationQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __82__NSFileProviderXPCMessenger_movingItemAtURL_withInfo_fileName_completionHandler___block_invoke;
    v17[3] = &unk_1E69F95D0;
    v17[4] = v13;
    v17[5] = v11;
    v17[9] = name;
    v17[10] = handler;
    v17[6] = self;
    v17[7] = l;
    v17[8] = info;
    [_providedItemsOperationQueue _fc_addUncancellableOperationForReactorID:v11 block:v17];
  }

  else
  {
    name = [NSFileProviderMovingResponse providingNotRequiredResponseWithSyncRootID:0, info, name];
    v16 = *(handler + 2);

    v16(handler, name);
  }
}

uint64_t __82__NSFileProviderXPCMessenger_movingItemAtURL_withInfo_fileName_completionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) didBegin];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v9 = __82__NSFileProviderXPCMessenger_movingItemAtURL_withInfo_fileName_completionHandler___block_invoke_2;
  v10 = &unk_1E69F95A8;
  v11 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v2 = *(a1 + 80);
  v12 = *(a1 + 48);
  v13 = v2;
  if (objc_opt_respondsToSelector())
  {
    return [*(*(a1 + 48) + 8) _movingItemAtURL:*(a1 + 56) withInfo:*(a1 + 64) completionHandler:v8];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return (v9)(v8, [NSFileProviderMovingResponse providingNotRequiredResponseWithSyncRootID:0]);
  }

  v4 = *(a1 + 56);
  v5 = *(*(a1 + 48) + 8);
  v6 = [objc_msgSend(*(a1 + 64) "destinationDirectoryURL")];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__NSFileProviderXPCMessenger_movingItemAtURL_withInfo_fileName_completionHandler___block_invoke_2_773;
  v7[3] = &unk_1E69F8DD8;
  v7[4] = v8;
  return [v5 _movingItemAtURL:v4 requiresProvidingWithDestinationURL:v6 completionHandler:v7];
}

void __82__NSFileProviderXPCMessenger_movingItemAtURL_withInfo_fileName_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = _NSFCProviderLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = a2;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ responded to moving check with: %@", buf, 0x16u);
  }

  [*(a1 + 40) willEnd];
  v6 = *(*(a1 + 48) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__NSFileProviderXPCMessenger_movingItemAtURL_withInfo_fileName_completionHandler___block_invoke_768;
  block[3] = &unk_1E69F3820;
  v7 = *(a1 + 56);
  v8 = *(a1 + 40);
  block[4] = a2;
  block[5] = v8;
  block[6] = v7;
  dispatch_async(v6, block);
}

uint64_t __82__NSFileProviderXPCMessenger_movingItemAtURL_withInfo_fileName_completionHandler___block_invoke_768(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  return [v2 didEnd];
}

uint64_t __82__NSFileProviderXPCMessenger_movingItemAtURL_withInfo_fileName_completionHandler___block_invoke_2_773(uint64_t a1, int a2)
{
  if (a2)
  {
    +[NSFileProviderMovingResponse providingRequiredResponse];
  }

  else
  {
    [NSFileProviderMovingResponse providingNotRequiredResponseWithSyncRootID:-1];
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)collectDebuggingInformationWithCompletionHandler:(id)handler
{
  v4 = +[NSFileAccessArbiterProxy _fileReactorDebuggingInformation];
  v5 = *(handler + 2);

  v5(handler, v4);
}

@end