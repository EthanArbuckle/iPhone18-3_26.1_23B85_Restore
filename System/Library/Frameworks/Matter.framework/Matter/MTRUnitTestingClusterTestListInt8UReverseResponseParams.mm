@interface MTRUnitTestingClusterTestListInt8UReverseResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRUnitTestingClusterTestListInt8UReverseResponseParams)init;
- (MTRUnitTestingClusterTestListInt8UReverseResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRUnitTestingClusterTestListInt8UReverseResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestListInt8UReverseResponseParams

- (MTRUnitTestingClusterTestListInt8UReverseResponseParams)init
{
  v7.receiver = self;
  v7.super_class = MTRUnitTestingClusterTestListInt8UReverseResponseParams;
  v2 = [(MTRUnitTestingClusterTestListInt8UReverseResponseParams *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA60] array];
    arg1 = v2->_arg1;
    v2->_arg1 = v3;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestListInt8UReverseResponseParams);
  v5 = [(MTRUnitTestingClusterTestListInt8UReverseResponseParams *)self arg1];
  [(MTRUnitTestingClusterTestListInt8UReverseResponseParams *)v4 setArg1:v5];

  v6 = [(MTRUnitTestingClusterTestListInt8UReverseResponseParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestListInt8UReverseResponseParams *)v4 setTimedInvokeTimeoutMs:v6];

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

- (MTRUnitTestingClusterTestListInt8UReverseResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v15.receiver = self;
  v15.super_class = MTRUnitTestingClusterTestListInt8UReverseResponseParams;
  v7 = [(MTRUnitTestingClusterTestListInt8UReverseResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:4294048773 commandID:4 error:error];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      sub_2393C5AAC(v12);
      sub_2393C5ADC(v12, 0, 0);
      v8 = sub_238EFD1FC(v12, v13);
      if (!v8)
      {
        v8 = [(MTRUnitTestingClusterTestListInt8UReverseResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTRUnitTestingClusterTestListInt8UReverseResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRUnitTestingClusterTestListInt8UReverseResponseParams;
  v4 = [(MTRUnitTestingClusterTestListInt8UReverseResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRUnitTestingClusterTestListInt8UReverseResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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
  sub_2393C5AAC(v13);
  v11 = 0;
  v12 = 0;
  sub_2393C5BDC(v13, a3);
  while (sub_238E0D91C(&v11))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v13[72]];
    [v5 addObject:v6];
  }

  if (v11 == 33 || (v7 = v11, !v11))
  {
    [(MTRUnitTestingClusterTestListInt8UReverseResponseParams *)self setArg1:v5, v11];

    v8 = 0;
    v7 = 0;
  }

  else
  {
    v8 = v12;
  }

  v9 = v7;
  v10 = v8;
  result.mFile = v10;
  result.mError = v9;
  result.mLine = HIDWORD(v9);
  return result;
}

@end