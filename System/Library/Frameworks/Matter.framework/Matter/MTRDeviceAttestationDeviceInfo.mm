@interface MTRDeviceAttestationDeviceInfo
- (MTRDeviceAttestationDeviceInfo)initWithAttestationChallenge:(id)challenge attestationNonce:(id)nonce elementsTLV:(id)v elementsSignature:(id)signature dacCertificate:(id)certificate dacPAICertificate:(id)iCertificate certificationDeclaration:(id)declaration basicInformationVendorID:(id)self0 basicInformationProductID:(id)self1;
@end

@implementation MTRDeviceAttestationDeviceInfo

- (MTRDeviceAttestationDeviceInfo)initWithAttestationChallenge:(id)challenge attestationNonce:(id)nonce elementsTLV:(id)v elementsSignature:(id)signature dacCertificate:(id)certificate dacPAICertificate:(id)iCertificate certificationDeclaration:(id)declaration basicInformationVendorID:(id)self0 basicInformationProductID:(id)self1
{
  challengeCopy = challenge;
  nonceCopy = nonce;
  vCopy = v;
  signatureCopy = signature;
  certificateCopy = certificate;
  iCertificateCopy = iCertificate;
  declarationCopy = declaration;
  dCopy = d;
  iDCopy = iD;
  v56.receiver = self;
  v56.super_class = MTRDeviceAttestationDeviceInfo;
  v24 = [(MTRDeviceAttestationDeviceInfo *)&v56 init];
  if (v24)
  {
    v25 = [challengeCopy copy];
    attestationChallenge = v24->_attestationChallenge;
    v24->_attestationChallenge = v25;

    v27 = [nonceCopy copy];
    attestationNonce = v24->_attestationNonce;
    v24->_attestationNonce = v27;

    v29 = [vCopy copy];
    elementsTLV = v24->_elementsTLV;
    v24->_elementsTLV = v29;

    v31 = [signatureCopy copy];
    elementsSignature = v24->_elementsSignature;
    v24->_elementsSignature = v31;

    v33 = [certificateCopy copy];
    dacCertificate = v24->_dacCertificate;
    v24->_dacCertificate = v33;

    v35 = [iCertificateCopy copy];
    dacPAICertificate = v24->_dacPAICertificate;
    v24->_dacPAICertificate = v35;

    v37 = [declarationCopy copy];
    certificationDeclaration = v24->_certificationDeclaration;
    v24->_certificationDeclaration = v37;

    v39 = [dCopy copy];
    basicInformationVendorID = v24->_basicInformationVendorID;
    v24->_basicInformationVendorID = v39;

    v41 = [iDCopy copy];
    basicInformationProductID = v24->_basicInformationProductID;
    v24->_basicInformationProductID = v41;

    v52[0] = 0;
    v54 = 0;
    v43 = v24->_dacCertificate;
    sub_238DB6950(&v57, [(NSData *)v43 bytes], [(NSData *)v43 length]);

    *v51 = v57;
    if (!sub_2393FB970(v51, v52))
    {
      LOBYTE(v57) = v52[0];
      if (v52[0] == 1)
      {
        WORD1(v57) = v53;
        v44 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238EAB248(&v57)];
      }

      else
      {
        v44 = 0;
      }

      vendorID = v24->_vendorID;
      v24->_vendorID = v44;

      LOBYTE(v57) = v54;
      if (v54 == 1)
      {
        WORD1(v57) = v55;
        v46 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238EAB248(&v57)];
      }

      else
      {
        v46 = 0;
      }

      productID = v24->_productID;
      v24->_productID = v46;
    }
  }

  return v24;
}

@end