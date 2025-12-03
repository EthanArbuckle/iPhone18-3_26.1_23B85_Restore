@interface MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)struct;
- (MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams)init;
- (MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams)initWithDecodableStruct:(const DecodableType *)struct;
- (MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams

- (MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams)init
{
  v8.receiver = self;
  v8.super_class = MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams;
  v2 = [(MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams *)&v8 init];
  v3 = v2;
  if (v2)
  {
    action = v2->_action;
    v2->_action = &unk_284C3E4C8;

    delayedActionTime = v3->_delayedActionTime;
    v3->_delayedActionTime = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams);
  action = [(MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams *)self action];
  [(MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams *)v4 setAction:action];

  delayedActionTime = [(MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams *)self delayedActionTime];
  [(MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams *)v4 setDelayedActionTime:delayedActionTime];

  timedInvokeTimeoutMs = [(MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams *)self timedInvokeTimeoutMs];
  [(MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: action:%@ delayedActionTime:%@; >", v5, self->_action, self->_delayedActionTime];;

  return v6;
}

- (MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v16.receiver = self;
  v16.super_class = MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams;
  v7 = [(MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams *)&v16 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:41 commandID:3 error:error];
  if (v15)
  {
    sub_2393C5AAC(v14);
    sub_2393C5ADC(v14, *(v15 + 1), *(v15 + 3));
    v8 = sub_2393C6FD0(v14, 256);
    if (!v8)
    {
      v12[0] = 0;
      v13 = 0;
      v8 = sub_238F23514(v12, v14);
      if (!v8)
      {
        v8 = [(MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams)initWithDecodableStruct:(const DecodableType *)struct
{
  v10.receiver = self;
  v10.super_class = MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams;
  v4 = [(MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:struct->var0];
  [(MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams *)self setAction:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&struct[4].var0];
  [(MTROTASoftwareUpdateProviderClusterApplyUpdateResponseParams *)self setDelayedActionTime:v6];

  v7 = 0;
  v8 = 0;
  result.mFile = v8;
  result.mError = v7;
  result.mLine = HIDWORD(v7);
  return result;
}

@end