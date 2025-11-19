@interface SLInternalComposeServiceHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)shouldShowNetworkActivityIndicator:(id)a3;
@end

@implementation SLInternalComposeServiceHostContext

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken != -1)
  {
    +[SLInternalComposeServiceHostContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol___interface;

  return v3;
}

uint64_t __72__SLInternalComposeServiceHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol___interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4203BF0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken != -1)
  {
    +[SLInternalComposeServiceHostContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol___interface;

  return v3;
}

uint64_t __70__SLInternalComposeServiceHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol___interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4203B90];

  return MEMORY[0x1EEE66BB8]();
}

- (void)shouldShowNetworkActivityIndicator:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__SLInternalComposeServiceHostContext_shouldShowNetworkActivityIndicator___block_invoke;
  block[3] = &unk_1E81757C8;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __74__SLInternalComposeServiceHostContext_shouldShowNetworkActivityIndicator___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  _SLLog(v1, 6, @"SLInternalComposeServiceHostContext shouldShowNetworkActivityIndicator: %@");
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  [v4 setNetworkActivityIndicatorVisible:{objc_msgSend(*(a1 + 32), "BOOLValue")}];
}

@end