@interface MTRDeviceControllerFactoryParams
- (MTRDeviceControllerFactoryParams)initWithStorage:(id)storage;
@end

@implementation MTRDeviceControllerFactoryParams

- (MTRDeviceControllerFactoryParams)initWithStorage:(id)storage
{
  v5 = storage;
  v14.receiver = self;
  v14.super_class = MTRDeviceControllerFactoryParams;
  v6 = [(MTRDeviceControllerFactoryParams *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, storage);
    v7->_hasStorage = 1;
    otaProviderDelegate = v7->_otaProviderDelegate;
    v7->_otaProviderDelegate = 0;

    productAttestationAuthorityCertificates = v7->_productAttestationAuthorityCertificates;
    v7->_productAttestationAuthorityCertificates = 0;

    certificationDeclarationCertificates = v7->_certificationDeclarationCertificates;
    v7->_certificationDeclarationCertificates = 0;

    port = v7->_port;
    v7->_port = 0;

    v7->_shouldStartServer = 0;
    v12 = v7;
  }

  return v7;
}

@end