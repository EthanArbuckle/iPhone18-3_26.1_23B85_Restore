@interface NEExtensionTunnelProviderHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)didSetReasserting:(BOOL)reasserting;
- (void)establishIPCWithCompletionHandler:(id)handler;
- (void)handleIPCDetached;
- (void)setTunnelConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation NEExtensionTunnelProviderHostContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_3120 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_3120, &__block_literal_global_63_3121);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_3122;

  return v3;
}

uint64_t __71__NEExtensionTunnelProviderHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol_protocol_3122 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C0CC8];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_3125 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_3125, &__block_literal_global_3126);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_3127;

  return v3;
}

uint64_t __73__NEExtensionTunnelProviderHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol_protocol_3127 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C0BF0];

  return MEMORY[0x1EEE66BB8]();
}

- (void)handleIPCDetached
{
  delegate = [(NEExtensionProviderHostContext *)&self->super.super.super.isa delegate];
  [delegate extensionDidDetachIPC:self];
}

- (void)establishIPCWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.isa vendorContext];
  [vendorContext establishIPCWithCompletionHandler:handlerCopy];
}

- (void)setTunnelConfiguration:(id)configuration completionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  configurationCopy = configuration;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "%@: setting tunnel configuration", &v11, 0xCu);
  }

  delegate = [(NEExtensionProviderHostContext *)&self->super.super.super.isa delegate];
  [delegate extension:self didSetTunnelConfiguration:configurationCopy completionHandler:handlerCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)didSetReasserting:(BOOL)reasserting
{
  reassertingCopy = reasserting;
  v13 = *MEMORY[0x1E69E9840];
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 1024;
    v12 = reassertingCopy;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEFAULT, "%@: setting reasserting %d", &v9, 0x12u);
  }

  if (reassertingCopy)
  {
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  delegate = [(NEExtensionProviderHostContext *)&self->super.super.super.isa delegate];
  [delegate extension:self didSetStatus:v6];

  v8 = *MEMORY[0x1E69E9840];
}

@end