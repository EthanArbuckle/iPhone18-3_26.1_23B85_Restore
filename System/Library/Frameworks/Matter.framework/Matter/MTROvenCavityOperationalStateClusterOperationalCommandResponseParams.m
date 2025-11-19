@interface MTROvenCavityOperationalStateClusterOperationalCommandResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTROvenCavityOperationalStateClusterOperationalCommandResponseParams)init;
- (MTROvenCavityOperationalStateClusterOperationalCommandResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTROvenCavityOperationalStateClusterOperationalCommandResponseParams)initWithResponseValue:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTROvenCavityOperationalStateClusterOperationalCommandResponseParams

- (MTROvenCavityOperationalStateClusterOperationalCommandResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTROvenCavityOperationalStateClusterOperationalCommandResponseParams;
  v2 = [(MTROvenCavityOperationalStateClusterOperationalCommandResponseParams *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    commandResponseState = v2->_commandResponseState;
    v2->_commandResponseState = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTROvenCavityOperationalStateClusterOperationalCommandResponseParams);
  v5 = [(MTROvenCavityOperationalStateClusterOperationalCommandResponseParams *)self commandResponseState];
  [(MTROvenCavityOperationalStateClusterOperationalCommandResponseParams *)v4 setCommandResponseState:v5];

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

- (MTROvenCavityOperationalStateClusterOperationalCommandResponseParams)initWithResponseValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = MTROvenCavityOperationalStateClusterOperationalCommandResponseParams;
  v7 = [(MTROvenCavityOperationalStateClusterOperationalCommandResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:72 commandID:4 error:a4];
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
        v8 = [(MTROvenCavityOperationalStateClusterOperationalCommandResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTROvenCavityOperationalStateClusterOperationalCommandResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTROvenCavityOperationalStateClusterOperationalCommandResponseParams;
  v4 = [(MTROvenCavityOperationalStateClusterOperationalCommandResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTROvenCavityOperationalStateClusterOperationalCommandResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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
  v5 = objc_opt_new();
  [(MTROvenCavityOperationalStateClusterOperationalCommandResponseParams *)self setCommandResponseState:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*a3];
  v7 = [(MTROvenCavityOperationalStateClusterOperationalCommandResponseParams *)self commandResponseState];
  [v7 setErrorStateID:v6];

  if (*(a3 + 8) != 1)
  {
    v15 = [(MTROvenCavityOperationalStateClusterOperationalCommandResponseParams *)self commandResponseState];
    [v15 setErrorStateLabel:0];

LABEL_5:
    v17 = *(a3 + 32);
    v16 = a3 + 32;
    if (v17 == 1)
    {
      v18 = sub_238DE36B8(v16);
      v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v18 length:v18[1] encoding:4];
      v20 = [(MTROvenCavityOperationalStateClusterOperationalCommandResponseParams *)self commandResponseState];
      [v20 setErrorStateDetails:v19];

      v21 = [(MTROvenCavityOperationalStateClusterOperationalCommandResponseParams *)self commandResponseState];
      v22 = [v21 errorStateDetails];

      if (!v22)
      {
        v13 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
        v14 = 0x2D0800000000;
        goto LABEL_8;
      }
    }

    else
    {
      v24 = [(MTROvenCavityOperationalStateClusterOperationalCommandResponseParams *)self commandResponseState];
      [v24 setErrorStateDetails:0];
    }

    v14 = 0;
    v23 = 0;
    v13 = 0;
    goto LABEL_11;
  }

  v8 = sub_238DE36B8(a3 + 8);
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v8 length:v8[1] encoding:4];
  v10 = [(MTROvenCavityOperationalStateClusterOperationalCommandResponseParams *)self commandResponseState];
  [v10 setErrorStateLabel:v9];

  v11 = [(MTROvenCavityOperationalStateClusterOperationalCommandResponseParams *)self commandResponseState];
  v12 = [v11 errorStateLabel];

  if (v12)
  {
    goto LABEL_5;
  }

  v13 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  v14 = 0x2CFF00000000;
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