@interface NSFilePresenterXPCMessenger
- (NSFilePresenterXPCMessenger)initWithFilePresenter:(id)a3 queue:(id)a4;
- (NSFilePresenterXPCMessenger)initWithFilePresenterProxy:(id)a3;
- (id)_readRelinquishment;
- (id)_writeRelinquishment;
- (void)_makePresenter:(id)a3 accommodateDeletionWithSubitemURL:(id)a4 completionHandler:(id)a5;
- (void)_makePresenter:(id)a3 accommodateDisconnectionWithCompletionHandler:(id)a4;
- (void)_makePresenter:(id)a3 accommodateEvictionWithSubitemURL:(id)a4 completionHandler:(id)a5;
- (void)_makePresenter:(id)a3 observeChangeOfUbiquityAttributes:(id)a4;
- (void)_makePresenter:(id)a3 observeChangeWithSubitemURL:(id)a4;
- (void)_makePresenter:(id)a3 observeMoveToURL:(id)a4 withSubitemURL:(id)a5;
- (void)_makePresenter:(id)a3 observeSharingChangeWithSubitemURL:(id)a4;
- (void)_makePresenter:(id)a3 observeUbiquityChangeWithSubitemURL:(id)a4;
- (void)_makePresenter:(id)a3 observeVersionChangeOfKind:(id)a4 withClientID:(id)a5 name:(id)a6 subitemURL:(id)a7;
- (void)_makePresenter:(id)a3 relinquishToAccessClaimWithID:(id)a4 purposeID:(id)a5 ifNecessaryUsingSelector:(SEL)a6 recordingRelinquishment:(id)a7 continuer:(id)a8;
- (void)_makePresenter:(id)a3 relinquishToReadingClaimWithID:(id)a4 purposeID:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7;
- (void)_makePresenter:(id)a3 relinquishToWritingClaimWithID:(id)a4 options:(unint64_t)a5 purposeID:(id)a6 subitemURL:(id)a7 completionHandler:(id)a8;
- (void)_makePresenter:(id)a3 reportUnsavedChangesWithCompletionHandler:(id)a4;
- (void)_makePresenter:(id)a3 saveChangesWithCompletionHandler:(id)a4;
- (void)_makePresenter:(id)a3 setLastPresentedItemEventIdentifier:(unint64_t)a4;
- (void)_makePresenter:(id)a3 setProviderPurposeIdentifier:(id)a4;
- (void)_makePresenter:(id)a3 validateRelinquishmentToSubitemAtURL:(id)a4 completionHandler:(id)a5;
- (void)_makePresenter:(id)a3 validateRemoteDeletionRecordingRelinquishment:(id)a4 completionHandler:(id)a5;
- (void)_makePresenterObserveDisconnection:(id)a3;
- (void)_makePresenterObserveReconnection:(id)a3;
- (void)accommodateDeletionOfSubitemAtURL:(id)a3 completionHandler:(id)a4;
- (void)collectDebuggingInformationWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)logSuspensionWarning;
- (void)observeChangeOfUbiquityAttributes:(id)a3;
- (void)observeChangeWithSubitemURL:(id)a3;
- (void)observeDisconnection;
- (void)observeMoveToURL:(id)a3 withSubitemURL:(id)a4 byWriterWithPurposeID:(id)a5 withFSID:(fsid)a6 andFileID:(unint64_t)a7;
- (void)observePresenterChange:(BOOL)a3 forSubitemAtURL:(id)a4;
- (void)observeReconnection;
- (void)observeSharingChangeWithSubitemURL:(id)a3;
- (void)observeUbiquityChangeWithSubitemURL:(id)a3;
- (void)observeVersionChangeOfKind:(id)a3 toItemAtURL:(id)a4 withClientID:(id)a5 name:(id)a6;
- (void)reacquireFromReadingClaimForID:(id)a3;
- (void)reacquireFromWritingClaimForID:(id)a3 completionHandler:(id)a4;
- (void)relinquishToReadingClaimWithID:(id)a3 options:(unint64_t)a4 purposeID:(id)a5 completionHandler:(id)a6;
- (void)relinquishToWritingClaimWithID:(id)a3 options:(unint64_t)a4 purposeID:(id)a5 subitemURL:(id)a6 completionHandler:(id)a7;
- (void)saveChangesWithCompletionHandler:(id)a3;
- (void)setProviderPurposeIdentifier:(id)a3;
- (void)updateLastEventID:(unint64_t)a3;
@end

@implementation NSFilePresenterXPCMessenger

- (NSFilePresenterXPCMessenger)initWithFilePresenter:(id)a3 queue:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSFilePresenterXPCMessenger;
  v6 = [(NSFilePresenterXPCMessenger *)&v8 init];
  if (v6)
  {
    v6->_filePresenter = a3;
    v6->_queue = a4;
    dispatch_retain(a4);
  }

  return v6;
}

- (NSFilePresenterXPCMessenger)initWithFilePresenterProxy:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSFilePresenterXPCMessenger;
  v4 = [(NSFilePresenterXPCMessenger *)&v6 init];
  if (v4)
  {
    v4->_filePresenterProxy = a3;
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
  v4.super_class = NSFilePresenterXPCMessenger;
  [(NSFilePresenterXPCMessenger *)&v4 dealloc];
}

- (void)invalidate
{
  self->_filePresenter = 0;

  self->_filePresenterProxy = 0;
}

- (void)relinquishToReadingClaimWithID:(id)a3 options:(unint64_t)a4 purposeID:(id)a5 completionHandler:(id)a6
{
  v15[5] = *MEMORY[0x1E69E9840];
  filePresenter = self->_filePresenter;
  if (filePresenter)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __98__NSFilePresenterXPCMessenger_relinquishToReadingClaimWithID_options_purposeID_completionHandler___block_invoke;
    v15[3] = &unk_1E69F3938;
    v15[4] = a6;
    [(NSFilePresenterXPCMessenger *)self _makePresenter:filePresenter relinquishToReadingClaimWithID:a3 purposeID:a5 options:a4 completionHandler:v15];
  }

  else if (self->_filePresenterProxy)
  {
    v13 = [+[NSXPCConnection currentConnection](NSXPCConnection userInfo];
    if (object_getClass(v13) != NSFileSubarbitrationClaim)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSFileAccessArbiter.m" description:3350, @"Wrong class in connection userInfo: %@", objc_opt_class()];
    }

    if ([v13 isRevoked])
    {
      NSLog(@"NSFileCoordinator: A surprising subarbiter message was received after the subarbitration claim was revoked");
    }

    [v13 forwardRelinquishmentForWritingClaim:0 withID:a3 options:a4 purposeID:a5 subitemURL:0 toPresenter:self->_filePresenterProxy usingReplySender:a6];
  }

  else
  {
    v14 = *(a6 + 2);

    v14(a6, 0);
  }
}

uint64_t __98__NSFilePresenterXPCMessenger_relinquishToReadingClaimWithID_options_purposeID_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __98__NSFilePresenterXPCMessenger_relinquishToReadingClaimWithID_options_purposeID_completionHandler___block_invoke_2;
  v4[3] = &unk_1E69F3910;
  v2 = *(a1 + 32);
  v4[4] = a2;
  v4[5] = v2;
  return [NSFileCoordinator _performBarrierAsync:v4];
}

- (void)relinquishToWritingClaimWithID:(id)a3 options:(unint64_t)a4 purposeID:(id)a5 subitemURL:(id)a6 completionHandler:(id)a7
{
  v18[10] = *MEMORY[0x1E69E9840];
  filePresenter = self->_filePresenter;
  if (filePresenter)
  {
    v14 = [a6 URL];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __109__NSFilePresenterXPCMessenger_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke;
    v18[3] = &unk_1E69F9238;
    v18[4] = self;
    v18[5] = a3;
    v18[6] = a5;
    v18[7] = a6;
    v18[8] = a7;
    v18[9] = a4;
    [(NSFilePresenterXPCMessenger *)self _makePresenter:filePresenter validateRelinquishmentToSubitemAtURL:v14 completionHandler:v18];
  }

  else if (self->_filePresenterProxy)
  {
    v16 = [+[NSXPCConnection currentConnection](NSXPCConnection userInfo];
    if (object_getClass(v16) != NSFileSubarbitrationClaim)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSFileAccessArbiter.m" description:3386, @"Wrong class in connection userInfo: %@", objc_opt_class()];
    }

    if ([v16 isRevoked])
    {
      NSLog(@"NSFileCoordinator: A surprising subarbiter message was received after the subarbitration claim was revoked");
    }

    [v16 forwardRelinquishmentForWritingClaim:1 withID:a3 options:a4 purposeID:a5 subitemURL:a6 toPresenter:self->_filePresenterProxy usingReplySender:a7];
  }

  else
  {
    v17 = *(a7 + 2);

    v17(a7, 0);
  }
}

uint64_t __109__NSFilePresenterXPCMessenger_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke(void *a1, int a2)
{
  v10[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a1[4];
    v2 = a1[5];
    v4 = v3[1];
    v5 = a1[6];
    v6 = a1[7];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __109__NSFilePresenterXPCMessenger_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke_2;
    v10[3] = &unk_1E69F3938;
    v7 = a1[9];
    v10[4] = a1[8];
    return [v3 _makePresenter:v4 relinquishToWritingClaimWithID:v2 options:v7 purposeID:v5 subitemURL:v6 completionHandler:v10];
  }

  else
  {
    v9 = *(a1[8] + 16);

    return v9();
  }
}

uint64_t __109__NSFilePresenterXPCMessenger_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __109__NSFilePresenterXPCMessenger_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke_3;
  v4[3] = &unk_1E69F3910;
  v2 = *(a1 + 32);
  v4[4] = a2;
  v4[5] = v2;
  return [NSFileCoordinator _performBarrierAsync:v4];
}

