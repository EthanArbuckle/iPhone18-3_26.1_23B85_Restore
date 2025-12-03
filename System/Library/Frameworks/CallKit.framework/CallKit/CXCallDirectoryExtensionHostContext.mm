@interface CXCallDirectoryExtensionHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (CXCallDirectoryExtensionHostContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
- (CXCallDirectoryProviderHostProtocol)delegate;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (void)activate;
- (void)addBlockingEntriesWithData:(id)data reply:(id)reply;
- (void)addIdentificationEntriesWithData:(id)data reply:(id)reply;
- (void)completeRequestWithReply:(id)reply;
- (void)dealloc;
- (void)isIncrementalLoadingAllowed:(id)allowed;
- (void)removeAllBlockingEntriesWithReply:(id)reply;
- (void)removeAllIdentificationEntriesWithReply:(id)reply;
- (void)removeBlockingEntriesWithData:(id)data reply:(id)reply;
- (void)removeIdentificationEntriesWithData:(id)data reply:(id)reply;
- (void)requestFailedWithError:(id)error completion:(id)completion;
@end

@implementation CXCallDirectoryExtensionHostContext

- (CXCallDirectoryExtensionHostContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v10.receiver = self;
  v10.super_class = CXCallDirectoryExtensionHostContext;
  v5 = [(CXCallDirectoryExtensionHostContext *)&v10 initWithInputItems:items listenerEndpoint:endpoint contextUUID:d];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_initially_inactive(0);
    v7 = dispatch_queue_create("com.apple.callkit.calldirectoryextensionhostcontext", v6);
    queue = v5->_queue;
    v5->_queue = v7;
  }

  return v5;
}

- (void)activate
{
  v3 = CXDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B47F3000, v3, OS_LOG_TYPE_DEFAULT, &unk_1B486C3FA, v5, 2u);
  }

  queue = [(CXCallDirectoryExtensionHostContext *)self queue];
  dispatch_activate(queue);
}

- (void)dealloc
{
  [(CXCallDirectoryExtensionHostContext *)self activate];
  v3.receiver = self;
  v3.super_class = CXCallDirectoryExtensionHostContext;
  [(CXCallDirectoryExtensionHostContext *)&v3 dealloc];
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _auxiliaryConnection = [(CXCallDirectoryExtensionHostContext *)self _auxiliaryConnection];
  v6 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (void)requestFailedWithError:(id)error completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__CXCallDirectoryExtensionHostContext_requestFailedWithError_completion___block_invoke;
  v10[3] = &unk_1E7C07230;
  v11 = completionCopy;
  v7 = completionCopy;
  errorCopy = error;
  v9 = [(CXCallDirectoryExtensionHostContext *)self remoteObjectProxyWithErrorHandler:v10];
  [v9 requestFailedWithError:errorCopy reply:v7];
}

void __73__CXCallDirectoryExtensionHostContext_requestFailedWithError_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__CXCallDirectoryExtensionHostContext_requestFailedWithError_completion___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)isIncrementalLoadingAllowed:(id)allowed
{
  allowedCopy = allowed;
  queue = [(CXCallDirectoryExtensionHostContext *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__CXCallDirectoryExtensionHostContext_isIncrementalLoadingAllowed___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = allowedCopy;
  v6 = allowedCopy;
  dispatch_async(queue, v7);
}

void __67__CXCallDirectoryExtensionHostContext_isIncrementalLoadingAllowed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 isIncrementalLoadingAllowed:*(a1 + 40)];
}

- (void)addBlockingEntriesWithData:(id)data reply:(id)reply
{
  dataCopy = data;
  replyCopy = reply;
  queue = [(CXCallDirectoryExtensionHostContext *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__CXCallDirectoryExtensionHostContext_addBlockingEntriesWithData_reply___block_invoke;
  block[3] = &unk_1E7C06D20;
  block[4] = self;
  v12 = dataCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = dataCopy;
  dispatch_async(queue, block);
}

void __72__CXCallDirectoryExtensionHostContext_addBlockingEntriesWithData_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 addBlockingEntriesWithData:*(a1 + 40) reply:*(a1 + 48)];
}

