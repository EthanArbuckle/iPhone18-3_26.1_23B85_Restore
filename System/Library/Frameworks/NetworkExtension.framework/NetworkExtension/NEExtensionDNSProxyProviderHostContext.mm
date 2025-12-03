@interface NEExtensionDNSProxyProviderHostContext
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)setSystemDNSSettings:(id)settings;
@end

@implementation NEExtensionDNSProxyProviderHostContext

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_2288 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_2288, &__block_literal_global_2289);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_2290;

  return v3;
}

void __75__NEExtensionDNSProxyProviderHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C1C28];
  v1 = _extensionAuxiliaryVendorProtocol_protocol_2290;
  _extensionAuxiliaryVendorProtocol_protocol_2290 = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [_extensionAuxiliaryVendorProtocol_protocol_2290 setClasses:v4 forSelector:sel_setSystemDNSSettings_ argumentIndex:0 ofReply:0];
}

- (void)setSystemDNSSettings:(id)settings
{
  settingsCopy = settings;
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.super.super.isa vendorContext];
  [vendorContext setSystemDNSSettings:settingsCopy];
}

@end