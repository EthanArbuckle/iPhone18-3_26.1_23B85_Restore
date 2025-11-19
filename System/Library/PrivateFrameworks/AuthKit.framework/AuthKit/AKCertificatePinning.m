@interface AKCertificatePinning
+ (BOOL)isValidCertificateTrust:(__SecTrust *)a3 forHostname:(id)a4;
@end

@implementation AKCertificatePinning

+ (BOOL)isValidCertificateTrust:(__SecTrust *)a3 forHostname:(id)a4
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v5 = checkPinningPolicy(v7, location);
  objc_storeStrong(&location, 0);
  return v5;
}

@end