- (void)reacquireFromReadingClaimForID:(id)a3
{
  if (self->_filePresenter)
  {
    v5 = [(NSFilePresenterXPCMessenger *)self _readRelinquishment];

    [v5 removeBlockingAccessClaimID:a3];
  }

  else if (self->_filePresenterProxy)
  {
    v7 = [+[NSXPCConnection currentConnection](NSXPCConnection userInfo];
    if (object_getClass(v7) != NSFileSubarbitrationClaim)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSFileAccessArbiter.m" description:3413, @"Wrong class in connection userInfo: %@", objc_opt_class()];
    }

    if ([v7 isRevoked])
    {
      NSLog(@"NSFileCoordinator: A surprising subarbiter message was received after the subarbitration claim was revoked");
    }

    v8 = [(NSFileReactorProxy *)self->_filePresenterProxy reactorID];

    [v7 forwardReacquisitionForWritingClaim:0 withID:a3 toPresenterForID:v8 usingReplySender:0];
  }
}

- (void)reacquireFromWritingClaimForID:(id)a3 completionHandler:(id)a4
{
  if (self->_filePresenter)
  {
    v7 = [(NSFilePresenterXPCMessenger *)self _writeRelinquishment];

    [v7 removeBlockingAccessClaimID:a3 thenContinue:a4];
  }

  else if (self->_filePresenterProxy)
  {
    v9 = [+[NSXPCConnection currentConnection](NSXPCConnection userInfo];
    if (object_getClass(v9) != NSFileSubarbitrationClaim)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSFileAccessArbiter.m" description:3436, @"Wrong class in connection userInfo: %@", objc_opt_class()];
    }

    if ([v9 isRevoked])
    {
      NSLog(@"NSFileCoordinator: A surprising subarbiter message was received after the subarbitration claim was revoked");
    }

    v10 = [(NSFileReactorProxy *)self->_filePresenterProxy reactorID];

    [v9 forwardReacquisitionForWritingClaim:1 withID:a3 toPresenterForID:v10 usingReplySender:a4];
  }

  else
  {
    v11 = *(a4 + 2);

    v11(a4);
  }
}

- (void)saveChangesWithCompletionHandler:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  filePresenter = self->_filePresenter;
  if (filePresenter)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__NSFilePresenterXPCMessenger_saveChangesWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E69F3938;
    v6[4] = a3;
    [(NSFilePresenterXPCMessenger *)self _makePresenter:filePresenter saveChangesWithCompletionHandler:v6];
  }

  else if (self->_filePresenterProxy)
  {
    v4 = _NSFCPresenterLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18075C000, v4, OS_LOG_TYPE_FAULT, "A server unexpectedly received a saveChangesWithCompletionHandler: message", buf, 2u);
    }
  }

  else
  {
    v5 = *(a3 + 2);

    v5(a3, 0);
  }
}

uint64_t __64__NSFilePresenterXPCMessenger_saveChangesWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__NSFilePresenterXPCMessenger_saveChangesWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E69F3910;
  v2 = *(a1 + 32);
  v4[4] = a2;
  v4[5] = v2;
  return [NSFileCoordinator _performBarrierAsync:v4];
}

- (void)accommodateDeletionOfSubitemAtURL:(id)a3 completionHandler:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  filePresenter = self->_filePresenter;
  if (filePresenter)
  {
    v7 = [a3 URL];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83__NSFilePresenterXPCMessenger_accommodateDeletionOfSubitemAtURL_completionHandler___block_invoke;
    v10[3] = &unk_1E69F3938;
    v10[4] = a4;
    [(NSFilePresenterXPCMessenger *)self _makePresenter:filePresenter accommodateDeletionWithSubitemURL:v7 completionHandler:v10];
  }

  else if (self->_filePresenterProxy)
  {
    v8 = _NSFCPresenterLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18075C000, v8, OS_LOG_TYPE_FAULT, "A server unexpectedly received a accommodateDeletionOfSubitemAtURL: message", buf, 2u);
    }
  }

  else
  {
    v9 = *(a4 + 2);

    v9(a4, 0);
  }
}

uint64_t __83__NSFilePresenterXPCMessenger_accommodateDeletionOfSubitemAtURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__NSFilePresenterXPCMessenger_accommodateDeletionOfSubitemAtURL_completionHandler___block_invoke_2;
  v4[3] = &unk_1E69F3910;
  v2 = *(a1 + 32);
  v4[4] = a2;
  v4[5] = v2;
  return [NSFileCoordinator _performBarrierAsync:v4];
}

- (void)observeChangeWithSubitemURL:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  filePresenter = self->_filePresenter;
  if (filePresenter)
  {
    v5 = [a3 URL];

    [(NSFilePresenterXPCMessenger *)self _makePresenter:filePresenter observeChangeWithSubitemURL:v5];
  }

  else if (self->_filePresenterProxy)
  {
    v6 = _NSFCPresenterLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_18075C000, v6, OS_LOG_TYPE_FAULT, "A server unexpectedly received a observeChangeWithSubitemURL: message", v7, 2u);
    }
  }
}

- (void)observeMoveToURL:(id)a3 withSubitemURL:(id)a4 byWriterWithPurposeID:(id)a5 withFSID:(fsid)a6 andFileID:(unint64_t)a7
{
  if (self->_filePresenter)
  {
    [a3 logicalURL];
    _CFURLNoteSecurityScopedResourceMoved();
    filePresenter = self->_filePresenter;
    v13 = [a3 URL];
    v14 = [a4 URL];

    [(NSFilePresenterXPCMessenger *)self _makePresenter:filePresenter observeMoveToURL:v13 withSubitemURL:v14];
  }

  else if (self->_filePresenterProxy)
  {
    v17 = [+[NSXPCConnection currentConnection](NSXPCConnection userInfo];
    if (object_getClass(v17) != NSFileSubarbitrationClaim)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSFileAccessArbiter.m" description:3532, @"Wrong class in connection userInfo: %@", objc_opt_class()];
    }

    if ([v17 isRevoked])
    {
      NSLog(@"NSFileCoordinator: A surprising subarbiter message was received after the subarbitration claim was revoked");
    }

    filePresenterProxy = self->_filePresenterProxy;

    [(NSFilePresenterProxy *)filePresenterProxy observeMoveOfSubitemAtURL:a4 toURL:a3 byWriterWithPurposeID:a5 withFSID:a6 andFileID:a7];
  }
}

- (void)observeDisconnection
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->_filePresenter)
  {

    [(NSFilePresenterXPCMessenger *)self _makePresenterObserveDisconnection:?];
  }

  else if (self->_filePresenterProxy)
  {
    v2 = _NSFCPresenterLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      *v3 = 0;
      _os_log_fault_impl(&dword_18075C000, v2, OS_LOG_TYPE_FAULT, "A server unexpectedly received a observeDisconnection message", v3, 2u);
    }
  }
}

- (void)observeReconnection
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->_filePresenter)
  {

    [(NSFilePresenterXPCMessenger *)self _makePresenterObserveReconnection:?];
  }

  else if (self->_filePresenterProxy)
  {
    v2 = _NSFCPresenterLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      *v3 = 0;
      _os_log_fault_impl(&dword_18075C000, v2, OS_LOG_TYPE_FAULT, "A server unexpectedly received a observeReconnection message", v3, 2u);
    }
  }
}

- (void)observeUbiquityChangeWithSubitemURL:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  filePresenter = self->_filePresenter;
  if (filePresenter)
  {
    v5 = [a3 URL];

    [(NSFilePresenterXPCMessenger *)self _makePresenter:filePresenter observeUbiquityChangeWithSubitemURL:v5];
  }

  else if (self->_filePresenterProxy)
  {
    v6 = _NSFCPresenterLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_18075C000, v6, OS_LOG_TYPE_FAULT, "A server unexpectedly received a observeUbiquityChangeWithSubitemURL: message", v7, 2u);
    }
  }
}

- (void)observeSharingChangeWithSubitemURL:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  filePresenter = self->_filePresenter;
  if (filePresenter)
  {
    v5 = [a3 URL];

    [(NSFilePresenterXPCMessenger *)self _makePresenter:filePresenter observeSharingChangeWithSubitemURL:v5];
  }

  else if (self->_filePresenterProxy)
  {
    v6 = _NSFCPresenterLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_18075C000, v6, OS_LOG_TYPE_FAULT, "A server unexpectedly received a observeSharingChangeWithSubitemURL: message", v7, 2u);
    }
  }
}

- (void)observeChangeOfUbiquityAttributes:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_filePresenter)
  {

    [NSFilePresenterXPCMessenger _makePresenter:"_makePresenter:observeChangeOfUbiquityAttributes:" observeChangeOfUbiquityAttributes:?];
  }

  else if (self->_filePresenterProxy)
  {
    v3 = _NSFCPresenterLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&dword_18075C000, v3, OS_LOG_TYPE_FAULT, "A server unexpectedly received a observeChangeOfUbiquityAttributes: message", v4, 2u);
    }
  }
}

- (void)observeVersionChangeOfKind:(id)a3 toItemAtURL:(id)a4 withClientID:(id)a5 name:(id)a6
{
  v14 = *MEMORY[0x1E69E9840];
  filePresenter = self->_filePresenter;
  if (filePresenter)
  {
    v11 = [a4 URL];

    [(NSFilePresenterXPCMessenger *)self _makePresenter:filePresenter observeVersionChangeOfKind:a3 withClientID:a5 name:a6 subitemURL:v11];
  }

  else if (self->_filePresenterProxy)
  {
    v12 = _NSFCPresenterLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *v13 = 0;
      _os_log_fault_impl(&dword_18075C000, v12, OS_LOG_TYPE_FAULT, "A server unexpectedly received a observeVersionChangeOfKind: message", v13, 2u);
    }
  }
}

