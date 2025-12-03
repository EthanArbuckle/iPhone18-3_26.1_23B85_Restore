@interface MTRContentControlClusterResetPINResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRContentControlClusterResetPINResponseParams)init;
- (MTRContentControlClusterResetPINResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRContentControlClusterResetPINResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRContentControlClusterResetPINResponseParams

- (MTRContentControlClusterResetPINResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRContentControlClusterResetPINResponseParams;
  v2 = [(MTRContentControlClusterResetPINResponseParams *)&v6 init];
  v3 = v2;
  if (v2)
  {
    pinCode = v2->_pinCode;
    v2->_pinCode = &stru_284BD0DD8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRContentControlClusterResetPINResponseParams);
  pinCode = [(MTRContentControlClusterResetPINResponseParams *)self pinCode];
  [(MTRContentControlClusterResetPINResponseParams *)v4 setPinCode:pinCode];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: pinCode:%@ >", v5, self->_pinCode];;

  return v6;
}

- (MTRContentControlClusterResetPINResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = MTRContentControlClusterResetPINResponseParams;
  v7 = [(MTRContentControlClusterResetPINResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:1295 commandID:2 error:error];
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
        v8 = [(MTRContentControlClusterResetPINResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
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

- (MTRContentControlClusterResetPINResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRContentControlClusterResetPINResponseParams;
  v4 = [(MTRContentControlClusterResetPINResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRContentControlClusterResetPINResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRContentControlClusterResetPINResponseParams *)self setPinCode:v4];

  pinCode = [(MTRContentControlClusterResetPINResponseParams *)self pinCode];

  if (pinCode)
  {
    v6 = 0;
  }

  else
  {
    v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  }

  if (pinCode)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0x7EE60000002FLL;
  }

  result.mFile = v6;
  result.mError = v7;
  result.mLine = HIDWORD(v7);
  return result;
}

@end