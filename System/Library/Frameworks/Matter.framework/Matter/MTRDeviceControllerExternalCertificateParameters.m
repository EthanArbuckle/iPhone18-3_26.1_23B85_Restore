@interface MTRDeviceControllerExternalCertificateParameters
- (MTRDeviceControllerExternalCertificateParameters)initWithStorageDelegate:(id)a3 storageDelegateQueue:(id)a4 uniqueIdentifier:(id)a5 ipk:(id)a6 vendorID:(id)a7 operationalKeypair:(id)a8 operationalCertificate:(id)a9 intermediateCertificate:(id)a10 rootCertificate:(id)a11;
@end

@implementation MTRDeviceControllerExternalCertificateParameters

- (MTRDeviceControllerExternalCertificateParameters)initWithStorageDelegate:(id)a3 storageDelegateQueue:(id)a4 uniqueIdentifier:(id)a5 ipk:(id)a6 vendorID:(id)a7 operationalKeypair:(id)a8 operationalCertificate:(id)a9 intermediateCertificate:(id)a10 rootCertificate:(id)a11
{
  v12.receiver = self;
  v12.super_class = MTRDeviceControllerExternalCertificateParameters;
  return [(MTRDeviceControllerParameters *)&v12 initWithStorageDelegate:a3 storageDelegateQueue:a4 uniqueIdentifier:a5 ipk:a6 vendorID:a7 operationalKeypair:a8 operationalCertificate:a9 intermediateCertificate:a10 rootCertificate:a11];
}

@end