- (void)observePresenterChange:(BOOL)a3 forSubitemAtURL:(id)a4
{
  v5 = a3;
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v7 = [NSFileAccessArbiterProxy _idForReactor:self->_filePresenter];
    v8 = _NSFCPresenterLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543875;
      v15 = v7;
      v16 = 1024;
      v17 = v5;
      v18 = 2113;
      v19 = a4;
      _os_log_impl(&dword_18075C000, v8, OS_LOG_TYPE_INFO, "Making presenter %{public}@ observe presenter change: %d at %{private}@", buf, 0x1Cu);
    }

    v9 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:self->_filePresenter withDescription:@"Observe Presenter Change"];
    v10 = [(NSFilePresenter *)self->_filePresenter presentedItemOperationQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__NSFilePresenterXPCMessenger_observePresenterChange_forSubitemAtURL___block_invoke;
    v12[3] = &unk_1E69F9260;
    v12[4] = v9;
    v12[5] = self;
    v13 = v5;
    v12[6] = a4;
    [v10 _fc_addUncancellableOperationForReactorID:v7 block:v12];
  }

  else if (self->_filePresenterProxy)
  {
    v11 = _NSFCPresenterLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18075C000, v11, OS_LOG_TYPE_FAULT, "A server unexpectedly received a observePresenterChange: message", buf, 2u);
    }
  }
}

uint64_t __70__NSFilePresenterXPCMessenger_observePresenterChange_forSubitemAtURL___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didBegin];
  [*(*(a1 + 40) + 8) presentedSubitemHasPresenters:*(a1 + 56) atURL:{objc_msgSend(*(a1 + 48), "URL")}];
  v2 = *(a1 + 32);

  return [v2 didEnd];
}

- (void)updateLastEventID:(unint64_t)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_filePresenter)
  {

    [NSFilePresenterXPCMessenger _makePresenter:"_makePresenter:setLastPresentedItemEventIdentifier:" setLastPresentedItemEventIdentifier:?];
  }

  else if (self->_filePresenterProxy)
  {
    v3 = _NSFCPresenterLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&dword_18075C000, v3, OS_LOG_TYPE_FAULT, "A server unexpectedly received a updateLastEventID: message", v4, 2u);
    }
  }
}

- (void)setProviderPurposeIdentifier:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_filePresenter)
  {

    [NSFilePresenterXPCMessenger _makePresenter:"_makePresenter:setProviderPurposeIdentifier:" setProviderPurposeIdentifier:?];
  }

  else if (self->_filePresenterProxy)
  {
    v3 = _NSFCPresenterLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&dword_18075C000, v3, OS_LOG_TYPE_FAULT, "A server unexpectedly received a setProviderPurposeIdentifier: message", v4, 2u);
    }
  }
}

- (void)collectDebuggingInformationWithCompletionHandler:(id)a3
{
  v4 = +[NSFileAccessArbiterProxy _fileReactorDebuggingInformation];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)logSuspensionWarning
{
  filePresenter = self->_filePresenter;
  if (filePresenter)
  {
    v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"File presenter %@ with presentedItemURL %@", filePresenter, [-[NSFilePresenter presentedItemURL](self->_filePresenter "presentedItemURL")]);
  }

  else
  {
    v3 = @"An unknown file presenter";
  }

  NSLog(@"%@ was still registered at the time this application was suspended, and implements one or more NSFilePresenter messages requiring a response. For NSFilePresenters for file system locations that are accessible to other processes (e.g. iCloud or group containers), you should either call removeFilePresenter: when the process is backgrounded, or remove any implementations of NSFilePresenter methods requiring a response. Otherwise, the system will kill your process instead of risking deadlock.", v3);
}

- (void)_makePresenter:(id)a3 saveChangesWithCompletionHandler:(id)a4
{
  v9[8] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (objc_opt_respondsToSelector())
  {
    v7 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Save Changes"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79__NSFilePresenterXPCMessenger__makePresenter_saveChangesWithCompletionHandler___block_invoke;
    v9[3] = &unk_1E69F92B0;
    v9[4] = a3;
    v9[5] = v7;
    v9[6] = self;
    v9[7] = a4;
    [objc_msgSend(a3 "presentedItemOperationQueue")];
  }

  else
  {
    v8 = *(a4 + 2);

    v8(a4, 0);
  }
}

uint64_t __79__NSFilePresenterXPCMessenger__makePresenter_saveChangesWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [NSFileAccessArbiterProxy _idForReactor:*(a1 + 32)];
  v5 = _NSFCPresenterLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v4;
    _os_log_impl(&dword_18075C000, v5, OS_LOG_TYPE_DEFAULT, "Making presenter %{public}@ savePresentedItemChanges", buf, 0xCu);
  }

  [*(a1 + 40) didBegin];
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__NSFilePresenterXPCMessenger__makePresenter_saveChangesWithCompletionHandler___block_invoke_476;
  v9[3] = &unk_1E69F9508;
  v9[4] = v4;
  v10 = *(a1 + 40);
  v7 = *(a1 + 56);
  v11 = a2;
  v12 = v7;
  return [v6 savePresentedItemChangesWithCompletionHandler:v9];
}

uint64_t __79__NSFilePresenterXPCMessenger__makePresenter_saveChangesWithCompletionHandler___block_invoke_476(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = _NSFCPresenterLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ finished savePresentedItemChanges", buf, 0xCu);
  }

  [*(a1 + 40) willEnd];
  v6 = *(*(a1 + 48) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__NSFilePresenterXPCMessenger__makePresenter_saveChangesWithCompletionHandler___block_invoke_477;
  block[3] = &unk_1E69F9288;
  v7 = *(a1 + 40);
  v8 = *(a1 + 64);
  block[5] = a2;
  block[6] = v8;
  block[4] = v7;
  dispatch_async(v6, block);
  return [*(a1 + 56) finish];
}

uint64_t __79__NSFilePresenterXPCMessenger__makePresenter_saveChangesWithCompletionHandler___block_invoke_477(uint64_t a1)
{
  [*(a1 + 32) didEnd];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_makePresenter:(id)a3 reportUnsavedChangesWithCompletionHandler:(id)a4
{
  v11[9] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (objc_opt_respondsToSelector())
  {
    v7 = [NSFileAccessArbiterProxy _idForReactor:a3];
    v8 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Report Unsaved Changes"];
    v9 = [a3 presentedItemOperationQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__NSFilePresenterXPCMessenger__makePresenter_reportUnsavedChangesWithCompletionHandler___block_invoke;
    v11[3] = &unk_1E69F5B60;
    v11[4] = v7;
    v11[5] = v8;
    v11[6] = a3;
    v11[7] = self;
    v11[8] = a4;
    [v9 _fc_addUncancellableOperationForReactorID:v7 block:v11];
  }

  else
  {
    v10 = *(a4 + 2);

    v10(a4, 0);
  }
}

uint64_t __88__NSFilePresenterXPCMessenger__makePresenter_reportUnsavedChangesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _NSFCPresenterLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "Making presenter %{public}@ reportUnsavedChanges", buf, 0xCu);
  }

  [*(a1 + 40) didBegin];
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__NSFilePresenterXPCMessenger__makePresenter_reportUnsavedChangesWithCompletionHandler___block_invoke_484;
  v7[3] = &unk_1E69F8DB0;
  v5 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = v5;
  return [v4 presentedItemHasUnsavedChangesWithCompletionHandler:v7];
}

void __88__NSFilePresenterXPCMessenger__makePresenter_reportUnsavedChangesWithCompletionHandler___block_invoke_484(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = _NSFCPresenterLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "NO";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = "YES";
    }

    *buf = 138543618;
    v12 = v6;
    v13 = 2080;
    v14 = v5;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ finished reportUnsavedChanges with reply: %s", buf, 0x16u);
  }

  [*(a1 + 40) willEnd];
  v7 = *(*(a1 + 48) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__NSFilePresenterXPCMessenger__makePresenter_reportUnsavedChangesWithCompletionHandler___block_invoke_487;
  block[3] = &unk_1E69F92D8;
  v8 = *(a1 + 56);
  block[4] = *(a1 + 40);
  block[5] = v8;
  v10 = a2;
  dispatch_async(v7, block);
}

uint64_t __88__NSFilePresenterXPCMessenger__makePresenter_reportUnsavedChangesWithCompletionHandler___block_invoke_487(uint64_t a1)
{
  [*(a1 + 32) didEnd];
  v2 = *(a1 + 40);
  v3 = [NSNumber numberWithBool:*(a1 + 48)];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)_makePresenter:(id)a3 validateRemoteDeletionRecordingRelinquishment:(id)a4 completionHandler:(id)a5
{
  v10[6] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __110__NSFilePresenterXPCMessenger__makePresenter_validateRemoteDeletionRecordingRelinquishment_completionHandler___block_invoke;
    v10[3] = &unk_1E69F9300;
    v10[4] = a3;
    v10[5] = self;
    [a4 performRemoteDeletePrerelinquishmentIfNecessaryUsingBlock:v10 withReply:a5];
  }

  else
  {
    v9 = *(a5 + 2);

    v9(a5, 1);
  }
}

uint64_t __110__NSFilePresenterXPCMessenger__makePresenter_validateRemoteDeletionRecordingRelinquishment_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [NSFileAccessArbiterProxy _idForReactor:*(a1 + 32)];
  v5 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:*(a1 + 32) withDescription:@"Validate Deletion"];
  v6 = [*(a1 + 32) presentedItemOperationQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __110__NSFilePresenterXPCMessenger__makePresenter_validateRemoteDeletionRecordingRelinquishment_completionHandler___block_invoke_2;
  v8[3] = &unk_1E69F5B60;
  v8[4] = v4;
  v8[5] = v5;
  v9 = *(a1 + 32);
  v10 = a2;
  return [v6 _fc_addUncancellableOperationForReactorID:v4 block:v8];
}

