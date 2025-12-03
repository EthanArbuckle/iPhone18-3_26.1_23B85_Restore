@interface NEFilterPacketExtensionProviderHostContext
+ (id)_extensionAuxiliaryHostProtocol;
- (void)createPacketChannelWithCompletionHandler:(id)handler;
@end

@implementation NEFilterPacketExtensionProviderHostContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_24184 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_24184, &__block_literal_global_24185);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_24186;

  return v3;
}

uint64_t __77__NEFilterPacketExtensionProviderHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38CF788];
  v1 = _extensionAuxiliaryHostProtocol_protocol_24186;
  _extensionAuxiliaryHostProtocol_protocol_24186 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)createPacketChannelWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  [delegate createPacketChannelForExtension:self completionHandler:handlerCopy];
}

@end