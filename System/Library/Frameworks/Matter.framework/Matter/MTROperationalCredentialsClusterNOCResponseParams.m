@interface MTROperationalCredentialsClusterNOCResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTROperationalCredentialsClusterNOCResponseParams)init;
- (MTROperationalCredentialsClusterNOCResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTROperationalCredentialsClusterNOCResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTROperationalCredentialsClusterNOCResponseParams

- (MTROperationalCredentialsClusterNOCResponseParams)init
{
  v9.receiver = self;
  v9.super_class = MTROperationalCredentialsClusterNOCResponseParams;
  v2 = [(MTROperationalCredentialsClusterNOCResponseParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    statusCode = v2->_statusCode;
    v2->_statusCode = &unk_284C3E4C8;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = 0;

    debugText = v3->_debugText;
    v3->_debugText = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTROperationalCredentialsClusterNOCResponseParams);
  v5 = [(MTROperationalCredentialsClusterNOCResponseParams *)self statusCode];
  [(MTROperationalCredentialsClusterNOCResponseParams *)v4 setStatusCode:v5];

  v6 = [(MTROperationalCredentialsClusterNOCResponseParams *)self fabricIndex];
  [(MTROperationalCredentialsClusterNOCResponseParams *)v4 setFabricIndex:v6];

  v7 = [(MTROperationalCredentialsClusterNOCResponseParams *)self debugText];
  [(MTROperationalCredentialsClusterNOCResponseParams *)v4 setDebugText:v7];

  v8 = [(MTROperationalCredentialsClusterNOCResponseParams *)self timedInvokeTimeoutMs];
  [(MTROperationalCredentialsClusterNOCResponseParams *)v4 setTimedInvokeTimeoutMs:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: statusCode:%@ fabricIndex:%@; debugText:%@; >", v5, self->_statusCode, self->_fabricIndex, self->_debugText];;

  return v6;
}

- (MTROperationalCredentialsClusterNOCResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v16.receiver = self;
  v16.super_class = MTROperationalCredentialsClusterNOCResponseParams;
  v7 = [(MTROperationalCredentialsClusterNOCResponseParams *)&v16 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:62 commandID:8 error:error];
  if (v15)
  {
    sub_2393C5AAC(v14);
    sub_2393C5ADC(v14, *(v15 + 1), *(v15 + 3));
    v8 = sub_2393C6FD0(v14, 256);
    if (!v8)
    {
      v12 = 0;
      v13 = 0;
      v8 = sub_238F22050(&v12, v14);
      if (!v8)
      {
        v8 = [(MTROperationalCredentialsClusterNOCResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
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

- (MTROperationalCredentialsClusterNOCResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTROperationalCredentialsClusterNOCResponseParams;
  v4 = [(MTROperationalCredentialsClusterNOCResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTROperationalCredentialsClusterNOCResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*a3];
  [(MTROperationalCredentialsClusterNOCResponseParams *)self setStatusCode:v5];

  if (*(a3 + 1) == 1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(a3 + 1)];
    [(MTROperationalCredentialsClusterNOCResponseParams *)self setFabricIndex:v6];
  }

  else
  {
    [(MTROperationalCredentialsClusterNOCResponseParams *)self setFabricIndex:0];
  }

  v8 = *(a3 + 8);
  v7 = a3 + 8;
  if (v8 != 1)
  {
    [(MTROperationalCredentialsClusterNOCResponseParams *)self setDebugText:0];
    goto LABEL_8;
  }

  v9 = sub_238DE36B8(v7);
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v9 length:v9[1] encoding:4];
  [(MTROperationalCredentialsClusterNOCResponseParams *)self setDebugText:v10];

  v11 = [(MTROperationalCredentialsClusterNOCResponseParams *)self debugText];

  if (v11)
  {
LABEL_8:
    v13 = 0;
    v14 = 0;
    v12 = 0;
    goto LABEL_9;
  }

  v12 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  v13 = 0x24BB00000000;
  v14 = 47;
LABEL_9:
  v15 = v14 | v13;
  result.mFile = v12;
  result.mError = v15;
  result.mLine = HIDWORD(v15);
  return result;
}

@end