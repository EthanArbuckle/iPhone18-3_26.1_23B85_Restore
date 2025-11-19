@interface CXCallDirectoryManager
+ (CXCallDirectoryManager)sharedInstance;
- (BOOL)fetchLiveBlockingInfoForHandle:(id)a3 timeout:(double)a4;
- (CXCallDirectoryManager)init;
- (NSXPCConnection)defaultConnection;
- (NSXPCConnection)maintenanceConnection;
- (id)defaultConnectionRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:(id)a3 timeout:(double)a4;
- (id)firstIdentificationEntryForEnabledExtensionSyncWithPhoneNumber:(id)a3 cacheOnly:(BOOL)a4;
- (id)maintenanceConnectionRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousServerWithErrorHandler:(id)a3;
- (void)cleanUpLiveLookupDataWithCompletionHandler:(id)a3;
- (void)compactStoreWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:(id)a3 cacheOnly:(BOOL)a4 completionHandler:(id)a5;
- (void)getEnabledStatusForExtensionWithIdentifier:(NSString *)identifier completionHandler:(void *)completion;
- (void)getExtensionsWithCompletionHandler:(id)a3;
- (void)getLastUpdatedCallDirectoryInfoWithCompletionHandler:(id)a3;
- (void)openSettingsWithCompletionHandler:(void *)completion;
- (void)reloadExtensionWithIdentifier:(NSString *)identifier completionHandler:(void *)completion;
- (void)setEnabled:(BOOL)a3 forExtensionWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setPrioritizedExtensionIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)synchronizeExtensionsWithCompletionHandler:(id)a3;
@end

@implementation CXCallDirectoryManager

- (CXCallDirectoryManager)init
{
  v6.receiver = self;
  v6.super_class = CXCallDirectoryManager;
  v2 = [(CXCallDirectoryManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.callkit.calldirectorymanager", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (NSXPCConnection)defaultConnection
{
  defaultConnection = self->_defaultConnection;
  if (!defaultConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.CallKit.CallDirectory"];
    v5 = self->_defaultConnection;
    self->_defaultConnection = v4;

    v6 = [MEMORY[0x1E696B0D0] cx_callDirectoryManagerDefaultHostInterface];
    [(NSXPCConnection *)self->_defaultConnection setRemoteObjectInterface:v6];

    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__CXCallDirectoryManager_defaultConnection__block_invoke;
    v10[3] = &unk_1E7C06E50;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)self->_defaultConnection setInterruptionHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__CXCallDirectoryManager_defaultConnection__block_invoke_2;
    v8[3] = &unk_1E7C06E50;
    objc_copyWeak(&v9, &location);
    [(NSXPCConnection *)self->_defaultConnection setInvalidationHandler:v8];
    [(NSXPCConnection *)self->_defaultConnection resume];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    defaultConnection = self->_defaultConnection;
  }

  return defaultConnection;
}

+ (CXCallDirectoryManager)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CXCallDirectoryManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __40__CXCallDirectoryManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_defaultConnection invalidate];
  [(NSXPCConnection *)self->_maintenanceConnection invalidate];
  v3.receiver = self;
  v3.super_class = CXCallDirectoryManager;
  [(CXCallDirectoryManager *)&v3 dealloc];
}

void __43__CXCallDirectoryManager_defaultConnection__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = WeakRetained;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Default connection interrupted for call directory manager %@", buf, 0xCu);
  }

  v3 = [WeakRetained queue];

  if (v3)
  {
    v4 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__CXCallDirectoryManager_defaultConnection__block_invoke_6;
    block[3] = &unk_1E7C06CA8;
    block[4] = WeakRetained;
    dispatch_async(v4, block);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __43__CXCallDirectoryManager_defaultConnection__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = WeakRetained;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Default connection invalidated for call directory manager %@", buf, 0xCu);
  }

  v3 = [WeakRetained queue];

  if (v3)
  {
    v4 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__CXCallDirectoryManager_defaultConnection__block_invoke_7;
    block[3] = &unk_1E7C06CA8;
    block[4] = WeakRetained;
    dispatch_async(v4, block);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __43__CXCallDirectoryManager_defaultConnection__block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

- (NSXPCConnection)maintenanceConnection
{
  maintenanceConnection = self->_maintenanceConnection;
  if (!maintenanceConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.CallKit.CallDirectoryMaintenance"];
    v5 = self->_maintenanceConnection;
    self->_maintenanceConnection = v4;

    v6 = [MEMORY[0x1E696B0D0] cx_callDirectoryManagerMaintenanceHostInterface];
    [(NSXPCConnection *)self->_maintenanceConnection setRemoteObjectInterface:v6];

    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__CXCallDirectoryManager_maintenanceConnection__block_invoke;
    v10[3] = &unk_1E7C06E50;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)self->_maintenanceConnection setInterruptionHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__CXCallDirectoryManager_maintenanceConnection__block_invoke_2;
    v8[3] = &unk_1E7C06E50;
    objc_copyWeak(&v9, &location);
    [(NSXPCConnection *)self->_maintenanceConnection setInvalidationHandler:v8];
    [(NSXPCConnection *)self->_maintenanceConnection resume];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    maintenanceConnection = self->_maintenanceConnection;
  }

  return maintenanceConnection;
}

