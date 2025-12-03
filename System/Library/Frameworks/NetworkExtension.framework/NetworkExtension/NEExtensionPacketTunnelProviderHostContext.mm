@interface NEExtensionPacketTunnelProviderHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)fetchVirtualInterfaceTypeWithCompletionHandler:(id)handler;
- (void)setAppUUIDMap:(id)map;
- (void)setupVirtualInterface:(id)interface;
- (void)validateWithCompletionHandler:(id)handler;
@end

@implementation NEExtensionPacketTunnelProviderHostContext

- (void)validateWithCompletionHandler:(id)handler
{
  v3.receiver = self;
  v3.super_class = NEExtensionPacketTunnelProviderHostContext;
  [(NEExtensionProviderHostContext *)&v3 validateWithCompletionHandler:handler];
}

- (void)setAppUUIDMap:(id)map
{
  mapCopy = map;
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [vendorContext setAppUUIDMap:mapCopy];
}

- (void)fetchVirtualInterfaceTypeWithCompletionHandler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@: fetchVirtualInterfaceTypeWithCompletionHandler", &v8, 0xCu);
  }

  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [vendorContext fetchVirtualInterfaceTypeWithCompletionHandler:handlerCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setupVirtualInterface:(id)interface
{
  interfaceCopy = interface;
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [vendorContext setupVirtualInterface:interfaceCopy];
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_2563 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_2563, &__block_literal_global_71);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_2564;

  return v3;
}

uint64_t __77__NEExtensionPacketTunnelProviderHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol_protocol_2564 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C1D80];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_2566 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_2566, &__block_literal_global_2567);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_2568;

  return v3;
}

uint64_t __79__NEExtensionPacketTunnelProviderHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol_protocol_2568 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C1CE0];

  return MEMORY[0x1EEE66BB8]();
}

@end