@interface NSFileAccessArbiterProxy
+ (id)_fileReactorDebuggingInformation;
+ (id)_idForReactor:(id)a3;
+ (id)_willBeginOperationForReactor:(id)a3 withDescription:(id)a4;
+ (void)_accessPresenterOperationRecordsUsingBlock:(id)a3;
- (BOOL)itemHasPresentersAtURL:(id)a3;
- (NSFileAccessArbiterProxy)initWithServer:(id)a3 queue:(id)a4;
- (id)filePresenters;
- (id)fileProviders;
- (id)grantAccessClaim:(id)a3 synchronouslyIfPossible:(BOOL)a4;
- (id)idForFileReactor:(id)a3;
- (id)replacementObjectForXPCConnection:(id)a3 encoder:(id)a4 object:(id)a5;
- (void)addFilePresenter:(id)a3;
- (void)addFileProvider:(id)a3 completionHandler:(id)a4;
- (void)cancelAccessClaimForID:(id)a3;
- (void)dealloc;
- (void)getDebugInfoWithCompletionHandler:(id)a3;
- (void)grantSubarbitrationClaim:(id)a3 withServer:(id)a4;
- (void)performBarrier;
- (void)performBarrierAsync:(id)a3;
- (void)removeFilePresenter:(id)a3;
- (void)removeFileProvider:(id)a3;
- (void)revokeAccessClaimForID:(id)a3;
- (void)revokeSubarbitrationClaimForID:(id)a3;
- (void)tiePresenterForID:(id)a3 toItemAtURL:(id)a4;
- (void)writerWithPurposeID:(id)a3 didChangeItemAtURL:(id)a4;
- (void)writerWithPurposeID:(id)a3 didChangeSharingOfItemAtURL:(id)a4;
- (void)writerWithPurposeID:(id)a3 didChangeUbiquityAttributes:(id)a4 ofItemAtURL:(id)a5;
- (void)writerWithPurposeID:(id)a3 didChangeUbiquityOfItemAtURL:(id)a4;
- (void)writerWithPurposeID:(id)a3 didDisconnectItemAtURL:(id)a4;
- (void)writerWithPurposeID:(id)a3 didMakeItemDisappearAtURL:(id)a4;
- (void)writerWithPurposeID:(id)a3 didMoveItemAtURL:(id)a4 toURL:(id)a5;
- (void)writerWithPurposeID:(id)a3 didReconnectItemAtURL:(id)a4;
- (void)writerWithPurposeID:(id)a3 didVersionChangeOfKind:(id)a4 toItemAtURL:(id)a5 withClientID:(id)a6 name:(id)a7;
@end

@implementation NSFileAccessArbiterProxy

- (NSFileAccessArbiterProxy)initWithServer:(id)a3 queue:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSFileAccessArbiterProxy;
  v6 = [(NSFileAccessArbiterProxy *)&v10 init];
  if (v6)
  {
    v7 = a3;
    v6->_server = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__NSFileAccessArbiterProxy_initWithServer_queue___block_invoke;
    v9[3] = &unk_1E69F2C00;
    v9[4] = v6;
    [(NSXPCConnection *)v7 setInterruptionHandler:v9];
    [(NSXPCConnection *)v6->_server setDelegate:v6];
    v6->_queue = a4;
    dispatch_retain(a4);
  }

  return v6;
}

