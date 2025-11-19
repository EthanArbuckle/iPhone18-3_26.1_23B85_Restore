@interface MTROperationalCertificateChain
- (MTROperationalCertificateChain)initWithOperationalCertificate:(MTRCertificateDERBytes)operationalCertificate intermediateCertificate:(MTRCertificateDERBytes)intermediateCertificate rootCertificate:(MTRCertificateDERBytes)rootCertificate adminSubject:(NSNumber *)adminSubject;
@end

@implementation MTROperationalCertificateChain

- (MTROperationalCertificateChain)initWithOperationalCertificate:(MTRCertificateDERBytes)operationalCertificate intermediateCertificate:(MTRCertificateDERBytes)intermediateCertificate rootCertificate:(MTRCertificateDERBytes)rootCertificate adminSubject:(NSNumber *)adminSubject
{
  v11 = operationalCertificate;
  v12 = intermediateCertificate;
  v13 = rootCertificate;
  v14 = adminSubject;
  v18.receiver = self;
  v18.super_class = MTROperationalCertificateChain;
  v15 = [(MTROperationalCertificateChain *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_operationalCertificate, operationalCertificate);
    objc_storeStrong(&v16->_intermediateCertificate, intermediateCertificate);
    objc_storeStrong(&v16->_rootCertificate, rootCertificate);
    objc_storeStrong(&v16->_adminSubject, adminSubject);
  }

  return v16;
}

@end