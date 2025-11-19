@interface NEExtensionAppPushProviderHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)reportIncomingCall:(id)a3;
- (void)reportPushToTalkMessage:(id)a3;
- (void)sendOutgoingCallMessage:(id)a3 completionHandler:(id)a4;
- (void)sendTimerEvent;
- (void)setProviderConfiguration:(id)a3;
- (void)startConnectionWithProviderConfig:(id)a3 completionHandler:(id)a4;
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
  v2 = [(NEExtensionProviderHostContext *)&self->super.super.super.isa delegate];
  [v2 didReceiveUnmatchEthernet];
}

- (void)reportPushToTalkMessage:(id)a3
{
  v4 = a3;
  v5 = [(NEExtensionProviderHostContext *)&self->super.super.super.isa delegate];
  [v5 didReceivePushToTalkMessageWithUserInfo:v4];
}

- (void)reportIncomingCall:(id)a3
{
  v4 = a3;
  v5 = [(NEExtensionProviderHostContext *)&self->super.super.super.isa delegate];
  [v5 didReceiveIncomingCallWithUserInfo:v4];
}

- (void)sendTimerEvent
{
  v2 = [(NEExtensionProviderHostContext *)&self->super.super.super.isa vendorContext];
  [v2 sendTimerEvent];
}

- (void)sendOutgoingCallMessage:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NEExtensionProviderHostContext *)&self->super.super.super.isa vendorContext];
  [v8 sendOutgoingCallMessage:v7 completionHandler:v6];
}

- (void)setProviderConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(NEExtensionProviderHostContext *)&self->super.super.super.isa vendorContext];
  [v5 setProviderConfiguration:v4];
}

- (void)startConnectionWithProviderConfig:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NEExtensionProviderHostContext *)&self->super.super.super.isa vendorContext];
  [v8 startConnectionWithProviderConfig:v7 completionHandler:v6];
}

@end