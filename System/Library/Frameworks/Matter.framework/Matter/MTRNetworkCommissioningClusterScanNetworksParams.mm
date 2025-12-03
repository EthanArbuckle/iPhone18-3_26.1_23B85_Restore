@interface MTRNetworkCommissioningClusterScanNetworksParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRNetworkCommissioningClusterScanNetworksParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRNetworkCommissioningClusterScanNetworksParams

- (MTRNetworkCommissioningClusterScanNetworksParams)init
{
  v9.receiver = self;
  v9.super_class = MTRNetworkCommissioningClusterScanNetworksParams;
  v2 = [(MTRNetworkCommissioningClusterScanNetworksParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    ssid = v2->_ssid;
    v2->_ssid = 0;

    breadcrumb = v3->_breadcrumb;
    v3->_breadcrumb = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRNetworkCommissioningClusterScanNetworksParams);
  ssid = [(MTRNetworkCommissioningClusterScanNetworksParams *)self ssid];
  [(MTRNetworkCommissioningClusterScanNetworksParams *)v4 setSsid:ssid];

  breadcrumb = [(MTRNetworkCommissioningClusterScanNetworksParams *)self breadcrumb];
  [(MTRNetworkCommissioningClusterScanNetworksParams *)v4 setBreadcrumb:breadcrumb];

  timedInvokeTimeoutMs = [(MTRNetworkCommissioningClusterScanNetworksParams *)self timedInvokeTimeoutMs];
  [(MTRNetworkCommissioningClusterScanNetworksParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRNetworkCommissioningClusterScanNetworksParams *)self serverSideProcessingTimeout];
  [(MTRNetworkCommissioningClusterScanNetworksParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_ssid base64EncodedStringWithOptions:0];
  v7 = [v3 stringWithFormat:@"<%@: ssid:%@ breadcrumb:%@; >", v5, v6, self->_breadcrumb];;

  return v7;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v26[0] = 0;
  v29 = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  ssid = [(MTRNetworkCommissioningClusterScanNetworksParams *)self ssid];

  if (ssid)
  {
    v26[0] = 1;
    v28 = 0;
    v27 = 0uLL;
    ssid2 = [(MTRNetworkCommissioningClusterScanNetworksParams *)self ssid];

    if (ssid2)
    {
      v27 = 0uLL;
      LOBYTE(v28) = 1;
      ssid3 = [(MTRNetworkCommissioningClusterScanNetworksParams *)self ssid];
      sub_238DB6950(v18, [ssid3 bytes], objc_msgSend(ssid3, "length"));

      v27 = v18[0];
    }
  }

  breadcrumb = [(MTRNetworkCommissioningClusterScanNetworksParams *)self breadcrumb];

  if (breadcrumb)
  {
    v29 = 1;
    unsignedLongLongValue = 0;
    breadcrumb2 = [(MTRNetworkCommissioningClusterScanNetworksParams *)self breadcrumb];
    unsignedLongLongValue = [breadcrumb2 unsignedLongLongValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v23);
  if (v23)
  {
    sub_2393C7B90(v18);
    v20 = 0;
    v21 = 0;
    v19 = &unk_284BB83A8;
    v22 = 0;
    sub_238EA16C4(&v19, &v23, 0);
    sub_2393C7BF0(v18, &v19, 0xFFFFFFFF);
    v10 = sub_238F1FE18(v26, v18, 0x100uLL);
    v12 = v10;
    if (v10 || (v10 = sub_238DD2EFC(v18, &v23), v12 = v10, v10))
    {
      v13 = v11;
    }

    else
    {
      sub_238DD2F90(reader, &v23);
      v10 = sub_2393C7114(reader, 21, 256);
      v13 = v17;
      v12 = v10;
    }

    v14 = v10 & 0xFFFFFFFF00000000;
    v19 = &unk_284BB83A8;
    sub_238EA1758(&v21);
    sub_238EA1758(&v20);
  }

  else
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v14 = 0x156700000000;
    v12 = 11;
  }

  sub_238EA1758(&v23);
  sub_238EA1790(&v24);
  v15 = v14 | v12;
  v16 = v13;
  result.mFile = v16;
  result.mError = v15;
  result.mLine = HIDWORD(v15);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRNetworkCommissioningClusterScanNetworksParams *)self _encodeToTLVReader:v12, v5];
  if (v7)
  {
    if (value)
    {
      v8 = sub_23921C1E4(MTRError, v7, v6);
      v9 = 0;
LABEL_7:
      *value = v8;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = sub_238EE60DC(v12, 0);
    v9 = v10;
    if (value && !v10)
    {
      v8 = sub_23921C1E4(MTRError, 0x158400000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end