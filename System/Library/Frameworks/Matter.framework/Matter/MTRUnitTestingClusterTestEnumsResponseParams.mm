@interface MTRUnitTestingClusterTestEnumsResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)struct;
- (MTRUnitTestingClusterTestEnumsResponseParams)init;
- (MTRUnitTestingClusterTestEnumsResponseParams)initWithDecodableStruct:(const DecodableType *)struct;
- (MTRUnitTestingClusterTestEnumsResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestEnumsResponseParams

- (MTRUnitTestingClusterTestEnumsResponseParams)init
{
  v8.receiver = self;
  v8.super_class = MTRUnitTestingClusterTestEnumsResponseParams;
  v2 = [(MTRUnitTestingClusterTestEnumsResponseParams *)&v8 init];
  v3 = v2;
  if (v2)
  {
    arg1 = v2->_arg1;
    v2->_arg1 = &unk_284C3E4C8;

    arg2 = v3->_arg2;
    v3->_arg2 = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestEnumsResponseParams);
  arg1 = [(MTRUnitTestingClusterTestEnumsResponseParams *)self arg1];
  [(MTRUnitTestingClusterTestEnumsResponseParams *)v4 setArg1:arg1];

  arg2 = [(MTRUnitTestingClusterTestEnumsResponseParams *)self arg2];
  [(MTRUnitTestingClusterTestEnumsResponseParams *)v4 setArg2:arg2];

  timedInvokeTimeoutMs = [(MTRUnitTestingClusterTestEnumsResponseParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestEnumsResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: arg1:%@ arg2:%@; >", v5, self->_arg1, self->_arg2];;

  return v6;
}

- (MTRUnitTestingClusterTestEnumsResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v16.receiver = self;
  v16.super_class = MTRUnitTestingClusterTestEnumsResponseParams;
  v7 = [(MTRUnitTestingClusterTestEnumsResponseParams *)&v16 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:4294048773 commandID:5 error:error];
  if (v15)
  {
    sub_2393C5AAC(v14);
    sub_2393C5ADC(v14, *(v15 + 1), *(v15 + 3));
    v8 = sub_2393C6FD0(v14, 256);
    if (!v8)
    {
      v12 = 0;
      v13 = 0;
      v8 = sub_238F300D4(&v12, v14);
      if (!v8)
      {
        v8 = [(MTRUnitTestingClusterTestEnumsResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
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
  sub_238EA1758(&v15);
LABEL_10:

  return v10;
}

- (MTRUnitTestingClusterTestEnumsResponseParams)initWithDecodableStruct:(const DecodableType *)struct
{
  v10.receiver = self;
  v10.super_class = MTRUnitTestingClusterTestEnumsResponseParams;
  v4 = [(MTRUnitTestingClusterTestEnumsResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRUnitTestingClusterTestEnumsResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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

- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)struct
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*&struct->var0];
  [(MTRUnitTestingClusterTestEnumsResponseParams *)self setArg1:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:struct[2].var0];
  [(MTRUnitTestingClusterTestEnumsResponseParams *)self setArg2:v6];

  v7 = 0;
  v8 = 0;
  result.mFile = v8;
  result.mError = v7;
  result.mLine = HIDWORD(v7);
  return result;
}

@end