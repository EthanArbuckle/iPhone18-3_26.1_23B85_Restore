@interface MTRTLSClientManagementClusterProvisionEndpointParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRTLSClientManagementClusterProvisionEndpointParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRTLSClientManagementClusterProvisionEndpointParams

- (MTRTLSClientManagementClusterProvisionEndpointParams)init
{
  v12.receiver = self;
  v12.super_class = MTRTLSClientManagementClusterProvisionEndpointParams;
  v2 = [(MTRTLSClientManagementClusterProvisionEndpointParams *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] data];
    hostname = v2->_hostname;
    v2->_hostname = v3;

    port = v2->_port;
    v2->_port = &unk_284C3E4C8;

    caid = v2->_caid;
    v2->_caid = &unk_284C3E4C8;

    ccdid = v2->_ccdid;
    v2->_ccdid = 0;

    endpointID = v2->_endpointID;
    v2->_endpointID = 0;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRTLSClientManagementClusterProvisionEndpointParams);
  v5 = [(MTRTLSClientManagementClusterProvisionEndpointParams *)self hostname];
  [(MTRTLSClientManagementClusterProvisionEndpointParams *)v4 setHostname:v5];

  v6 = [(MTRTLSClientManagementClusterProvisionEndpointParams *)self port];
  [(MTRTLSClientManagementClusterProvisionEndpointParams *)v4 setPort:v6];

  v7 = [(MTRTLSClientManagementClusterProvisionEndpointParams *)self caid];
  [(MTRTLSClientManagementClusterProvisionEndpointParams *)v4 setCaid:v7];

  v8 = [(MTRTLSClientManagementClusterProvisionEndpointParams *)self ccdid];
  [(MTRTLSClientManagementClusterProvisionEndpointParams *)v4 setCcdid:v8];

  v9 = [(MTRTLSClientManagementClusterProvisionEndpointParams *)self endpointID];
  [(MTRTLSClientManagementClusterProvisionEndpointParams *)v4 setEndpointID:v9];

  v10 = [(MTRTLSClientManagementClusterProvisionEndpointParams *)self timedInvokeTimeoutMs];
  [(MTRTLSClientManagementClusterProvisionEndpointParams *)v4 setTimedInvokeTimeoutMs:v10];

  v11 = [(MTRTLSClientManagementClusterProvisionEndpointParams *)self serverSideProcessingTimeout];
  [(MTRTLSClientManagementClusterProvisionEndpointParams *)v4 setServerSideProcessingTimeout:v11];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_hostname base64EncodedStringWithOptions:0];
  v7 = [v3 stringWithFormat:@"<%@: hostname:%@ port:%@; caid:%@; ccdid:%@; endpointID:%@; >", v5, v6, self->_port, self->_caid, self->_ccdid, self->_endpointID];;

  return v7;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v29 = 0;
  LOBYTE(v30) = 0;
  v31 = 0;
  memset(v28, 0, 21);
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  v5 = [(MTRTLSClientManagementClusterProvisionEndpointParams *)self hostname];
  sub_238DB6950(v20, [v5 bytes], objc_msgSend(v5, "length"));

  *v28 = v20[0];
  v6 = [(MTRTLSClientManagementClusterProvisionEndpointParams *)self port];
  *&v28[16] = [v6 unsignedShortValue];

  v7 = [(MTRTLSClientManagementClusterProvisionEndpointParams *)self caid];
  *&v28[18] = [v7 unsignedShortValue];

  v8 = [(MTRTLSClientManagementClusterProvisionEndpointParams *)self ccdid];

  if (v8)
  {
    *&v28[20] = 0;
    v29 = 1;
    v9 = [(MTRTLSClientManagementClusterProvisionEndpointParams *)self ccdid];
    *&v28[20] = [v9 unsignedShortValue];
  }

  v10 = [(MTRTLSClientManagementClusterProvisionEndpointParams *)self endpointID];

  if (v10)
  {
    v30 = 0;
    v31 = 1;
    v11 = [(MTRTLSClientManagementClusterProvisionEndpointParams *)self endpointID];
    v30 = [v11 unsignedShortValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v25);
  if (v25)
  {
    sub_2393C7B90(v20);
    v22 = 0;
    v23 = 0;
    v21 = &unk_284BB83A8;
    v24 = 0;
    sub_238EA16C4(&v21, &v25, 0);
    sub_2393C7BF0(v20, &v21, 0xFFFFFFFF);
    v12 = sub_238F2EBE8(v28, v20, 0x100uLL);
    v14 = v12;
    if (v12 || (v12 = sub_238DD2EFC(v20, &v25), v14 = v12, v12))
    {
      v15 = v13;
    }

    else
    {
      sub_238DD2F90(a3, &v25);
      v12 = sub_2393C7114(a3, 21, 256);
      v15 = v19;
      v14 = v12;
    }

    v16 = v12 & 0xFFFFFFFF00000000;
    v21 = &unk_284BB83A8;
    sub_238EA1758(&v23);
    sub_238EA1758(&v22);
  }

  else
  {
    v15 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v16 = 0xA9EF00000000;
    v14 = 11;
  }

  sub_238EA1758(&v25);
  sub_238EA1790(&v26);
  v17 = v16 | v14;
  v18 = v15;
  result.mFile = v18;
  result.mError = v17;
  result.mLine = HIDWORD(v17);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRTLSClientManagementClusterProvisionEndpointParams *)self _encodeToTLVReader:v12, v5];
  if (v7)
  {
    if (a3)
    {
      v8 = sub_23921C1E4(MTRError, v7, v6);
      v9 = 0;
LABEL_7:
      *a3 = v8;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = sub_238EE60DC(v12, 0);
    v9 = v10;
    if (a3 && !v10)
    {
      v8 = sub_23921C1E4(MTRError, 0xAA0C00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end