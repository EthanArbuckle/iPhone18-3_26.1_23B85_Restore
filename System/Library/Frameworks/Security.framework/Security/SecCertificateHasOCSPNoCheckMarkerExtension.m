@interface SecCertificateHasOCSPNoCheckMarkerExtension
@end

@implementation SecCertificateHasOCSPNoCheckMarkerExtension

const __CFArray *__SecCertificateHasOCSPNoCheckMarkerExtension_block_invoke()
{
  result = SecCertificateCreateOidDataFromString(0, @"1.3.6.1.5.5.7.48.1.5");
  SecCertificateHasOCSPNoCheckMarkerExtension_sOCSPNoCheckOIDData = result;
  return result;
}

@end