@interface PUPickerExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
+ (void)setAllowedClassesForExtensionAuxiliaryHostInterface:(id)interface;
@end

@implementation PUPickerExtensionContext

+ (void)setAllowedClassesForExtensionAuxiliaryHostInterface:(id)interface
{
  v3 = MEMORY[0x1E695DFD8];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v6 forSelector:sel__pickerDidFinishPicking_action_error_ argumentIndex:0 ofReply:0];
}

+ (id)_extensionAuxiliaryHostProtocol
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PUPickerExtensionContext__extensionAuxiliaryHostProtocol__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_extensionAuxiliaryHostProtocol_onceToken_859 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_onceToken_859, block);
  }

  v2 = _extensionAuxiliaryHostProtocol_interface_860;

  return v2;
}

uint64_t __59__PUPickerExtensionContext__extensionAuxiliaryHostProtocol__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4DC2410];
  v3 = _extensionAuxiliaryHostProtocol_interface_860;
  _extensionAuxiliaryHostProtocol_interface_860 = v2;

  v4 = *(a1 + 32);
  v5 = _extensionAuxiliaryHostProtocol_interface_860;

  return [v4 setAllowedClassesForExtensionAuxiliaryHostInterface:v5];
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken_863 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_onceToken_863, &__block_literal_global_864);
  }

  v3 = _extensionAuxiliaryVendorProtocol_interface_865;

  return v3;
}

uint64_t __61__PUPickerExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4DC22E8];
  v1 = _extensionAuxiliaryVendorProtocol_interface_865;
  _extensionAuxiliaryVendorProtocol_interface_865 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end