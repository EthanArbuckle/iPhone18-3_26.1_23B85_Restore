@interface RPBroadcastExtensionHostContext
+ (id)_extensionAuxiliaryVendorProtocol;
- (RPBroadcastHostViewController)hostViewController;
- (id)extensionObjectProxy;
- (void)completeSetupWithBroadcastURL:(id)l;
- (void)updateBroadcastHandlerListenerEndpoint:(id)endpoint;
@end

@implementation RPBroadcastExtensionHostContext

+ (id)_extensionAuxiliaryVendorProtocol
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D9ADE8];
  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_updateBroadcastHandlerListenerEndpoint_ argumentIndex:0 ofReply:1];

  return v2;
}

- (id)extensionObjectProxy
{
  _auxiliaryConnection = [(RPBroadcastExtensionHostContext *)self _auxiliaryConnection];
  v3 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_11];

  return v3;
}

void __55__RPBroadcastExtensionHostContext_extensionObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __63__RPBroadcastActivityExtensionHostContext_extensionObjectProxy__block_invoke_cold_1(a2);
  }
}

- (void)completeSetupWithBroadcastURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  [WeakRetained completeSetupWithBroadcastURL:lCopy];
}

- (void)updateBroadcastHandlerListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  extensionObjectProxy = [(RPBroadcastExtensionHostContext *)self extensionObjectProxy];
  [extensionObjectProxy updateBroadcastHandlerListenerEndpoint:endpointCopy];
}

- (RPBroadcastHostViewController)hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

@end