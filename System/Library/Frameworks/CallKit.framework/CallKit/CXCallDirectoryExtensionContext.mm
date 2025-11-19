@interface CXCallDirectoryExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (BOOL)isIncremental;
- (CXCallDirectoryExtensionContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5;
- (CXCallDirectoryMutableLabeledPhoneNumberEntryData)pendingIdentificationEntryDataForAddition;
- (CXCallDirectoryMutablePhoneNumberEntryData)pendingBlockingEntryData;
- (CXCallDirectoryMutablePhoneNumberEntryData)pendingIdentificationEntryDataForRemoval;
- (id)delegate;
- (void)_flushPendingBlockingEntryData;
- (void)_flushPendingIdentificationEntryData;
- (void)_performBlockIfIncremental:(id)a3 usingSelectorForExceptionMessage:(SEL)a4;
- (void)appendBlockingEntryPhoneNumber:(int64_t)a3 changeType:(int64_t)a4;
- (void)appendIdentificationEntryForAdditionWithPhoneNumber:(int64_t)a3 label:(id)a4;
- (void)appendIdentificationEntryForRemovalWithPhoneNumber:(int64_t)a3;
- (void)completeRequestWithCompletionHandler:(void *)completion;
- (void)removeAllBlockingEntries;
- (void)removeAllIdentificationEntries;
- (void)removeBlockingEntryWithPhoneNumber:(CXCallDirectoryPhoneNumber)phoneNumber;
- (void)removeIdentificationEntryWithPhoneNumber:(CXCallDirectoryPhoneNumber)phoneNumber;
- (void)requestFailedWithError:(id)a3 reply:(id)a4;
@end

@implementation CXCallDirectoryExtensionContext

- (CXCallDirectoryExtensionContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5
{
  v12.receiver = self;
  v12.super_class = CXCallDirectoryExtensionContext;
  v5 = [(CXCallDirectoryExtensionContext *)&v12 initWithInputItems:a3 listenerEndpoint:a4 contextUUID:a5];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83__CXCallDirectoryExtensionContext_initWithInputItems_listenerEndpoint_contextUUID___block_invoke;
    v9[3] = &unk_1E7C07780;
    objc_copyWeak(&v10, &location);
    v6 = MEMORY[0x1B8C78C60](v9);
    remoteObjectProxyGenerator = v5->_remoteObjectProxyGenerator;
    v5->_remoteObjectProxyGenerator = v6;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v5;
}

id __83__CXCallDirectoryExtensionContext_initWithInputItems_listenerEndpoint_contextUUID___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a3)
    {
      if (!v5)
      {
        v5 = &__block_literal_global_13;
      }

      v8 = [WeakRetained _auxiliaryConnection];
      v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v5];
    }

    else
    {
      v11 = [WeakRetained _auxiliaryConnection];
      v8 = v11;
      if (v5)
      {
        [v11 remoteObjectProxyWithErrorHandler:v5];
      }

      else
      {
        [v11 remoteObjectProxy];
      }
      v9 = ;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __83__CXCallDirectoryExtensionContext_initWithInputItems_listenerEndpoint_contextUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CXDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__CXCallDirectoryExtensionHostContext_requestFailedWithError_completion___block_invoke_cold_1(v2, v3);
  }
}

- (CXCallDirectoryMutablePhoneNumberEntryData)pendingBlockingEntryData
{
  pendingBlockingEntryData = self->_pendingBlockingEntryData;
  if (!pendingBlockingEntryData)
  {
    v4 = [[CXCallDirectoryMutablePhoneNumberEntryData alloc] initWithCapacity:10000];
    v5 = self->_pendingBlockingEntryData;
    self->_pendingBlockingEntryData = v4;

    pendingBlockingEntryData = self->_pendingBlockingEntryData;
  }

  return pendingBlockingEntryData;
}

- (CXCallDirectoryMutableLabeledPhoneNumberEntryData)pendingIdentificationEntryDataForAddition
{
  pendingIdentificationEntryDataForAddition = self->_pendingIdentificationEntryDataForAddition;
  if (!pendingIdentificationEntryDataForAddition)
  {
    v4 = [[CXCallDirectoryMutableLabeledPhoneNumberEntryData alloc] initWithCapacity:10000];
    v5 = self->_pendingIdentificationEntryDataForAddition;
    self->_pendingIdentificationEntryDataForAddition = v4;

    pendingIdentificationEntryDataForAddition = self->_pendingIdentificationEntryDataForAddition;
  }

  return pendingIdentificationEntryDataForAddition;
}

