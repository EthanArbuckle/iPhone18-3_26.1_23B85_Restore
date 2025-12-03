@interface BCSConfigurationManager
- (NSXPCConnection)serviceConnection;
- (void)processAppClipImageWithURL:(id)l scale:(double)scale completion:(id)completion;
- (void)setUpQRCodeControlCenterModuleWithCompletionHandler:(id)handler;
@end

@implementation BCSConfigurationManager

- (void)setUpQRCodeControlCenterModuleWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serviceConnection = [(BCSConfigurationManager *)self serviceConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__BCSConfigurationManager_setUpQRCodeControlCenterModuleWithCompletionHandler___block_invoke;
  v11[3] = &unk_278CFED28;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [serviceConnection remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__BCSConfigurationManager_setUpQRCodeControlCenterModuleWithCompletionHandler___block_invoke_1;
  v9[3] = &unk_278CFED50;
  v10 = v6;
  v8 = v6;
  [v7 setUpQRCodeControlCenterModuleWithReply:v9];
}

void __79__BCSConfigurationManager_setUpQRCodeControlCenterModuleWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __79__BCSConfigurationManager_setUpQRCodeControlCenterModuleWithCompletionHandler___block_invoke_cold_1(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }
}

uint64_t __79__BCSConfigurationManager_setUpQRCodeControlCenterModuleWithCompletionHandler___block_invoke_1(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (NSXPCConnection)serviceConnection
{
  serviceConnection = self->_serviceConnection;
  if (serviceConnection)
  {
    v3 = serviceConnection;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.BarcodeSupport.Helper"];
    v6 = self->_serviceConnection;
    self->_serviceConnection = v5;

    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853A8B48];
    [(NSXPCConnection *)self->_serviceConnection setRemoteObjectInterface:v7];

    objc_initWeak(&location, self);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __44__BCSConfigurationManager_serviceConnection__block_invoke;
    v12 = &unk_278CFEA78;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)self->_serviceConnection setInvalidationHandler:&v9];
    [(NSXPCConnection *)self->_serviceConnection resume:v9];
    v3 = self->_serviceConnection;
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __44__BCSConfigurationManager_serviceConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setServiceConnection:0];
}

- (void)processAppClipImageWithURL:(id)l scale:(double)scale completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  serviceConnection = [(BCSConfigurationManager *)self serviceConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__BCSConfigurationManager_processAppClipImageWithURL_scale_completion___block_invoke;
  v16[3] = &unk_278CFED28;
  v11 = completionCopy;
  v17 = v11;
  v12 = [serviceConnection remoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__BCSConfigurationManager_processAppClipImageWithURL_scale_completion___block_invoke_52;
  v14[3] = &unk_278CFED78;
  v15 = v11;
  v13 = v11;
  [v12 processAppClipImageWithURL:lCopy scale:v14 reply:scale];
}

void __71__BCSConfigurationManager_processAppClipImageWithURL_scale_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __71__BCSConfigurationManager_processAppClipImageWithURL_scale_completion___block_invoke_cold_1(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }
}

uint64_t __71__BCSConfigurationManager_processAppClipImageWithURL_scale_completion___block_invoke_52(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __79__BCSConfigurationManager_setUpQRCodeControlCenterModuleWithCompletionHandler___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  v3 = 138543362;
  v4 = v1;
  _os_log_error_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BCSConfigurationManager: Error getting remote object proxy: %{public}@", &v3, 0xCu);

  v2 = *MEMORY[0x277D85DE8];
}

void __71__BCSConfigurationManager_processAppClipImageWithURL_scale_completion___block_invoke_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BCSConfigurationManager: Error getting remote object proxy: %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end