@interface MTRDeviceAttestationInfo
- (MTRDeviceAttestationInfo)initWithDeviceAttestationChallenge:(NSData *)challenge nonce:(NSData *)nonce elementsTLV:(MTRTLVBytes)elementsTLV elementsSignature:(NSData *)elementsSignature deviceAttestationCertificate:(MTRCertificateDERBytes)deviceAttestationCertificate productAttestationIntermediateCertificate:(MTRCertificateDERBytes)processAttestationIntermediateCertificate certificationDeclaration:(NSData *)certificationDeclaration firmwareInfo:(NSData *)firmwareInfo;
@end

@implementation MTRDeviceAttestationInfo

- (MTRDeviceAttestationInfo)initWithDeviceAttestationChallenge:(NSData *)challenge nonce:(NSData *)nonce elementsTLV:(MTRTLVBytes)elementsTLV elementsSignature:(NSData *)elementsSignature deviceAttestationCertificate:(MTRCertificateDERBytes)deviceAttestationCertificate productAttestationIntermediateCertificate:(MTRCertificateDERBytes)processAttestationIntermediateCertificate certificationDeclaration:(NSData *)certificationDeclaration firmwareInfo:(NSData *)firmwareInfo
{
  v27 = challenge;
  v26 = nonce;
  v25 = elementsTLV;
  v24 = elementsSignature;
  v23 = deviceAttestationCertificate;
  v22 = processAttestationIntermediateCertificate;
  v21 = certificationDeclaration;
  v17 = firmwareInfo;
  v28.receiver = self;
  v28.super_class = MTRDeviceAttestationInfo;
  v18 = [(MTRDeviceAttestationInfo *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_challenge, challenge);
    objc_storeStrong(&v19->_nonce, nonce);
    objc_storeStrong(&v19->_elementsTLV, elementsTLV);
    objc_storeStrong(&v19->_elementsSignature, elementsSignature);
    objc_storeStrong(&v19->_deviceAttestationCertificate, deviceAttestationCertificate);
    objc_storeStrong(&v19->_productAttestationIntermediateCertificate, processAttestationIntermediateCertificate);
    objc_storeStrong(&v19->_certificationDeclaration, certificationDeclaration);
    objc_storeStrong(&v19->_firmwareInfo, firmwareInfo);
  }

  return v19;
}

@end