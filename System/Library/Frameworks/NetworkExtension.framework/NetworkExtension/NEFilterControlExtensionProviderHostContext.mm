@interface NEFilterControlExtensionProviderHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)handleNewFlow:(id)flow completionHandler:(id)handler;
- (void)handleReport:(id)report;
- (void)notifyRulesChanged;
- (void)provideRemediationMap:(id)map;
- (void)provideURLAppendStringMap:(id)map;
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

- (void)provideURLAppendStringMap:(id)map
{
  mapCopy = map;
  delegate = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  [delegate provideURLAppendStringMap:mapCopy];
}

- (void)provideRemediationMap:(id)map
{
  mapCopy = map;
  delegate = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  [delegate provideRemediationMap:mapCopy];
}

- (void)notifyRulesChanged
{
  delegate = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  [delegate notifyRulesChanged];
}

- (void)handleReport:(id)report
{
  reportCopy = report;
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [vendorContext handleReport:reportCopy];
}

- (void)handleNewFlow:(id)flow completionHandler:(id)handler
{
  handlerCopy = handler;
  flowCopy = flow;
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [vendorContext handleNewFlow:flowCopy completionHandler:handlerCopy];
}

@end