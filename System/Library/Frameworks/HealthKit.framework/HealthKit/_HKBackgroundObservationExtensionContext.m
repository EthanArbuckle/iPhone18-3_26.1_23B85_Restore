@interface _HKBackgroundObservationExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
@end

@implementation _HKBackgroundObservationExtensionContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken != -1)
  {
    +[_HKBackgroundObservationExtensionContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol_interface;

  return v3;
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken != -1)
  {
    +[_HKBackgroundObservationExtensionContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol_interface;

  return v3;
}

@end