void __47__CXCallDirectoryManager_maintenanceConnection__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = WeakRetained;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Maintenance connection interrupted for call directory manager %@", buf, 0xCu);
  }

  v3 = [WeakRetained queue];

  if (v3)
  {
    v4 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__CXCallDirectoryManager_maintenanceConnection__block_invoke_8;
    block[3] = &unk_1E7C06CA8;
    block[4] = WeakRetained;
    dispatch_async(v4, block);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __47__CXCallDirectoryManager_maintenanceConnection__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = WeakRetained;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Maintenance connection invalidated for call directory manager %@", buf, 0xCu);
  }

  v3 = [WeakRetained queue];

  if (v3)
  {
    v4 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__CXCallDirectoryManager_maintenanceConnection__block_invoke_9;
    block[3] = &unk_1E7C06CA8;
    block[4] = WeakRetained;
    dispatch_async(v4, block);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __47__CXCallDirectoryManager_maintenanceConnection__block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

- (id)defaultConnectionRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(CXCallDirectoryManager *)self defaultConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)synchronousServerWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(CXCallDirectoryManager *)self defaultConnection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)maintenanceConnectionRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(CXCallDirectoryManager *)self maintenanceConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (void)reloadExtensionWithIdentifier:(NSString *)identifier completionHandler:(void *)completion
{
  v6 = identifier;
  v7 = completion;
  v8 = v7;
  if (v6)
  {
    v9 = [(CXCallDirectoryManager *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke;
    block[3] = &unk_1E7C075C8;
    block[4] = self;
    v13 = v8;
    v12 = v6;
    dispatch_async(v9, block);
  }

  else if (v7)
  {
    v10 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
    (v8)[2](v8, v10);
  }
}

void __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7C07230;
  v8 = *(a1 + 48);
  v3 = [v2 defaultConnectionRemoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke_11;
  v5[3] = &unk_1E7C07230;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 reloadExtensionWithIdentifier:v4 reply:v5];
}

void __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

uint64_t __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke_11(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)getEnabledStatusForExtensionWithIdentifier:(NSString *)identifier completionHandler:(void *)completion
{
  v6 = identifier;
  v7 = completion;
  v8 = v7;
  if (v6)
  {
    v9 = [(CXCallDirectoryManager *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__CXCallDirectoryManager_getEnabledStatusForExtensionWithIdentifier_completionHandler___block_invoke;
    block[3] = &unk_1E7C075C8;
    block[4] = self;
    v13 = v8;
    v12 = v6;
    dispatch_async(v9, block);
  }

  else if (v7)
  {
    v10 = [MEMORY[0x1E696ABC0] cx_callDirectoryManagerErrorWithCode:1];
    (v8)[2](v8, 0, v10);
  }
}

void __87__CXCallDirectoryManager_getEnabledStatusForExtensionWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__CXCallDirectoryManager_getEnabledStatusForExtensionWithIdentifier_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7C07230;
  v8 = *(a1 + 48);
  v3 = [v2 defaultConnectionRemoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__CXCallDirectoryManager_getEnabledStatusForExtensionWithIdentifier_completionHandler___block_invoke_13;
  v5[3] = &unk_1E7C075F0;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 getEnabledStatusForExtensionWithIdentifier:v4 reply:v5];
}

void __87__CXCallDirectoryManager_getEnabledStatusForExtensionWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

uint64_t __87__CXCallDirectoryManager_getEnabledStatusForExtensionWithIdentifier_completionHandler___block_invoke_13(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setEnabled:(BOOL)a3 forExtensionWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CXCallDirectoryManager *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__CXCallDirectoryManager_setEnabled_forExtensionWithIdentifier_completionHandler___block_invoke;
  v13[3] = &unk_1E7C07618;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v13[4] = self;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, v13);
}

void __82__CXCallDirectoryManager_setEnabled_forExtensionWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__CXCallDirectoryManager_setEnabled_forExtensionWithIdentifier_completionHandler___block_invoke_2;
  v8[3] = &unk_1E7C07230;
  v9 = *(a1 + 48);
  v3 = [v2 defaultConnectionRemoteObjectProxyWithErrorHandler:v8];
  v4 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__CXCallDirectoryManager_setEnabled_forExtensionWithIdentifier_completionHandler___block_invoke_15;
  v6[3] = &unk_1E7C07230;
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v3 setEnabled:v4 forExtensionWithIdentifier:v5 reply:v6];
}

