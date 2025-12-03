@interface CXCallDirectoryExtensionManager
- (CXCallDirectoryExtensionManager)init;
- (CXCallDirectoryExtensionManagerDelegate)delegate;
- (void)_extensionsChanged;
- (void)beginObservingExtensions;
- (void)dealloc;
- (void)extensionsWithCompletionHandler:(id)handler;
- (void)getLastUpdatedCallDirectoryInfoWithReply:(id)reply;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setPrioritizedExtensionIdentifiers:(id)identifiers completionHandler:(id)handler;
@end

@implementation CXCallDirectoryExtensionManager

- (CXCallDirectoryExtensionManager)init
{
  v8.receiver = self;
  v8.super_class = CXCallDirectoryExtensionManager;
  v2 = [(CXCallDirectoryExtensionManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.callkit.calldirectoryextensionmanager", MEMORY[0x1E69E96A8]);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(CXCallDirectoryManager);
    manager = v2->_manager;
    v2->_manager = v5;
  }

  return v2;
}

- (void)dealloc
{
  notify_cancel(self->_storeExtensionsChangedNotifyToken);
  v3.receiver = self;
  v3.super_class = CXCallDirectoryExtensionManager;
  [(CXCallDirectoryExtensionManager *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  queue = [(CXCallDirectoryExtensionManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CXCallDirectoryExtensionManager_setDelegate_queue___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  dispatch_barrier_async(queue, block);
}

uint64_t __53__CXCallDirectoryExtensionManager_setDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  if (*(a1 + 48))
  {
    v2 = *(a1 + 48);
  }

  else
  {
    v2 = MEMORY[0x1E69E96A0];
  }

  v3 = *(a1 + 32);

  return [v3 setDelegateQueue:v2];
}

- (void)beginObservingExtensions
{
  queue = [(CXCallDirectoryExtensionManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CXCallDirectoryExtensionManager_beginObservingExtensions__block_invoke;
  block[3] = &unk_1E7C06CA8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __59__CXCallDirectoryExtensionManager_beginObservingExtensions__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = [v2 queue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__CXCallDirectoryExtensionManager_beginObservingExtensions__block_invoke_2;
  v4[3] = &unk_1E7C072B0;
  objc_copyWeak(&v5, &location);
  notify_register_dispatch("com.apple.callkit.calldirectorystore.extensionschanged", v2 + 2, v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __59__CXCallDirectoryExtensionManager_beginObservingExtensions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _extensionsChanged];
}

- (void)extensionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CXCallDirectoryExtensionManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__CXCallDirectoryExtensionManager_extensionsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __67__CXCallDirectoryExtensionManager_extensionsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__CXCallDirectoryExtensionManager_extensionsWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E7C07550;
  v4 = *(a1 + 40);
  [v2 getExtensionsWithCompletionHandler:v3];
}

void __67__CXCallDirectoryExtensionManager_extensionsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = CXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __67__CXCallDirectoryExtensionManager_extensionsWithCompletionHandler___block_invoke_2_cold_1(v6, v7);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_extensionsChanged
{
  queue = [(CXCallDirectoryExtensionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  delegateQueue = [(CXCallDirectoryExtensionManager *)self delegateQueue];

  if (delegateQueue)
  {
    delegateQueue2 = [(CXCallDirectoryExtensionManager *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__CXCallDirectoryExtensionManager__extensionsChanged__block_invoke;
    block[3] = &unk_1E7C06CA8;
    block[4] = self;
    dispatch_async(delegateQueue2, block);
  }
}

void __53__CXCallDirectoryExtensionManager__extensionsChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 extensionsChangedForCallDirectoryExtensionManager:*(a1 + 32)];
}

- (void)setPrioritizedExtensionIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = identifiersCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "prioritizedExtensionIdentifiers: %@", &v11, 0xCu);
  }

  manager = [(CXCallDirectoryExtensionManager *)self manager];
  [manager setPrioritizedExtensionIdentifiers:identifiersCopy completionHandler:handlerCopy];

  v10 = *MEMORY[0x1E69E9840];
}

void __70__CXCallDirectoryExtensionManager_setEnabled_forExtension_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = CXDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__CXCallDirectoryExtensionManager_setEnabled_forExtension_completion___block_invoke_cold_1(a1);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)getLastUpdatedCallDirectoryInfoWithReply:(id)reply
{
  replyCopy = reply;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "getLastUpdatedCallDirectoryInfoWithReply", v7, 2u);
  }

  manager = [(CXCallDirectoryExtensionManager *)self manager];
  [manager getLastUpdatedCallDirectoryInfoWithCompletionHandler:replyCopy];
}

- (CXCallDirectoryExtensionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __67__CXCallDirectoryExtensionManager_extensionsWithCompletionHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Error getting extensions: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)setEnabled:(uint64_t)a1 forExtension:(void *)a2 completion:.cold.1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  [a2 state];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setEnabled:(void *)a1 forExtension:completion:.cold.2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 state];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setEnabled:(void *)a1 forExtension:completion:.cold.4(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 state];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

void __70__CXCallDirectoryExtensionManager_setEnabled_forExtension_completion___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = [*(a1 + 32) identifier];
  v9 = *(a1 + 48);
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);

  v7 = *MEMORY[0x1E69E9840];
}

@end