@interface MTRDoorLockClusterGetCredentialStatusResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRDoorLockClusterGetCredentialStatusResponseParams)init;
- (MTRDoorLockClusterGetCredentialStatusResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRDoorLockClusterGetCredentialStatusResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDoorLockClusterGetCredentialStatusResponseParams

- (MTRDoorLockClusterGetCredentialStatusResponseParams)init
{
  v12.receiver = self;
  v12.super_class = MTRDoorLockClusterGetCredentialStatusResponseParams;
  v2 = [(MTRDoorLockClusterGetCredentialStatusResponseParams *)&v12 init];
  v3 = v2;
  if (v2)
  {
    credentialExists = v2->_credentialExists;
    v2->_credentialExists = &unk_284C3E4C8;

    userIndex = v3->_userIndex;
    v3->_userIndex = 0;

    creatorFabricIndex = v3->_creatorFabricIndex;
    v3->_creatorFabricIndex = 0;

    lastModifiedFabricIndex = v3->_lastModifiedFabricIndex;
    v3->_lastModifiedFabricIndex = 0;

    nextCredentialIndex = v3->_nextCredentialIndex;
    v3->_nextCredentialIndex = 0;

    credentialData = v3->_credentialData;
    v3->_credentialData = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDoorLockClusterGetCredentialStatusResponseParams);
  credentialExists = [(MTRDoorLockClusterGetCredentialStatusResponseParams *)self credentialExists];
  [(MTRDoorLockClusterGetCredentialStatusResponseParams *)v4 setCredentialExists:credentialExists];

  userIndex = [(MTRDoorLockClusterGetCredentialStatusResponseParams *)self userIndex];
  [(MTRDoorLockClusterGetCredentialStatusResponseParams *)v4 setUserIndex:userIndex];

  creatorFabricIndex = [(MTRDoorLockClusterGetCredentialStatusResponseParams *)self creatorFabricIndex];
  [(MTRDoorLockClusterGetCredentialStatusResponseParams *)v4 setCreatorFabricIndex:creatorFabricIndex];

  lastModifiedFabricIndex = [(MTRDoorLockClusterGetCredentialStatusResponseParams *)self lastModifiedFabricIndex];
  [(MTRDoorLockClusterGetCredentialStatusResponseParams *)v4 setLastModifiedFabricIndex:lastModifiedFabricIndex];

  nextCredentialIndex = [(MTRDoorLockClusterGetCredentialStatusResponseParams *)self nextCredentialIndex];
  [(MTRDoorLockClusterGetCredentialStatusResponseParams *)v4 setNextCredentialIndex:nextCredentialIndex];

  credentialData = [(MTRDoorLockClusterGetCredentialStatusResponseParams *)self credentialData];
  [(MTRDoorLockClusterGetCredentialStatusResponseParams *)v4 setCredentialData:credentialData];

  timedInvokeTimeoutMs = [(MTRDoorLockClusterGetCredentialStatusResponseParams *)self timedInvokeTimeoutMs];
  [(MTRDoorLockClusterGetCredentialStatusResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  credentialExists = self->_credentialExists;
  userIndex = self->_userIndex;
  creatorFabricIndex = self->_creatorFabricIndex;
  lastModifiedFabricIndex = self->_lastModifiedFabricIndex;
  nextCredentialIndex = self->_nextCredentialIndex;
  v11 = [(NSData *)self->_credentialData base64EncodedStringWithOptions:0];
  v12 = [v3 stringWithFormat:@"<%@: credentialExists:%@ userIndex:%@; creatorFabricIndex:%@; lastModifiedFabricIndex:%@; nextCredentialIndex:%@; credentialData:%@; >", v5, credentialExists, userIndex, creatorFabricIndex, lastModifiedFabricIndex, nextCredentialIndex, v11];;

  return v12;
}

- (MTRDoorLockClusterGetCredentialStatusResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v19.receiver = self;
  v19.super_class = MTRDoorLockClusterGetCredentialStatusResponseParams;
  v7 = [(MTRDoorLockClusterGetCredentialStatusResponseParams *)&v19 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:257 commandID:37 error:error];
  if (v18)
  {
    sub_2393C5AAC(v17);
    sub_2393C5ADC(v17, *(v18 + 1), *(v18 + 3));
    v8 = sub_2393C6FD0(v17, 256);
    if (!v8)
    {
      v12[0] = 0;
      v12[2] = 0;
      v12[4] = 0;
      v15 = 0;
      v16 = 0;
      v13 = 0;
      v14 = 0;
      v8 = sub_238F127FC(v12, v17);
      if (!v8)
      {
        v8 = [(MTRDoorLockClusterGetCredentialStatusResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTRDoorLockClusterGetCredentialStatusResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRDoorLockClusterGetCredentialStatusResponseParams;
  v4 = [(MTRDoorLockClusterGetCredentialStatusResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRDoorLockClusterGetCredentialStatusResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRDoorLockClusterGetCredentialStatusResponseParams *)self setCredentialExists:v5];

  if (*(struct + 4))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(struct + 1)];
    [(MTRDoorLockClusterGetCredentialStatusResponseParams *)self setUserIndex:v6];
  }

  else
  {
    [(MTRDoorLockClusterGetCredentialStatusResponseParams *)self setUserIndex:0];
  }

  if (*(struct + 7))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 6)];
    [(MTRDoorLockClusterGetCredentialStatusResponseParams *)self setCreatorFabricIndex:v7];
  }

  else
  {
    [(MTRDoorLockClusterGetCredentialStatusResponseParams *)self setCreatorFabricIndex:0];
  }

  if (*(struct + 9))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 8)];
    [(MTRDoorLockClusterGetCredentialStatusResponseParams *)self setLastModifiedFabricIndex:v8];
  }

  else
  {
    [(MTRDoorLockClusterGetCredentialStatusResponseParams *)self setLastModifiedFabricIndex:0];
  }

  if (*(struct + 12))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(struct + 5)];
    [(MTRDoorLockClusterGetCredentialStatusResponseParams *)self setNextCredentialIndex:v9];
  }

  else
  {
    [(MTRDoorLockClusterGetCredentialStatusResponseParams *)self setNextCredentialIndex:0];
  }

  v11 = *(struct + 16);
  v10 = struct + 16;
  if (v11 == 1 && (sub_238DE36B8(v10)[16] & 1) != 0)
  {
    v12 = sub_238DE36B8(v10);
    if ((v12[16] & 1) == 0)
    {
      sub_238EA195C();
    }

    v13 = [MEMORY[0x277CBEA90] dataWithBytes:*v12 length:*(v12 + 1)];
    [(MTRDoorLockClusterGetCredentialStatusResponseParams *)self setCredentialData:v13];
  }

  else
  {
    [(MTRDoorLockClusterGetCredentialStatusResponseParams *)self setCredentialData:0];
  }

  v14 = 0;
  v15 = 0;
  result.mFile = v15;
  result.mError = v14;
  result.mLine = HIDWORD(v14);
  return result;
}

@end