- (CXCallDirectoryMutablePhoneNumberEntryData)pendingIdentificationEntryDataForRemoval
{
  pendingIdentificationEntryDataForRemoval = self->_pendingIdentificationEntryDataForRemoval;
  if (!pendingIdentificationEntryDataForRemoval)
  {
    v4 = [[CXCallDirectoryMutablePhoneNumberEntryData alloc] initWithCapacity:10000];
    v5 = self->_pendingIdentificationEntryDataForRemoval;
    self->_pendingIdentificationEntryDataForRemoval = v4;

    pendingIdentificationEntryDataForRemoval = self->_pendingIdentificationEntryDataForRemoval;
  }

  return pendingIdentificationEntryDataForRemoval;
}

- (void)appendBlockingEntryPhoneNumber:(int64_t)a3 changeType:(int64_t)a4
{
  if ([(CXCallDirectoryExtensionContext *)self pendingBlockingEntryChangeType]!= a4)
  {
    v7 = [(CXCallDirectoryExtensionContext *)self pendingBlockingEntryData];
    v8 = [v7 count];

    if (v8)
    {
      [(CXCallDirectoryExtensionContext *)self _flushPendingBlockingEntryData];
    }

    [(CXCallDirectoryExtensionContext *)self setPendingBlockingEntryChangeType:a4];
  }

  v9 = [(CXCallDirectoryExtensionContext *)self pendingBlockingEntryData];
  [v9 appendPhoneNumber:a3];

  v10 = [(CXCallDirectoryExtensionContext *)self pendingBlockingEntryData];
  v11 = [v10 count];

  if (v11 >> 4 >= 0x271)
  {

    [(CXCallDirectoryExtensionContext *)self _flushPendingBlockingEntryData];
  }
}

- (void)appendIdentificationEntryForAdditionWithPhoneNumber:(int64_t)a3 label:(id)a4
{
  v6 = a4;
  if ([(CXCallDirectoryExtensionContext *)self pendingIdentificationEntryChangeType])
  {
    v7 = [(CXCallDirectoryExtensionContext *)self pendingIdentificationEntryDataForAddition];
    v8 = [v7 count];
    v9 = [(CXCallDirectoryExtensionContext *)self pendingIdentificationEntryDataForRemoval];
    v10 = [v9 count];

    if (v8 + v10)
    {
      [(CXCallDirectoryExtensionContext *)self _flushPendingIdentificationEntryData];
    }

    [(CXCallDirectoryExtensionContext *)self setPendingIdentificationEntryChangeType:0];
  }

  v11 = [(CXCallDirectoryExtensionContext *)self pendingIdentificationEntryDataForAddition];
  [v11 appendPhoneNumber:a3 label:v6];

  v12 = [(CXCallDirectoryExtensionContext *)self pendingIdentificationEntryDataForAddition];
  v13 = [v12 count];

  if (v13 >> 4 >= 0x271)
  {

    [(CXCallDirectoryExtensionContext *)self _flushPendingIdentificationEntryData];
  }
}

- (void)appendIdentificationEntryForRemovalWithPhoneNumber:(int64_t)a3
{
  if ([(CXCallDirectoryExtensionContext *)self pendingIdentificationEntryChangeType]!= 1)
  {
    v5 = [(CXCallDirectoryExtensionContext *)self pendingIdentificationEntryDataForAddition];
    v6 = [v5 count];
    v7 = [(CXCallDirectoryExtensionContext *)self pendingIdentificationEntryDataForRemoval];
    v8 = [v7 count];

    if (v6 + v8)
    {
      [(CXCallDirectoryExtensionContext *)self _flushPendingIdentificationEntryData];
    }

    [(CXCallDirectoryExtensionContext *)self setPendingIdentificationEntryChangeType:1];
  }

  v9 = [(CXCallDirectoryExtensionContext *)self pendingIdentificationEntryDataForRemoval];
  [v9 appendPhoneNumber:a3];

  v10 = [(CXCallDirectoryExtensionContext *)self pendingIdentificationEntryDataForRemoval];
  v11 = [v10 count];

  if (v11 >> 4 >= 0x271)
  {

    [(CXCallDirectoryExtensionContext *)self _flushPendingIdentificationEntryData];
  }
}

