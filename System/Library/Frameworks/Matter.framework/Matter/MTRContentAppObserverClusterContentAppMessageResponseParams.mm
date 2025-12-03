@interface MTRContentAppObserverClusterContentAppMessageResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRContentAppObserverClusterContentAppMessageResponseParams)init;
- (MTRContentAppObserverClusterContentAppMessageResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRContentAppObserverClusterContentAppMessageResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRContentAppObserverClusterContentAppMessageResponseParams

- (MTRContentAppObserverClusterContentAppMessageResponseParams)init
{
  v8.receiver = self;
  v8.super_class = MTRContentAppObserverClusterContentAppMessageResponseParams;
  v2 = [(MTRContentAppObserverClusterContentAppMessageResponseParams *)&v8 init];
  v3 = v2;
  if (v2)
  {
    status = v2->_status;
    v2->_status = &unk_284C3E4C8;

    data = v3->_data;
    v3->_data = 0;

    encodingHint = v3->_encodingHint;
    v3->_encodingHint = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRContentAppObserverClusterContentAppMessageResponseParams);
  status = [(MTRContentAppObserverClusterContentAppMessageResponseParams *)self status];
  [(MTRContentAppObserverClusterContentAppMessageResponseParams *)v4 setStatus:status];

  data = [(MTRContentAppObserverClusterContentAppMessageResponseParams *)self data];
  [(MTRContentAppObserverClusterContentAppMessageResponseParams *)v4 setData:data];

  encodingHint = [(MTRContentAppObserverClusterContentAppMessageResponseParams *)self encodingHint];
  [(MTRContentAppObserverClusterContentAppMessageResponseParams *)v4 setEncodingHint:encodingHint];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: status:%@ data:%@; encodingHint:%@; >", v5, self->_status, self->_data, self->_encodingHint];;

  return v6;
}

- (MTRContentAppObserverClusterContentAppMessageResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = MTRContentAppObserverClusterContentAppMessageResponseParams;
  v7 = [(MTRContentAppObserverClusterContentAppMessageResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:1296 commandID:1 error:error];
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
      v8 = sub_238F0CD7C(v12, v13);
      if (!v8)
      {
        v8 = [(MTRContentAppObserverClusterContentAppMessageResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTRContentAppObserverClusterContentAppMessageResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRContentAppObserverClusterContentAppMessageResponseParams;
  v4 = [(MTRContentAppObserverClusterContentAppMessageResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRContentAppObserverClusterContentAppMessageResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*struct];
  [(MTRContentAppObserverClusterContentAppMessageResponseParams *)self setStatus:v5];

  if (*(struct + 8) != 1)
  {
    [(MTRContentAppObserverClusterContentAppMessageResponseParams *)self setData:0];
LABEL_5:
    v12 = *(struct + 32);
    v11 = struct + 32;
    if (v12 == 1)
    {
      v13 = sub_238DE36B8(v11);
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v13 length:v13[1] encoding:4];
      [(MTRContentAppObserverClusterContentAppMessageResponseParams *)self setEncodingHint:v14];

      encodingHint = [(MTRContentAppObserverClusterContentAppMessageResponseParams *)self encodingHint];

      if (!encodingHint)
      {
        v9 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
        v10 = 0x821C00000000;
        goto LABEL_8;
      }
    }

    else
    {
      [(MTRContentAppObserverClusterContentAppMessageResponseParams *)self setEncodingHint:0];
    }

    v10 = 0;
    v16 = 0;
    v9 = 0;
    goto LABEL_11;
  }

  v6 = sub_238DE36B8(struct + 8);
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v6 length:v6[1] encoding:4];
  [(MTRContentAppObserverClusterContentAppMessageResponseParams *)self setData:v7];

  data = [(MTRContentAppObserverClusterContentAppMessageResponseParams *)self data];

  if (data)
  {
    goto LABEL_5;
  }

  v9 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  v10 = 0x821100000000;
LABEL_8:
  v16 = 47;
LABEL_11:
  v17 = v16 | v10;
  result.mFile = v9;
  result.mError = v17;
  result.mLine = HIDWORD(v17);
  return result;
}

@end