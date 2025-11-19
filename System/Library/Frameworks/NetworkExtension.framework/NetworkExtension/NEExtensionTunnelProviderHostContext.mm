@interface NEExtensionTunnelProviderHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)didSetReasserting:(BOOL)a3;
- (void)establishIPCWithCompletionHandler:(id)a3;
- (void)handleIPCDetached;
- (void)setTunnelConfiguration:(id)a3 completionHandler:(id)a4;
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
  v3 = [(NEExtensionProviderHostContext *)&self->super.super.super.isa delegate];
  [v3 extensionDidDetachIPC:self];
}

- (void)establishIPCWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(NEExtensionProviderHostContext *)&self->super.super.super.isa vendorContext];
  [v5 establishIPCWithCompletionHandler:v4];
}

- (void)setTunnelConfiguration:(id)a3 completionHandler:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = self;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "%@: setting tunnel configuration", &v11, 0xCu);
  }

  v9 = [(NEExtensionProviderHostContext *)&self->super.super.super.isa delegate];
  [v9 extension:self didSetTunnelConfiguration:v7 completionHandler:v6];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)didSetReasserting:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = self;
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEFAULT, "%@: setting reasserting %d", &v9, 0x12u);
  }

  if (v3)
  {
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  v7 = [(NEExtensionProviderHostContext *)&self->super.super.super.isa delegate];
  [v7 extension:self didSetStatus:v6];

  v8 = *MEMORY[0x1E69E9840];
}

@end