@interface MTSDeviceCredential
- (BOOL)isEqual:(id)a3;
- (MTSDeviceCredential)initWithCertificationDeclaration:(id)a3 deviceAttestationCertificate:(id)a4 productAttestationIntermediateCertificate:(id)a5;
- (MTSDeviceCredential)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTSDeviceCredential

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MTSDeviceCredential *)self certificationDeclaration];
  [v4 encodeObject:v5 forKey:@"MTSDC.ck.certificationDeclaration"];

  v6 = [(MTSDeviceCredential *)self deviceAttestationCertificate];
  [v4 encodeObject:v6 forKey:@"MTSDC.ck.deviceAttestationCertificate"];

  v7 = [(MTSDeviceCredential *)self productAttestationIntermediateCertificate];
  [v4 encodeObject:v7 forKey:@"MTSDC.ck.productAttestationIntermediateCertificate"];
}

- (MTSDeviceCredential)initWithCoder:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDC.ck.certificationDeclaration"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDC.ck.deviceAttestationCertificate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDC.ck.productAttestationIntermediateCertificate"];
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
    v14 = self;
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
    v14 = [(MTSDeviceCredential *)self initWithCertificationDeclaration:v5 deviceAttestationCertificate:v6 productAttestationIntermediateCertificate:v7];
    v15 = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (unint64_t)hash
{
  v3 = [(MTSDeviceCredential *)self certificationDeclaration];
  v4 = [v3 hash];
  v5 = [(MTSDeviceCredential *)self deviceAttestationCertificate];
  v6 = [v5 hash] ^ v4;
  v7 = [(MTSDeviceCredential *)self productAttestationIntermediateCertificate];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(MTSDeviceCredential *)self certificationDeclaration];
    v8 = [v6 certificationDeclaration];
    if ([v7 isEqual:v8])
    {
      v9 = [(MTSDeviceCredential *)self deviceAttestationCertificate];
      v10 = [v6 deviceAttestationCertificate];
      if ([v9 isEqual:v10])
      {
        v11 = [(MTSDeviceCredential *)self productAttestationIntermediateCertificate];
        v12 = [v6 productAttestationIntermediateCertificate];
        v13 = [v11 isEqual:v12];
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

- (MTSDeviceCredential)initWithCertificationDeclaration:(id)a3 deviceAttestationCertificate:(id)a4 productAttestationIntermediateCertificate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v9)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = v10;
  if (!v10)
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
    v13 = [v8 copy];
    certificationDeclaration = v12->_certificationDeclaration;
    v12->_certificationDeclaration = v13;

    v15 = [v9 copy];
    deviceAttestationCertificate = v12->_deviceAttestationCertificate;
    v12->_deviceAttestationCertificate = v15;

    v17 = [v11 copy];
    productAttestationIntermediateCertificate = v12->_productAttestationIntermediateCertificate;
    v12->_productAttestationIntermediateCertificate = v17;
  }

  return v12;
}

@end