uint64_t __110__NSFilePresenterXPCMessenger__makePresenter_validateRemoteDeletionRecordingRelinquishment_completionHandler___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _NSFCPresenterLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "Making presenter %{public}@ validatePresentedItemDeletion", buf, 0xCu);
  }

  [*(a1 + 40) didBegin];
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __110__NSFilePresenterXPCMessenger__makePresenter_validateRemoteDeletionRecordingRelinquishment_completionHandler___block_invoke_493;
  v7[3] = &unk_1E69F8DB0;
  v5 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = v5;
  return [v4 validatePresentedItemRemoteDeletionWithCompletionHandler:v7];
}

void __110__NSFilePresenterXPCMessenger__makePresenter_validateRemoteDeletionRecordingRelinquishment_completionHandler___block_invoke_493(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = _NSFCPresenterLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "NO";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = "YES";
    }

    *buf = 138543618;
    v12 = v6;
    v13 = 2080;
    v14 = v5;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ finished validatePresentedItemDeletion with reply: %s", buf, 0x16u);
  }

  [*(a1 + 40) willEnd];
  v7 = *(*(a1 + 48) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__NSFilePresenterXPCMessenger__makePresenter_validateRemoteDeletionRecordingRelinquishment_completionHandler___block_invoke_494;
  block[3] = &unk_1E69F92D8;
  v8 = *(a1 + 56);
  block[4] = *(a1 + 40);
  block[5] = v8;
  v10 = a2;
  dispatch_async(v7, block);
}

uint64_t __110__NSFilePresenterXPCMessenger__makePresenter_validateRemoteDeletionRecordingRelinquishment_completionHandler___block_invoke_494(uint64_t a1)
{
  [*(a1 + 32) didEnd];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_makePresenter:(id)a3 accommodateDeletionWithSubitemURL:(id)a4 completionHandler:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v9 = [NSFileAccessArbiterProxy _idForReactor:a3];
  if (a4)
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Accommodate Subitem Deletion"];
      v11 = [a3 presentedItemOperationQueue];
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __98__NSFilePresenterXPCMessenger__makePresenter_accommodateDeletionWithSubitemURL_completionHandler___block_invoke;
      v27 = &unk_1E69F8328;
      v28 = v9;
      v29 = a4;
      v30 = v10;
      v31 = a3;
      v32 = self;
      v33 = a5;
      v12 = &v24;
LABEL_6:
      [v11 _fc_addUncancellableOperationForReactorID:v9 block:{v12, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33}];
      return;
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v13 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Accommodate Deletion"];
    v11 = [a3 presentedItemOperationQueue];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __98__NSFilePresenterXPCMessenger__makePresenter_accommodateDeletionWithSubitemURL_completionHandler___block_invoke_2;
    v18 = &unk_1E69F5B60;
    v19 = v9;
    v20 = v13;
    v21 = a3;
    v22 = self;
    v23 = a5;
    v12 = &v15;
    goto LABEL_6;
  }

  v14 = *(a5 + 2);

  v14(a5, 0);
}

uint64_t __98__NSFilePresenterXPCMessenger__makePresenter_accommodateDeletionWithSubitemURL_completionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = _NSFCPresenterLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543619;
    v12 = v3;
    v13 = 2113;
    v14 = v4;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "Making presenter %{public}@ accommodateSubitemDeletion for %{private}@", buf, 0x16u);
  }

  [*(a1 + 48) didBegin];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __98__NSFilePresenterXPCMessenger__makePresenter_accommodateDeletionWithSubitemURL_completionHandler___block_invoke_501;
  v9[3] = &unk_1E69F9328;
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9[4] = *(a1 + 32);
  v9[5] = v7;
  v10 = *(a1 + 64);
  return [v6 accommodatePresentedSubitemDeletionAtURL:v5 completionHandler:v9];
}

void __98__NSFilePresenterXPCMessenger__makePresenter_accommodateDeletionWithSubitemURL_completionHandler___block_invoke_501(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = _NSFCPresenterLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ finished accommodateSubitemDeletion", buf, 0xCu);
  }

  [*(a1 + 40) willEnd];
  v6 = *(*(a1 + 48) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__NSFilePresenterXPCMessenger__makePresenter_accommodateDeletionWithSubitemURL_completionHandler___block_invoke_502;
  block[3] = &unk_1E69F9288;
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  block[5] = a2;
  block[6] = v8;
  block[4] = v7;
  dispatch_async(v6, block);
}

uint64_t __98__NSFilePresenterXPCMessenger__makePresenter_accommodateDeletionWithSubitemURL_completionHandler___block_invoke_502(uint64_t a1)
{
  [*(a1 + 32) didEnd];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __98__NSFilePresenterXPCMessenger__makePresenter_accommodateDeletionWithSubitemURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _NSFCPresenterLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "Making presenter %{public}@ accommodateDeletion", buf, 0xCu);
  }

  [*(a1 + 40) didBegin];
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__NSFilePresenterXPCMessenger__makePresenter_accommodateDeletionWithSubitemURL_completionHandler___block_invoke_508;
  v7[3] = &unk_1E69F9328;
  v5 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = v5;
  return [v4 accommodatePresentedItemDeletionWithCompletionHandler:v7];
}

void __98__NSFilePresenterXPCMessenger__makePresenter_accommodateDeletionWithSubitemURL_completionHandler___block_invoke_508(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = _NSFCPresenterLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ finished accommodateDeletion", buf, 0xCu);
  }

  [*(a1 + 40) willEnd];
  v6 = *(*(a1 + 48) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__NSFilePresenterXPCMessenger__makePresenter_accommodateDeletionWithSubitemURL_completionHandler___block_invoke_509;
  block[3] = &unk_1E69F9288;
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  block[5] = a2;
  block[6] = v8;
  block[4] = v7;
  dispatch_async(v6, block);
}

uint64_t __98__NSFilePresenterXPCMessenger__makePresenter_accommodateDeletionWithSubitemURL_completionHandler___block_invoke_509(uint64_t a1)
{
  [*(a1 + 32) didEnd];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_makePresenter:(id)a3 accommodateEvictionWithSubitemURL:(id)a4 completionHandler:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v9 = [NSFileAccessArbiterProxy _idForReactor:a3];
  if (a4)
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Accommodate Subitem Eviction"];
      v11 = [a3 presentedItemOperationQueue];
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __98__NSFilePresenterXPCMessenger__makePresenter_accommodateEvictionWithSubitemURL_completionHandler___block_invoke;
      v27 = &unk_1E69F8328;
      v28 = v9;
      v29 = a4;
      v30 = v10;
      v31 = a3;
      v32 = self;
      v33 = a5;
      v12 = &v24;
LABEL_6:
      [v11 _fc_addUncancellableOperationForReactorID:v9 block:{v12, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33}];
      return;
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v13 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Accommodate Eviction"];
    v11 = [a3 presentedItemOperationQueue];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __98__NSFilePresenterXPCMessenger__makePresenter_accommodateEvictionWithSubitemURL_completionHandler___block_invoke_2;
    v18 = &unk_1E69F5B60;
    v19 = v9;
    v20 = v13;
    v21 = a3;
    v22 = self;
    v23 = a5;
    v12 = &v15;
    goto LABEL_6;
  }

  v14 = *(a5 + 2);

  v14(a5, 0);
}

uint64_t __98__NSFilePresenterXPCMessenger__makePresenter_accommodateEvictionWithSubitemURL_completionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = _NSFCPresenterLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543619;
    v12 = v3;
    v13 = 2113;
    v14 = v4;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "Making presenter %{public}@ accommodateSubitemEviction for %{private}@", buf, 0x16u);
  }

  [*(a1 + 48) didBegin];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __98__NSFilePresenterXPCMessenger__makePresenter_accommodateEvictionWithSubitemURL_completionHandler___block_invoke_515;
  v9[3] = &unk_1E69F9328;
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9[4] = *(a1 + 32);
  v9[5] = v7;
  v10 = *(a1 + 64);
  return [v6 accommodatePresentedSubitemEvictionAtURL:v5 completionHandler:v9];
}

void __98__NSFilePresenterXPCMessenger__makePresenter_accommodateEvictionWithSubitemURL_completionHandler___block_invoke_515(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = _NSFCPresenterLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ finished accommodateSubitemEviction", buf, 0xCu);
  }

  [*(a1 + 40) willEnd];
  v6 = *(*(a1 + 48) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__NSFilePresenterXPCMessenger__makePresenter_accommodateEvictionWithSubitemURL_completionHandler___block_invoke_516;
  block[3] = &unk_1E69F9288;
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  block[5] = a2;
  block[6] = v8;
  block[4] = v7;
  dispatch_async(v6, block);
}

uint64_t __98__NSFilePresenterXPCMessenger__makePresenter_accommodateEvictionWithSubitemURL_completionHandler___block_invoke_516(uint64_t a1)
{
  [*(a1 + 32) didEnd];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __98__NSFilePresenterXPCMessenger__makePresenter_accommodateEvictionWithSubitemURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _NSFCPresenterLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "Making presenter %{public}@ accommodateEviction", buf, 0xCu);
  }

  [*(a1 + 40) didBegin];
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__NSFilePresenterXPCMessenger__makePresenter_accommodateEvictionWithSubitemURL_completionHandler___block_invoke_522;
  v7[3] = &unk_1E69F9328;
  v5 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = v5;
  return [v4 accommodatePresentedItemEvictionWithCompletionHandler:v7];
}

