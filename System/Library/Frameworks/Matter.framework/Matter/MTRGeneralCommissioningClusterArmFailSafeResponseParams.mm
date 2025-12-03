@interface MTRGeneralCommissioningClusterArmFailSafeResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRGeneralCommissioningClusterArmFailSafeResponseParams)init;
- (MTRGeneralCommissioningClusterArmFailSafeResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRGeneralCommissioningClusterArmFailSafeResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRGeneralCommissioningClusterArmFailSafeResponseParams

- (MTRGeneralCommissioningClusterArmFailSafeResponseParams)init
{
  v8.receiver = self;
  v8.super_class = MTRGeneralCommissioningClusterArmFailSafeResponseParams;
  v2 = [(MTRGeneralCommissioningClusterArmFailSafeResponseParams *)&v8 init];
  v3 = v2;
  if (v2)
  {
    errorCode = v2->_errorCode;
    v2->_errorCode = &unk_284C3E4C8;

    debugText = v3->_debugText;
    v3->_debugText = &stru_284BD0DD8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRGeneralCommissioningClusterArmFailSafeResponseParams);
  errorCode = [(MTRGeneralCommissioningClusterArmFailSafeResponseParams *)self errorCode];
  [(MTRGeneralCommissioningClusterArmFailSafeResponseParams *)v4 setErrorCode:errorCode];

  debugText = [(MTRGeneralCommissioningClusterArmFailSafeResponseParams *)self debugText];
  [(MTRGeneralCommissioningClusterArmFailSafeResponseParams *)v4 setDebugText:debugText];

  timedInvokeTimeoutMs = [(MTRGeneralCommissioningClusterArmFailSafeResponseParams *)self timedInvokeTimeoutMs];
  [(MTRGeneralCommissioningClusterArmFailSafeResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: errorCode:%@ debugText:%@; >", v5, self->_errorCode, self->_debugText];;

  return v6;
}

- (MTRGeneralCommissioningClusterArmFailSafeResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v17.receiver = self;
  v17.super_class = MTRGeneralCommissioningClusterArmFailSafeResponseParams;
  v7 = [(MTRGeneralCommissioningClusterArmFailSafeResponseParams *)&v17 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:48 commandID:1 error:error];
  if (v16)
  {
    sub_2393C5AAC(v15);
    sub_2393C5ADC(v15, *(v16 + 1), *(v16 + 3));
    v8 = sub_2393C6FD0(v15, 256);
    if (!v8)
    {
      v12[0] = 0;
      v13 = 0;
      v14 = 0;
      v8 = sub_238F18180(v12, v15);
      if (!v8)
      {
        v8 = [(MTRGeneralCommissioningClusterArmFailSafeResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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
  sub_238EA1758(&v16);
LABEL_10:

  return v10;
}

- (MTRGeneralCommissioningClusterArmFailSafeResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRGeneralCommissioningClusterArmFailSafeResponseParams;
  v4 = [(MTRGeneralCommissioningClusterArmFailSafeResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRGeneralCommissioningClusterArmFailSafeResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRGeneralCommissioningClusterArmFailSafeResponseParams *)self setErrorCode:v5];

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(struct + 1) length:*(struct + 2) encoding:4];
  [(MTRGeneralCommissioningClusterArmFailSafeResponseParams *)self setDebugText:v6];

  debugText = [(MTRGeneralCommissioningClusterArmFailSafeResponseParams *)self debugText];

  if (debugText)
  {
    v8 = 0;
  }

  else
  {
    v8 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  }

  if (debugText)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0x13060000002FLL;
  }

  result.mFile = v8;
  result.mError = v9;
  result.mLine = HIDWORD(v9);
  return result;
}

@end