void __49__NSFileAccessArbiterProxy_initWithServer_queue___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _onqueue_filePresenters];
  if ([v2 count])
  {
    v3 = _NSFCLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEFAULT, "Connection to filecoordinationd interrupted. Attempting to re-add presenters", v16, 2u);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = [v2 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v24;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(v2);
          }

          [*(a1 + 32) addFilePresenter:*(*(&v23 + 1) + 8 * i)];
        }

        v5 = [v2 countByEnumeratingWithState:&v23 objects:v22 count:16];
      }

      while (v5);
    }
  }

  v8 = [*(a1 + 32) _onqueue_fileProviders];
  if ([v8 count])
  {
    v9 = *(*(a1 + 32) + 56);
    v10 = _NSFCLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9 == 1)
    {
      if (v11)
      {
        *v16 = 0;
        _os_log_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEFAULT, "Connection to filecoordinationd interrupted. Client has providers, but not re-adding them because _setAutomaticFileProviderReregistrationDisabled:YES was called.", v16, 2u);
      }
    }

    else
    {
      if (v11)
      {
        *v16 = 0;
        _os_log_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEFAULT, "Connection to filecoordinationd interrupted. Attempting to re-add providers", v16, 2u);
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v12 = [v8 countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v8);
            }

            [*(a1 + 32) addFileProvider:*(*(&v18 + 1) + 8 * j) completionHandler:&__block_literal_global_339];
          }

          v13 = [v8 countByEnumeratingWithState:&v18 objects:v17 count:16];
        }

        while (v13);
      }
    }
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  dispatch_release(self->_queue);
  [(NSXPCConnection *)self->_server setDelegate:0];
  [(NSXPCConnection *)self->_server invalidate];

  v3.receiver = self;
  v3.super_class = NSFileAccessArbiterProxy;
  [(NSFileAccessArbiterProxy *)&v3 dealloc];
}

+ (id)_idForReactor:(id)a3
{
  if (objc_opt_respondsToSelector())
  {

    return [a3 _fileReactorID];
  }

  else
  {
    AssociatedObject = objc_getAssociatedObject(a3, "NSFileReactorID");
    if (!AssociatedObject)
    {
      v6 = CFUUIDCreate(0);
      AssociatedObject = CFUUIDCreateString(0, v6);
      objc_setAssociatedObject(a3, "NSFileReactorID", AssociatedObject, 0x301);

      CFRelease(v6);
    }

    v7 = AssociatedObject;

    return v7;
  }
}

- (id)replacementObjectForXPCConnection:(id)a3 encoder:(id)a4 object:(id)a5
{
  objc_opt_class();
  v6 = a5;
  if (objc_opt_isKindOfClass())
  {
    v6 = _secureCodingScreenedError(a5);
  }

  v7 = objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || ([a5 isMemberOfClass:v7])
  {
    return v6;
  }

  v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:{objc_msgSend(a5, "absoluteString")}];

  return v9;
}

- (id)grantAccessClaim:(id)a3 synchronouslyIfPossible:(BOOL)a4
{
  v4 = a4;
  block[6] = *MEMORY[0x1E69E9840];
  [a3 prepareClaimForGrantingWithArbiterQueue:self->_queue];
  if (v4)
  {
    v7 = [a3 claimerWaiter];
  }

  else
  {
    v7 = 0;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__NSFileAccessArbiterProxy_grantAccessClaim_synchronouslyIfPossible___block_invoke;
  block[3] = &unk_1E69F2080;
  block[4] = a3;
  block[5] = self;
  dispatch_async(queue, block);
  return v7;
}

uint64_t __69__NSFileAccessArbiterProxy_grantAccessClaim_synchronouslyIfPossible___block_invoke(uint64_t a1)
{
  [*(a1 + 32) forwardUsingConnection:*(*(a1 + 40) + 8) crashHandler:&__block_literal_global_344];
  v2 = *(a1 + 32);

  return [v2 unblock];
}

uint64_t __69__NSFileAccessArbiterProxy_grantAccessClaim_synchronouslyIfPossible___block_invoke_2()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = _NSOSLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_18075C000, v0, OS_LOG_TYPE_ERROR, "A process invoked one of the [NSFileCoordinator coordinate...] methods but filecoordinationd crashed. Returning an error.", v2, 2u);
  }

  return 1;
}

- (void)revokeAccessClaimForID:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__NSFileAccessArbiterProxy_revokeAccessClaimForID___block_invoke;
  block[3] = &unk_1E69F2080;
  block[4] = self;
  block[5] = a3;
  dispatch_async(queue, block);
}

uint64_t __51__NSFileAccessArbiterProxy_revokeAccessClaimForID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) remoteObjectProxy];
  v3 = *(a1 + 40);

  return [v2 revokeAccessClaimForID:v3];
}