void __98__NSFilePresenterXPCMessenger__makePresenter_accommodateEvictionWithSubitemURL_completionHandler___block_invoke_522(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = _NSFCPresenterLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ finished accommodateEviction", buf, 0xCu);
  }

  [*(a1 + 40) willEnd];
  v6 = *(*(a1 + 48) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__NSFilePresenterXPCMessenger__makePresenter_accommodateEvictionWithSubitemURL_completionHandler___block_invoke_523;
  block[3] = &unk_1E69F9288;
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  block[5] = a2;
  block[6] = v8;
  block[4] = v7;
  dispatch_async(v6, block);
}

uint64_t __98__NSFilePresenterXPCMessenger__makePresenter_accommodateEvictionWithSubitemURL_completionHandler___block_invoke_523(uint64_t a1)
{
  [*(a1 + 32) didEnd];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_makePresenter:(id)a3 accommodateDisconnectionWithCompletionHandler:(id)a4
{
  v11[9] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (objc_opt_respondsToSelector())
  {
    v7 = [NSFileAccessArbiterProxy _idForReactor:a3];
    v8 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Accommodate Disconnection"];
    v9 = [a3 presentedItemOperationQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __92__NSFilePresenterXPCMessenger__makePresenter_accommodateDisconnectionWithCompletionHandler___block_invoke;
    v11[3] = &unk_1E69F5B60;
    v11[4] = v7;
    v11[5] = v8;
    v11[6] = a3;
    v11[7] = self;
    v11[8] = a4;
    [v9 _fc_addUncancellableOperationForReactorID:v7 block:v11];
  }

  else
  {
    v10 = *(a4 + 2);

    v10(a4, 0);
  }
}

uint64_t __92__NSFilePresenterXPCMessenger__makePresenter_accommodateDisconnectionWithCompletionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _NSFCPresenterLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_INFO, "Making presenter %{public}@ accommodateDisconnection", buf, 0xCu);
  }

  [*(a1 + 40) didBegin];
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__NSFilePresenterXPCMessenger__makePresenter_accommodateDisconnectionWithCompletionHandler___block_invoke_529;
  v7[3] = &unk_1E69F9328;
  v5 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = v5;
  return [v4 accommodatePresentedItemDisconnectionWithCompletionHandler:v7];
}

void __92__NSFilePresenterXPCMessenger__makePresenter_accommodateDisconnectionWithCompletionHandler___block_invoke_529(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = _NSFCPresenterLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_INFO, "%{public}@ finished accommodateDisconnection", buf, 0xCu);
  }

  [*(a1 + 40) willEnd];
  v6 = *(*(a1 + 48) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__NSFilePresenterXPCMessenger__makePresenter_accommodateDisconnectionWithCompletionHandler___block_invoke_530;
  block[3] = &unk_1E69F9288;
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  block[5] = a2;
  block[6] = v8;
  block[4] = v7;
  dispatch_async(v6, block);
}

uint64_t __92__NSFilePresenterXPCMessenger__makePresenter_accommodateDisconnectionWithCompletionHandler___block_invoke_530(uint64_t a1)
{
  [*(a1 + 32) didEnd];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_makePresenter:(id)a3 observeChangeWithSubitemURL:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v6 = [NSFileAccessArbiterProxy _idForReactor:a3];
  v7 = _NSFCPresenterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEFAULT, "Making presenter %{public}@ observe change", buf, 0xCu);
  }

  if (a4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Subitem Did Change"];
    v9 = [a3 presentedItemOperationQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__NSFilePresenterXPCMessenger__makePresenter_observeChangeWithSubitemURL___block_invoke;
    v13[3] = &unk_1E69F68D8;
    v13[4] = v8;
    v13[5] = a3;
    v13[6] = a4;
    v10 = v13;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return;
    }

    v11 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Did Change"];
    v9 = [a3 presentedItemOperationQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__NSFilePresenterXPCMessenger__makePresenter_observeChangeWithSubitemURL___block_invoke_2;
    v12[3] = &unk_1E69F2080;
    v12[4] = v11;
    v12[5] = a3;
    v10 = v12;
  }

  [v9 _fc_addUncancellableOperationForReactorID:v6 block:v10];
}

uint64_t __74__NSFilePresenterXPCMessenger__makePresenter_observeChangeWithSubitemURL___block_invoke(uint64_t a1)
{
  [*(a1 + 32) willEnd];
  [*(a1 + 40) presentedSubitemDidChangeAtURL:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 didEnd];
}

uint64_t __74__NSFilePresenterXPCMessenger__makePresenter_observeChangeWithSubitemURL___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) willEnd];
  [*(a1 + 40) presentedItemDidChange];
  v2 = *(a1 + 32);

  return [v2 didEnd];
}

- (void)_makePresenter:(id)a3 observeMoveToURL:(id)a4 withSubitemURL:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v8 = [NSFileAccessArbiterProxy _idForReactor:a3];
  v9 = _NSFCPresenterLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543619;
    v19 = v8;
    v20 = 2113;
    v21 = a4;
    _os_log_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEFAULT, "Making presenter %{public}@ observe move to URL: %{private}@", buf, 0x16u);
  }

  if (a5)
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Subitem Did Move"];
      v11 = [a3 presentedItemOperationQueue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __78__NSFilePresenterXPCMessenger__makePresenter_observeMoveToURL_withSubitemURL___block_invoke;
      v17[3] = &unk_1E69F9148;
      v17[4] = v10;
      v17[5] = a3;
      v17[6] = a5;
      v17[7] = a4;
      v12 = v17;
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        return;
      }

      v14 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Did Change"];
      v11 = [a3 presentedItemOperationQueue];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __78__NSFilePresenterXPCMessenger__makePresenter_observeMoveToURL_withSubitemURL___block_invoke_2;
      v16[3] = &unk_1E69F2080;
      v16[4] = v14;
      v16[5] = a3;
      v12 = v16;
    }
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return;
    }

    v13 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Did Move"];
    v11 = [a3 presentedItemOperationQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__NSFilePresenterXPCMessenger__makePresenter_observeMoveToURL_withSubitemURL___block_invoke_3;
    v15[3] = &unk_1E69F68D8;
    v15[4] = v13;
    v15[5] = a3;
    v15[6] = a4;
    v12 = v15;
  }

  [v11 _fc_addUncancellableOperationForReactorID:v8 block:v12];
}

uint64_t __78__NSFilePresenterXPCMessenger__makePresenter_observeMoveToURL_withSubitemURL___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didBegin];
  [*(a1 + 40) presentedSubitemAtURL:*(a1 + 48) didMoveToURL:*(a1 + 56)];
  v2 = *(a1 + 32);

  return [v2 didEnd];
}

uint64_t __78__NSFilePresenterXPCMessenger__makePresenter_observeMoveToURL_withSubitemURL___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) didBegin];
  [*(a1 + 40) presentedItemDidChange];
  v2 = *(a1 + 32);

  return [v2 didEnd];
}

uint64_t __78__NSFilePresenterXPCMessenger__makePresenter_observeMoveToURL_withSubitemURL___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) didBegin];
  [*(a1 + 40) presentedItemDidMoveToURL:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 didEnd];
}

- (void)_makePresenterObserveDisconnection:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v4 = [NSFileAccessArbiterProxy _idForReactor:a3];
  v5 = _NSFCPresenterLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v10 = v4;
    _os_log_impl(&dword_18075C000, v5, OS_LOG_TYPE_INFO, "Making presenter %{public}@ observe disconnection", buf, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Observe Disconnection"];
    v7 = [a3 presentedItemOperationQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__NSFilePresenterXPCMessenger__makePresenterObserveDisconnection___block_invoke;
    v8[3] = &unk_1E69F2080;
    v8[4] = v6;
    v8[5] = a3;
    [v7 _fc_addUncancellableOperationForReactorID:v4 block:v8];
  }
}

uint64_t __66__NSFilePresenterXPCMessenger__makePresenterObserveDisconnection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didBegin];
  [*(a1 + 40) presentedItemDidDisconnect];
  v2 = *(a1 + 32);

  return [v2 didEnd];
}

- (void)_makePresenterObserveReconnection:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v4 = [NSFileAccessArbiterProxy _idForReactor:a3];
  v5 = _NSFCPresenterLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v10 = v4;
    _os_log_impl(&dword_18075C000, v5, OS_LOG_TYPE_INFO, "Making presenter %{public}@ observe reconnection", buf, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Observe Reconnection"];
    v7 = [a3 presentedItemOperationQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__NSFilePresenterXPCMessenger__makePresenterObserveReconnection___block_invoke;
    v8[3] = &unk_1E69F2080;
    v8[4] = v6;
    v8[5] = a3;
    [v7 _fc_addUncancellableOperationForReactorID:v4 block:v8];
  }
}

uint64_t __65__NSFilePresenterXPCMessenger__makePresenterObserveReconnection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didBegin];
  [*(a1 + 40) presentedItemDidReconnect];
  v2 = *(a1 + 32);

  return [v2 didEnd];
}

- (void)_makePresenter:(id)a3 observeUbiquityChangeWithSubitemURL:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v6 = [NSFileAccessArbiterProxy _idForReactor:a3];
  v7 = _NSFCPresenterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Making presenter %{public}@ observe ubiquity change", buf, 0xCu);
  }

  if (a4)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return;
    }

    v8 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Observe Subitem Ubiquity Change"];
    v9 = [a3 presentedItemOperationQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __82__NSFilePresenterXPCMessenger__makePresenter_observeUbiquityChangeWithSubitemURL___block_invoke;
    v13[3] = &unk_1E69F68D8;
    v13[4] = v8;
    v13[5] = a3;
    v13[6] = a4;
    v10 = v13;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return;
    }

    v11 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Observe Ubiquity Change"];
    v9 = [a3 presentedItemOperationQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__NSFilePresenterXPCMessenger__makePresenter_observeUbiquityChangeWithSubitemURL___block_invoke_2;
    v12[3] = &unk_1E69F2080;
    v12[4] = v11;
    v12[5] = a3;
    v10 = v12;
  }

  [v9 _fc_addUncancellableOperationForReactorID:v6 block:v10];
}