- (void)_flushPendingBlockingEntryData
{
  v3 = [(CXCallDirectoryExtensionContext *)self pendingBlockingEntryData];
  v6 = [v3 copy];

  [(CXCallDirectoryExtensionContext *)self setPendingBlockingEntryData:0];
  v4 = [(CXCallDirectoryExtensionContext *)self _remoteObjectProxyWithErrorHandler:0 synchronous:1];
  v5 = [(CXCallDirectoryExtensionContext *)self pendingBlockingEntryChangeType];
  if (v5 == 1)
  {
    [v4 removeBlockingEntriesWithData:v6 reply:&__block_literal_global_7_0];
  }

  else if (!v5)
  {
    [v4 addBlockingEntriesWithData:v6 reply:&__block_literal_global_5];
  }
}

- (void)_flushPendingIdentificationEntryData
{
  v7 = [(CXCallDirectoryExtensionContext *)self _remoteObjectProxyWithErrorHandler:0 synchronous:1];
  v3 = [(CXCallDirectoryExtensionContext *)self pendingIdentificationEntryChangeType];
  if (v3 == 1)
  {
    v6 = [(CXCallDirectoryExtensionContext *)self pendingIdentificationEntryDataForRemoval];
    v5 = [v6 copy];

    [(CXCallDirectoryExtensionContext *)self setPendingIdentificationEntryDataForRemoval:0];
    [v7 removeIdentificationEntriesWithData:v5 reply:&__block_literal_global_11];
  }

  else
  {
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = [(CXCallDirectoryExtensionContext *)self pendingIdentificationEntryDataForAddition];
    v5 = [v4 copy];

    [(CXCallDirectoryExtensionContext *)self setPendingIdentificationEntryDataForAddition:0];
    [v7 addIdentificationEntriesWithData:v5 reply:&__block_literal_global_9_1];
  }

LABEL_6:
}

- (BOOL)isIncremental
{
  if (![(CXCallDirectoryExtensionContext *)self hasQueriedIsIncremental])
  {
    v3 = [(CXCallDirectoryExtensionContext *)self _remoteObjectProxyWithErrorHandler:0 synchronous:1];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__CXCallDirectoryExtensionContext_isIncremental__block_invoke;
    v5[3] = &unk_1E7C077A8;
    v5[4] = self;
    [v3 isIncrementalLoadingAllowed:v5];
  }

  return self->_incremental;
}

void __48__CXCallDirectoryExtensionContext_isIncremental__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = CXDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __48__CXCallDirectoryExtensionContext_isIncremental__block_invoke_cold_1(v5, v6);
    }
  }

  else
  {
    [*(a1 + 32) setHasQueriedIsIncremental:1];
    *(*(a1 + 32) + 24) = a2;
  }
}

- (void)_performBlockIfIncremental:(id)a3 usingSelectorForExceptionMessage:(SEL)a4
{
  v9 = a3;
  if ([(CXCallDirectoryExtensionContext *)self isIncremental])
  {
    v9[2]();
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D930];
    v8 = NSStringFromSelector(a4);
    [v6 raise:v7 format:{@"Calling %@ when isIncremental is false is unsupported", v8}];
  }
}

- (void)removeBlockingEntryWithPhoneNumber:(CXCallDirectoryPhoneNumber)phoneNumber
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__CXCallDirectoryExtensionContext_removeBlockingEntryWithPhoneNumber___block_invoke;
  v3[3] = &unk_1E7C077D0;
  v3[4] = self;
  v3[5] = phoneNumber;
  [(CXCallDirectoryExtensionContext *)self _performBlockIfIncremental:v3 usingSelectorForExceptionMessage:a2];
}

- (void)removeAllBlockingEntries
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __59__CXCallDirectoryExtensionContext_removeAllBlockingEntries__block_invoke;
  v2[3] = &unk_1E7C06CA8;
  v2[4] = self;
  [(CXCallDirectoryExtensionContext *)self _performBlockIfIncremental:v2 usingSelectorForExceptionMessage:a2];
}

