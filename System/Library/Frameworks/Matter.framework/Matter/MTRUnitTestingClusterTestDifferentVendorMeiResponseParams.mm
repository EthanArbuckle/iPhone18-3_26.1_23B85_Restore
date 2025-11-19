@interface MTRUnitTestingClusterTestDifferentVendorMeiResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)a3;
- (MTRUnitTestingClusterTestDifferentVendorMeiResponseParams)init;
- (MTRUnitTestingClusterTestDifferentVendorMeiResponseParams)initWithDecodableStruct:(const DecodableType *)a3;
- (MTRUnitTestingClusterTestDifferentVendorMeiResponseParams)initWithResponseValue:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestDifferentVendorMeiResponseParams

- (MTRUnitTestingClusterTestDifferentVendorMeiResponseParams)init
{
  v7.receiver = self;
  v7.super_class = MTRUnitTestingClusterTestDifferentVendorMeiResponseParams;
  v2 = [(MTRUnitTestingClusterTestDifferentVendorMeiResponseParams *)&v7 init];
  v3 = v2;
  if (v2)
  {
    arg1 = v2->_arg1;
    v2->_arg1 = &unk_284C3E4C8;

    eventNumber = v3->_eventNumber;
    v3->_eventNumber = &unk_284C3E4C8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestDifferentVendorMeiResponseParams);
  v5 = [(MTRUnitTestingClusterTestDifferentVendorMeiResponseParams *)self arg1];
  [(MTRUnitTestingClusterTestDifferentVendorMeiResponseParams *)v4 setArg1:v5];

  v6 = [(MTRUnitTestingClusterTestDifferentVendorMeiResponseParams *)self eventNumber];
  [(MTRUnitTestingClusterTestDifferentVendorMeiResponseParams *)v4 setEventNumber:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: arg1:%@ eventNumber:%@; >", v5, self->_arg1, self->_eventNumber];;

  return v6;
}

- (MTRUnitTestingClusterTestDifferentVendorMeiResponseParams)initWithResponseValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = MTRUnitTestingClusterTestDifferentVendorMeiResponseParams;
  v7 = [(MTRUnitTestingClusterTestDifferentVendorMeiResponseParams *)&v16 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:4294048773 commandID:4294049979 error:a4];
  if (v15)
  {
    sub_2393C5AAC(v14);
    sub_2393C5ADC(v14, *(v15 + 1), *(v15 + 3));
    v8 = sub_2393C6FD0(v14, 256);
    if (!v8)
    {
      v12[0] = 0;
      v13 = 0;
      v8 = sub_238F31698(v12, v14);
      if (!v8)
      {
        v8 = [(MTRUnitTestingClusterTestDifferentVendorMeiResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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
  sub_238EA1758(&v15);
LABEL_10:

  return v10;
}

- (MTRUnitTestingClusterTestDifferentVendorMeiResponseParams)initWithDecodableStruct:(const DecodableType *)a3
{
  v10.receiver = self;
  v10.super_class = MTRUnitTestingClusterTestDifferentVendorMeiResponseParams;
  v4 = [(MTRUnitTestingClusterTestDifferentVendorMeiResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRUnitTestingClusterTestDifferentVendorMeiResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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

- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3->var0];
  [(MTRUnitTestingClusterTestDifferentVendorMeiResponseParams *)self setArg1:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&a3[8].var0];
  [(MTRUnitTestingClusterTestDifferentVendorMeiResponseParams *)self setEventNumber:v6];

  v7 = 0;
  v8 = 0;
  result.mFile = v8;
  result.mError = v7;
  result.mLine = HIDWORD(v7);
  return result;
}

@end