@interface MTRNetworkCommissioningClusterConnectNetworkResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRNetworkCommissioningClusterConnectNetworkResponseParams)init;
- (MTRNetworkCommissioningClusterConnectNetworkResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRNetworkCommissioningClusterConnectNetworkResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRNetworkCommissioningClusterConnectNetworkResponseParams

- (MTRNetworkCommissioningClusterConnectNetworkResponseParams)init
{
  v9.receiver = self;
  v9.super_class = MTRNetworkCommissioningClusterConnectNetworkResponseParams;
  v2 = [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    networkingStatus = v2->_networkingStatus;
    v2->_networkingStatus = &unk_284C3E4C8;

    debugText = v3->_debugText;
    v3->_debugText = 0;

    errorValue = v3->_errorValue;
    v3->_errorValue = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRNetworkCommissioningClusterConnectNetworkResponseParams);
  networkingStatus = [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)self networkingStatus];
  [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)v4 setNetworkingStatus:networkingStatus];

  debugText = [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)self debugText];
  [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)v4 setDebugText:debugText];

  errorValue = [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)self errorValue];
  [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)v4 setErrorValue:errorValue];

  timedInvokeTimeoutMs = [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)self timedInvokeTimeoutMs];
  [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: networkingStatus:%@ debugText:%@; errorValue:%@; >", v5, self->_networkingStatus, self->_debugText, self->_errorValue];;

  return v6;
}

- (MTRNetworkCommissioningClusterConnectNetworkResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v15.receiver = self;
  v15.super_class = MTRNetworkCommissioningClusterConnectNetworkResponseParams;
  v7 = [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:49 commandID:7 error:error];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      v12[0] = 0;
      v12[8] = 0;
      v12[32] = 0;
      v12[36] = 0;
      v8 = sub_238F2075C(v12, v13);
      if (!v8)
      {
        v8 = [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTRNetworkCommissioningClusterConnectNetworkResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRNetworkCommissioningClusterConnectNetworkResponseParams;
  v4 = [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*struct];
  [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)self setNetworkingStatus:v5];

  if (*(struct + 8) == 1)
  {
    v6 = sub_238DE36B8(struct + 8);
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v6 length:v6[1] encoding:4];
    [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)self setDebugText:v7];

    debugText = [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)self debugText];

    if (!debugText)
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
      v10 = 0x189E00000000;
      v11 = 47;
      goto LABEL_9;
    }
  }

  else
  {
    [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)self setDebugText:0];
  }

  if (*(struct + 36))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:*(struct + 8)];
    [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)self setErrorValue:v12];
  }

  else
  {
    [(MTRNetworkCommissioningClusterConnectNetworkResponseParams *)self setErrorValue:0];
  }

  v10 = 0;
  v11 = 0;
  v9 = 0;
LABEL_9:
  v13 = v11 | v10;
  result.mFile = v9;
  result.mError = v13;
  result.mLine = HIDWORD(v13);
  return result;
}

@end