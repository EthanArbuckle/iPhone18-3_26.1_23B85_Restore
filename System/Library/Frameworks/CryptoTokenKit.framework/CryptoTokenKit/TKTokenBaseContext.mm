@interface TKTokenBaseContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
@end

@implementation TKTokenBaseContext

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken != -1)
  {
    +[TKTokenBaseContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol_interface;

  return v3;
}

uint64_t __55__TKTokenBaseContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A87310];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken != -1)
  {
    +[TKTokenBaseContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol_interface;

  return v3;
}

uint64_t __53__TKTokenBaseContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A8FFF0];

  return MEMORY[0x1EEE66BB8]();
}

@end