- (void)removeBlockingEntriesWithData:(id)data reply:(id)reply
{
  dataCopy = data;
  replyCopy = reply;
  queue = [(CXCallDirectoryExtensionHostContext *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__CXCallDirectoryExtensionHostContext_removeBlockingEntriesWithData_reply___block_invoke;
  block[3] = &unk_1E7C06D20;
  block[4] = self;
  v12 = dataCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = dataCopy;
  dispatch_async(queue, block);
}

void __75__CXCallDirectoryExtensionHostContext_removeBlockingEntriesWithData_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 removeBlockingEntriesWithData:*(a1 + 40) reply:*(a1 + 48)];
}

- (void)removeAllBlockingEntriesWithReply:(id)reply
{
  replyCopy = reply;
  queue = [(CXCallDirectoryExtensionHostContext *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__CXCallDirectoryExtensionHostContext_removeAllBlockingEntriesWithReply___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, v7);
}

void __73__CXCallDirectoryExtensionHostContext_removeAllBlockingEntriesWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 removeAllBlockingEntriesWithReply:*(a1 + 40)];
}

- (void)addIdentificationEntriesWithData:(id)data reply:(id)reply
{
  dataCopy = data;
  replyCopy = reply;
  queue = [(CXCallDirectoryExtensionHostContext *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__CXCallDirectoryExtensionHostContext_addIdentificationEntriesWithData_reply___block_invoke;
  block[3] = &unk_1E7C06D20;
  block[4] = self;
  v12 = dataCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = dataCopy;
  dispatch_async(queue, block);
}

void __78__CXCallDirectoryExtensionHostContext_addIdentificationEntriesWithData_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 addIdentificationEntriesWithData:*(a1 + 40) reply:*(a1 + 48)];
}

- (void)removeIdentificationEntriesWithData:(id)data reply:(id)reply
{
  dataCopy = data;
  replyCopy = reply;
  queue = [(CXCallDirectoryExtensionHostContext *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__CXCallDirectoryExtensionHostContext_removeIdentificationEntriesWithData_reply___block_invoke;
  block[3] = &unk_1E7C06D20;
  block[4] = self;
  v12 = dataCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = dataCopy;
  dispatch_async(queue, block);
}

void __81__CXCallDirectoryExtensionHostContext_removeIdentificationEntriesWithData_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 removeIdentificationEntriesWithData:*(a1 + 40) reply:*(a1 + 48)];
}

- (void)removeAllIdentificationEntriesWithReply:(id)reply
{
  replyCopy = reply;
  queue = [(CXCallDirectoryExtensionHostContext *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__CXCallDirectoryExtensionHostContext_removeAllIdentificationEntriesWithReply___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, v7);
}

void __79__CXCallDirectoryExtensionHostContext_removeAllIdentificationEntriesWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 removeAllIdentificationEntriesWithReply:*(a1 + 40)];
}

- (void)completeRequestWithReply:(id)reply
{
  replyCopy = reply;
  queue = [(CXCallDirectoryExtensionHostContext *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__CXCallDirectoryExtensionHostContext_completeRequestWithReply___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, v7);
}

void __64__CXCallDirectoryExtensionHostContext_completeRequestWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 completeRequestWithReply:*(a1 + 40)];
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken_0 != -1)
  {
    +[CXCallDirectoryExtensionHostContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol_interface_0;

  return v3;
}

uint64_t __72__CXCallDirectoryExtensionHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol_interface_0 = [MEMORY[0x1E696B0D0] cx_callDirectoryProviderVendorInterface];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken_0 != -1)
  {
    +[CXCallDirectoryExtensionHostContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol_interface_0;

  return v3;
}

uint64_t __70__CXCallDirectoryExtensionHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol_interface_0 = [MEMORY[0x1E696B0D0] cx_callDirectoryProviderHostInterface];

  return MEMORY[0x1EEE66BB8]();
}

- (CXCallDirectoryProviderHostProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __73__CXCallDirectoryExtensionHostContext_requestFailedWithError_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end