uint64_t __82__NSFilePresenterXPCMessenger__makePresenter_observeUbiquityChangeWithSubitemURL___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didBegin];
  [*(a1 + 40) presentedSubitemUbiquityDidChangeAtURL:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 didEnd];
}

uint64_t __82__NSFilePresenterXPCMessenger__makePresenter_observeUbiquityChangeWithSubitemURL___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) didBegin];
  [*(a1 + 40) presentedItemUbiquityDidChange];
  v2 = *(a1 + 32);

  return [v2 didEnd];
}

- (void)_makePresenter:(id)a3 observeSharingChangeWithSubitemURL:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v6 = [NSFileAccessArbiterProxy _idForReactor:a3];
  v7 = _NSFCPresenterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Making presenter %{public}@ observe sharing change", buf, 0xCu);
  }

  if (a4)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return;
    }

    v8 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Observe Subitem Sharing Change"];
    v9 = [a3 presentedItemOperationQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __81__NSFilePresenterXPCMessenger__makePresenter_observeSharingChangeWithSubitemURL___block_invoke;
    v13[3] = &unk_1E69F68D8;
    v13[4] = v8;
    v13[5] = a3;
    v13[6] = a4;
    v10 = v13;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return;
    }

    v11 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Observe Sharing Change"];
    v9 = [a3 presentedItemOperationQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __81__NSFilePresenterXPCMessenger__makePresenter_observeSharingChangeWithSubitemURL___block_invoke_2;
    v12[3] = &unk_1E69F2080;
    v12[4] = v11;
    v12[5] = a3;
    v10 = v12;
  }

  [v9 _fc_addUncancellableOperationForReactorID:v6 block:v10];
}

uint64_t __81__NSFilePresenterXPCMessenger__makePresenter_observeSharingChangeWithSubitemURL___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didBegin];
  [*(a1 + 40) presentedSubitemSharingDidChangeAtURL:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 didEnd];
}

uint64_t __81__NSFilePresenterXPCMessenger__makePresenter_observeSharingChangeWithSubitemURL___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) didBegin];
  [*(a1 + 40) presentedItemSharingDidChange];
  v2 = *(a1 + 32);

  return [v2 didEnd];
}

- (void)_makePresenter:(id)a3 observeChangeOfUbiquityAttributes:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v7 = [NSFileAccessArbiterProxy _idForReactor:a3];
  v8 = _NSFCPresenterLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = a4;
    _os_log_impl(&dword_18075C000, v8, OS_LOG_TYPE_INFO, "Making presenter %{public}@ observe ubiquity attributes change: %{public}@", buf, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Observe Ubiquity Attributes Change"];
    v10 = [a3 presentedItemOperationQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80__NSFilePresenterXPCMessenger__makePresenter_observeChangeOfUbiquityAttributes___block_invoke;
    v11[3] = &unk_1E69F68D8;
    v11[4] = v9;
    v11[5] = a3;
    v11[6] = a4;
    [v10 _fc_addUncancellableOperationForReactorID:v7 block:v11];
  }

  else if (objc_opt_respondsToSelector())
  {
    [(NSFilePresenterXPCMessenger *)self _makePresenter:a3 observeUbiquityChangeWithSubitemURL:0];
  }
}

uint64_t __80__NSFilePresenterXPCMessenger__makePresenter_observeChangeOfUbiquityAttributes___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didBegin];
  [objc_msgSend(*(a1 + 40) "presentedItemURL")];
  [*(a1 + 40) presentedItemDidChangeUbiquityAttributes:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 didEnd];
}

- (void)_makePresenter:(id)a3 observeVersionChangeOfKind:(id)a4 withClientID:(id)a5 name:(id)a6 subitemURL:(id)a7
{
  v25 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __102__NSFilePresenterXPCMessenger__makePresenter_observeVersionChangeOfKind_withClientID_name_subitemURL___block_invoke;
  v22[3] = &unk_1E69F9350;
  v22[4] = a7;
  v22[5] = a3;
  v22[6] = a5;
  v22[7] = a6;
  v12 = [NSFileAccessArbiterProxy _idForReactor:a3];
  v13 = _NSFCPresenterLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v24 = v12;
    _os_log_impl(&dword_18075C000, v13, OS_LOG_TYPE_INFO, "Making presenter %{public}@ observe version change", buf, 0xCu);
  }

  if ([a4 isEqualToString:@"added"])
  {
    if (a7)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        return;
      }

      v14 = [a3 presentedItemOperationQueue];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __102__NSFilePresenterXPCMessenger__makePresenter_observeVersionChangeOfKind_withClientID_name_subitemURL___block_invoke_592;
      v21[3] = &unk_1E69F3820;
      v21[5] = a7;
      v21[6] = v22;
      v21[4] = a3;
      v15 = v21;
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        return;
      }

      v14 = [a3 presentedItemOperationQueue];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __102__NSFilePresenterXPCMessenger__makePresenter_observeVersionChangeOfKind_withClientID_name_subitemURL___block_invoke_2;
      v20[3] = &unk_1E69F3910;
      v20[4] = a3;
      v20[5] = v22;
      v15 = v20;
    }
  }

  else if ([a4 isEqualToString:@"removed"])
  {
    if (a7)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        return;
      }

      v14 = [a3 presentedItemOperationQueue];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __102__NSFilePresenterXPCMessenger__makePresenter_observeVersionChangeOfKind_withClientID_name_subitemURL___block_invoke_3;
      v19[3] = &unk_1E69F3820;
      v19[5] = a7;
      v19[6] = v22;
      v19[4] = a3;
      v15 = v19;
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        return;
      }

      v14 = [a3 presentedItemOperationQueue];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __102__NSFilePresenterXPCMessenger__makePresenter_observeVersionChangeOfKind_withClientID_name_subitemURL___block_invoke_4;
      v18[3] = &unk_1E69F3910;
      v18[4] = a3;
      v18[5] = v22;
      v15 = v18;
    }
  }

  else
  {
    if (![a4 isEqualToString:@"resolved"])
    {
      return;
    }

    if (a7)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        return;
      }

      v14 = [a3 presentedItemOperationQueue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __102__NSFilePresenterXPCMessenger__makePresenter_observeVersionChangeOfKind_withClientID_name_subitemURL___block_invoke_5;
      v17[3] = &unk_1E69F3820;
      v17[5] = a7;
      v17[6] = v22;
      v17[4] = a3;
      v15 = v17;
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        return;
      }

      v14 = [a3 presentedItemOperationQueue];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __102__NSFilePresenterXPCMessenger__makePresenter_observeVersionChangeOfKind_withClientID_name_subitemURL___block_invoke_6;
      v16[3] = &unk_1E69F3910;
      v16[4] = a3;
      v16[5] = v22;
      v15 = v16;
    }
  }

  [v14 _fc_addUncancellableOperationForReactorID:v12 block:v15];
}

id __102__NSFilePresenterXPCMessenger__makePresenter_observeVersionChangeOfKind_withClientID_name_subitemURL___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 || (result = [*(a1 + 40) presentedItemURL], (v2 = result) != 0))
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [*(a1 + 40) _presentedItemTemporaryVersionStorageIdentifier];
    }

    else
    {
      v4 = 0;
    }

    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    return [NSFileVersion _versionOfItemAtURL:v2 forClientID:v5 name:v6 temporaryStorageIdentifier:v4 evenIfDeleted:1];
  }

  return result;
}

uint64_t __102__NSFilePresenterXPCMessenger__makePresenter_observeVersionChangeOfKind_withClientID_name_subitemURL___block_invoke_592(void *a1)
{
  result = (*(a1[6] + 16))();
  if (result)
  {
    v3 = result;
    v4 = a1[4];
    v5 = a1[5];

    return [v4 presentedSubitemAtURL:v5 didGainVersion:v3];
  }

  return result;
}

uint64_t __102__NSFilePresenterXPCMessenger__makePresenter_observeVersionChangeOfKind_withClientID_name_subitemURL___block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 32);

    return [v4 presentedItemDidGainVersion:v3];
  }

  return result;
}

uint64_t __102__NSFilePresenterXPCMessenger__makePresenter_observeVersionChangeOfKind_withClientID_name_subitemURL___block_invoke_3(void *a1)
{
  result = (*(a1[6] + 16))();
  if (result)
  {
    v3 = result;
    v4 = a1[4];
    v5 = a1[5];

    return [v4 presentedSubitemAtURL:v5 didLoseVersion:v3];
  }

  return result;
}

uint64_t __102__NSFilePresenterXPCMessenger__makePresenter_observeVersionChangeOfKind_withClientID_name_subitemURL___block_invoke_4(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 32);

    return [v4 presentedItemDidLoseVersion:v3];
  }

  return result;
}

uint64_t __102__NSFilePresenterXPCMessenger__makePresenter_observeVersionChangeOfKind_withClientID_name_subitemURL___block_invoke_5(void *a1)
{
  result = (*(a1[6] + 16))();
  if (result)
  {
    v3 = result;
    v4 = a1[4];
    v5 = a1[5];

    return [v4 presentedSubitemAtURL:v5 didResolveConflictVersion:v3];
  }

  return result;
}

