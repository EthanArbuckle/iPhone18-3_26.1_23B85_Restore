@interface MTRTLSCertificateManagementClusterTLSClientCertificateDetailStruct
- (MTRTLSCertificateManagementClusterTLSClientCertificateDetailStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRTLSCertificateManagementClusterTLSClientCertificateDetailStruct

- (MTRTLSCertificateManagementClusterTLSClientCertificateDetailStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRTLSCertificateManagementClusterTLSClientCertificateDetailStruct;
  v2 = [(MTRTLSCertificateManagementClusterTLSClientCertificateDetailStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    ccdid = v2->_ccdid;
    v2->_ccdid = &unk_284C3E588;

    clientCertificate = v3->_clientCertificate;
    v3->_clientCertificate = 0;

    intermediateCertificates = v3->_intermediateCertificates;
    v3->_intermediateCertificates = 0;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRTLSCertificateManagementClusterTLSClientCertificateDetailStruct);
  ccdid = [(MTRTLSCertificateManagementClusterTLSClientCertificateDetailStruct *)self ccdid];
  [(MTRTLSCertificateManagementClusterTLSClientCertificateDetailStruct *)v4 setCcdid:ccdid];

  clientCertificate = [(MTRTLSCertificateManagementClusterTLSClientCertificateDetailStruct *)self clientCertificate];
  [(MTRTLSCertificateManagementClusterTLSClientCertificateDetailStruct *)v4 setClientCertificate:clientCertificate];

  intermediateCertificates = [(MTRTLSCertificateManagementClusterTLSClientCertificateDetailStruct *)self intermediateCertificates];
  [(MTRTLSCertificateManagementClusterTLSClientCertificateDetailStruct *)v4 setIntermediateCertificates:intermediateCertificates];

  fabricIndex = [(MTRTLSCertificateManagementClusterTLSClientCertificateDetailStruct *)self fabricIndex];
  [(MTRTLSCertificateManagementClusterTLSClientCertificateDetailStruct *)v4 setFabricIndex:fabricIndex];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  ccdid = self->_ccdid;
  v7 = [(NSData *)self->_clientCertificate base64EncodedStringWithOptions:0];
  v8 = [v3 stringWithFormat:@"<%@: ccdid:%@ clientCertificate:%@; intermediateCertificates:%@; fabricIndex:%@; >", v5, ccdid, v7, self->_intermediateCertificates, self->_fabricIndex];;

  return v8;
}

@end