void __82__CXCallDirectoryManager_setEnabled_forExtensionWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

uint64_t __82__CXCallDirectoryManager_setEnabled_forExtensionWithIdentifier_completionHandler___block_invoke_15(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __113__CXCallDirectoryManager_firstIdentificationEntryForEnabledExtensionWithPhoneNumber_cacheOnly_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v7 = [a2 objectForKeyedSubscript:v5];
  (*(v4 + 16))(v4, v7, v6);
}

- (id)firstIdentificationEntryForEnabledExtensionSyncWithPhoneNumber:(id)a3 cacheOnly:(BOOL)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  v7 = [(CXCallDirectoryManager *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __99__CXCallDirectoryManager_firstIdentificationEntryForEnabledExtensionSyncWithPhoneNumber_cacheOnly___block_invoke;
  v11[3] = &unk_1E7C07690;
  v11[4] = self;
  v12 = v6;
  v14 = a4;
  v13 = &v15;
  v8 = v6;
  dispatch_sync(v7, v11);

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __99__CXCallDirectoryManager_firstIdentificationEntryForEnabledExtensionSyncWithPhoneNumber_cacheOnly___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) synchronousServerWithErrorHandler:&__block_literal_global_12];
  v10[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v4 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __99__CXCallDirectoryManager_firstIdentificationEntryForEnabledExtensionSyncWithPhoneNumber_cacheOnly___block_invoke_18;
  v8[3] = &unk_1E7C07668;
  v7 = *(a1 + 40);
  v5 = v7;
  v9 = v7;
  [v2 firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:v3 cacheOnly:v4 reply:v8];

  v6 = *MEMORY[0x1E69E9840];
}

void __99__CXCallDirectoryManager_firstIdentificationEntryForEnabledExtensionSyncWithPhoneNumber_cacheOnly___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CXDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __99__CXCallDirectoryManager_firstIdentificationEntryForEnabledExtensionSyncWithPhoneNumber_cacheOnly___block_invoke_2_cold_1();
  }
}

uint64_t __99__CXCallDirectoryManager_firstIdentificationEntryForEnabledExtensionSyncWithPhoneNumber_cacheOnly___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (void)firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:(id)a3 cacheOnly:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(CXCallDirectoryManager *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __117__CXCallDirectoryManager_firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers_cacheOnly_completionHandler___block_invoke;
  v13[3] = &unk_1E7C07618;
  v14 = v8;
  v15 = v9;
  v13[4] = self;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, v13);
}

void __117__CXCallDirectoryManager_firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers_cacheOnly_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __117__CXCallDirectoryManager_firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers_cacheOnly_completionHandler___block_invoke_2;
  v4[3] = &unk_1E7C07230;
  v5 = *(a1 + 48);
  v3 = [v2 defaultConnectionRemoteObjectProxyWithErrorHandler:v4];
  [v3 firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:*(a1 + 40) cacheOnly:*(a1 + 56) reply:*(a1 + 48)];
}

void __117__CXCallDirectoryManager_firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers_cacheOnly_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)synchronizeExtensionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CXCallDirectoryManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__CXCallDirectoryManager_synchronizeExtensionsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __69__CXCallDirectoryManager_synchronizeExtensionsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__CXCallDirectoryManager_synchronizeExtensionsWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E7C07230;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 maintenanceConnectionRemoteObjectProxyWithErrorHandler:v4];
  [v3 synchronizeExtensionsWithReply:*(a1 + 40)];
}