- (void)grantSubarbitrationClaim:(id)a3 withServer:(id)a4
{
  v5[7] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__NSFileAccessArbiterProxy_grantSubarbitrationClaim_withServer___block_invoke;
  v5[3] = &unk_1E69F68D8;
  v5[4] = a3;
  v5[5] = self;
  v5[6] = a4;
  dispatch_async(queue, v5);
}

uint64_t __64__NSFileAccessArbiterProxy_grantSubarbitrationClaim_withServer___block_invoke(uint64_t a1)
{
  [*(a1 + 32) forwardUsingConnection:*(*(a1 + 40) + 8) withServer:*(a1 + 48) crashHandler:&__block_literal_global_346];
  v2 = *(a1 + 32);

  return [v2 unblock];
}

uint64_t __64__NSFileAccessArbiterProxy_grantSubarbitrationClaim_withServer___block_invoke_2()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = _NSOSLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_18075C000, v0, OS_LOG_TYPE_ERROR, "A process invoked [NSFileCoordinator prepareForReadingItemsAtURLs:options:writingItemsAtURLs:options:error:byAccessor:] but filecoordinationd crashed. Invoking the batchAccessor anyway.", v2, 2u);
  }

  return 0;
}

- (void)revokeSubarbitrationClaimForID:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__NSFileAccessArbiterProxy_revokeSubarbitrationClaimForID___block_invoke;
  block[3] = &unk_1E69F2080;
  block[4] = self;
  block[5] = a3;
  dispatch_async(queue, block);
}

uint64_t __59__NSFileAccessArbiterProxy_revokeSubarbitrationClaimForID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) remoteObjectProxy];
  v3 = *(a1 + 40);

  return [v2 revokeSubarbitrationClaimForID:v3];
}

- (void)cancelAccessClaimForID:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__NSFileAccessArbiterProxy_cancelAccessClaimForID___block_invoke;
  block[3] = &unk_1E69F2080;
  block[4] = self;
  block[5] = a3;
  dispatch_async(queue, block);
}

uint64_t __51__NSFileAccessArbiterProxy_cancelAccessClaimForID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) remoteObjectProxy];
  v3 = *(a1 + 40);

  return [v2 cancelAccessClaimForID:v3];
}

- (void)writerWithPurposeID:(id)a3 didMoveItemAtURL:(id)a4 toURL:(id)a5
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v10 = 0;
  _NSGetFSIDAndFileID([a5 logicalURL], v12, &v10);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__NSFileAccessArbiterProxy_writerWithPurposeID_didMoveItemAtURL_toURL___block_invoke;
  block[3] = &unk_1E69F9670;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  block[7] = a5;
  block[8] = v10;
  block[9] = v12[0];
  dispatch_async(queue, block);
}

uint64_t __71__NSFileAccessArbiterProxy_writerWithPurposeID_didMoveItemAtURL_toURL___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) remoteObjectProxy];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];

  return [v2 writerWithPurposeID:v3 didMoveItemAtURL:v4 toURL:v5 withFSID:v7 andFileID:v6];
}

- (void)writerWithPurposeID:(id)a3 didDisconnectItemAtURL:(id)a4
{
  v5[7] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__NSFileAccessArbiterProxy_writerWithPurposeID_didDisconnectItemAtURL___block_invoke;
  v5[3] = &unk_1E69F68D8;
  v5[4] = self;
  v5[5] = a3;
  v5[6] = a4;
  dispatch_async(queue, v5);
}

uint64_t __71__NSFileAccessArbiterProxy_writerWithPurposeID_didDisconnectItemAtURL___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) remoteObjectProxy];
  v3 = a1[5];
  v4 = a1[6];

  return [v2 writerWithPurposeID:v3 didDisconnectItemAtURL:v4];
}

- (void)writerWithPurposeID:(id)a3 didReconnectItemAtURL:(id)a4
{
  v5[7] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__NSFileAccessArbiterProxy_writerWithPurposeID_didReconnectItemAtURL___block_invoke;
  v5[3] = &unk_1E69F68D8;
  v5[4] = self;
  v5[5] = a3;
  v5[6] = a4;
  dispatch_async(queue, v5);
}

