@interface MTRDeviceControllerExternalCertificateParameters
- (MTRDeviceControllerExternalCertificateParameters)initWithStorageDelegate:(id)delegate storageDelegateQueue:(id)queue uniqueIdentifier:(id)identifier ipk:(id)ipk vendorID:(id)d operationalKeypair:(id)keypair operationalCertificate:(id)certificate intermediateCertificate:(id)self0 rootCertificate:(id)self1;
@end

@implementation MTRDeviceControllerExternalCertificateParameters

- (MTRDeviceControllerExternalCertificateParameters)initWithStorageDelegate:(id)delegate storageDelegateQueue:(id)queue uniqueIdentifier:(id)identifier ipk:(id)ipk vendorID:(id)d operationalKeypair:(id)keypair operationalCertificate:(id)certificate intermediateCertificate:(id)self0 rootCertificate:(id)self1
{
  v12.receiver = self;
  v12.super_class = MTRDeviceControllerExternalCertificateParameters;
  return [(MTRDeviceControllerParameters *)&v12 initWithStorageDelegate:delegate storageDelegateQueue:queue uniqueIdentifier:identifier ipk:ipk vendorID:d operationalKeypair:keypair operationalCertificate:certificate intermediateCertificate:intermediateCertificate rootCertificate:rootCertificate];
}

@end