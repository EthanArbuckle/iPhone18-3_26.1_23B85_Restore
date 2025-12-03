@interface NSFileAccessSubarbiter
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSFileAccessSubarbiter)initWithQueue:(id)queue listener:(id)listener;
- (id)grantAccessClaim:(id)claim synchronouslyIfPossible:(BOOL)possible;
- (void)cancelAccessClaimForID:(id)d;
- (void)dealloc;
- (void)revokeAccessClaimForID:(id)d;
- (void)tiePresenterForID:(id)d toItemAtURL:(id)l;
- (void)writerWithPurposeID:(id)d didChangeItemAtURL:(id)l;
- (void)writerWithPurposeID:(id)d didChangeSharingOfItemAtURL:(id)l;
- (void)writerWithPurposeID:(id)d didChangeUbiquityAttributes:(id)attributes ofItemAtURL:(id)l;
- (void)writerWithPurposeID:(id)d didChangeUbiquityOfItemAtURL:(id)l;
- (void)writerWithPurposeID:(id)d didDisconnectItemAtURL:(id)l;
- (void)writerWithPurposeID:(id)d didMakeItemDisappearAtURL:(id)l;
- (void)writerWithPurposeID:(id)d didMoveItemAtURL:(id)l toURL:(id)rL;
- (void)writerWithPurposeID:(id)d didReconnectItemAtURL:(id)l;
- (void)writerWithPurposeID:(id)d didVersionChangeOfKind:(id)kind toItemAtURL:(id)l withClientID:(id)iD name:(id)name;
@end

@implementation NSFileAccessSubarbiter

- (NSFileAccessSubarbiter)initWithQueue:(id)queue listener:(id)listener
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSFileAccessSubarbiter;
  v6 = [(NSFileAccessSubarbiter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_queue = queue;
    dispatch_retain(queue);
    v7->_realSubarbiter = [[NSFileAccessArbiter alloc] initWithQueue:queue isSubarbiter:1 listener:listener];
  }

  return v7;
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
  v4.super_class = NSFileAccessSubarbiter;
  [(NSFileAccessSubarbiter *)&v4 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  [connection setExportedObject:self->_realSubarbiter];
  [connection setExportedInterface:{+[NSFileCoordinator _fileAccessArbiterInterface](NSFileCoordinator, "_fileAccessArbiterInterface")}];
  [connection _setQueue:self->_queue];
  [connection resume];
  return 1;
}

- (id)grantAccessClaim:(id)claim synchronouslyIfPossible:(BOOL)possible
{
  possibleCopy = possible;
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__28;
  v16 = __Block_byref_object_dispose__28;
  v17 = 0;
  [claim prepareClaimForGrantingWithArbiterQueue:self->_queue];
  queue = self->_queue;
  if (possibleCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__NSFileAccessSubarbiter_grantAccessClaim_synchronouslyIfPossible___block_invoke;
    block[3] = &unk_1E69F7C78;
    block[4] = self;
    block[5] = claim;
    block[6] = &v12;
    dispatch_sync(queue, block);
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__NSFileAccessSubarbiter_grantAccessClaim_synchronouslyIfPossible___block_invoke_2;
    v10[3] = &unk_1E69F2080;
    v10[4] = self;
    v10[5] = claim;
    dispatch_async(queue, v10);
  }

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v8;
}

uint64_t __67__NSFileAccessSubarbiter_grantAccessClaim_synchronouslyIfPossible___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) _grantAccessClaim:*(a1 + 40)];
  result = [*(a1 + 40) claimerWaiter];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (void)revokeAccessClaimForID:(id)d
{
  block[6] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__NSFileAccessSubarbiter_revokeAccessClaimForID___block_invoke;
  block[3] = &unk_1E69F2080;
  block[4] = self;
  block[5] = d;
  dispatch_sync(queue, block);
}

- (void)cancelAccessClaimForID:(id)d
{
  block[6] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__NSFileAccessSubarbiter_cancelAccessClaimForID___block_invoke;
  block[3] = &unk_1E69F2080;
  block[4] = self;
  block[5] = d;
  dispatch_async(queue, block);
}

