@interface LLCallDirectoryManager
+ (LLCallDirectoryManager)sharedInstance;
- (LLCallDirectoryManager)init;
- (NSXPCConnection)defaultConnection;
- (id)defaultConnectionRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)dealloc;
- (void)getEnabledForExtensionWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)openSettingsWithCompletionHandler:(id)a3;
- (void)refreshExtensionContextForLiveLookupExtensionWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)refreshPIRParametersForLiveLookupExtensionWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)resetExtensionWithIdentier:(id)a3 completionHandler:(id)a4;
- (void)setEnabled:(BOOL)a3 forExtensionWithIdentifier:(id)a4 completionHandler:(id)a5;
@end

@implementation LLCallDirectoryManager

+ (LLCallDirectoryManager)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__LLCallDirectoryManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __40__LLCallDirectoryManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (LLCallDirectoryManager)init
{
  v6.receiver = self;
  v6.super_class = LLCallDirectoryManager;
  v2 = [(LLCallDirectoryManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.livelookup.calldirectorymanager", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_defaultConnection invalidate];
  v3.receiver = self;
  v3.super_class = LLCallDirectoryManager;
  [(LLCallDirectoryManager *)&v3 dealloc];
}

- (NSXPCConnection)defaultConnection
{
  defaultConnection = self->_defaultConnection;
  if (!defaultConnection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.CallKit.CallDirectory"];
    v5 = self->_defaultConnection;
    self->_defaultConnection = v4;

    v6 = [(LLCallDirectoryManager *)self callDirectoryManagerDefaultHostInterface];
    [(NSXPCConnection *)self->_defaultConnection setRemoteObjectInterface:v6];

    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__LLCallDirectoryManager_defaultConnection__block_invoke;
    v10[3] = &unk_278A5E500;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)self->_defaultConnection setInterruptionHandler:v10];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__LLCallDirectoryManager_defaultConnection__block_invoke_2;
    v8[3] = &unk_278A5E500;
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

void __43__LLCallDirectoryManager_defaultConnection__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = ILDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = WeakRetained;
    _os_log_impl(&dword_238A41000, v2, OS_LOG_TYPE_DEFAULT, "Default connection interrupted for call directory manager %@", buf, 0xCu);
  }

  v3 = [WeakRetained queue];

  if (v3)
  {
    v4 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__LLCallDirectoryManager_defaultConnection__block_invoke_5;
    block[3] = &unk_278A5E4D8;
    block[4] = WeakRetained;
    dispatch_async(v4, block);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __43__LLCallDirectoryManager_defaultConnection__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = ILDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = WeakRetained;
    _os_log_impl(&dword_238A41000, v2, OS_LOG_TYPE_DEFAULT, "Default connection invalidated for call directory manager %@", buf, 0xCu);
  }

  v3 = [WeakRetained queue];

  if (v3)
  {
    v4 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__LLCallDirectoryManager_defaultConnection__block_invoke_6;
    block[3] = &unk_278A5E4D8;
    block[4] = WeakRetained;
    dispatch_async(v4, block);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __43__LLCallDirectoryManager_defaultConnection__block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

- (id)defaultConnectionRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(LLCallDirectoryManager *)self defaultConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (void)resetExtensionWithIdentier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [(LLCallDirectoryManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__LLCallDirectoryManager_resetExtensionWithIdentier_completionHandler___block_invoke;
    block[3] = &unk_278A5E528;
    block[4] = self;
    v12 = v8;
    v11 = v6;
    dispatch_async(v9, block);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __71__LLCallDirectoryManager_resetExtensionWithIdentier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__LLCallDirectoryManager_resetExtensionWithIdentier_completionHandler___block_invoke_2;
  v7[3] = &unk_278A5E3D0;
  v8 = *(a1 + 48);
  v3 = [v2 defaultConnectionRemoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__LLCallDirectoryManager_resetExtensionWithIdentier_completionHandler___block_invoke_64;
  v5[3] = &unk_278A5E3D0;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 resetLiveLookupExtensionWithIdentifier:v4 reply:v5];
}

void __71__LLCallDirectoryManager_resetExtensionWithIdentier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__LLCallDirectoryManager_resetExtensionWithIdentier_completionHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

uint64_t __71__LLCallDirectoryManager_resetExtensionWithIdentier_completionHandler___block_invoke_64(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)refreshPIRParametersForLiveLookupExtensionWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [(LLCallDirectoryManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__LLCallDirectoryManager_refreshPIRParametersForLiveLookupExtensionWithIdentifier_completionHandler___block_invoke;
    block[3] = &unk_278A5E528;
    block[4] = self;
    v12 = v8;
    v11 = v6;
    dispatch_async(v9, block);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __101__LLCallDirectoryManager_refreshPIRParametersForLiveLookupExtensionWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __101__LLCallDirectoryManager_refreshPIRParametersForLiveLookupExtensionWithIdentifier_completionHandler___block_invoke_2;
  v7[3] = &unk_278A5E3D0;
  v8 = *(a1 + 48);
  v3 = [v2 defaultConnectionRemoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __101__LLCallDirectoryManager_refreshPIRParametersForLiveLookupExtensionWithIdentifier_completionHandler___block_invoke_65;
  v5[3] = &unk_278A5E3D0;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 refreshPIRParametersForLiveLookupExtensionWithIdentifier:v4 reply:v5];
}

void __101__LLCallDirectoryManager_refreshPIRParametersForLiveLookupExtensionWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__LLCallDirectoryManager_resetExtensionWithIdentier_completionHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

uint64_t __101__LLCallDirectoryManager_refreshPIRParametersForLiveLookupExtensionWithIdentifier_completionHandler___block_invoke_65(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)refreshExtensionContextForLiveLookupExtensionWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [(LLCallDirectoryManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__LLCallDirectoryManager_refreshExtensionContextForLiveLookupExtensionWithIdentifier_completionHandler___block_invoke;
    block[3] = &unk_278A5E528;
    block[4] = self;
    v12 = v8;
    v11 = v6;
    dispatch_async(v9, block);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __104__LLCallDirectoryManager_refreshExtensionContextForLiveLookupExtensionWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __104__LLCallDirectoryManager_refreshExtensionContextForLiveLookupExtensionWithIdentifier_completionHandler___block_invoke_2;
  v7[3] = &unk_278A5E3D0;
  v8 = *(a1 + 48);
  v3 = [v2 defaultConnectionRemoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __104__LLCallDirectoryManager_refreshExtensionContextForLiveLookupExtensionWithIdentifier_completionHandler___block_invoke_66;
  v5[3] = &unk_278A5E3D0;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 refreshExtensionContextForLiveLookupExtensionWithIdentifier:v4 reply:v5];
}

void __104__LLCallDirectoryManager_refreshExtensionContextForLiveLookupExtensionWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__LLCallDirectoryManager_resetExtensionWithIdentier_completionHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

uint64_t __104__LLCallDirectoryManager_refreshExtensionContextForLiveLookupExtensionWithIdentifier_completionHandler___block_invoke_66(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)getEnabledForExtensionWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [(LLCallDirectoryManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__LLCallDirectoryManager_getEnabledForExtensionWithIdentifier_completionHandler___block_invoke;
    block[3] = &unk_278A5E528;
    block[4] = self;
    v12 = v8;
    v11 = v6;
    dispatch_async(v9, block);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

void __81__LLCallDirectoryManager_getEnabledForExtensionWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__LLCallDirectoryManager_getEnabledForExtensionWithIdentifier_completionHandler___block_invoke_2;
  v7[3] = &unk_278A5E3D0;
  v8 = *(a1 + 48);
  v3 = [v2 defaultConnectionRemoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__LLCallDirectoryManager_getEnabledForExtensionWithIdentifier_completionHandler___block_invoke_67;
  v5[3] = &unk_278A5E550;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 getEnabledForLiveLookupExtensionWithIdentifier:v4 reply:v5];
}

void __81__LLCallDirectoryManager_getEnabledForExtensionWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__LLCallDirectoryManager_resetExtensionWithIdentier_completionHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

uint64_t __81__LLCallDirectoryManager_getEnabledForExtensionWithIdentifier_completionHandler___block_invoke_67(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)openSettingsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(LLCallDirectoryManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__LLCallDirectoryManager_openSettingsWithCompletionHandler___block_invoke;
  v7[3] = &unk_278A5E578;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __60__LLCallDirectoryManager_openSettingsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__LLCallDirectoryManager_openSettingsWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_278A5E3D0;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 defaultConnectionRemoteObjectProxyWithErrorHandler:v4];
  [v3 launchCallDirectorySettingsWithReply:*(a1 + 40)];
}

void __60__LLCallDirectoryManager_openSettingsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__LLCallDirectoryManager_resetExtensionWithIdentier_completionHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)setEnabled:(BOOL)a3 forExtensionWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    v11 = [(LLCallDirectoryManager *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __82__LLCallDirectoryManager_setEnabled_forExtensionWithIdentifier_completionHandler___block_invoke;
    v12[3] = &unk_278A5E5A0;
    v12[4] = self;
    v14 = v10;
    v15 = a3;
    v13 = v8;
    dispatch_async(v11, v12);
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0);
  }
}

void __82__LLCallDirectoryManager_setEnabled_forExtensionWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__LLCallDirectoryManager_setEnabled_forExtensionWithIdentifier_completionHandler___block_invoke_2;
  v8[3] = &unk_278A5E3D0;
  v9 = *(a1 + 48);
  v3 = [v2 defaultConnectionRemoteObjectProxyWithErrorHandler:v8];
  v4 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__LLCallDirectoryManager_setEnabled_forExtensionWithIdentifier_completionHandler___block_invoke_69;
  v6[3] = &unk_278A5E3D0;
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v3 setEnabled:v4 forLiveLookupExtensionWithIdentifier:v5 reply:v6];
}

void __82__LLCallDirectoryManager_setEnabled_forExtensionWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__LLCallDirectoryManager_resetExtensionWithIdentier_completionHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

uint64_t __82__LLCallDirectoryManager_setEnabled_forExtensionWithIdentifier_completionHandler___block_invoke_69(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __71__LLCallDirectoryManager_resetExtensionWithIdentier_completionHandler___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_238A41000, v0, v1, "error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end