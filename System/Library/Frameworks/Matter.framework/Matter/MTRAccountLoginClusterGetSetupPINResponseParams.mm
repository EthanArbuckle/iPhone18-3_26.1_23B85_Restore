@interface MTRAccountLoginClusterGetSetupPINResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRAccountLoginClusterGetSetupPINResponseParams)init;
- (MTRAccountLoginClusterGetSetupPINResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRAccountLoginClusterGetSetupPINResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRAccountLoginClusterGetSetupPINResponseParams

- (MTRAccountLoginClusterGetSetupPINResponseParams)init
{
  v7.receiver = self;
  v7.super_class = MTRAccountLoginClusterGetSetupPINResponseParams;
  v2 = [(MTRAccountLoginClusterGetSetupPINResponseParams *)&v7 init];
  v3 = v2;
  if (v2)
  {
    setupPIN = v2->_setupPIN;
    v2->_setupPIN = &stru_284BD0DD8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRAccountLoginClusterGetSetupPINResponseParams);
  setupPIN = [(MTRAccountLoginClusterGetSetupPINResponseParams *)self setupPIN];
  [(MTRAccountLoginClusterGetSetupPINResponseParams *)v4 setSetupPIN:setupPIN];

  timedInvokeTimeoutMs = [(MTRAccountLoginClusterGetSetupPINResponseParams *)self timedInvokeTimeoutMs];
  [(MTRAccountLoginClusterGetSetupPINResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: setupPIN:%@ >", v5, self->_setupPIN];;

  return v6;
}

- (MTRAccountLoginClusterGetSetupPINResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v15.receiver = self;
  v15.super_class = MTRAccountLoginClusterGetSetupPINResponseParams;
  v7 = [(MTRAccountLoginClusterGetSetupPINResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:1294 commandID:1 error:error];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      v12 = 0uLL;
      v8 = sub_238EFEC00(&v12, v13);
      if (!v8)
      {
        v8 = [(MTRAccountLoginClusterGetSetupPINResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
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

- (MTRAccountLoginClusterGetSetupPINResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRAccountLoginClusterGetSetupPINResponseParams;
  v4 = [(MTRAccountLoginClusterGetSetupPINResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRAccountLoginClusterGetSetupPINResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*struct length:*(struct + 1) encoding:4];
  [(MTRAccountLoginClusterGetSetupPINResponseParams *)self setSetupPIN:v4];

  setupPIN = [(MTRAccountLoginClusterGetSetupPINResponseParams *)self setupPIN];

  if (setupPIN)
  {
    v6 = 0;
  }

  else
  {
    v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  }

  if (setupPIN)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0x7D380000002FLL;
  }

  result.mFile = v6;
  result.mError = v7;
  result.mLine = HIDWORD(v7);
  return result;
}

@end