uint64_t __70__NSFileAccessArbiterProxy_writerWithPurposeID_didReconnectItemAtURL___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) remoteObjectProxy];
  v3 = a1[5];
  v4 = a1[6];

  return [v2 writerWithPurposeID:v3 didReconnectItemAtURL:v4];
}

- (void)writerWithPurposeID:(id)a3 didChangeUbiquityOfItemAtURL:(id)a4
{
  v5[7] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__NSFileAccessArbiterProxy_writerWithPurposeID_didChangeUbiquityOfItemAtURL___block_invoke;
  v5[3] = &unk_1E69F68D8;
  v5[4] = self;
  v5[5] = a3;
  v5[6] = a4;
  dispatch_async(queue, v5);
}

uint64_t __77__NSFileAccessArbiterProxy_writerWithPurposeID_didChangeUbiquityOfItemAtURL___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) remoteObjectProxy];
  v3 = a1[5];
  v4 = a1[6];

  return [v2 writerWithPurposeID:v3 didChangeUbiquityOfItemAtURL:v4];
}

- (void)writerWithPurposeID:(id)a3 didChangeSharingOfItemAtURL:(id)a4
{
  v5[7] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__NSFileAccessArbiterProxy_writerWithPurposeID_didChangeSharingOfItemAtURL___block_invoke;
  v5[3] = &unk_1E69F68D8;
  v5[4] = self;
  v5[5] = a3;
  v5[6] = a4;
  dispatch_async(queue, v5);
}

uint64_t __76__NSFileAccessArbiterProxy_writerWithPurposeID_didChangeSharingOfItemAtURL___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) remoteObjectProxy];
  v3 = a1[5];
  v4 = a1[6];

  return [v2 writerWithPurposeID:v3 didChangeSharingOfItemAtURL:v4];
}

- (void)writerWithPurposeID:(id)a3 didChangeUbiquityAttributes:(id)a4 ofItemAtURL:(id)a5
{
  block[8] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__NSFileAccessArbiterProxy_writerWithPurposeID_didChangeUbiquityAttributes_ofItemAtURL___block_invoke;
  block[3] = &unk_1E69F9148;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  block[7] = a5;
  dispatch_async(queue, block);
}

uint64_t __88__NSFileAccessArbiterProxy_writerWithPurposeID_didChangeUbiquityAttributes_ofItemAtURL___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) remoteObjectProxy];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 writerWithPurposeID:v3 didChangeUbiquityAttributes:v4 ofItemAtURL:v5];
}

- (void)writerWithPurposeID:(id)a3 didMakeItemDisappearAtURL:(id)a4
{
  v5[7] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__NSFileAccessArbiterProxy_writerWithPurposeID_didMakeItemDisappearAtURL___block_invoke;
  v5[3] = &unk_1E69F68D8;
  v5[4] = self;
  v5[5] = a3;
  v5[6] = a4;
  dispatch_async(queue, v5);
}

uint64_t __74__NSFileAccessArbiterProxy_writerWithPurposeID_didMakeItemDisappearAtURL___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) remoteObjectProxy];
  v3 = a1[5];
  v4 = a1[6];

  return [v2 writerWithPurposeID:v3 didMakeItemDisappearAtURL:v4];
}

- (void)writerWithPurposeID:(id)a3 didChangeItemAtURL:(id)a4
{
  v5[7] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__NSFileAccessArbiterProxy_writerWithPurposeID_didChangeItemAtURL___block_invoke;
  v5[3] = &unk_1E69F68D8;
  v5[4] = self;
  v5[5] = a3;
  v5[6] = a4;
  dispatch_async(queue, v5);
}

uint64_t __67__NSFileAccessArbiterProxy_writerWithPurposeID_didChangeItemAtURL___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) remoteObjectProxy];
  v3 = a1[5];
  v4 = a1[6];

  return [v2 writerWithPurposeID:v3 didChangeItemAtURL:v4];
}

