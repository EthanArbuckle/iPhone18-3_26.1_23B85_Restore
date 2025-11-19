@interface _MXExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
@end

@implementation _MXExtensionContext

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit, &__block_literal_global_54_30539);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol;

  return v3;
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit, &__block_literal_global_30544);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol;

  return v3;
}

@end