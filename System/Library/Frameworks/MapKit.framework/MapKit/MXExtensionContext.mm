@interface MXExtensionContext
@end

@implementation MXExtensionContext

void __56___MXExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1657CC0];
  v1 = _extensionAuxiliaryVendorProtocol_protocol;
  _extensionAuxiliaryVendorProtocol_protocol = v0;

  v2 = _extensionAuxiliaryVendorProtocol_protocol;
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F16E53B0];
  [v2 setInterface:v3 forSelector:sel_startSendingUpdatesForRequest_requestDispatcher_toObserver_ argumentIndex:2 ofReply:0];
}

void __54___MXExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F164A338];
  v1 = _extensionAuxiliaryHostProtocol_protocol;
  _extensionAuxiliaryHostProtocol_protocol = v0;
}

@end