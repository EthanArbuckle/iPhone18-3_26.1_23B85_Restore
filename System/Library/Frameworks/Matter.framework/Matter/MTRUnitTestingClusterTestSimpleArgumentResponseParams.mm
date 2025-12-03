@interface MTRUnitTestingClusterTestSimpleArgumentResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)struct;
- (MTRUnitTestingClusterTestSimpleArgumentResponseParams)init;
- (MTRUnitTestingClusterTestSimpleArgumentResponseParams)initWithDecodableStruct:(const DecodableType *)struct;
- (MTRUnitTestingClusterTestSimpleArgumentResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestSimpleArgumentResponseParams

- (MTRUnitTestingClusterTestSimpleArgumentResponseParams)init
{
  v7.receiver = self;
  v7.super_class = MTRUnitTestingClusterTestSimpleArgumentResponseParams;
  v2 = [(MTRUnitTestingClusterTestSimpleArgumentResponseParams *)&v7 init];
  v3 = v2;
  if (v2)
  {
    returnValue = v2->_returnValue;
    v2->_returnValue = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestSimpleArgumentResponseParams);
  returnValue = [(MTRUnitTestingClusterTestSimpleArgumentResponseParams *)self returnValue];
  [(MTRUnitTestingClusterTestSimpleArgumentResponseParams *)v4 setReturnValue:returnValue];

  timedInvokeTimeoutMs = [(MTRUnitTestingClusterTestSimpleArgumentResponseParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestSimpleArgumentResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: returnValue:%@ >", v5, self->_returnValue];;

  return v6;
}

- (MTRUnitTestingClusterTestSimpleArgumentResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v15.receiver = self;
  v15.super_class = MTRUnitTestingClusterTestSimpleArgumentResponseParams;
  v7 = [(MTRUnitTestingClusterTestSimpleArgumentResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:4294048773 commandID:2 error:error];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      v12 = 0;
      v8 = sub_238F01C20(&v12, v13);
      if (!v8)
      {
        v8 = [(MTRUnitTestingClusterTestSimpleArgumentResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
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

- (MTRUnitTestingClusterTestSimpleArgumentResponseParams)initWithDecodableStruct:(const DecodableType *)struct
{
  v10.receiver = self;
  v10.super_class = MTRUnitTestingClusterTestSimpleArgumentResponseParams;
  v4 = [(MTRUnitTestingClusterTestSimpleArgumentResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRUnitTestingClusterTestSimpleArgumentResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  v4 = [MEMORY[0x277CCABB0] numberWithBool:struct->var0];
  [(MTRUnitTestingClusterTestSimpleArgumentResponseParams *)self setReturnValue:v4];

  v5 = 0;
  v6 = 0;
  result.mFile = v6;
  result.mError = v5;
  result.mLine = HIDWORD(v5);
  return result;
}

@end