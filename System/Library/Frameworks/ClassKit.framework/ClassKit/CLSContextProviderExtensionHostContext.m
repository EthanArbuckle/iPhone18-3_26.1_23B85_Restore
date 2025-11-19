@interface CLSContextProviderExtensionHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
@end

@implementation CLSContextProviderExtensionHostContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (qword_280B2A0D8 != -1)
  {
    dispatch_once(&qword_280B2A0D8, &unk_284A07808);
  }

  v3 = qword_280B2A0E0;

  return v3;
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (qword_280B2A0E8 != -1)
  {
    dispatch_once(&qword_280B2A0E8, &unk_284A07688);
  }

  v3 = qword_280B2A0F0;

  return v3;
}

@end