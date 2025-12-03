@interface MTSDeviceCredential
- (BOOL)isEqual:(id)equal;
- (MTSDeviceCredential)initWithCertificationDeclaration:(id)declaration deviceAttestationCertificate:(id)certificate productAttestationIntermediateCertificate:(id)intermediateCertificate;
- (MTSDeviceCredential)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTSDeviceCredential

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  certificationDeclaration = [(MTSDeviceCredential *)self certificationDeclaration];
  [coderCopy encodeObject:certificationDeclaration forKey:@"MTSDC.ck.certificationDeclaration"];

  deviceAttestationCertificate = [(MTSDeviceCredential *)self deviceAttestationCertificate];
  [coderCopy encodeObject:deviceAttestationCertificate forKey:@"MTSDC.ck.deviceAttestationCertificate"];

  productAttestationIntermediateCertificate = [(MTSDeviceCredential *)self productAttestationIntermediateCertificate];
  [coderCopy encodeObject:productAttestationIntermediateCertificate forKey:@"MTSDC.ck.productAttestationIntermediateCertificate"];
}

- (MTSDeviceCredential)initWithCoder:(id)coder
{
  v26 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDC.ck.certificationDeclaration"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDC.ck.deviceAttestationCertificate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDC.ck.productAttestationIntermediateCertificate"];
  v8 = v7;
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v18 = 138544130;
      v19 = v13;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_239824000, v12, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded certificationDeclaration: %@, deviceAttestationCertificate: %@, productAttestationIntermediateCertificate: %@", &v18, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    v15 = 0;
  }

  else
  {
    selfCopy = [(MTSDeviceCredential *)self initWithCertificationDeclaration:v5 deviceAttestationCertificate:v6 productAttestationIntermediateCertificate:v7];
    v15 = selfCopy;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (unint64_t)hash
{
  certificationDeclaration = [(MTSDeviceCredential *)self certificationDeclaration];
  v4 = [certificationDeclaration hash];
  deviceAttestationCertificate = [(MTSDeviceCredential *)self deviceAttestationCertificate];
  v6 = [deviceAttestationCertificate hash] ^ v4;
  productAttestationIntermediateCertificate = [(MTSDeviceCredential *)self productAttestationIntermediateCertificate];
  v8 = [productAttestationIntermediateCertificate hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    certificationDeclaration = [(MTSDeviceCredential *)self certificationDeclaration];
    certificationDeclaration2 = [v6 certificationDeclaration];
    if ([certificationDeclaration isEqual:certificationDeclaration2])
    {
      deviceAttestationCertificate = [(MTSDeviceCredential *)self deviceAttestationCertificate];
      deviceAttestationCertificate2 = [v6 deviceAttestationCertificate];
      if ([deviceAttestationCertificate isEqual:deviceAttestationCertificate2])
      {
        productAttestationIntermediateCertificate = [(MTSDeviceCredential *)self productAttestationIntermediateCertificate];
        productAttestationIntermediateCertificate2 = [v6 productAttestationIntermediateCertificate];
        v13 = [productAttestationIntermediateCertificate isEqual:productAttestationIntermediateCertificate2];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (MTSDeviceCredential)initWithCertificationDeclaration:(id)declaration deviceAttestationCertificate:(id)certificate productAttestationIntermediateCertificate:(id)intermediateCertificate
{
  declarationCopy = declaration;
  certificateCopy = certificate;
  intermediateCertificateCopy = intermediateCertificate;
  if (!declarationCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!certificateCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = intermediateCertificateCopy;
  if (!intermediateCertificateCopy)
  {
LABEL_9:
    v20 = _HMFPreconditionFailure();
    return +[(MTSDeviceCredential *)v20];
  }

  v22.receiver = self;
  v22.super_class = MTSDeviceCredential;
  v12 = [(MTSDeviceCredential *)&v22 init];
  if (v12)
  {
    v13 = [declarationCopy copy];
    certificationDeclaration = v12->_certificationDeclaration;
    v12->_certificationDeclaration = v13;

    v15 = [certificateCopy copy];
    deviceAttestationCertificate = v12->_deviceAttestationCertificate;
    v12->_deviceAttestationCertificate = v15;

    v17 = [v11 copy];
    productAttestationIntermediateCertificate = v12->_productAttestationIntermediateCertificate;
    v12->_productAttestationIntermediateCertificate = v17;
  }

  return v12;
}

@end