uint64_t __102__NSFilePresenterXPCMessenger__makePresenter_observeVersionChangeOfKind_withClientID_name_subitemURL___block_invoke_6(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 32);

    return [v4 presentedItemDidResolveConflictVersion:v3];
  }

  return result;
}

- (void)_makePresenter:(id)a3 setLastPresentedItemEventIdentifier:(unint64_t)a4
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v6 = [NSFileAccessArbiterProxy _idForReactor:a3];
  v7 = _NSFCPresenterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v11 = v6;
    v12 = 2048;
    v13 = a4;
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Making presenter %{public}@ setLastPresentedItemIdentifier: %llu", buf, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [a3 presentedItemOperationQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__NSFilePresenterXPCMessenger__makePresenter_setLastPresentedItemEventIdentifier___block_invoke;
    v9[3] = &unk_1E69F4618;
    v9[4] = a3;
    v9[5] = a4;
    [v8 _fc_addUncancellableOperationForReactorID:v6 block:v9];
  }
}

- (void)_makePresenter:(id)a3 setProviderPurposeIdentifier:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [NSFileAccessArbiterProxy _idForReactor:?];
  v7 = _NSFCPresenterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = a4;
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Making presenter %{public}@ setProviderPurposeIdentifier: %{public}@", buf, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [a3 presentedItemOperationQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __75__NSFilePresenterXPCMessenger__makePresenter_setProviderPurposeIdentifier___block_invoke;
    v9[3] = &unk_1E69F2080;
    v9[4] = a3;
    v9[5] = a4;
    [v8 _fc_addUncancellableOperationForReactorID:v6 block:v9];
  }
}

- (id)_readRelinquishment
{
  dispatch_assert_queue_V2(self->_queue);
  AssociatedObject = objc_getAssociatedObject(self->_filePresenter, "NSFilePresenterReadRelinquishment");
  if (!AssociatedObject)
  {
    AssociatedObject = objc_alloc_init(NSFilePresenterRelinquishment);
    objc_setAssociatedObject(self->_filePresenter, "NSFilePresenterReadRelinquishment", AssociatedObject, 0x301);
  }

  v4 = AssociatedObject;

  return v4;
}

- (id)_writeRelinquishment
{
  dispatch_assert_queue_V2(self->_queue);
  AssociatedObject = objc_getAssociatedObject(self->_filePresenter, "NSFilePresenterWriteRelinquishment");
  if (!AssociatedObject)
  {
    AssociatedObject = objc_alloc_init(NSFilePresenterRelinquishment);
    objc_setAssociatedObject(self->_filePresenter, "NSFilePresenterWriteRelinquishment", AssociatedObject, 0x301);
  }

  v4 = AssociatedObject;

  return v4;
}

- (void)_makePresenter:(id)a3 relinquishToAccessClaimWithID:(id)a4 purposeID:(id)a5 ifNecessaryUsingSelector:(SEL)a6 recordingRelinquishment:(id)a7 continuer:(id)a8
{
  v16[10] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __145__NSFilePresenterXPCMessenger__makePresenter_relinquishToAccessClaimWithID_purposeID_ifNecessaryUsingSelector_recordingRelinquishment_continuer___block_invoke;
    v16[3] = &unk_1E69F9418;
    v16[4] = self;
    v16[5] = a3;
    v16[6] = a4;
    v16[7] = a5;
    v16[8] = a7;
    v16[9] = a6;
    [a7 performRelinquishmentToAccessClaimIfNecessary:a4 usingBlock:v16 withReply:a8];
  }

  else
  {
    v15 = *(a8 + 2);

    v15(a8);
  }
}

uint64_t __145__NSFilePresenterXPCMessenger__makePresenter_relinquishToAccessClaimWithID_purposeID_ifNecessaryUsingSelector_recordingRelinquishment_continuer___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  v4 = [NSFileAccessArbiterProxy _idForReactor:*(a1 + 40)];
  v5 = _NSFCPresenterLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    Name = sel_getName(*(a1 + 72));
    *buf = 138543874;
    v17 = v4;
    v18 = 2114;
    v19 = v6;
    v20 = 2082;
    v21 = Name;
    _os_log_impl(&dword_18075C000, v5, OS_LOG_TYPE_DEFAULT, "Asking presenter %{public}@ to relinquish to claim %{public}@ via %{public}s", buf, 0x20u);
  }

  v8 = [*(a1 + 40) presentedItemOperationQueue];
  v9 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:*(a1 + 40) withDescription:@"Relinquish"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __145__NSFilePresenterXPCMessenger__makePresenter_relinquishToAccessClaimWithID_purposeID_ifNecessaryUsingSelector_recordingRelinquishment_continuer___block_invoke_614;
  v15[3] = &unk_1E69F93F0;
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v15[4] = v9;
  v15[5] = v10;
  v12 = *(a1 + 72);
  v15[11] = a2;
  v15[12] = v12;
  v13 = *(a1 + 32);
  v15[6] = *(a1 + 40);
  v15[7] = v4;
  v15[8] = v13;
  v15[9] = v11;
  v15[10] = v8;
  return [v8 _fc_addUncancellableOperationForReactorID:v4 block:v15];
}

uint64_t __145__NSFilePresenterXPCMessenger__makePresenter_relinquishToAccessClaimWithID_purposeID_ifNecessaryUsingSelector_recordingRelinquishment_continuer___block_invoke_614(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) didBegin];
  [NSFileCoordinator _setCurrentClaimPurposeIdentifier:*(a1 + 40)];
  v2 = *(a1 + 96);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v3 = *(a1 + 80);
  v8 = *(a1 + 64);
  v7[2] = __145__NSFilePresenterXPCMessenger__makePresenter_relinquishToAccessClaimWithID_purposeID_ifNecessaryUsingSelector_recordingRelinquishment_continuer___block_invoke_2;
  v7[3] = &unk_1E69F93C8;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7[4] = *(a1 + 56);
  v7[5] = v5;
  v9 = v4;
  v10 = v3;
  [v4 v2];
  return [NSFileCoordinator _setCurrentClaimPurposeIdentifier:0];
}

void __145__NSFilePresenterXPCMessenger__makePresenter_relinquishToAccessClaimWithID_purposeID_ifNecessaryUsingSelector_recordingRelinquishment_continuer___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = _NSFCPresenterLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v17 = v5;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "Presenter %{public}@ relinquished", buf, 0xCu);
  }

  [*(a1 + 40) willEnd];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v6 = *(a1 + 64);
  v7 = *(*(a1 + 48) + 16);
  v10 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
  v9[2] = __145__NSFilePresenterXPCMessenger__makePresenter_relinquishToAccessClaimWithID_purposeID_ifNecessaryUsingSelector_recordingRelinquishment_continuer___block_invoke_615;
  v9[3] = &unk_1E69F93A0;
  v8 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v6;
  v13 = v8;
  v14 = a2;
  v15 = *(a1 + 80);
  dispatch_async(v7, v9);
}

uint64_t __145__NSFilePresenterXPCMessenger__makePresenter_relinquishToAccessClaimWithID_purposeID_ifNecessaryUsingSelector_recordingRelinquishment_continuer___block_invoke_615(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __145__NSFilePresenterXPCMessenger__makePresenter_relinquishToAccessClaimWithID_purposeID_ifNecessaryUsingSelector_recordingRelinquishment_continuer___block_invoke_2_616;
    v6[3] = &unk_1E69F7CA0;
    v4 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = v4;
    v9 = v2;
    [v3 setReacquirer:v6];
  }

  [*(a1 + 72) didEnd];
  return (*(*(a1 + 88) + 16))();
}

uint64_t __145__NSFilePresenterXPCMessenger__makePresenter_relinquishToAccessClaimWithID_purposeID_ifNecessaryUsingSelector_recordingRelinquishment_continuer___block_invoke_2_616(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1[4] + 16));
  v4 = _NSFCPresenterLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[5];
    *buf = 138543362;
    v20 = v5;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "Telling presenter %{public}@ to reacquire", buf, 0xCu);
  }

  v6 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a1[6] withDescription:@"Reacquire"];
  v7 = a1[5];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __145__NSFilePresenterXPCMessenger__makePresenter_relinquishToAccessClaimWithID_purposeID_ifNecessaryUsingSelector_recordingRelinquishment_continuer___block_invoke_620;
  v13 = &unk_1E69F9378;
  v14 = v6;
  v15 = v7;
  v16 = a1[4];
  v17 = a2;
  v8 = a1[7];
  v18 = a1[8];
  return [v8 _fc_addUncancellableOperationForReactorID:? block:?];
}

uint64_t __145__NSFilePresenterXPCMessenger__makePresenter_relinquishToAccessClaimWithID_purposeID_ifNecessaryUsingSelector_recordingRelinquishment_continuer___block_invoke_620(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) didBegin];
  TSD = NSFileCoordinatorGetTSD();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __145__NSFilePresenterXPCMessenger__makePresenter_relinquishToAccessClaimWithID_purposeID_ifNecessaryUsingSelector_recordingRelinquishment_continuer___block_invoke_2_622;
  v5[3] = &unk_1E69F9198;
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(TSD + 16) = [NSFileCoordinatorReacquisitionBlockCompletion completionWithBlock:v5 queue:*(v3 + 16)];
  (*(*(a1 + 64) + 16))();
  [*(a1 + 32) willEnd];
  result = [*(TSD + 16) decrement];
  *(TSD + 16) = 0;
  return result;
}

