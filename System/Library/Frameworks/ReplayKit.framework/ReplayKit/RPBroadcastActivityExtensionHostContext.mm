@interface RPBroadcastActivityExtensionHostContext
- (RPBroadcastActivityHostViewController)hostViewController;
- (id)extensionObjectProxy;
- (void)presentationInfoWithCompletion:(id)a3;
@end

@implementation RPBroadcastActivityExtensionHostContext

- (void)presentationInfoWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  [WeakRetained presentationInfoWithCompletion:v4];
}

- (id)extensionObjectProxy
{
  v2 = [(RPBroadcastActivityExtensionHostContext *)self _auxiliaryConnection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_5];

  return v3;
}

void __63__RPBroadcastActivityExtensionHostContext_extensionObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __63__RPBroadcastActivityExtensionHostContext_extensionObjectProxy__block_invoke_cold_1(a2);
  }
}

- (RPBroadcastActivityHostViewController)hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

void __63__RPBroadcastActivityExtensionHostContext_extensionObjectProxy__block_invoke_cold_1(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = [a1 code];
  _os_log_error_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "error calling extension - %i", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

@end