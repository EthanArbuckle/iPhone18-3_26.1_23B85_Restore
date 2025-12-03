@interface RPVideoEditorExtensionHostContext
- (RPVideoEditorHostViewController)hostViewController;
- (id)extensionObjectProxy;
- (void)extensionDidFinishWithActivityTypes:(id)types;
@end

@implementation RPVideoEditorExtensionHostContext

- (void)extensionDidFinishWithActivityTypes:(id)types
{
  typesCopy = types;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPVideoEditorExtensionHostContext:extensionsDidFinish", v6, 2u);
  }

  hostViewController = [(RPVideoEditorExtensionHostContext *)self hostViewController];
  [hostViewController extensionDidFinishWithActivityTypes:typesCopy];
}

- (id)extensionObjectProxy
{
  _auxiliaryConnection = [(RPVideoEditorExtensionHostContext *)self _auxiliaryConnection];
  v3 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_7];

  return v3;
}

void __57__RPVideoEditorExtensionHostContext_extensionObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __63__RPBroadcastActivityExtensionHostContext_extensionObjectProxy__block_invoke_cold_1(a2);
  }
}

- (RPVideoEditorHostViewController)hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

@end