void __69__CXCallDirectoryManager_synchronizeExtensionsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)fetchLiveBlockingInfoForHandle:(id)a3 timeout:(double)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (_os_feature_enabled_impl())
  {
    v7 = CXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&dword_1B47F3000, v7, OS_LOG_TYPE_DEFAULT, "fetchLiveBlockingInfoForHandle: %@", buf, 0xCu);
    }

    v8 = dispatch_semaphore_create(0);
    v9 = [(CXCallDirectoryManager *)self queue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__CXCallDirectoryManager_fetchLiveBlockingInfoForHandle_timeout___block_invoke;
    v16[3] = &unk_1E7C07708;
    v16[4] = self;
    v10 = v8;
    v17 = v10;
    v18 = v6;
    v19 = &v20;
    dispatch_sync(v9, v16);

    v11 = dispatch_time(0, (a4 * 1000000000.0));
    if (dispatch_semaphore_wait(v10, v11))
    {
      v12 = CXDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CXCallDirectoryManager fetchLiveBlockingInfoForHandle:v12 timeout:?];
      }
    }
  }

  v13 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  v14 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

void __65__CXCallDirectoryManager_fetchLiveBlockingInfoForHandle_timeout___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__CXCallDirectoryManager_fetchLiveBlockingInfoForHandle_timeout___block_invoke_2;
  v8[3] = &unk_1E7C076B8;
  v2 = *(a1 + 32);
  v9 = *(a1 + 40);
  v3 = [v2 defaultConnectionRemoteObjectProxyWithErrorHandler:v8];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__CXCallDirectoryManager_fetchLiveBlockingInfoForHandle_timeout___block_invoke_21;
  v5[3] = &unk_1E7C076E0;
  v4 = *(a1 + 48);
  v7 = *(a1 + 56);
  v6 = *(a1 + 40);
  [v3 fetchLiveBlockingInfoForHandle:v4 reply:v5];
}

void __65__CXCallDirectoryManager_fetchLiveBlockingInfoForHandle_timeout___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke_2_cold_1();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __65__CXCallDirectoryManager_fetchLiveBlockingInfoForHandle_timeout___block_invoke_21(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = CXDefaultLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __65__CXCallDirectoryManager_fetchLiveBlockingInfoForHandle_timeout___block_invoke_21_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = a2;
      _os_log_impl(&dword_1B47F3000, v7, OS_LOG_TYPE_DEFAULT, "fetchLiveBlockingInfoForHandle blocked=%d", v9, 8u);
    }

    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v8 = *MEMORY[0x1E69E9840];
}

- (id)firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:(id)a3 timeout:(double)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  if (_os_feature_enabled_impl())
  {
    v7 = CXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v6;
      _os_log_impl(&dword_1B47F3000, v7, OS_LOG_TYPE_DEFAULT, "firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber: %@", buf, 0xCu);
    }

    v8 = dispatch_semaphore_create(0);
    v9 = [(CXCallDirectoryManager *)self queue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __92__CXCallDirectoryManager_firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber_timeout___block_invoke;
    v16[3] = &unk_1E7C07708;
    v16[4] = self;
    v10 = v8;
    v17 = v10;
    v18 = v6;
    v19 = &v20;
    dispatch_sync(v9, v16);

    v11 = dispatch_time(0, (a4 * 1000000000.0));
    if (dispatch_semaphore_wait(v10, v11))
    {
      v12 = CXDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CXCallDirectoryManager firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:v12 timeout:?];
      }
    }
  }

  v13 = v21[5];
  _Block_object_dispose(&v20, 8);

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void __92__CXCallDirectoryManager_firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber_timeout___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__CXCallDirectoryManager_firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber_timeout___block_invoke_2;
  v8[3] = &unk_1E7C076B8;
  v2 = *(a1 + 32);
  v9 = *(a1 + 40);
  v3 = [v2 defaultConnectionRemoteObjectProxyWithErrorHandler:v8];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __92__CXCallDirectoryManager_firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber_timeout___block_invoke_23;
  v5[3] = &unk_1E7C07730;
  v4 = *(a1 + 48);
  v7 = *(a1 + 56);
  v6 = *(a1 + 40);
  [v3 firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:v4 reply:v5];
}

void __92__CXCallDirectoryManager_firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber_timeout___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke_2_cold_1();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __92__CXCallDirectoryManager_firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber_timeout___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = CXDefaultLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __92__CXCallDirectoryManager_firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber_timeout___block_invoke_23_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber blocked=%@", &v12, 0xCu);
    }

    v9 = *(*(a1 + 40) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v11 = *MEMORY[0x1E69E9840];
}

