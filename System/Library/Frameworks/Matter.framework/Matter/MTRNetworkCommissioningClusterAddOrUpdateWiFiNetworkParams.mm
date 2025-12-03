@interface MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams

- (MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams)init
{
  v14.receiver = self;
  v14.super_class = MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams;
  v2 = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)&v14 init];
  if (v2)
  {
    data = [MEMORY[0x277CBEA90] data];
    ssid = v2->_ssid;
    v2->_ssid = data;

    data2 = [MEMORY[0x277CBEA90] data];
    credentials = v2->_credentials;
    v2->_credentials = data2;

    breadcrumb = v2->_breadcrumb;
    v2->_breadcrumb = 0;

    networkIdentity = v2->_networkIdentity;
    v2->_networkIdentity = 0;

    clientIdentifier = v2->_clientIdentifier;
    v2->_clientIdentifier = 0;

    possessionNonce = v2->_possessionNonce;
    v2->_possessionNonce = 0;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams);
  ssid = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self ssid];
  [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)v4 setSsid:ssid];

  credentials = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self credentials];
  [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)v4 setCredentials:credentials];

  breadcrumb = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self breadcrumb];
  [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)v4 setBreadcrumb:breadcrumb];

  networkIdentity = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self networkIdentity];
  [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)v4 setNetworkIdentity:networkIdentity];

  clientIdentifier = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self clientIdentifier];
  [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)v4 setClientIdentifier:clientIdentifier];

  possessionNonce = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self possessionNonce];
  [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)v4 setPossessionNonce:possessionNonce];

  timedInvokeTimeoutMs = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self timedInvokeTimeoutMs];
  [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self serverSideProcessingTimeout];
  [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_ssid base64EncodedStringWithOptions:0];
  v7 = [(NSData *)self->_credentials base64EncodedStringWithOptions:0];
  breadcrumb = self->_breadcrumb;
  v9 = [(NSData *)self->_networkIdentity base64EncodedStringWithOptions:0];
  v10 = [(NSData *)self->_clientIdentifier base64EncodedStringWithOptions:0];
  v11 = [(NSData *)self->_possessionNonce base64EncodedStringWithOptions:0];
  v12 = [v3 stringWithFormat:@"<%@: ssid:%@ credentials:%@; breadcrumb:%@; networkIdentity:%@; clientIdentifier:%@; possessionNonce:%@; >", v5, v6, v7, breadcrumb, v9, v10, v11];;

  return v12;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v35 = 0;
  v37 = 0;
  v39 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  v30[0] = 0;
  v30[1] = 0;
  v29 = v30;
  ssid = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self ssid];
  sub_238DB6950(v23, [ssid bytes], objc_msgSend(ssid, "length"));

  v31 = v23[0];
  credentials = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self credentials];
  sub_238DB6950(v23, [credentials bytes], objc_msgSend(credentials, "length"));

  v32 = v23[0];
  breadcrumb = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self breadcrumb];

  if (breadcrumb)
  {
    v33 = 1;
    unsignedLongLongValue = 0;
    breadcrumb2 = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self breadcrumb];
    unsignedLongLongValue = [breadcrumb2 unsignedLongLongValue];
  }

  networkIdentity = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self networkIdentity];

  if (networkIdentity)
  {
    v35 = 1;
    v36 = 0uLL;
    networkIdentity2 = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self networkIdentity];
    sub_238DB6950(v23, [networkIdentity2 bytes], objc_msgSend(networkIdentity2, "length"));

    v36 = v23[0];
  }

  clientIdentifier = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self clientIdentifier];

  if (clientIdentifier)
  {
    v37 = 1;
    v38 = 0uLL;
    clientIdentifier2 = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self clientIdentifier];
    sub_238DB6950(v23, [clientIdentifier2 bytes], objc_msgSend(clientIdentifier2, "length"));

    v38 = v23[0];
  }

  possessionNonce = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self possessionNonce];

  if (possessionNonce)
  {
    v39 = 1;
    v40 = 0uLL;
    possessionNonce2 = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self possessionNonce];
    sub_238DB6950(v23, [possessionNonce2 bytes], objc_msgSend(possessionNonce2, "length"));

    v40 = v23[0];
  }

  sub_2393D9C18(0x62FuLL, 0, &v28);
  if (v28)
  {
    sub_2393C7B90(v23);
    v25 = 0;
    v26 = 0;
    v24 = &unk_284BB83A8;
    v27 = 0;
    sub_238EA16C4(&v24, &v28, 0);
    sub_2393C7BF0(v23, &v24, 0xFFFFFFFF);
    v15 = sub_238F20178(&v31, v23, 0x100uLL);
    v17 = v15;
    if (v15 || (v15 = sub_238DD2EFC(v23, &v28), v17 = v15, v15))
    {
      v18 = v16;
    }

    else
    {
      sub_238DD2F90(reader, &v28);
      v15 = sub_2393C7114(reader, 21, 256);
      v18 = v22;
      v17 = v15;
    }

    v19 = v15 & 0xFFFFFFFF00000000;
    v24 = &unk_284BB83A8;
    sub_238EA1758(&v26);
    sub_238EA1758(&v25);
  }

  else
  {
    v18 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v19 = 0x168B00000000;
    v17 = 11;
  }

  sub_238EA1758(&v28);
  sub_238EA1790(&v29);
  v20 = v19 | v17;
  v21 = v18;
  result.mFile = v21;
  result.mError = v20;
  result.mLine = HIDWORD(v20);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x16A800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end