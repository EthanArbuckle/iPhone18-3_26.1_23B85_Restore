@interface MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)struct;
- (MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams)init;
- (MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams)initWithDecodableStruct:(const DecodableType *)struct;
- (MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams

- (MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams;
  v2 = [(MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams *)&v6 init];
  v3 = v2;
  if (v2)
  {
    caid = v2->_caid;
    v2->_caid = &unk_284C3E4C8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams);
  caid = [(MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams *)self caid];
  [(MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams *)v4 setCaid:caid];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: caid:%@ >", v5, self->_caid];;

  return v6;
}

- (MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams;
  v7 = [(MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:2049 commandID:5 error:error];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      v12 = 0;
      v8 = sub_238F005E4(&v12, v13);
      if (!v8)
      {
        v8 = [(MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v14);
LABEL_10:

  return v10;
}

- (MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams)initWithDecodableStruct:(const DecodableType *)struct
{
  v10.receiver = self;
  v10.super_class = MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams;
  v4 = [(MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)struct
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*&struct->var0];
  [(MTRTLSCertificateManagementClusterLookupRootCertificateResponseParams *)self setCaid:v4];

  v5 = 0;
  v6 = 0;
  result.mFile = v6;
  result.mError = v5;
  result.mLine = HIDWORD(v5);
  return result;
}

@end