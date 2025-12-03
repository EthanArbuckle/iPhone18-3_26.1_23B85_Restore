@interface CXProviderExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
@end

@implementation CXProviderExtensionContext

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _auxiliaryConnection = [(CXProviderExtensionContext *)self _auxiliaryConnection];
  v6 = _auxiliaryConnection;
  if (handlerCopy)
  {
    [_auxiliaryConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    [_auxiliaryConnection remoteObjectProxy];
  }
  v7 = ;

  return v7;
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken != -1)
  {
    +[CXProviderExtensionContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol_interface;

  return v3;
}

uint64_t __63__CXProviderExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol_interface = [MEMORY[0x1E696B0D0] cx_providerVendorInterface];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken != -1)
  {
    +[CXProviderExtensionContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol_interface;

  return v3;
}

uint64_t __61__CXProviderExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol_interface = [MEMORY[0x1E696B0D0] cx_providerHostInterface];

  return MEMORY[0x1EEE66BB8]();
}

@end