void __49__NSFileAccessSubarbiter_cancelAccessClaimForID___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) superarbitrationConnection];
  if (v2)
  {
    v3 = [v2 remoteObjectProxy];
    v4 = *(a1 + 40);

    [v3 cancelAccessClaimForID:v4];
  }

  else
  {
    v5 = _NSFCLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_fault_impl(&dword_18075C000, v5, OS_LOG_TYPE_FAULT, "A subarbiter is being notified of cancellation and it's not even subarbitrating yet, which is a surprise.", v6, 2u);
    }
  }
}

- (void)writerWithPurposeID:(id)d didMoveItemAtURL:(id)l toURL:(id)rL
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v10 = 0;
  _NSGetFSIDAndFileID([rL logicalURL], v12, &v10);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__NSFileAccessSubarbiter_writerWithPurposeID_didMoveItemAtURL_toURL___block_invoke;
  block[3] = &unk_1E69F9670;
  block[4] = self;
  block[5] = d;
  block[6] = l;
  block[7] = rL;
  block[8] = v10;
  block[9] = v12[0];
  dispatch_async(queue, block);
}

void __69__NSFileAccessSubarbiter_writerWithPurposeID_didMoveItemAtURL_toURL___block_invoke(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 16) superarbitrationConnection];
  if (v2)
  {
    v3 = [v2 remoteObjectProxy];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = a1[8];
    v8 = a1[9];

    [v3 writerWithPurposeID:v4 didMoveItemAtURL:v5 toURL:v6 withFSID:v8 andFileID:v7];
  }

  else
  {
    v9 = _NSFCLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18075C000, v9, OS_LOG_TYPE_FAULT, "A subarbiter is being notified of file movement and it's not even subarbitrating yet, which is a surprise.", v10, 2u);
    }
  }
}

- (void)writerWithPurposeID:(id)d didDisconnectItemAtURL:(id)l
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_18075C000, v4, OS_LOG_TYPE_FAULT, "A subarbiter is being notified of item disconnection, which is a surprise.", v5, 2u);
  }
}

- (void)writerWithPurposeID:(id)d didReconnectItemAtURL:(id)l
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_18075C000, v4, OS_LOG_TYPE_FAULT, "A subarbiter is being notified of item reconnection, which is a surprise.", v5, 2u);
  }
}

- (void)writerWithPurposeID:(id)d didChangeUbiquityOfItemAtURL:(id)l
{
  v5[7] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__NSFileAccessSubarbiter_writerWithPurposeID_didChangeUbiquityOfItemAtURL___block_invoke;
  v5[3] = &unk_1E69F68D8;
  v5[4] = self;
  v5[5] = d;
  v5[6] = l;
  dispatch_async(queue, v5);
}

void __75__NSFileAccessSubarbiter_writerWithPurposeID_didChangeUbiquityOfItemAtURL___block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 16) superarbitrationConnection];
  if (v2)
  {
    v3 = [v2 remoteObjectProxy];
    v4 = a1[5];
    v5 = a1[6];

    [v3 writerWithPurposeID:v4 didChangeUbiquityOfItemAtURL:v5];
  }

  else
  {
    v6 = _NSFCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_18075C000, v6, OS_LOG_TYPE_FAULT, "A subarbiter is being notified of a ubiquity change and it's not even subarbitrating yet, which is a surprise.", v7, 2u);
    }
  }
}

- (void)writerWithPurposeID:(id)d didChangeSharingOfItemAtURL:(id)l
{
  v5[7] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__NSFileAccessSubarbiter_writerWithPurposeID_didChangeSharingOfItemAtURL___block_invoke;
  v5[3] = &unk_1E69F68D8;
  v5[4] = self;
  v5[5] = d;
  v5[6] = l;
  dispatch_async(queue, v5);
}

void __74__NSFileAccessSubarbiter_writerWithPurposeID_didChangeSharingOfItemAtURL___block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 16) superarbitrationConnection];
  if (v2)
  {
    v3 = [v2 remoteObjectProxy];
    v4 = a1[5];
    v5 = a1[6];

    [v3 writerWithPurposeID:v4 didChangeSharingOfItemAtURL:v5];
  }

  else
  {
    v6 = _NSFCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_18075C000, v6, OS_LOG_TYPE_FAULT, "A subarbiter is being notified of a sharing change and it's not even subarbitrating yet, which is a surprise.", v7, 2u);
    }
  }
}

