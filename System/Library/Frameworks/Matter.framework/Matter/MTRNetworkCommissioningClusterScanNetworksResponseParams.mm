@interface MTRNetworkCommissioningClusterScanNetworksResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRNetworkCommissioningClusterScanNetworksResponseParams)init;
- (MTRNetworkCommissioningClusterScanNetworksResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRNetworkCommissioningClusterScanNetworksResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRNetworkCommissioningClusterScanNetworksResponseParams

- (MTRNetworkCommissioningClusterScanNetworksResponseParams)init
{
  v10.receiver = self;
  v10.super_class = MTRNetworkCommissioningClusterScanNetworksResponseParams;
  v2 = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    networkingStatus = v2->_networkingStatus;
    v2->_networkingStatus = &unk_284C3E4C8;

    debugText = v3->_debugText;
    v3->_debugText = 0;

    wiFiScanResults = v3->_wiFiScanResults;
    v3->_wiFiScanResults = 0;

    threadScanResults = v3->_threadScanResults;
    v3->_threadScanResults = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRNetworkCommissioningClusterScanNetworksResponseParams);
  v5 = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self networkingStatus];
  [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)v4 setNetworkingStatus:v5];

  v6 = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self debugText];
  [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)v4 setDebugText:v6];

  v7 = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self wiFiScanResults];
  [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)v4 setWiFiScanResults:v7];

  v8 = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self threadScanResults];
  [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)v4 setThreadScanResults:v8];

  v9 = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self timedInvokeTimeoutMs];
  [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)v4 setTimedInvokeTimeoutMs:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: networkingStatus:%@ debugText:%@; wiFiScanResults:%@; threadScanResults:%@; >", v5, self->_networkingStatus, self->_debugText, self->_wiFiScanResults, self->_threadScanResults];;

  return v6;
}

- (MTRNetworkCommissioningClusterScanNetworksResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v16.receiver = self;
  v16.super_class = MTRNetworkCommissioningClusterScanNetworksResponseParams;
  v7 = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)&v16 init];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:49 commandID:1 error:error];
  if (v15)
  {
    sub_2393C5AAC(v14);
    sub_2393C5ADC(v8, *(v15 + 1), *(v15 + 3));
    v9 = sub_2393C6FD0(v14, 256);
    if (!v9)
    {
      v13[0] = 0;
      v13[8] = 0;
      v13[32] = 0;
      v13[112] = 0;
      v9 = sub_238F20004(v13, v14);
      if (!v9)
      {
        v9 = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)v7 _setFieldsFromDecodableStruct:v13];
        if (!v9)
        {
          v11 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v9, v10, error);
  }

  v11 = 0;
LABEL_8:
  sub_238EA1758(&v15);
LABEL_10:

  return v11;
}

- (MTRNetworkCommissioningClusterScanNetworksResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRNetworkCommissioningClusterScanNetworksResponseParams;
  v4 = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*a3];
  [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self setNetworkingStatus:v5];

  if (*(a3 + 8) == 1)
  {
    v6 = sub_238DE36B8(a3 + 8);
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v6 length:v6[1] encoding:4];
    [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self setDebugText:v7];

    v8 = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self debugText];

    if (!v8)
    {
      v9 = 0x15EE00000000;
      v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
      v11 = 47;
      goto LABEL_31;
    }
  }

  else
  {
    [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self setDebugText:0];
  }

  v39 = self;
  if (*(a3 + 32) == 1)
  {
    v12 = objc_opt_new();
    v13 = sub_238DE36B8(a3 + 32);
    sub_2393C5AAC(v42);
    v40 = 0;
    v41 = 0;
    sub_2393C5BDC(v42, v13);
    v43[0] = 0;
    memset(&v43[8], 0, 36);
    while (1)
    {
      v14 = sub_238EA1A80(&v40);
      LODWORD(v15) = v40;
      if (v40)
      {
        v14 = 0;
      }

      if (!v14)
      {
        break;
      }

      memset(v43, 0, 44);
      v15 = sub_238F21058(v43, v42);
      v40 = v15;
      v41 = v16;
      if (v15)
      {
        break;
      }

      v17 = objc_opt_new();
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v43[0]];
      [v17 setSecurity:v18];

      v19 = [MEMORY[0x277CBEA90] dataWithBytes:*&v43[8] length:?];
      [v17 setSsid:v19];

      v20 = [MEMORY[0x277CBEA90] dataWithBytes:*&v43[24] length:?];
      [v17 setBssid:v20];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*&v43[40]];
      [v17 setChannel:v21];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v43[42]];
      [v17 setWiFiBand:v22];

      v23 = [MEMORY[0x277CCABB0] numberWithChar:v43[43]];
      [v17 setRssi:v23];

      [v12 addObject:v17];
    }

    self = v39;
    if (v15 != 33)
    {
      v11 = v40;
      if (v40)
      {
        v9 = v40 & 0xFFFFFFFF00000000;
        v10 = v41;
LABEL_30:

        goto LABEL_31;
      }
    }

    [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)v39 setWiFiScanResults:v12];
  }

  else
  {
    [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self setWiFiScanResults:0];
  }

  v25 = *(a3 + 112);
  v24 = a3 + 112;
  if (v25 == 1)
  {
    v12 = objc_opt_new();
    v26 = sub_238DE36B8(v24);
    sub_2393C5AAC(v42);
    v40 = 0;
    v41 = 0;
    sub_2393C5BDC(v42, v26);
    *v43 = 0;
    memset(&v43[8], 0, 27);
    *&v43[40] = 0;
    v44 = 0;
    v45 = 0;
    while (sub_238EA1A80(&v40) && sub_238EA1EA0(&v40))
    {
      v27 = objc_opt_new();
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*v43];
      [v27 setPanId:v28];

      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v43[8]];
      [v27 setExtendedPanId:v29];

      v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*&v43[16] length:*&v43[24] encoding:4];
      [v27 setNetworkName:v30];

      v31 = [v27 networkName];

      if (!v31)
      {

        v9 = 0x161D00000000;
        v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
        v11 = 47;
        goto LABEL_30;
      }

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*&v43[32]];
      [v27 setChannel:v32];

      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v43[34]];
      [v27 setVersion:v33];

      v34 = [MEMORY[0x277CBEA90] dataWithBytes:*&v43[40] length:v44];
      [v27 setExtendedAddress:v34];

      v35 = [MEMORY[0x277CCABB0] numberWithChar:v45];
      [v27 setRssi:v35];

      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(v45)];
      [v27 setLqi:v36];

      [v12 addObject:v27];
    }

    if (v40 != 33)
    {
      v11 = v40;
      if (v40)
      {
        v10 = v41;
        v9 = v40 & 0xFFFFFFFF00000000;
        goto LABEL_30;
      }
    }

    [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)v39 setThreadScanResults:v12];
  }

  else
  {
    [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self setThreadScanResults:0];
  }

  v10 = 0;
  v9 = 0;
  v11 = 0;
LABEL_31:
  v37 = v11 | v9;
  v38 = v10;
  result.mFile = v38;
  result.mError = v37;
  result.mLine = HIDWORD(v37);
  return result;
}

@end