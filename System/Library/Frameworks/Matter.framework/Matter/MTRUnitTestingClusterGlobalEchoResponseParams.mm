@interface MTRUnitTestingClusterGlobalEchoResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRUnitTestingClusterGlobalEchoResponseParams)init;
- (MTRUnitTestingClusterGlobalEchoResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRUnitTestingClusterGlobalEchoResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterGlobalEchoResponseParams

- (MTRUnitTestingClusterGlobalEchoResponseParams)init
{
  v7.receiver = self;
  v7.super_class = MTRUnitTestingClusterGlobalEchoResponseParams;
  v2 = [(MTRUnitTestingClusterGlobalEchoResponseParams *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    field1 = v2->_field1;
    v2->_field1 = v3;

    field2 = v2->_field2;
    v2->_field2 = &unk_284C3E4C8;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterGlobalEchoResponseParams);
  field1 = [(MTRUnitTestingClusterGlobalEchoResponseParams *)self field1];
  [(MTRUnitTestingClusterGlobalEchoResponseParams *)v4 setField1:field1];

  field2 = [(MTRUnitTestingClusterGlobalEchoResponseParams *)self field2];
  [(MTRUnitTestingClusterGlobalEchoResponseParams *)v4 setField2:field2];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: field1:%@ field2:%@; >", v5, self->_field1, self->_field2];;

  return v6;
}

- (MTRUnitTestingClusterGlobalEchoResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v19.receiver = self;
  v19.super_class = MTRUnitTestingClusterGlobalEchoResponseParams;
  v7 = [(MTRUnitTestingClusterGlobalEchoResponseParams *)&v19 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:4294048773 commandID:14 error:error];
  if (v18)
  {
    sub_2393C5AAC(v17);
    sub_2393C5ADC(v17, *(v18 + 1), *(v18 + 3));
    v8 = sub_2393C6FD0(v17, 256);
    if (!v8)
    {
      v14 = 0;
      v15 = 0;
      v12[0] = 0;
      v12[1] = 0;
      v13 = 0;
      v16 = 0;
      v8 = sub_238F30E0C(v12, v17);
      if (!v8)
      {
        v8 = [(MTRUnitTestingClusterGlobalEchoResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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
  sub_238EA1758(&v18);
LABEL_10:

  return v10;
}

- (MTRUnitTestingClusterGlobalEchoResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRUnitTestingClusterGlobalEchoResponseParams;
  v4 = [(MTRUnitTestingClusterGlobalEchoResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRUnitTestingClusterGlobalEchoResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRUnitTestingClusterGlobalEchoResponseParams *)self setField1:v5];

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*struct length:*(struct + 1) encoding:4];
  field1 = [(MTRUnitTestingClusterGlobalEchoResponseParams *)self field1];
  [field1 setName:v6];

  field12 = [(MTRUnitTestingClusterGlobalEchoResponseParams *)self field1];
  name = [field12 name];

  if (name)
  {
    if (*(struct + 20))
    {
      field14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(struct + 4)];
      field13 = [(MTRUnitTestingClusterGlobalEchoResponseParams *)self field1];
      [field13 setMyBitmap:field14];
    }

    else
    {
      field14 = [(MTRUnitTestingClusterGlobalEchoResponseParams *)self field1];
      [field14 setMyBitmap:0];
    }

    if (*(struct + 24) == 1 && (sub_238DE36D8(struct + 24)[1] & 1) != 0)
    {
      v15 = MEMORY[0x277CCABB0];
      v16 = sub_238DE36D8(struct + 24);
      if ((v16[1] & 1) == 0)
      {
        sub_238EA195C();
      }

      field16 = [v15 numberWithUnsignedChar:*v16];
      field15 = [(MTRUnitTestingClusterGlobalEchoResponseParams *)self field1];
      [field15 setMyEnum:field16];
    }

    else
    {
      field16 = [(MTRUnitTestingClusterGlobalEchoResponseParams *)self field1];
      [field16 setMyEnum:0];
    }

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 32)];
    [(MTRUnitTestingClusterGlobalEchoResponseParams *)self setField2:v19];

    v13 = 0;
    v14 = 0;
    v12 = 0;
  }

  else
  {
    v12 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v13 = 0xBAD300000000;
    v14 = 47;
  }

  v20 = v14 | v13;
  result.mFile = v12;
  result.mError = v20;
  result.mLine = HIDWORD(v20);
  return result;
}

@end