- (void)openSettingsWithCompletionHandler:(void *)completion
{
  v4 = completion;
  v5 = [(CXCallDirectoryManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CXCallDirectoryManager_openSettingsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __60__CXCallDirectoryManager_openSettingsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__CXCallDirectoryManager_openSettingsWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E7C07230;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 defaultConnectionRemoteObjectProxyWithErrorHandler:v4];
  [v3 launchCallDirectorySettingsWithReply:*(a1 + 40)];
}

void __60__CXCallDirectoryManager_openSettingsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)compactStoreWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CXCallDirectoryManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CXCallDirectoryManager_compactStoreWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __60__CXCallDirectoryManager_compactStoreWithCompletionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__CXCallDirectoryManager_compactStoreWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E7C07230;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 maintenanceConnectionRemoteObjectProxyWithErrorHandler:v4];
  [v3 compactStoreWithReply:*(a1 + 40)];
}

void __60__CXCallDirectoryManager_compactStoreWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)cleanUpLiveLookupDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CXCallDirectoryManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__CXCallDirectoryManager_cleanUpLiveLookupDataWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __69__CXCallDirectoryManager_cleanUpLiveLookupDataWithCompletionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__CXCallDirectoryManager_cleanUpLiveLookupDataWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E7C07230;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 maintenanceConnectionRemoteObjectProxyWithErrorHandler:v4];
  [v3 cleanUpLiveLookupDataWithReply:*(a1 + 40)];
}

void __69__CXCallDirectoryManager_cleanUpLiveLookupDataWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getExtensionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CXCallDirectoryManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CXCallDirectoryManager_getExtensionsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __61__CXCallDirectoryManager_getExtensionsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__CXCallDirectoryManager_getExtensionsWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E7C07230;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 defaultConnectionRemoteObjectProxyWithErrorHandler:v4];
  [v3 getExtensionsWithReply:*(a1 + 40)];
}

void __61__CXCallDirectoryManager_getExtensionsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setPrioritizedExtensionIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CXCallDirectoryManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__CXCallDirectoryManager_setPrioritizedExtensionIdentifiers_completionHandler___block_invoke;
  block[3] = &unk_1E7C075C8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __79__CXCallDirectoryManager_setPrioritizedExtensionIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__CXCallDirectoryManager_setPrioritizedExtensionIdentifiers_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7C07230;
  v8 = *(a1 + 48);
  v3 = [v2 defaultConnectionRemoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__CXCallDirectoryManager_setPrioritizedExtensionIdentifiers_completionHandler___block_invoke_25;
  v5[3] = &unk_1E7C07230;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 setPrioritizedExtensionIdentifiers:v4 reply:v5];
}

void __79__CXCallDirectoryManager_setPrioritizedExtensionIdentifiers_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

uint64_t __79__CXCallDirectoryManager_setPrioritizedExtensionIdentifiers_completionHandler___block_invoke_25(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)getLastUpdatedCallDirectoryInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CXCallDirectoryManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__CXCallDirectoryManager_getLastUpdatedCallDirectoryInfoWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __79__CXCallDirectoryManager_getLastUpdatedCallDirectoryInfoWithCompletionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__CXCallDirectoryManager_getLastUpdatedCallDirectoryInfoWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E7C07230;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 defaultConnectionRemoteObjectProxyWithErrorHandler:v4];
  [v3 getLastUpdatedCallDirectoryInfoWithReply:*(a1 + 40)];
}

void __79__CXCallDirectoryManager_getLastUpdatedCallDirectoryInfoWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __74__CXCallDirectoryManager_reloadExtensionWithIdentifier_completionHandler___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0(&dword_1B47F3000, v0, v1, "error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __99__CXCallDirectoryManager_firstIdentificationEntryForEnabledExtensionSyncWithPhoneNumber_cacheOnly___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0(&dword_1B47F3000, v0, v1, "Error using remote object proxy: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __65__CXCallDirectoryManager_fetchLiveBlockingInfoForHandle_timeout___block_invoke_21_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0(&dword_1B47F3000, v0, v1, "fetchLiveBlockingInfoForHandle error=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __92__CXCallDirectoryManager_firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber_timeout___block_invoke_23_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0(&dword_1B47F3000, v0, v1, "firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber error=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end