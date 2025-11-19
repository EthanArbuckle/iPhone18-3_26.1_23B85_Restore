@interface HKBackgroundObservationExtensionContext
@end

@implementation HKBackgroundObservationExtensionContext

uint64_t __75___HKBackgroundObservationExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06A8B98];
  v1 = _extensionAuxiliaryHostProtocol_interface;
  _extensionAuxiliaryHostProtocol_interface = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __77___HKBackgroundObservationExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06A8B38];
  v1 = _extensionAuxiliaryVendorProtocol_interface;
  _extensionAuxiliaryVendorProtocol_interface = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end