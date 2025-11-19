@interface NEFilterExtensionProviderHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)startFilterWithOptions:(id)a3 completionHandler:(id)a4;
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

- (void)startFilterWithOptions:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NEExtensionProviderHostContext *)&self->super.super.super.isa vendorContext];
  [v8 startFilterWithOptions:v7 completionHandler:v6];
}

@end