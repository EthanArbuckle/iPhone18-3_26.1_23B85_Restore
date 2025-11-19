@interface AttestationInfo
- (AttestationInfo)initWithChallenge:(NSData *)challenge nonce:(NSData *)nonce elements:(NSData *)elements elementsSignature:(NSData *)elementsSignature dac:(NSData *)dac pai:(NSData *)pai certificationDeclaration:(NSData *)certificationDeclaration firmwareInfo:(NSData *)firmwareInfo;
@end

@implementation AttestationInfo

- (AttestationInfo)initWithChallenge:(NSData *)challenge nonce:(NSData *)nonce elements:(NSData *)elements elementsSignature:(NSData *)elementsSignature dac:(NSData *)dac pai:(NSData *)pai certificationDeclaration:(NSData *)certificationDeclaration firmwareInfo:(NSData *)firmwareInfo
{
  v27 = challenge;
  v26 = nonce;
  v25 = elements;
  v24 = elementsSignature;
  v23 = dac;
  v22 = pai;
  v21 = certificationDeclaration;
  v17 = firmwareInfo;
  v28.receiver = self;
  v28.super_class = AttestationInfo;
  v18 = [(AttestationInfo *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_challenge, challenge);
    objc_storeStrong(&v19->_nonce, nonce);
    objc_storeStrong(&v19->_elements, elements);
    objc_storeStrong(&v19->_elementsSignature, elementsSignature);
    objc_storeStrong(&v19->_dac, dac);
    objc_storeStrong(&v19->_pai, pai);
    objc_storeStrong(&v19->_certificationDeclaration, certificationDeclaration);
    objc_storeStrong(&v19->_firmwareInfo, firmwareInfo);
  }

  return v19;
}

@end