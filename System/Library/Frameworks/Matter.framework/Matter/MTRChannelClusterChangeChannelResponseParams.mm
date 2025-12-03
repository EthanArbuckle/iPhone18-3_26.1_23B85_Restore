@interface MTRChannelClusterChangeChannelResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRChannelClusterChangeChannelResponseParams)init;
- (MTRChannelClusterChangeChannelResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRChannelClusterChangeChannelResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRChannelClusterChangeChannelResponseParams

- (MTRChannelClusterChangeChannelResponseParams)init
{
  v8.receiver = self;
  v8.super_class = MTRChannelClusterChangeChannelResponseParams;
  v2 = [(MTRChannelClusterChangeChannelResponseParams *)&v8 init];
  v3 = v2;
  if (v2)
  {
    status = v2->_status;
    v2->_status = &unk_284C3E4C8;

    data = v3->_data;
    v3->_data = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRChannelClusterChangeChannelResponseParams);
  status = [(MTRChannelClusterChangeChannelResponseParams *)self status];
  [(MTRChannelClusterChangeChannelResponseParams *)v4 setStatus:status];

  data = [(MTRChannelClusterChangeChannelResponseParams *)self data];
  [(MTRChannelClusterChangeChannelResponseParams *)v4 setData:data];

  timedInvokeTimeoutMs = [(MTRChannelClusterChangeChannelResponseParams *)self timedInvokeTimeoutMs];
  [(MTRChannelClusterChangeChannelResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: status:%@ data:%@; >", v5, self->_status, self->_data];;

  return v6;
}

- (MTRChannelClusterChangeChannelResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v15.receiver = self;
  v15.super_class = MTRChannelClusterChangeChannelResponseParams;
  v7 = [(MTRChannelClusterChangeChannelResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:1284 commandID:1 error:error];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      v12[0] = 0;
      v12[8] = 0;
      v8 = sub_238F05A48(v12, v13);
      if (!v8)
      {
        v8 = [(MTRChannelClusterChangeChannelResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTRChannelClusterChangeChannelResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRChannelClusterChangeChannelResponseParams;
  v4 = [(MTRChannelClusterChangeChannelResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRChannelClusterChangeChannelResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRChannelClusterChangeChannelResponseParams *)self setStatus:v5];

  v7 = *(struct + 8);
  v6 = struct + 8;
  if (v7 != 1)
  {
    [(MTRChannelClusterChangeChannelResponseParams *)self setData:0];
    goto LABEL_5;
  }

  v8 = sub_238DE36B8(v6);
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v8 length:v8[1] encoding:4];
  [(MTRChannelClusterChangeChannelResponseParams *)self setData:v9];

  data = [(MTRChannelClusterChangeChannelResponseParams *)self data];

  if (data)
  {
LABEL_5:
    v12 = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_6;
  }

  v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  v12 = 0x6CAA00000000;
  v13 = 47;
LABEL_6:
  v14 = v13 | v12;
  result.mFile = v11;
  result.mError = v14;
  result.mLine = HIDWORD(v14);
  return result;
}

@end