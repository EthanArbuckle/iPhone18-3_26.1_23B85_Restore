@interface ASDEventServiceExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
@end

@implementation ASDEventServiceExtensionContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_MergedGlobals_25 != -1)
  {
    dispatch_once(&_MergedGlobals_25, &__block_literal_global_1);
  }

  v3 = qword_1ED90D468;

  return v3;
}

uint64_t __66__ASDEventServiceExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  qword_1ED90D468 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F303B900];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (qword_1ED90D470 != -1)
  {
    dispatch_once(&qword_1ED90D470, &__block_literal_global_43);
  }

  v3 = qword_1ED90D478;

  return v3;
}

uint64_t __68__ASDEventServiceExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  qword_1ED90D478 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30373F8];

  return MEMORY[0x1EEE66BB8]();
}

@end