- (void)writerWithPurposeID:(id)d didChangeUbiquityAttributes:(id)attributes ofItemAtURL:(id)l
{
  block[8] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__NSFileAccessSubarbiter_writerWithPurposeID_didChangeUbiquityAttributes_ofItemAtURL___block_invoke;
  block[3] = &unk_1E69F9148;
  block[4] = self;
  block[5] = d;
  block[6] = attributes;
  block[7] = l;
  dispatch_async(queue, block);
}

void __86__NSFileAccessSubarbiter_writerWithPurposeID_didChangeUbiquityAttributes_ofItemAtURL___block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 16) superarbitrationConnection];
  if (v2)
  {
    v3 = [v2 remoteObjectProxy];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];

    [v3 writerWithPurposeID:v4 didChangeUbiquityAttributes:v5 ofItemAtURL:v6];
  }

  else
  {
    v7 = _NSFCLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&dword_18075C000, v7, OS_LOG_TYPE_FAULT, "A subarbiter is being notified of a ubiquity attribute change and it's not even subarbitrating yet, which is a surprise.", v8, 2u);
    }
  }
}

- (void)writerWithPurposeID:(id)d didMakeItemDisappearAtURL:(id)l
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_18075C000, v4, OS_LOG_TYPE_FAULT, "A subarbiter is being notified of item disappearance, which is a surprise.", v5, 2u);
  }
}

- (void)writerWithPurposeID:(id)d didChangeItemAtURL:(id)l
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_18075C000, v4, OS_LOG_TYPE_FAULT, "A subarbiter is being notified of a change, which is a surprise.", v5, 2u);
  }
}

- (void)writerWithPurposeID:(id)d didVersionChangeOfKind:(id)kind toItemAtURL:(id)l withClientID:(id)iD name:(id)name
{
  block[10] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__NSFileAccessSubarbiter_writerWithPurposeID_didVersionChangeOfKind_toItemAtURL_withClientID_name___block_invoke;
  block[3] = &unk_1E69F9170;
  block[4] = self;
  block[5] = d;
  block[6] = kind;
  block[7] = l;
  block[8] = iD;
  block[9] = name;
  dispatch_async(queue, block);
}

void __99__NSFileAccessSubarbiter_writerWithPurposeID_didVersionChangeOfKind_toItemAtURL_withClientID_name___block_invoke(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 16) superarbitrationConnection];
  if (v2)
  {
    v3 = [v2 remoteObjectProxy];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = a1[8];
    v8 = a1[9];

    [v3 writerWithPurposeID:v4 didVersionChangeOfKind:v5 toItemAtURL:v6 withClientID:v7 name:v8];
  }

  else
  {
    v9 = _NSFCLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18075C000, v9, OS_LOG_TYPE_FAULT, "A subarbiter is being notified of file movement and it's not even subarbitrating yet, which is a surprise.", v10, 2u);
    }
  }
}

- (void)tiePresenterForID:(id)d toItemAtURL:(id)l
{
  v5[7] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__NSFileAccessSubarbiter_tiePresenterForID_toItemAtURL___block_invoke;
  v5[3] = &unk_1E69F68D8;
  v5[4] = self;
  v5[5] = d;
  v5[6] = l;
  dispatch_async(queue, v5);
}

void __56__NSFileAccessSubarbiter_tiePresenterForID_toItemAtURL___block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 16) superarbitrationConnection];
  if (v2)
  {
    v3 = [v2 remoteObjectProxy];
    v4 = a1[5];
    v5 = a1[6];

    [v3 tiePresenterForID:v4 toItemAtURL:v5];
  }

  else
  {
    v6 = _NSFCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_18075C000, v6, OS_LOG_TYPE_FAULT, "A subarbiter is being notified of file prsenter tying it's not even subarbitrating yet, which is a surprise.", v7, 2u);
    }
  }
}

@end