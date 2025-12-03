@interface MTRDeviceControllerParameters
+ (id)fabricIDFromNOC:(id)c;
+ (id)nodeIDFromNOC:(id)c;
+ (id)publicKeyFromCertificate:(id)certificate;
- (MTRDeviceControllerParameters)initWithStorageDelegate:(id)delegate storageDelegateQueue:(id)queue uniqueIdentifier:(id)identifier ipk:(id)ipk vendorID:(id)d operationalKeypair:(id)keypair operationalCertificate:(id)certificate intermediateCertificate:(id)self0 rootCertificate:(id)self1;
- (void)setOTAProviderDelegate:(id)delegate queue:(id)queue;
- (void)setOperationalCertificateIssuer:(id)issuer queue:(id)queue;
@end

@implementation MTRDeviceControllerParameters

- (MTRDeviceControllerParameters)initWithStorageDelegate:(id)delegate storageDelegateQueue:(id)queue uniqueIdentifier:(id)identifier ipk:(id)ipk vendorID:(id)d operationalKeypair:(id)keypair operationalCertificate:(id)certificate intermediateCertificate:(id)self0 rootCertificate:(id)self1
{
  delegateCopy = delegate;
  queueCopy = queue;
  identifierCopy = identifier;
  ipkCopy = ipk;
  dCopy = d;
  keypairCopy = keypair;
  certificateCopy = certificate;
  intermediateCertificateCopy = intermediateCertificate;
  rootCertificateCopy = rootCertificate;
  v35.receiver = self;
  v35.super_class = MTRDeviceControllerParameters;
  _initInternal = [(MTRDeviceControllerAbstractParameters *)&v35 _initInternal];
  v19 = _initInternal;
  if (_initInternal)
  {
    v20 = *&_initInternal->_shouldAdvertiseOperational;
    *&_initInternal->_shouldAdvertiseOperational = 0;

    productAttestationAuthorityCertificates = v19->_productAttestationAuthorityCertificates;
    v19->_productAttestationAuthorityCertificates = 0;

    *(&v19->super._startSuspended + 1) = 0;
    objc_storeStrong(&v19->_storageBehaviorConfiguration, ipk);
    objc_storeStrong(&v19->_ipk, d);
    objc_storeStrong(&v19->_vendorID, rootCertificate);
    objc_storeStrong(&v19->_rootCertificate, intermediateCertificate);
    objc_storeStrong(&v19->_intermediateCertificate, certificate);
    objc_storeStrong(&v19->_operationalCertificate, keypair);
    operationalKeypair = v19->_operationalKeypair;
    v19->_operationalKeypair = 0;

    operationalCertificateIssuer = v19->_operationalCertificateIssuer;
    v19->_operationalCertificateIssuer = 0;

    objc_storeStrong(&v19->_operationalCertificateIssuerQueue, delegate);
    objc_storeStrong(&v19->_storageDelegate, queue);
    objc_storeStrong(&v19->_storageDelegateQueue, identifier);
    v19->_certificationDeclarationCertificates = 300;
    v24 = v19;
  }

  return v19;
}

- (void)setOperationalCertificateIssuer:(id)issuer queue:(id)queue
{
  issuerCopy = issuer;
  queueCopy = queue;
  operationalKeypair = self->_operationalKeypair;
  self->_operationalKeypair = issuerCopy;
  v10 = issuerCopy;

  operationalCertificateIssuer = self->_operationalCertificateIssuer;
  self->_operationalCertificateIssuer = queueCopy;
}

- (void)setOTAProviderDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  uniqueIdentifier = self->_uniqueIdentifier;
  self->_uniqueIdentifier = delegateCopy;
  v10 = delegateCopy;

  otaProviderDelegate = self->_otaProviderDelegate;
  self->_otaProviderDelegate = queueCopy;
}

+ (id)nodeIDFromNOC:(id)c
{
  v5 = 0;
  sub_239220D54(c, &v5, &v6);
  v3 = v5;

  return v3;
}

+ (id)fabricIDFromNOC:(id)c
{
  v5 = 0;
  sub_239220D54(c, &v6, &v5);
  v3 = v5;

  return v3;
}

+ (id)publicKeyFromCertificate:(id)certificate
{
  v11[9] = *MEMORY[0x277D85DE8];
  v10 = &unk_284BB9138;
  certificateCopy = certificate;
  v4 = certificateCopy;
  sub_238DB6950(&v9, [certificateCopy bytes], objc_msgSend(certificateCopy, "length"));

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