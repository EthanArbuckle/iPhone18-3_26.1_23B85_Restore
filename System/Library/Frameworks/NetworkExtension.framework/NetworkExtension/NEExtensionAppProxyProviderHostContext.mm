@interface NEExtensionAppProxyProviderHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)openFlowDivertControlSocketWithCompletionHandler:(id)handler;
- (void)setInitialFlowDivertControlSocket:(id)socket;
@end

@implementation NEExtensionAppProxyProviderHostContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_2024 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_2024, &__block_literal_global_69_2025);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_2026;

  return v3;
}

uint64_t __73__NEExtensionAppProxyProviderHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol_protocol_2026 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C0DC8];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_2029 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_2029, &__block_literal_global_2030);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_2031;

  return v3;
}

uint64_t __75__NEExtensionAppProxyProviderHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol_protocol_2031 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C0D28];

  return MEMORY[0x1EEE66BB8]();
}

- (void)openFlowDivertControlSocketWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  [delegate extension:self didRequestFlowDivertControlSocketWithCompletionHandler:handlerCopy];
}

- (void)setInitialFlowDivertControlSocket:(id)socket
{
  socketCopy = socket;
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [vendorContext setInitialFlowDivertControlSocket:socketCopy];
}

@end