@interface AKCertificatePinning
+ (BOOL)isValidCertificateTrust:(__SecTrust *)trust forHostname:(id)hostname;
@end

@implementation AKCertificatePinning

+ (BOOL)isValidCertificateTrust:(__SecTrust *)trust forHostname:(id)hostname
{
  selfCopy = self;
  v8 = a2;
  trustCopy = trust;
  location = 0;
  objc_storeStrong(&location, hostname);
  v5 = checkPinningPolicy(trustCopy, location);
  objc_storeStrong(&location, 0);
  return v5;
}

@end