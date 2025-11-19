@interface MTRTLSCertificateManagementClusterFindClientCertificateResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRTLSCertificateManagementClusterFindClientCertificateResponseParams)init;
- (MTRTLSCertificateManagementClusterFindClientCertificateResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRTLSCertificateManagementClusterFindClientCertificateResponseParams)initWithResponseValue:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRTLSCertificateManagementClusterFindClientCertificateResponseParams

- (MTRTLSCertificateManagementClusterFindClientCertificateResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRTLSCertificateManagementClusterFindClientCertificateResponseParams;
  v2 = [(MTRTLSCertificateManagementClusterFindClientCertificateResponseParams *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA60] array];
    certificateDetails = v2->_certificateDetails;
    v2->_certificateDetails = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRTLSCertificateManagementClusterFindClientCertificateResponseParams);
  v5 = [(MTRTLSCertificateManagementClusterFindClientCertificateResponseParams *)self certificateDetails];
  [(MTRTLSCertificateManagementClusterFindClientCertificateResponseParams *)v4 setCertificateDetails:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: certificateDetails:%@ >", v5, self->_certificateDetails];;

  return v6;
}

- (MTRTLSCertificateManagementClusterFindClientCertificateResponseParams)initWithResponseValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = MTRTLSCertificateManagementClusterFindClientCertificateResponseParams;
  v7 = [(MTRTLSCertificateManagementClusterFindClientCertificateResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:2049 commandID:11 error:a4];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      sub_2393C5AAC(v12);
      sub_2393C5ADC(v12, 0, 0);
      v12[72] = 0;
      v8 = sub_238EFD1FC(v12, v13);
      if (!v8)
      {
        v8 = [(MTRTLSCertificateManagementClusterFindClientCertificateResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, a4);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v14);
LABEL_10:

  return v10;
}

- (MTRTLSCertificateManagementClusterFindClientCertificateResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRTLSCertificateManagementClusterFindClientCertificateResponseParams;
  v4 = [(MTRTLSCertificateManagementClusterFindClientCertificateResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRTLSCertificateManagementClusterFindClientCertificateResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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

- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3
{
  v4 = objc_opt_new();
  sub_238E8477C(a3, v23);
  while (sub_238E847D0(v23))
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v24];
    [v5 setCcdid:v6];

    if (v25[0] == 1 && (sub_238DE36B8(v25)[16] & 1) != 0)
    {
      v7 = sub_238DE36B8(v25);
      if ((v7[16] & 1) == 0)
      {
        sub_238EA195C();
      }

      v8 = [MEMORY[0x277CBEA90] dataWithBytes:*v7 length:*(v7 + 1)];
      [v5 setClientCertificate:v8];
    }

    else
    {
      [v5 setClientCertificate:0];
    }

    if (v26[0] == 1)
    {
      v9 = objc_opt_new();
      v10 = sub_238DE36B8(v26);
      sub_2393C5AAC(v20);
      v18 = 0;
      v19 = 0;
      sub_2393C5BDC(v20, v10);
      v21 = 0;
      v22 = 0;
      while (sub_238EA1A80(&v18) && sub_238EA49F4(&v18))
      {
        v11 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:v22];
        [v9 addObject:v11];
      }

      if (v18 != 33)
      {
        v12 = v18;
        if (v18)
        {
          v14 = v19;

          goto LABEL_23;
        }
      }

      [v5 setIntermediateCertificates:v9];
    }

    else
    {
      [v5 setIntermediateCertificates:0];
    }

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v26[80]];
    [v5 setFabricIndex:v13];

    [v4 addObject:v5];
  }

  if (LODWORD(v23[0]) == 33 || (v12 = v23[0], !LODWORD(v23[0])))
  {
    [(MTRTLSCertificateManagementClusterFindClientCertificateResponseParams *)self setCertificateDetails:v4];

    v14 = 0;
    v12 = 0;
    goto LABEL_24;
  }

  v14 = v23[1];
LABEL_23:

LABEL_24:
  v15 = v12;
  v16 = v14;
  result.mFile = v16;
  result.mError = v15;
  result.mLine = HIDWORD(v15);
  return result;
}

@end