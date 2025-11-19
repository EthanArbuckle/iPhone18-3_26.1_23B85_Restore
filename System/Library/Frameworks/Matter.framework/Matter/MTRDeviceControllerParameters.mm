@interface MTRDeviceControllerParameters
+ (id)fabricIDFromNOC:(id)a3;
+ (id)nodeIDFromNOC:(id)a3;
+ (id)publicKeyFromCertificate:(id)a3;
- (MTRDeviceControllerParameters)initWithStorageDelegate:(id)a3 storageDelegateQueue:(id)a4 uniqueIdentifier:(id)a5 ipk:(id)a6 vendorID:(id)a7 operationalKeypair:(id)a8 operationalCertificate:(id)a9 intermediateCertificate:(id)a10 rootCertificate:(id)a11;
- (void)setOTAProviderDelegate:(id)a3 queue:(id)a4;
- (void)setOperationalCertificateIssuer:(id)a3 queue:(id)a4;
@end

@implementation MTRDeviceControllerParameters

- (MTRDeviceControllerParameters)initWithStorageDelegate:(id)a3 storageDelegateQueue:(id)a4 uniqueIdentifier:(id)a5 ipk:(id)a6 vendorID:(id)a7 operationalKeypair:(id)a8 operationalCertificate:(id)a9 intermediateCertificate:(id)a10 rootCertificate:(id)a11
{
  v34 = a3;
  v33 = a4;
  v32 = a5;
  v31 = a6;
  v30 = a7;
  v29 = a8;
  v28 = a9;
  v27 = a10;
  v26 = a11;
  v35.receiver = self;
  v35.super_class = MTRDeviceControllerParameters;
  v18 = [(MTRDeviceControllerAbstractParameters *)&v35 _initInternal];
  v19 = v18;
  if (v18)
  {
    v20 = *&v18->_shouldAdvertiseOperational;
    *&v18->_shouldAdvertiseOperational = 0;

    productAttestationAuthorityCertificates = v19->_productAttestationAuthorityCertificates;
    v19->_productAttestationAuthorityCertificates = 0;

    *(&v19->super._startSuspended + 1) = 0;
    objc_storeStrong(&v19->_storageBehaviorConfiguration, a6);
    objc_storeStrong(&v19->_ipk, a7);
    objc_storeStrong(&v19->_vendorID, a11);
    objc_storeStrong(&v19->_rootCertificate, a10);
    objc_storeStrong(&v19->_intermediateCertificate, a9);
    objc_storeStrong(&v19->_operationalCertificate, a8);
    operationalKeypair = v19->_operationalKeypair;
    v19->_operationalKeypair = 0;

    operationalCertificateIssuer = v19->_operationalCertificateIssuer;
    v19->_operationalCertificateIssuer = 0;

    objc_storeStrong(&v19->_operationalCertificateIssuerQueue, a3);
    objc_storeStrong(&v19->_storageDelegate, a4);
    objc_storeStrong(&v19->_storageDelegateQueue, a5);
    v19->_certificationDeclarationCertificates = 300;
    v24 = v19;
  }

  return v19;
}

- (void)setOperationalCertificateIssuer:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  operationalKeypair = self->_operationalKeypair;
  self->_operationalKeypair = v6;
  v10 = v6;

  operationalCertificateIssuer = self->_operationalCertificateIssuer;
  self->_operationalCertificateIssuer = v7;
}

- (void)setOTAProviderDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  uniqueIdentifier = self->_uniqueIdentifier;
  self->_uniqueIdentifier = v6;
  v10 = v6;

  otaProviderDelegate = self->_otaProviderDelegate;
  self->_otaProviderDelegate = v7;
}

+ (id)nodeIDFromNOC:(id)a3
{
  v5 = 0;
  sub_239220D54(a3, &v5, &v6);
  v3 = v5;

  return v3;
}

+ (id)fabricIDFromNOC:(id)a3
{
  v5 = 0;
  sub_239220D54(a3, &v6, &v5);
  v3 = v5;

  return v3;
}

+ (id)publicKeyFromCertificate:(id)a3
{
  v11[9] = *MEMORY[0x277D85DE8];
  v10 = &unk_284BB9138;
  v3 = a3;
  v4 = v3;
  sub_238DB6950(&v9, [v3 bytes], objc_msgSend(v3, "length"));

  v8 = v9;
  if (sub_2393FA970(&v8, &v10))
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:65];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end