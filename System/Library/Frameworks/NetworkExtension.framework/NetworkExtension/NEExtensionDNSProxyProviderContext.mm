@interface NEExtensionDNSProxyProviderContext
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)setSystemDNSSettings:(id)a3;
@end

@implementation NEExtensionDNSProxyProviderContext

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_2191 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_2191, &__block_literal_global_2192);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_2193;

  return v3;
}

void __71__NEExtensionDNSProxyProviderContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C1C28];
  v1 = _extensionAuxiliaryVendorProtocol_protocol_2193;
  _extensionAuxiliaryVendorProtocol_protocol_2193 = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [_extensionAuxiliaryVendorProtocol_protocol_2193 setClasses:v4 forSelector:sel_setSystemDNSSettings_ argumentIndex:0 ofReply:0];
}

- (void)setSystemDNSSettings:(id)a3
{
  v4 = a3;
  v5 = [(NEExtensionProviderContext *)self _principalObject];
  [v5 setSystemDNSSettings:v4];
}

@end