- (void)writerWithPurposeID:(id)a3 didVersionChangeOfKind:(id)a4 toItemAtURL:(id)a5 withClientID:(id)a6 name:(id)a7
{
  block[10] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__NSFileAccessArbiterProxy_writerWithPurposeID_didVersionChangeOfKind_toItemAtURL_withClientID_name___block_invoke;
  block[3] = &unk_1E69F9170;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  block[7] = a5;
  block[8] = a6;
  block[9] = a7;
  dispatch_async(queue, block);
}

uint64_t __101__NSFileAccessArbiterProxy_writerWithPurposeID_didVersionChangeOfKind_toItemAtURL_withClientID_name___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) remoteObjectProxy];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];

  return [v2 writerWithPurposeID:v3 didVersionChangeOfKind:v4 toItemAtURL:v5 withClientID:v6 name:v7];
}

- (void)tiePresenterForID:(id)a3 toItemAtURL:(id)a4
{
  v5[7] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__NSFileAccessArbiterProxy_tiePresenterForID_toItemAtURL___block_invoke;
  v5[3] = &unk_1E69F68D8;
  v5[4] = self;
  v5[5] = a3;
  v5[6] = a4;
  dispatch_async(queue, v5);
}

uint64_t __58__NSFileAccessArbiterProxy_tiePresenterForID_toItemAtURL___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) remoteObjectProxy];
  v3 = a1[5];
  v4 = a1[6];

  return [v2 tiePresenterForID:v3 toItemAtURL:v4];
}

- (void)addFilePresenter:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__NSFileAccessArbiterProxy_addFilePresenter___block_invoke;
  block[3] = &unk_1E69F2080;
  block[4] = self;
  block[5] = a3;
  dispatch_async(queue, block);
}

uint64_t __45__NSFileAccessArbiterProxy_addFilePresenter___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 24))
  {
    *(*(a1 + 32) + 24) = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v2 = [NSFileAccessArbiterProxy _idForReactor:*(a1 + 40)];
  [*(*(a1 + 32) + 24) setObject:*(a1 + 40) forKey:v2];
  v3 = [*(a1 + 40) presentedItemURL];
  if (objc_opt_respondsToSelector())
  {
    v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 40) lastPresentedItemEventIdentifier]);
  }

  else
  {
    v4 = 0;
  }

  v5 = (objc_opt_respondsToSelector() & 1) == 0 || [*(a1 + 40) presentedItemNeedsWatching];
  objc_lookUpClass("NSDocument");
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && ([*(a1 + 40) usesMainThreadDuringPresentedItemRelinquishing] & 1) != 0 || (v6 = objc_msgSend(*(a1 + 40), "presentedItemOperationQueue"), v6 == +[NSOperationQueue mainQueue](NSOperationQueue, "mainQueue")))
  {
    v5 |= 2uLL;
  }

  v7 = [NSFileCoordinator _responsesForPresenter:*(a1 + 40)];
  if ((v7 & 0xFFFFFFFF80010000) == 0)
  {
    v8 = [MEMORY[0x1E695DFD8] set];
    goto LABEL_19;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [*(a1 + 40) observedPresentedItemUbiquityAttributes];
LABEL_19:
    v9 = v8;
    goto LABEL_21;
  }

  v9 = 0;
LABEL_21:
  v10 = [[NSFilePresenterXPCMessenger alloc] initWithFilePresenter:*(a1 + 40) queue:*(*(a1 + 32) + 16)];
  v11 = *(*(a1 + 32) + 32);
  if (!v11)
  {
    *(*(a1 + 32) + 32) = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = *(*(a1 + 32) + 32);
  }

  [v11 setObject:v10 forKey:v2];

  v12 = _NSFCPresenterLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543619;
    v15 = v2;
    v16 = 2113;
    v17 = v3;
    _os_log_impl(&dword_18075C000, v12, OS_LOG_TYPE_DEFAULT, "Adding presenter %{public}@ for URL: %{private}@", buf, 0x16u);
  }

  return [objc_msgSend(*(*(a1 + 32) + 8) "remoteObjectProxy")];
}

