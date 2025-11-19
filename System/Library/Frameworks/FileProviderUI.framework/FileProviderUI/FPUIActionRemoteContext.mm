@interface FPUIActionRemoteContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (FPUIActionRemoteContextDelegate)delegate;
- (void)_completeRequestWithUserInfo:(id)a3 error:(id)a4;
- (void)_didEncounterError:(id)a3 completionHandler:(id)a4;
- (void)_openExtensionURL:(id)a3 completionHandler:(id)a4;
@end

@implementation FPUIActionRemoteContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken != -1)
  {
    +[FPUIActionRemoteContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol___hostInterface;

  return v3;
}

uint64_t __58__FPUIActionRemoteContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol___hostInterface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284B34F00];

  return MEMORY[0x2821F96F8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken != -1)
  {
    +[FPUIActionRemoteContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol___vendorInterface;

  return v3;
}

uint64_t __60__FPUIActionRemoteContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol___vendorInterface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284B3A1C0];

  return MEMORY[0x2821F96F8]();
}

- (void)_openExtensionURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__FPUIActionRemoteContext__openExtensionURL_completionHandler___block_invoke;
  v10[3] = &unk_278A51488;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __63__FPUIActionRemoteContext__openExtensionURL_completionHandler___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277D0AC28];
  v14[0] = @"FPUIAppLaunchOrigin";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4 = *(a1 + 32);
  v12 = 0;
  v5 = [v3 openSensitiveURL:v4 withOptions:v2 error:&v12];
  v6 = v12;

  if ((v5 & 1) == 0)
  {
    v7 = fpuiLogHandle;
    if (!fpuiLogHandle)
    {
      FPUIInitLogging();
      v7 = fpuiLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__FPUIActionRemoteContext__openExtensionURL_completionHandler___block_invoke_cold_1((a1 + 32), v6, v7);
    }
  }

  if (*(a1 + 40))
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__FPUIActionRemoteContext__openExtensionURL_completionHandler___block_invoke_55;
    v9[3] = &unk_278A51460;
    v10 = *(a1 + 40);
    v11 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_completeRequestWithUserInfo:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__FPUIActionRemoteContext__completeRequestWithUserInfo_error___block_invoke;
  block[3] = &unk_278A514B0;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__FPUIActionRemoteContext__completeRequestWithUserInfo_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteActionContextDidFinishAction:*(a1 + 32) userInfo:*(a1 + 40) error:*(a1 + 48)];
}

- (void)_didEncounterError:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__FPUIActionRemoteContext__didEncounterError_completionHandler___block_invoke;
  block[3] = &unk_278A51398;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__FPUIActionRemoteContext__didEncounterError_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteActionContext:*(a1 + 32) didEncounterError:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (FPUIActionRemoteContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __63__FPUIActionRemoteContext__openExtensionURL_completionHandler___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_238356000, log, OS_LOG_TYPE_ERROR, "FPUIActionExtensionContext failed to open URL %@ with error %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end