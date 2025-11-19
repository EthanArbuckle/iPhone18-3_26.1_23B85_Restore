@interface MTRUnitTestingClusterSimpleStructResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRUnitTestingClusterSimpleStructResponseParams)init;
- (MTRUnitTestingClusterSimpleStructResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRUnitTestingClusterSimpleStructResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRUnitTestingClusterSimpleStructResponseParams

- (MTRUnitTestingClusterSimpleStructResponseParams)init
{
  v7.receiver = self;
  v7.super_class = MTRUnitTestingClusterSimpleStructResponseParams;
  v2 = [(MTRUnitTestingClusterSimpleStructResponseParams *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    arg1 = v2->_arg1;
    v2->_arg1 = v3;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRUnitTestingClusterSimpleStructResponseParams);
  v5 = [(MTRUnitTestingClusterSimpleStructResponseParams *)self arg1];
  [(MTRUnitTestingClusterSimpleStructResponseParams *)v4 setArg1:v5];

  v6 = [(MTRUnitTestingClusterSimpleStructResponseParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterSimpleStructResponseParams *)v4 setTimedInvokeTimeoutMs:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: arg1:%@ >", v5, self->_arg1];;

  return v6;
}

- (MTRUnitTestingClusterSimpleStructResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v22.receiver = self;
  v22.super_class = MTRUnitTestingClusterSimpleStructResponseParams;
  v7 = [(MTRUnitTestingClusterSimpleStructResponseParams *)&v22 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:4294048773 commandID:9 error:error];
  if (v21)
  {
    sub_2393C5AAC(v20);
    sub_2393C5ADC(v20, *(v21 + 1), *(v21 + 3));
    v8 = sub_2393C6FD0(v20, 256);
    if (!v8)
    {
      v12 = 0;
      v13 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v14 = 0u;
      v15 = 0u;
      v16 = 0;
      v8 = sub_238F30430(&v12, v20);
      if (!v8)
      {
        v8 = [(MTRUnitTestingClusterSimpleStructResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
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
  sub_238EA1758(&v21);
LABEL_10:

  return v10;
}

- (MTRUnitTestingClusterSimpleStructResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRUnitTestingClusterSimpleStructResponseParams;
  v4 = [(MTRUnitTestingClusterSimpleStructResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRUnitTestingClusterSimpleStructResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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
  [(MTRUnitTestingClusterSimpleStructResponseParams *)self setArg1:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*a3];
  v7 = [(MTRUnitTestingClusterSimpleStructResponseParams *)self arg1];
  [v7 setA:v6];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:*(a3 + 1)];
  v9 = [(MTRUnitTestingClusterSimpleStructResponseParams *)self arg1];
  [v9 setB:v8];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a3 + 2)];
  v11 = [(MTRUnitTestingClusterSimpleStructResponseParams *)self arg1];
  [v11 setC:v10];

  v12 = [MEMORY[0x277CBEA90] dataWithBytes:*(a3 + 1) length:*(a3 + 2)];
  v13 = [(MTRUnitTestingClusterSimpleStructResponseParams *)self arg1];
  [v13 setD:v12];

  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(a3 + 3) length:*(a3 + 4) encoding:4];
  v15 = [(MTRUnitTestingClusterSimpleStructResponseParams *)self arg1];
  [v15 setE:v14];

  v16 = [(MTRUnitTestingClusterSimpleStructResponseParams *)self arg1];
  v17 = [v16 e];

  if (v17)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a3 + 40)];
    v19 = [(MTRUnitTestingClusterSimpleStructResponseParams *)self arg1];
    [v19 setF:v18];

    LODWORD(v20) = *(a3 + 11);
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    v22 = [(MTRUnitTestingClusterSimpleStructResponseParams *)self arg1];
    [v22 setG:v21];

    v23 = [MEMORY[0x277CCABB0] numberWithDouble:*(a3 + 6)];
    v24 = [(MTRUnitTestingClusterSimpleStructResponseParams *)self arg1];
    [v24 setH:v23];

    v26 = *(a3 + 56);
    v25 = a3 + 56;
    if (v26 == 1)
    {
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(v25)];
      v28 = [(MTRUnitTestingClusterSimpleStructResponseParams *)self arg1];
      [v28 setI:v27];
    }

    else
    {
      v27 = [(MTRUnitTestingClusterSimpleStructResponseParams *)self arg1];
      [v27 setI:0];
    }

    v30 = 0;
    v29 = 0;
  }

  else
  {
    v29 = 0xB6190000002FLL;
    v30 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  }

  result.mFile = v30;
  result.mError = v29;
  result.mLine = HIDWORD(v29);
  return result;
}

@end