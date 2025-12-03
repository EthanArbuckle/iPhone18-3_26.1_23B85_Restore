@interface NEFilterExtensionProviderHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)startFilterWithOptions:(id)options completionHandler:(id)handler;
@end

@implementation NEFilterExtensionProviderHostContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_4937 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_4937, &__block_literal_global_63_4938);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_4939;

  return v3;
}

uint64_t __71__NEFilterExtensionProviderHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol_protocol_4939 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C24B8];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_4942 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_4942, &__block_literal_global_4943);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_4944;

  return v3;
}

uint64_t __73__NEFilterExtensionProviderHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol_protocol_4944 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C2458];

  return MEMORY[0x1EEE66BB8]();
}

- (void)startFilterWithOptions:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.isa vendorContext];
  [vendorContext startFilterWithOptions:optionsCopy completionHandler:handlerCopy];
}

@end