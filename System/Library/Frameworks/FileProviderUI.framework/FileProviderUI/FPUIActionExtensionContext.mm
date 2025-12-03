@interface FPUIActionExtensionContext
- (id)_remoteContext;
- (void)cancelRequestWithError:(NSError *)error;
- (void)completeRequestWithUserInfo:(id)info;
- (void)didEncounterError:(id)error completionHandler:(id)handler;
- (void)openURL:(id)l completionHandler:(id)handler;
@end

@implementation FPUIActionExtensionContext

- (void)completeRequestWithUserInfo:(id)info
{
  infoCopy = info;
  _remoteContext = [(FPUIActionExtensionContext *)self _remoteContext];
  [_remoteContext _completeRequestWithUserInfo:infoCopy error:0];
}

- (void)cancelRequestWithError:(NSError *)error
{
  v4 = error;
  [(FPUIActionExtensionContext *)self setSetupError:v4];
  _remoteContext = [(FPUIActionExtensionContext *)self _remoteContext];
  fp_strippedError = [(NSError *)v4 fp_strippedError];
  [_remoteContext _completeRequestWithUserInfo:0 error:fp_strippedError];

  v7.receiver = self;
  v7.super_class = FPUIActionExtensionContext;
  [(FPUIActionExtensionContext *)&v7 cancelRequestWithError:v4];
}

- (void)didEncounterError:(id)error completionHandler:(id)handler
{
  handlerCopy = handler;
  errorCopy = error;
  [(FPUIActionExtensionContext *)self setSetupError:errorCopy];
  _remoteContext = [(FPUIActionExtensionContext *)self _remoteContext];
  fp_strippedError = [errorCopy fp_strippedError];

  [_remoteContext _didEncounterError:fp_strippedError completionHandler:handlerCopy];
}

- (void)openURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  _remoteContext = [(FPUIActionExtensionContext *)self _remoteContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__FPUIActionExtensionContext_openURL_completionHandler___block_invoke;
  v10[3] = &unk_278A516A0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [_remoteContext _openExtensionURL:lCopy completionHandler:v10];
}

void __56__FPUIActionExtensionContext_openURL_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__FPUIActionExtensionContext_openURL_completionHandler___block_invoke_2;
  v3[3] = &unk_278A51460;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __56__FPUIActionExtensionContext_openURL_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (id)_remoteContext
{
  _auxiliaryConnection = [(FPUIActionExtensionContext *)self _auxiliaryConnection];
  v3 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_5];

  return v3;
}

void __44__FPUIActionExtensionContext__remoteContext__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = fpuiLogHandle;
  if (!fpuiLogHandle)
  {
    FPUIInitLogging();
    v3 = fpuiLogHandle;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44__FPUIActionExtensionContext__remoteContext__block_invoke_cold_1(v2, v3);
  }
}

void __44__FPUIActionExtensionContext__remoteContext__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_238356000, a2, OS_LOG_TYPE_ERROR, "Remote context proxy failed with error (%@)", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end