- (void)removeFilePresenter:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__NSFileAccessArbiterProxy_removeFilePresenter___block_invoke;
  block[3] = &unk_1E69F2080;
  block[4] = a3;
  block[5] = self;
  dispatch_sync(queue, block);
}

uint64_t __48__NSFileAccessArbiterProxy_removeFilePresenter___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [NSFileAccessArbiterProxy _idForReactor:*(a1 + 32)];
  [*(*(a1 + 40) + 24) removeObjectForKey:v2];
  [objc_msgSend(*(*(a1 + 40) + 32) objectForKey:{v2), "invalidate"}];
  [*(*(a1 + 40) + 32) removeObjectForKey:v2];
  [objc_getAssociatedObject(*(a1 + 32) "NSFilePresenterReadRelinquishment")];
  [objc_getAssociatedObject(*(a1 + 32) "NSFilePresenterWriteRelinquishment")];
  objc_setAssociatedObject(*(a1 + 32), "NSFilePresenterReadRelinquishment", 0, 0x301);
  objc_setAssociatedObject(*(a1 + 32), "NSFilePresenterWriteRelinquishment", 0, 0x301);
  v3 = _NSFCPresenterLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEFAULT, "Removing presenter %{public}@", &v5, 0xCu);
  }

  return [objc_msgSend(*(*(a1 + 40) + 8) "remoteObjectProxy")];
}

- (id)filePresenters
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__28;
  v12 = __Block_byref_object_dispose__28;
  v13 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__NSFileAccessArbiterProxy_filePresenters__block_invoke;
  block[3] = &unk_1E69F6900;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(queue, block);
  v3 = v9[5];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E695DEC8] array];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  return v5;
}

id __42__NSFileAccessArbiterProxy_filePresenters__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _onqueue_filePresenters];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)addFileProvider:(id)a3 completionHandler:(id)a4
{
  v5[7] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__NSFileAccessArbiterProxy_addFileProvider_completionHandler___block_invoke;
  v5[3] = &unk_1E69F9198;
  v5[4] = self;
  v5[5] = a3;
  v5[6] = a4;
  dispatch_async(queue, v5);
}

uint64_t __62__NSFileAccessArbiterProxy_addFileProvider_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 40))
  {
    *(*(a1 + 32) + 40) = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v2 = [NSFileAccessArbiterProxy _idForReactor:*(a1 + 40)];
  [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
  v3 = [[NSFileProviderXPCMessenger alloc] initWithFileProvider:*(a1 + 40) queue:*(*(a1 + 32) + 16)];
  v4 = *(*(a1 + 32) + 48);
  if (!v4)
  {
    *(*(a1 + 32) + 48) = +[NSMapTable strongToStrongObjectsMapTable];
    v4 = *(*(a1 + 32) + 48);
  }

  [v4 setObject:v3 forKey:*(a1 + 40)];

  v5 = objc_opt_respondsToSelector();
  v6 = [*(a1 + 40) _providedItemsURL];
  v7 = _NSFCProviderLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543619;
    v15 = v2;
    v16 = 2113;
    v17 = v6;
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEFAULT, "Adding provider %{public}@ for URL: %{private}@", buf, 0x16u);
  }

  v8 = *(*(a1 + 32) + 8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__NSFileAccessArbiterProxy_addFileProvider_completionHandler___block_invoke_367;
  v13[3] = &unk_1E69F3938;
  v13[4] = *(a1 + 48);
  v9 = [v8 remoteObjectProxyWithErrorHandler:v13];
  v10 = _uniqueFileProviderID(*(a1 + 40));
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__NSFileAccessArbiterProxy_addFileProvider_completionHandler___block_invoke_371;
  v12[3] = &unk_1E69F8DD8;
  v12[4] = *(a1 + 48);
  return [v9 addProvider:v3 withID:v2 uniqueID:v10 forProvidedItemsURL:v6 options:v5 & 1 withServer:0 reply:v12];
}

