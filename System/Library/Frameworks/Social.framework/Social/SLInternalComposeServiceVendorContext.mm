@interface SLInternalComposeServiceVendorContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)shouldShowNetworkActivityIndicator:(id)indicator;
@end

@implementation SLInternalComposeServiceVendorContext

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken_11 != -1)
  {
    +[SLInternalComposeServiceVendorContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol___interface_12;

  return v3;
}

uint64_t __74__SLInternalComposeServiceVendorContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol___interface_12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4203BF0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken_15 != -1)
  {
    +[SLInternalComposeServiceVendorContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol___interface_16;

  return v3;
}

uint64_t __72__SLInternalComposeServiceVendorContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol___interface_16 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4203B90];

  return MEMORY[0x1EEE66BB8]();
}

- (void)shouldShowNetworkActivityIndicator:(id)indicator
{
  indicatorCopy = indicator;
  _SLLog(v3, 7, @"SLInternalComposeServiceVendorContext shouldShowNetworkActivityIndicator: %@");
  _auxiliaryConnection = [(SLInternalComposeServiceVendorContext *)self _auxiliaryConnection];
  v6 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_24];

  if (v6)
  {
    _SLLog(v3, 7, @"SLInternalComposeServiceVendorContext shouldShowNetworkActivityIndicator: calling host %@");
    [v6 shouldShowNetworkActivityIndicator:{indicatorCopy, v6}];
  }

  else
  {
    _SLLog(v3, 3, @"SLInternalComposeServiceVendorContext shouldShowNetworkActivityIndicator: had nil host. bailing.");
  }
}

@end