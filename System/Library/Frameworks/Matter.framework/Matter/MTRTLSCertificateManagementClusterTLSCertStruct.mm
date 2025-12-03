@interface MTRTLSCertificateManagementClusterTLSCertStruct
- (MTRTLSCertificateManagementClusterTLSCertStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRTLSCertificateManagementClusterTLSCertStruct

- (MTRTLSCertificateManagementClusterTLSCertStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRTLSCertificateManagementClusterTLSCertStruct;
  v2 = [(MTRTLSCertificateManagementClusterTLSCertStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    caid = v2->_caid;
    v2->_caid = &unk_284C3E588;

    certificate = v3->_certificate;
    v3->_certificate = 0;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRTLSCertificateManagementClusterTLSCertStruct);
  caid = [(MTRTLSCertificateManagementClusterTLSCertStruct *)self caid];
  [(MTRTLSCertificateManagementClusterTLSCertStruct *)v4 setCaid:caid];

  certificate = [(MTRTLSCertificateManagementClusterTLSCertStruct *)self certificate];
  [(MTRTLSCertificateManagementClusterTLSCertStruct *)v4 setCertificate:certificate];

  fabricIndex = [(MTRTLSCertificateManagementClusterTLSCertStruct *)self fabricIndex];
  [(MTRTLSCertificateManagementClusterTLSCertStruct *)v4 setFabricIndex:fabricIndex];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  caid = self->_caid;
  v7 = [(NSData *)self->_certificate base64EncodedStringWithOptions:0];
  v8 = [v3 stringWithFormat:@"<%@: caid:%@ certificate:%@; fabricIndex:%@; >", v5, caid, v7, self->_fabricIndex];;

  return v8;
}

@end