uint64_t __62__NSFileAccessArbiterProxy_addFileProvider_completionHandler___block_invoke_367(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = @"addProvider";
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "Sending of a '%{public}@' message was interrupted: %{public}@", &v6, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)removeFileProvider:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__NSFileAccessArbiterProxy_removeFileProvider___block_invoke;
  block[3] = &unk_1E69F2080;
  block[4] = a3;
  block[5] = self;
  dispatch_async(queue, block);
}

uint64_t __47__NSFileAccessArbiterProxy_removeFileProvider___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [NSFileAccessArbiterProxy _idForReactor:*(a1 + 32)];
  [*(*(a1 + 40) + 40) removeObject:*(a1 + 32)];
  [objc_msgSend(*(*(a1 + 40) + 48) objectForKey:{*(a1 + 32)), "invalidate"}];
  [*(*(a1 + 40) + 48) removeObjectForKey:*(a1 + 32)];
  v3 = _NSFCProviderLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEFAULT, "Removing provider %{public}@", &v5, 0xCu);
  }

  return [objc_msgSend(*(*(a1 + 40) + 8) "remoteObjectProxy")];
}

- (id)fileProviders
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__28;
  v12 = __Block_byref_object_dispose__28;
  v13 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__NSFileAccessArbiterProxy_fileProviders__block_invoke;
  block[3] = &unk_1E69F6900;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(queue, block);
  v3 = v9[5];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E695DEC8] array];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  return v5;
}

id __41__NSFileAccessArbiterProxy_fileProviders__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _onqueue_fileProviders];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)idForFileReactor:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__28;
  v11 = __Block_byref_object_dispose__28;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__NSFileAccessArbiterProxy_idForFileReactor___block_invoke;
  block[3] = &unk_1E69F6900;
  block[4] = a3;
  block[5] = &v7;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __45__NSFileAccessArbiterProxy_idForFileReactor___block_invoke(uint64_t a1)
{
  result = [NSFileAccessArbiterProxy _idForReactor:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)getDebugInfoWithCompletionHandler:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__NSFileAccessArbiterProxy_getDebugInfoWithCompletionHandler___block_invoke;
  block[3] = &unk_1E69F5678;
  block[4] = self;
  block[5] = a3;
  dispatch_async(queue, block);
}

uint64_t __62__NSFileAccessArbiterProxy_getDebugInfoWithCompletionHandler___block_invoke(uint64_t a1)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v2 = +[NSFileAccessArbiterProxy _fileReactorDebuggingInformation];
  v3 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__NSFileAccessArbiterProxy_getDebugInfoWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_1E69F3938;
  v7[4] = *(a1 + 40);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__NSFileAccessArbiterProxy_getDebugInfoWithCompletionHandler___block_invoke_375;
  v6[3] = &unk_1E69F91C0;
  v6[4] = *(a1 + 40);
  return [v4 provideDebugInfoWithLocalInfo:v2 completionHandler:v6];
}

uint64_t __62__NSFileAccessArbiterProxy_getDebugInfoWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = @"provideDebugInfo";
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "Sending of a '%{public}@' message was interrupted: %{public}@", &v6, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __62__NSFileAccessArbiterProxy_getDebugInfoWithCompletionHandler___block_invoke_375(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 32) + 16))();
  if (a3)
  {
    v4 = _NSOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "This process is unable to access File Coordination's debug information due to insufficient permissions.", v5, 2u);
    }
  }
}

- (BOOL)itemHasPresentersAtURL:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = dispatch_semaphore_create(0);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__NSFileAccessArbiterProxy_itemHasPresentersAtURL___block_invoke;
  block[3] = &unk_1E69F91E8;
  block[4] = self;
  block[5] = v5;
  block[6] = a3;
  block[7] = &v9;
  dispatch_async(queue, block);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v5);
  LOBYTE(a3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return a3;
}

