@interface NEExtensionAppPushProviderHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)reportIncomingCall:(id)call;
- (void)reportPushToTalkMessage:(id)message;
- (void)sendOutgoingCallMessage:(id)message completionHandler:(id)handler;
- (void)sendTimerEvent;
- (void)setProviderConfiguration:(id)configuration;
- (void)startConnectionWithProviderConfig:(id)config completionHandler:(id)handler;
- (void)unmatchEthernet;
@end

@implementation NEExtensionAppPushProviderHostContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_4638 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_4638, &__block_literal_global_73);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_4639;

  return v3;
}

uint64_t __72__NEExtensionAppPushProviderHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol_protocol_4639 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C2FA0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_4641 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_4641, &__block_literal_global_4642);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_4643;

  return v3;
}

uint64_t __74__NEExtensionAppPushProviderHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol_protocol_4643 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C2F40];

  return MEMORY[0x1EEE66BB8]();
}

- (void)unmatchEthernet
{
  delegate = [(NEExtensionProviderHostContext *)&self->super.super.super.isa delegate];
  [delegate didReceiveUnmatchEthernet];
}

- (void)reportPushToTalkMessage:(id)message
{
  messageCopy = message;
  delegate = [(NEExtensionProviderHostContext *)&self->super.super.super.isa delegate];
  [delegate didReceivePushToTalkMessageWithUserInfo:messageCopy];
}

- (void)reportIncomingCall:(id)call
{
  callCopy = call;
  delegate = [(NEExtensionProviderHostContext *)&self->super.super.super.isa delegate];
  [delegate didReceiveIncomingCallWithUserInfo:callCopy];
}

- (void)sendTimerEvent
{
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.isa vendorContext];
  [vendorContext sendTimerEvent];
}

- (void)sendOutgoingCallMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.isa vendorContext];
  [vendorContext sendOutgoingCallMessage:messageCopy completionHandler:handlerCopy];
}

- (void)setProviderConfiguration:(id)configuration
{
  configurationCopy = configuration;
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.isa vendorContext];
  [vendorContext setProviderConfiguration:configurationCopy];
}

- (void)startConnectionWithProviderConfig:(id)config completionHandler:(id)handler
{
  handlerCopy = handler;
  configCopy = config;
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.isa vendorContext];
  [vendorContext startConnectionWithProviderConfig:configCopy completionHandler:handlerCopy];
}

@end