@interface SLAuthExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
@end

@implementation SLAuthExtensionContext

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken_0 != -1)
  {
    +[SLAuthExtensionContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol___interface_0;

  return v3;
}

uint64_t __59__SLAuthExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol___interface_0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F42277A8];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken_0 != -1)
  {
    +[SLAuthExtensionContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol___interface_0;

  return v3;
}

uint64_t __57__SLAuthExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol___interface_0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4227808];

  return MEMORY[0x1EEE66BB8]();
}

@end