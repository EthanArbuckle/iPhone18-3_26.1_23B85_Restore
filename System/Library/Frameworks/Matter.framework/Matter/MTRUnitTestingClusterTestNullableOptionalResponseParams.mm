@interface MTRUnitTestingClusterTestNullableOptionalResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRUnitTestingClusterTestNullableOptionalResponseParams)init;
- (MTRUnitTestingClusterTestNullableOptionalResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRUnitTestingClusterTestNullableOptionalResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestNullableOptionalResponseParams

- (MTRUnitTestingClusterTestNullableOptionalResponseParams)init
{
  v10.receiver = self;
  v10.super_class = MTRUnitTestingClusterTestNullableOptionalResponseParams;
  v2 = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    wasPresent = v2->_wasPresent;
    v2->_wasPresent = &unk_284C3E4C8;

    wasNull = v3->_wasNull;
    v3->_wasNull = 0;

    value = v3->_value;
    v3->_value = 0;

    originalValue = v3->_originalValue;
    v3->_originalValue = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestNullableOptionalResponseParams);
  wasPresent = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self wasPresent];
  [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)v4 setWasPresent:wasPresent];

  wasNull = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self wasNull];
  [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)v4 setWasNull:wasNull];

  value = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self value];
  [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)v4 setValue:value];

  originalValue = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self originalValue];
  [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)v4 setOriginalValue:originalValue];

  timedInvokeTimeoutMs = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: wasPresent:%@ wasNull:%@; value:%@; originalValue:%@; >", v5, self->_wasPresent, self->_wasNull, self->_value, self->_originalValue];;

  return v6;
}

- (MTRUnitTestingClusterTestNullableOptionalResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v17.receiver = self;
  v17.super_class = MTRUnitTestingClusterTestNullableOptionalResponseParams;
  v7 = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)&v17 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:4294048773 commandID:6 error:error];
  if (v16)
  {
    sub_2393C5AAC(v15);
    sub_2393C5ADC(v15, *(v16 + 1), *(v16 + 3));
    v8 = sub_2393C6FD0(v15, 256);
    if (!v8)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v8 = sub_238F302EC(&v12, v15);
      if (!v8)
      {
        v8 = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
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

- (MTRUnitTestingClusterTestNullableOptionalResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRUnitTestingClusterTestNullableOptionalResponseParams;
  v4 = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*struct];
  [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self setWasPresent:v5];

  if (*(struct + 1) == 1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:*sub_238DE36D8(struct + 1)];
    [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self setWasNull:v6];
  }

  else
  {
    [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self setWasNull:0];
  }

  if (*(struct + 3) == 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(struct + 3)];
    [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self setValue:v7];
  }

  else
  {
    [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self setValue:0];
  }

  v9 = *(struct + 5);
  v8 = struct + 5;
  if (v9 == 1 && (sub_238DE36D8(v8)[1] & 1) != 0)
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = sub_238DE36D8(v8);
    if ((v11[1] & 1) == 0)
    {
      sub_238EA195C();
    }

    v12 = [v10 numberWithUnsignedChar:*v11];
    [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self setOriginalValue:v12];
  }

  else
  {
    [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self setOriginalValue:0];
  }

  v13 = 0;
  v14 = 0;
  result.mFile = v14;
  result.mError = v13;
  result.mLine = HIDWORD(v13);
  return result;
}

@end