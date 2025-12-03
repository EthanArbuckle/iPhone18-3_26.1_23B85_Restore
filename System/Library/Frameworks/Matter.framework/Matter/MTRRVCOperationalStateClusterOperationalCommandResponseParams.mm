@interface MTRRVCOperationalStateClusterOperationalCommandResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRRVCOperationalStateClusterOperationalCommandResponseParams)init;
- (MTRRVCOperationalStateClusterOperationalCommandResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRRVCOperationalStateClusterOperationalCommandResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRRVCOperationalStateClusterOperationalCommandResponseParams

- (MTRRVCOperationalStateClusterOperationalCommandResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRRVCOperationalStateClusterOperationalCommandResponseParams;
  v2 = [(MTRRVCOperationalStateClusterOperationalCommandResponseParams *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    commandResponseState = v2->_commandResponseState;
    v2->_commandResponseState = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRRVCOperationalStateClusterOperationalCommandResponseParams);
  commandResponseState = [(MTRRVCOperationalStateClusterOperationalCommandResponseParams *)self commandResponseState];
  [(MTRRVCOperationalStateClusterOperationalCommandResponseParams *)v4 setCommandResponseState:commandResponseState];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: commandResponseState:%@ >", v5, self->_commandResponseState];;

  return v6;
}

- (MTRRVCOperationalStateClusterOperationalCommandResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = MTRRVCOperationalStateClusterOperationalCommandResponseParams;
  v7 = [(MTRRVCOperationalStateClusterOperationalCommandResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:97 commandID:4 error:error];
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
      v8 = sub_238F22C0C(v12, v13);
      if (!v8)
      {
        v8 = [(MTRRVCOperationalStateClusterOperationalCommandResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTRRVCOperationalStateClusterOperationalCommandResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRRVCOperationalStateClusterOperationalCommandResponseParams;
  v4 = [(MTRRVCOperationalStateClusterOperationalCommandResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRRVCOperationalStateClusterOperationalCommandResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  v5 = objc_opt_new();
  [(MTRRVCOperationalStateClusterOperationalCommandResponseParams *)self setCommandResponseState:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*struct];
  commandResponseState = [(MTRRVCOperationalStateClusterOperationalCommandResponseParams *)self commandResponseState];
  [commandResponseState setErrorStateID:v6];

  if (*(struct + 8) != 1)
  {
    commandResponseState2 = [(MTRRVCOperationalStateClusterOperationalCommandResponseParams *)self commandResponseState];
    [commandResponseState2 setErrorStateLabel:0];

LABEL_5:
    v17 = *(struct + 32);
    v16 = struct + 32;
    if (v17 == 1)
    {
      v18 = sub_238DE36B8(v16);
      v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v18 length:v18[1] encoding:4];
      commandResponseState3 = [(MTRRVCOperationalStateClusterOperationalCommandResponseParams *)self commandResponseState];
      [commandResponseState3 setErrorStateDetails:v19];

      commandResponseState4 = [(MTRRVCOperationalStateClusterOperationalCommandResponseParams *)self commandResponseState];
      errorStateDetails = [commandResponseState4 errorStateDetails];

      if (!errorStateDetails)
      {
        v13 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
        v14 = 0x363000000000;
        goto LABEL_8;
      }
    }

    else
    {
      commandResponseState5 = [(MTRRVCOperationalStateClusterOperationalCommandResponseParams *)self commandResponseState];
      [commandResponseState5 setErrorStateDetails:0];
    }

    v14 = 0;
    v23 = 0;
    v13 = 0;
    goto LABEL_11;
  }

  v8 = sub_238DE36B8(struct + 8);
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v8 length:v8[1] encoding:4];
  commandResponseState6 = [(MTRRVCOperationalStateClusterOperationalCommandResponseParams *)self commandResponseState];
  [commandResponseState6 setErrorStateLabel:v9];

  commandResponseState7 = [(MTRRVCOperationalStateClusterOperationalCommandResponseParams *)self commandResponseState];
  errorStateLabel = [commandResponseState7 errorStateLabel];

  if (errorStateLabel)
  {
    goto LABEL_5;
  }

  v13 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  v14 = 0x362700000000;
LABEL_8:
  v23 = 47;
LABEL_11:
  v25 = v23 | v14;
  result.mFile = v13;
  result.mError = v25;
  result.mLine = HIDWORD(v25);
  return result;
}

@end