uint64_t __145__NSFilePresenterXPCMessenger__makePresenter_relinquishToAccessClaimWithID_purposeID_ifNecessaryUsingSelector_recordingRelinquishment_continuer___block_invoke_2_622(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) didEnd];
  v2 = _NSFCPresenterLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "Presenter %{public}@ reacquired", &v5, 0xCu);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)_makePresenter:(id)a3 relinquishToReadingClaimWithID:(id)a4 purposeID:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7
{
  v8 = a6;
  v18[5] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v13 = v18;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __113__NSFilePresenterXPCMessenger__makePresenter_relinquishToReadingClaimWithID_purposeID_options_completionHandler___block_invoke;
  v18[3] = &unk_1E69F40C0;
  v18[4] = a7;
  if ((v8 & 1) == 0)
  {
    if ((v8 & 0x10000) != 0)
    {
      v13 = v17;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v14 = __113__NSFilePresenterXPCMessenger__makePresenter_relinquishToReadingClaimWithID_purposeID_options_completionHandler___block_invoke_2;
    }

    else
    {
      v13 = &v15;
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v14 = __113__NSFilePresenterXPCMessenger__makePresenter_relinquishToReadingClaimWithID_purposeID_options_completionHandler___block_invoke_4;
    }

    v13[2] = v14;
    v13[3] = &unk_1E69F9198;
    v13[4] = self;
    v13[5] = a3;
    v13[6] = a7;
  }

  [(NSFilePresenterXPCMessenger *)self _makePresenter:a3 relinquishToAccessClaimWithID:a4 purposeID:a5 ifNecessaryUsingSelector:sel_relinquishPresentedItemToReader_ recordingRelinquishment:[(NSFilePresenterXPCMessenger *)self _readRelinquishment:v15] continuer:v13];
}

uint64_t __113__NSFilePresenterXPCMessenger__makePresenter_relinquishToReadingClaimWithID_purposeID_options_completionHandler___block_invoke_2(uint64_t a1)
{
  v3[7] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __113__NSFilePresenterXPCMessenger__makePresenter_relinquishToReadingClaimWithID_purposeID_options_completionHandler___block_invoke_3;
  v3[3] = &unk_1E69F9440;
  v3[4] = v1;
  return [v1 _makePresenter:*(a1 + 40) reportUnsavedChangesWithCompletionHandler:v3];
}

uint64_t __113__NSFilePresenterXPCMessenger__makePresenter_relinquishToReadingClaimWithID_purposeID_options_completionHandler___block_invoke_3(void *a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 BOOLValue];
    v4 = a1[6];
    if (v3)
    {
      v5 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
      v6 = *(v4 + 16);
      v7 = v4;
    }

    else
    {
      v6 = *(v4 + 16);
      v7 = v4;
      v5 = 0;
    }

    return v6(v7, v5);
  }

  else
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];

    return [v8 _makePresenter:v9 saveChangesWithCompletionHandler:v10];
  }
}

- (void)_makePresenter:(id)a3 relinquishToWritingClaimWithID:(id)a4 options:(unint64_t)a5 purposeID:(id)a6 subitemURL:(id)a7 completionHandler:(id)a8
{
  v34[5] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v15 = v34;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __124__NSFilePresenterXPCMessenger__makePresenter_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke;
  v34[3] = &unk_1E69F40C0;
  v34[4] = a8;
  if ((a5 & 4) != 0)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __124__NSFilePresenterXPCMessenger__makePresenter_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke_2;
    v33[3] = &unk_1E69F9198;
    v33[4] = self;
    v33[5] = a3;
    v33[6] = a8;
    v15 = [v33 copy];
  }

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 1;
  if ((a5 & 9) != 0)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __124__NSFilePresenterXPCMessenger__makePresenter_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke_3;
    v30[3] = &unk_1E69F9468;
    v30[7] = a8;
    v30[8] = v31;
    v30[4] = self;
    v30[5] = a3;
    v30[6] = a7;
    v15 = [v30 copy];
  }

  if ((a5 & 0x100000) != 0)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __124__NSFilePresenterXPCMessenger__makePresenter_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke_4;
    v29[3] = &unk_1E69F5E10;
    v29[4] = self;
    v29[5] = a3;
    v29[6] = a7;
    v29[7] = a8;
    v15 = [v29 copy];
  }

  if ((a5 & 0x10000) != 0)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __124__NSFilePresenterXPCMessenger__makePresenter_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke_5;
    v28[3] = &unk_1E69F94B8;
    v28[4] = self;
    v28[5] = a3;
    v28[6] = a8;
    v28[7] = a5;
    v15 = [v28 copy];
  }

  v16 = [(NSFilePresenterXPCMessenger *)self _writeRelinquishment];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v20 = __124__NSFilePresenterXPCMessenger__makePresenter_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke_7;
  v21 = &unk_1E69F8328;
  v22 = self;
  v23 = a3;
  v24 = a4;
  v25 = a6;
  v26 = v16;
  v27 = v15;
  if (a5)
  {
    if ([a6 isEqualToString:@"com.apple.icloud.drive"] & 1) != 0 || (objc_msgSend(a6, "isEqualToString:", @"com.apple.bird"))
    {
      filePresenter = self->_filePresenter;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __124__NSFilePresenterXPCMessenger__makePresenter_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke_8;
      v18[3] = &unk_1E69F94E0;
      v18[6] = v31;
      v18[4] = self;
      v18[5] = v19;
      [(NSFilePresenterXPCMessenger *)self _makePresenter:filePresenter validateRemoteDeletionRecordingRelinquishment:v16 completionHandler:v18];
    }

    else
    {
      v20(v19);
    }
  }

  else
  {
    __124__NSFilePresenterXPCMessenger__makePresenter_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke_7(v19);
  }

  _Block_object_dispose(v31, 8);
}

uint64_t __124__NSFilePresenterXPCMessenger__makePresenter_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) URL];
    v5 = *(a1 + 56);

    return [v2 _makePresenter:v3 accommodateDeletionWithSubitemURL:v4 completionHandler:v5];
  }

  else
  {
    v7 = *(*(a1 + 56) + 16);

    return v7();
  }
}

uint64_t __124__NSFilePresenterXPCMessenger__makePresenter_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) URL];
  v5 = *(a1 + 56);

  return [v2 _makePresenter:v3 accommodateEvictionWithSubitemURL:v4 completionHandler:v5];
}

uint64_t __124__NSFilePresenterXPCMessenger__makePresenter_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if ((*(a1 + 56) & 4) != 0)
  {
    return [v2 _makePresenter:MEMORY[0x1E69E9820] saveChangesWithCompletionHandler:{3221225472, __124__NSFilePresenterXPCMessenger__makePresenter_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke_6, &unk_1E69F9490, v2, v3, *(a1 + 48)}];
  }

  v4 = *(a1 + 48);

  return [v2 _makePresenter:v3 accommodateDisconnectionWithCompletionHandler:v4];
}

uint64_t __124__NSFilePresenterXPCMessenger__makePresenter_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) _makePresenter:*(a1 + 40) accommodateDisconnectionWithCompletionHandler:*(a1 + 48)];
  }
}

uint64_t __124__NSFilePresenterXPCMessenger__makePresenter_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke_7(void *a1)
{
  dispatch_assert_queue_V2(*(a1[4] + 16));
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];

  return [v2 _makePresenter:v3 relinquishToAccessClaimWithID:v4 purposeID:v5 ifNecessaryUsingSelector:sel_relinquishPresentedItemToWriter_ recordingRelinquishment:v6 continuer:v7];
}

- (void)_makePresenter:(id)a3 validateRelinquishmentToSubitemAtURL:(id)a4 completionHandler:(id)a5
{
  v13[10] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (a4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [NSFileAccessArbiterProxy _idForReactor:a3];
    v10 = [NSFileAccessArbiterProxy _willBeginOperationForReactor:a3 withDescription:@"Validate Subitem Relinquishment"];
    v11 = [a3 presentedItemOperationQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __101__NSFilePresenterXPCMessenger__makePresenter_validateRelinquishmentToSubitemAtURL_completionHandler___block_invoke;
    v13[3] = &unk_1E69F8328;
    v13[4] = v9;
    v13[5] = a4;
    v13[6] = v10;
    v13[7] = a3;
    v13[8] = self;
    v13[9] = a5;
    [v11 _fc_addUncancellableOperationForReactorID:v9 block:v13];
  }

  else
  {
    v12 = *(a5 + 2);

    v12(a5, 1);
  }
}

void __101__NSFilePresenterXPCMessenger__makePresenter_validateRelinquishmentToSubitemAtURL_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = _NSFCPresenterLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543619;
    v14 = v3;
    v15 = 2113;
    v16 = v4;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "Making presenter %{public}@ validate subitem relinquishment for URL: %{private}@", buf, 0x16u);
  }

  [*(a1 + 48) didBegin];
  v5 = [*(a1 + 56) shouldRelinquishToWriterOfSubitemAtURL:*(a1 + 40)];
  v6 = _NSFCPresenterLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "NO";
    v8 = *(a1 + 32);
    if (v5)
    {
      v7 = "YES";
    }

    *buf = 138543618;
    v14 = v8;
    v15 = 2080;
    v16 = v7;
    _os_log_impl(&dword_18075C000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ finished validate subitem relinquishment with reply: %s", buf, 0x16u);
  }

  [*(a1 + 48) willEnd];
  v9 = *(*(a1 + 64) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__NSFilePresenterXPCMessenger__makePresenter_validateRelinquishmentToSubitemAtURL_completionHandler___block_invoke_640;
  block[3] = &unk_1E69F92D8;
  v10 = *(a1 + 72);
  block[4] = *(a1 + 48);
  block[5] = v10;
  v12 = v5;
  dispatch_async(v9, block);
}

uint64_t __101__NSFilePresenterXPCMessenger__makePresenter_validateRelinquishmentToSubitemAtURL_completionHandler___block_invoke_640(uint64_t a1)
{
  [*(a1 + 32) didEnd];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

@end