uint64_t __51__NSFileAccessArbiterProxy_itemHasPresentersAtURL___block_invoke(void *a1)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v2 = *(a1[4] + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__NSFileAccessArbiterProxy_itemHasPresentersAtURL___block_invoke_2;
  v8[3] = &unk_1E69F3A28;
  v8[4] = a1[5];
  v3 = [v2 remoteObjectProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__NSFileAccessArbiterProxy_itemHasPresentersAtURL___block_invoke_379;
  v7[3] = &unk_1E69F80F8;
  v4 = a1[6];
  v5 = a1[7];
  v7[4] = a1[5];
  v7[5] = v5;
  return [v3 getItemHasPresentersAtURL:v4 completionHandler:v7];
}

intptr_t __51__NSFileAccessArbiterProxy_itemHasPresentersAtURL___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = @"getItemHasPresenters";
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "Sending of a '%{public}@' message was interrupted: %{public}@", &v6, 0x16u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)_accessPresenterOperationRecordsUsingBlock:(id)a3
{
  os_unfair_lock_lock(&stru_1ED43DAD4);
  if (!qword_1ED43DAE8)
  {
    qword_1ED43DAE8 = objc_opt_new();
  }

  (*(a3 + 2))(a3);

  os_unfair_lock_unlock(&stru_1ED43DAD4);
}

+ (id)_willBeginOperationForReactor:(id)a3 withDescription:(id)a4
{
  v6[5] = *MEMORY[0x1E69E9840];
  v4 = [NSFilePresenterOperationRecord operationRecordWithDescription:a4 reactor:a3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__NSFileAccessArbiterProxy__willBeginOperationForReactor_withDescription___block_invoke;
  v6[3] = &unk_1E69F9210;
  v6[4] = v4;
  [NSFileAccessArbiterProxy _accessPresenterOperationRecordsUsingBlock:v6];
  return v4;
}

+ (id)_fileReactorDebuggingInformation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = +[(NSString *)NSMutableString];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60__NSFileAccessArbiterProxy__fileReactorDebuggingInformation__block_invoke;
  v16[3] = &unk_1E69F9210;
  v16[4] = v3;
  [a1 _accessPresenterOperationRecordsUsingBlock:v16];
  v4 = objc_lookUpClass("NSDocument");
  if (objc_opt_respondsToSelector())
  {
    v5 = [(objc_class *)v4 _debuggingInformationForFileCoordination];
  }

  else
  {
    v5 = 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * v10);
        v13 = [a1 _idForReactor:{objc_msgSend(v12, "objectForKey:", @"document"}];
        v14 = [v12 objectForKey:@"stateString"];
        v8 = (v11 + 1);
        [(NSString *)v3 appendFormat:@"[%i]: Presenter ID: %@ -- %@\n", v11, v13, v14];
        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v7);
  }

  if (![(NSString *)v3 length])
  {
    [(NSString *)v3 appendString:@"Nothing\n"];
  }

  return v3;
}

uint64_t __60__NSFileAccessArbiterProxy__fileReactorDebuggingInformation__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [a2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(a2);
        }

        [*(a1 + 32) appendFormat:@"%@\n", *(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

- (void)performBarrier
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3 = dispatch_semaphore_create(0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__NSFileAccessArbiterProxy_performBarrier__block_invoke;
  v4[3] = &unk_1E69F2C00;
  v4[4] = v3;
  [(NSFileAccessArbiterProxy *)self performBarrierAsync:v4];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v3);
}

- (void)performBarrierAsync:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__NSFileAccessArbiterProxy_performBarrierAsync___block_invoke;
  block[3] = &unk_1E69F5678;
  block[4] = self;
  block[5] = a3;
  dispatch_async(queue, block);
}

uint64_t __48__NSFileAccessArbiterProxy_performBarrierAsync___block_invoke(uint64_t a1)
{
  v4[5] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__NSFileAccessArbiterProxy_performBarrierAsync___block_invoke_2;
  v4[3] = &unk_1E69F3938;
  v4[4] = *(a1 + 40);
  return [objc_msgSend(v2 remoteObjectProxyWithErrorHandler:{v4), "performBarrierWithCompletionHandler:", *(a1 + 40)}];
}

uint64_t __48__NSFileAccessArbiterProxy_performBarrierAsync___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = @"barrier";
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "Sending of a '%{public}@' message was interrupted: %{public}@", &v6, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

@end