void __59__CXCallDirectoryExtensionContext_removeAllBlockingEntries__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingBlockingEntryData];
  v3 = [v2 count];

  if (v3)
  {
    [*(a1 + 32) _flushPendingBlockingEntryData];
  }

  v4 = [*(a1 + 32) _remoteObjectProxyWithErrorHandler:0 synchronous:1];
  [v4 removeAllBlockingEntriesWithReply:&__block_literal_global_16];
}

- (void)removeIdentificationEntryWithPhoneNumber:(CXCallDirectoryPhoneNumber)phoneNumber
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__CXCallDirectoryExtensionContext_removeIdentificationEntryWithPhoneNumber___block_invoke;
  v3[3] = &unk_1E7C077D0;
  v3[4] = self;
  v3[5] = phoneNumber;
  [(CXCallDirectoryExtensionContext *)self _performBlockIfIncremental:v3 usingSelectorForExceptionMessage:a2];
}

- (void)removeAllIdentificationEntries
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __65__CXCallDirectoryExtensionContext_removeAllIdentificationEntries__block_invoke;
  v2[3] = &unk_1E7C06CA8;
  v2[4] = self;
  [(CXCallDirectoryExtensionContext *)self _performBlockIfIncremental:v2 usingSelectorForExceptionMessage:a2];
}

void __65__CXCallDirectoryExtensionContext_removeAllIdentificationEntries__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingIdentificationEntryDataForAddition];
  v3 = [v2 count];
  v4 = [*(a1 + 32) pendingIdentificationEntryDataForRemoval];
  v5 = [v4 count];

  if (v3 + v5)
  {
    [*(a1 + 32) _flushPendingIdentificationEntryData];
  }

  v6 = [*(a1 + 32) _remoteObjectProxyWithErrorHandler:0 synchronous:1];
  [v6 removeAllIdentificationEntriesWithReply:&__block_literal_global_18_0];
}

- (void)completeRequestWithCompletionHandler:(void *)completion
{
  v4 = completion;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, &unk_1B486C3FA, buf, 2u);
  }

  v6 = [(CXCallDirectoryExtensionContext *)self pendingBlockingEntryData];
  v7 = [v6 count];

  if (v7)
  {
    [(CXCallDirectoryExtensionContext *)self _flushPendingBlockingEntryData];
  }

  v8 = [(CXCallDirectoryExtensionContext *)self pendingIdentificationEntryDataForAddition];
  v9 = [v8 count];
  v10 = [(CXCallDirectoryExtensionContext *)self pendingIdentificationEntryDataForRemoval];
  v11 = [v10 count];

  if (v9 + v11)
  {
    [(CXCallDirectoryExtensionContext *)self _flushPendingIdentificationEntryData];
  }

  v12 = [(CXCallDirectoryExtensionContext *)self _remoteObjectProxyWithErrorHandler:0 synchronous:0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__CXCallDirectoryExtensionContext_completeRequestWithCompletionHandler___block_invoke;
  v14[3] = &unk_1E7C073B0;
  v14[4] = self;
  v15 = v4;
  v13 = v4;
  [v12 completeRequestWithReply:v14];
}

id __72__CXCallDirectoryExtensionContext_completeRequestWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CXCallDirectoryExtensionContext;
  return objc_msgSendSuper2(&v3, sel_completeRequestReturningItems_completionHandler_, 0, v1);
}

- (void)requestFailedWithError:(id)a3 reply:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "request failed with error: %@", &v11, 0xCu);
  }

  v9 = [(CXCallDirectoryExtensionContext *)self delegate];
  [v9 requestFailedForExtensionContext:self withError:v6];

  v7[2](v7);
  v10 = *MEMORY[0x1E69E9840];
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken_1 != -1)
  {
    +[CXCallDirectoryExtensionContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol_interface_1;

  return v3;
}

uint64_t __68__CXCallDirectoryExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol_interface_1 = [MEMORY[0x1E696B0D0] cx_callDirectoryProviderVendorInterface];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken_1 != -1)
  {
    +[CXCallDirectoryExtensionContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol_interface_1;

  return v3;
}

uint64_t __66__CXCallDirectoryExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol_interface_1 = [MEMORY[0x1E696B0D0] cx_callDirectoryProviderHostInterface];

  return MEMORY[0x1EEE66BB8]();
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __48__CXCallDirectoryExtensionContext_isIncremental__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Error querying is incremental loading allowed: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end