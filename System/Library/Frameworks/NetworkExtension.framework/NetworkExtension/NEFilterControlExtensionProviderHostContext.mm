@interface NEFilterControlExtensionProviderHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)handleNewFlow:(id)a3 completionHandler:(id)a4;
- (void)handleReport:(id)a3;
- (void)notifyRulesChanged;
- (void)provideRemediationMap:(id)a3;
- (void)provideURLAppendStringMap:(id)a3;
@end

@implementation NEFilterControlExtensionProviderHostContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_3747 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_3747, &__block_literal_global_69_3748);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_3749;

  return v3;
}

uint64_t __78__NEFilterControlExtensionProviderHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol_protocol_3749 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C2628];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_3752 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_3752, &__block_literal_global_3753);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_3754;

  return v3;
}

uint64_t __80__NEFilterControlExtensionProviderHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol_protocol_3754 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C2560];

  return MEMORY[0x1EEE66BB8]();
}

- (void)provideURLAppendStringMap:(id)a3
{
  v4 = a3;
  v5 = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  [v5 provideURLAppendStringMap:v4];
}

- (void)provideRemediationMap:(id)a3
{
  v4 = a3;
  v5 = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  [v5 provideRemediationMap:v4];
}

- (void)notifyRulesChanged
{
  v2 = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  [v2 notifyRulesChanged];
}

- (void)handleReport:(id)a3
{
  v4 = a3;
  v5 = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [v5 handleReport:v4];
}

- (void)handleNewFlow:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [v8 handleNewFlow:v7 completionHandler:v6];
}

@end