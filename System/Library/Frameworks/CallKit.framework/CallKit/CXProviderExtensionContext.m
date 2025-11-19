@interface CXProviderExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
@end

@implementation CXProviderExtensionContext

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(CXProviderExtensionContext *)self _auxiliaryConnection];
  v6 = v5;
  if (v4)
  {
    [v5 remoteObjectProxyWithErrorHandler:v4];
  }

  else
  {
    [v5 remoteObjectProxy];
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