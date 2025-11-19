@interface MTRDoorLockClusterSetCredentialResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRDoorLockClusterSetCredentialResponseParams)init;
- (MTRDoorLockClusterSetCredentialResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRDoorLockClusterSetCredentialResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRDoorLockClusterSetCredentialResponseParams

- (MTRDoorLockClusterSetCredentialResponseParams)init
{
  v9.receiver = self;
  v9.super_class = MTRDoorLockClusterSetCredentialResponseParams;
  v2 = [(MTRDoorLockClusterSetCredentialResponseParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    status = v2->_status;
    v2->_status = &unk_284C3E4C8;

    userIndex = v3->_userIndex;
    v3->_userIndex = 0;

    nextCredentialIndex = v3->_nextCredentialIndex;
    v3->_nextCredentialIndex = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDoorLockClusterSetCredentialResponseParams);
  v5 = [(MTRDoorLockClusterSetCredentialResponseParams *)self status];
  [(MTRDoorLockClusterSetCredentialResponseParams *)v4 setStatus:v5];

  v6 = [(MTRDoorLockClusterSetCredentialResponseParams *)self userIndex];
  [(MTRDoorLockClusterSetCredentialResponseParams *)v4 setUserIndex:v6];

  v7 = [(MTRDoorLockClusterSetCredentialResponseParams *)self nextCredentialIndex];
  [(MTRDoorLockClusterSetCredentialResponseParams *)v4 setNextCredentialIndex:v7];

  v8 = [(MTRDoorLockClusterSetCredentialResponseParams *)self timedInvokeTimeoutMs];
  [(MTRDoorLockClusterSetCredentialResponseParams *)v4 setTimedInvokeTimeoutMs:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: status:%@ userIndex:%@; nextCredentialIndex:%@; >", v5, self->_status, self->_userIndex, self->_nextCredentialIndex];;

  return v6;
}

- (MTRDoorLockClusterSetCredentialResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v15.receiver = self;
  v15.super_class = MTRDoorLockClusterSetCredentialResponseParams;
  v7 = [(MTRDoorLockClusterSetCredentialResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:257 commandID:35 error:error];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      v12[0] = 0;
      v12[2] = 0;
      v12[4] = 0;
      v12[6] = 0;
      v12[8] = 0;
      v8 = sub_238F12594(v12, v13);
      if (!v8)
      {
        v8 = [(MTRDoorLockClusterSetCredentialResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTRDoorLockClusterSetCredentialResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRDoorLockClusterSetCredentialResponseParams;
  v4 = [(MTRDoorLockClusterSetCredentialResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRDoorLockClusterSetCredentialResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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
  [(MTRDoorLockClusterSetCredentialResponseParams *)self setStatus:v5];

  if (*(a3 + 4))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a3 + 1)];
    [(MTRDoorLockClusterSetCredentialResponseParams *)self setUserIndex:v6];
  }

  else
  {
    [(MTRDoorLockClusterSetCredentialResponseParams *)self setUserIndex:0];
  }

  if (*(a3 + 8))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a3 + 3)];
    [(MTRDoorLockClusterSetCredentialResponseParams *)self setNextCredentialIndex:v7];
  }

  else
  {
    [(MTRDoorLockClusterSetCredentialResponseParams *)self setNextCredentialIndex:0];
  }

  v8 = 0;
  v9 = 0;
  result.mFile = v9;
  result.mError = v8;
  result.mLine = HIDWORD(v8);
  return result;
}

@end