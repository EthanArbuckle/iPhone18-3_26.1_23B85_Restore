@interface MTRDeviceAttestationDeviceInfo
- (MTRDeviceAttestationDeviceInfo)initWithAttestationChallenge:(id)a3 attestationNonce:(id)a4 elementsTLV:(id)a5 elementsSignature:(id)a6 dacCertificate:(id)a7 dacPAICertificate:(id)a8 certificationDeclaration:(id)a9 basicInformationVendorID:(id)a10 basicInformationProductID:(id)a11;
@end

@implementation MTRDeviceAttestationDeviceInfo

- (MTRDeviceAttestationDeviceInfo)initWithAttestationChallenge:(id)a3 attestationNonce:(id)a4 elementsTLV:(id)a5 elementsSignature:(id)a6 dacCertificate:(id)a7 dacPAICertificate:(id)a8 certificationDeclaration:(id)a9 basicInformationVendorID:(id)a10 basicInformationProductID:(id)a11
{
  v50 = a3;
  v49 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v56.receiver = self;
  v56.super_class = MTRDeviceAttestationDeviceInfo;
  v24 = [(MTRDeviceAttestationDeviceInfo *)&v56 init];
  if (v24)
  {
    v25 = [v50 copy];
    attestationChallenge = v24->_attestationChallenge;
    v24->_attestationChallenge = v25;

    v27 = [v49 copy];
    attestationNonce = v24->_attestationNonce;
    v24->_attestationNonce = v27;

    v29 = [v17 copy];
    elementsTLV = v24->_elementsTLV;
    v24->_elementsTLV = v29;

    v31 = [v18 copy];
    elementsSignature = v24->_elementsSignature;
    v24->_elementsSignature = v31;

    v33 = [v19 copy];
    dacCertificate = v24->_dacCertificate;
    v24->_dacCertificate = v33;

    v35 = [v20 copy];
    dacPAICertificate = v24->_dacPAICertificate;
    v24->_dacPAICertificate = v35;

    v37 = [v21 copy];
    certificationDeclaration = v24->_certificationDeclaration;
    v24->_certificationDeclaration = v37;

    v39 = [v22 copy];
    basicInformationVendorID = v24->_basicInformationVendorID;
    v24->_basicInformationVendorID = v39;

    v41 = [v23 copy];
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