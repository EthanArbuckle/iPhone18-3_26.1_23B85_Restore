@interface MTRApplicationLauncherClusterLauncherResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRApplicationLauncherClusterLauncherResponseParams)init;
- (MTRApplicationLauncherClusterLauncherResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRApplicationLauncherClusterLauncherResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRApplicationLauncherClusterLauncherResponseParams

- (MTRApplicationLauncherClusterLauncherResponseParams)init
{
  v8.receiver = self;
  v8.super_class = MTRApplicationLauncherClusterLauncherResponseParams;
  v2 = [(MTRApplicationLauncherClusterLauncherResponseParams *)&v8 init];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRApplicationLauncherClusterLauncherResponseParams);
  v5 = [(MTRApplicationLauncherClusterLauncherResponseParams *)self status];
  [(MTRApplicationLauncherClusterLauncherResponseParams *)v4 setStatus:v5];

  v6 = [(MTRApplicationLauncherClusterLauncherResponseParams *)self data];
  [(MTRApplicationLauncherClusterLauncherResponseParams *)v4 setData:v6];

  v7 = [(MTRApplicationLauncherClusterLauncherResponseParams *)self timedInvokeTimeoutMs];
  [(MTRApplicationLauncherClusterLauncherResponseParams *)v4 setTimedInvokeTimeoutMs:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  status = self->_status;
  v7 = [(NSData *)self->_data base64EncodedStringWithOptions:0];
  v8 = [v3 stringWithFormat:@"<%@: status:%@ data:%@; >", v5, status, v7];;

  return v8;
}

- (MTRApplicationLauncherClusterLauncherResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v15.receiver = self;
  v15.super_class = MTRApplicationLauncherClusterLauncherResponseParams;
  v7 = [(MTRApplicationLauncherClusterLauncherResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:1292 commandID:3 error:error];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      v12[0] = 0;
      v12[8] = 0;
      v8 = sub_238F00F74(v12, v13);
      if (!v8)
      {
        v8 = [(MTRApplicationLauncherClusterLauncherResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTRApplicationLauncherClusterLauncherResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRApplicationLauncherClusterLauncherResponseParams;
  v4 = [(MTRApplicationLauncherClusterLauncherResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRApplicationLauncherClusterLauncherResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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
  [(MTRApplicationLauncherClusterLauncherResponseParams *)self setStatus:v5];

  v7 = *(a3 + 8);
  v6 = a3 + 8;
  if (v7 == 1)
  {
    v8 = sub_238DE36B8(v6);
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:*v8 length:v8[1]];
    [(MTRApplicationLauncherClusterLauncherResponseParams *)self setData:v9];
  }

  else
  {
    [(MTRApplicationLauncherClusterLauncherResponseParams *)self setData:0];
  }

  v10 = 0;
  v11 = 0;
  result.mFile = v11;
  result.mError = v10;
  result.mLine = HIDWORD(v10);
  return result;
}

@end