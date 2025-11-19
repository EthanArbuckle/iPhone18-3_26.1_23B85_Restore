@interface MTRGroupKeyManagementClusterKeySetReadResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRGroupKeyManagementClusterKeySetReadResponseParams)init;
- (MTRGroupKeyManagementClusterKeySetReadResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRGroupKeyManagementClusterKeySetReadResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRGroupKeyManagementClusterKeySetReadResponseParams

- (MTRGroupKeyManagementClusterKeySetReadResponseParams)init
{
  v7.receiver = self;
  v7.super_class = MTRGroupKeyManagementClusterKeySetReadResponseParams;
  v2 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    groupKeySet = v2->_groupKeySet;
    v2->_groupKeySet = v3;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRGroupKeyManagementClusterKeySetReadResponseParams);
  v5 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
  [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)v4 setGroupKeySet:v5];

  v6 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self timedInvokeTimeoutMs];
  [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)v4 setTimedInvokeTimeoutMs:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: groupKeySet:%@ >", v5, self->_groupKeySet];;

  return v6;
}

- (MTRGroupKeyManagementClusterKeySetReadResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v28.receiver = self;
  v28.super_class = MTRGroupKeyManagementClusterKeySetReadResponseParams;
  v7 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)&v28 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:63 commandID:2 error:error];
  if (v27)
  {
    sub_2393C5AAC(v26);
    sub_2393C5ADC(v26, *(v27 + 1), *(v27 + 3));
    v8 = sub_2393C6FD0(v26, 256);
    if (!v8)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v8 = sub_238F19430(&v12, v26);
      if (!v8)
      {
        v8 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
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
  sub_238EA1758(&v27);
LABEL_10:

  return v10;
}

- (MTRGroupKeyManagementClusterKeySetReadResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRGroupKeyManagementClusterKeySetReadResponseParams;
  v4 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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
  v5 = objc_opt_new();
  [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self setGroupKeySet:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*a3];
  v7 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
  [v7 setGroupKeySetID:v6];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a3 + 2)];
  v9 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
  [v9 setGroupKeySecurityPolicy:v8];

  if (*(a3 + 24))
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:*(a3 + 1) length:*(a3 + 2)];
    v11 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [v11 setEpochKey0:v10];
  }

  else
  {
    v10 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [v10 setEpochKey0:0];
  }

  if (*(a3 + 40))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 4)];
    v13 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [v13 setEpochStartTime0:v12];
  }

  else
  {
    v12 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [v12 setEpochStartTime0:0];
  }

  if (*(a3 + 64))
  {
    v14 = [MEMORY[0x277CBEA90] dataWithBytes:*(a3 + 6) length:*(a3 + 7)];
    v15 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [v15 setEpochKey1:v14];
  }

  else
  {
    v14 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [v14 setEpochKey1:0];
  }

  if (*(a3 + 80))
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 9)];
    v17 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [v17 setEpochStartTime1:v16];
  }

  else
  {
    v16 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [v16 setEpochStartTime1:0];
  }

  if (*(a3 + 104))
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:*(a3 + 11) length:*(a3 + 12)];
    v19 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [v19 setEpochKey2:v18];
  }

  else
  {
    v18 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [v18 setEpochKey2:0];
  }

  if (*(a3 + 120))
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 14)];
    v21 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [v21 setEpochStartTime2:v20];
  }

  else
  {
    v20 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [v20 setEpochStartTime2:0];
  }

  v22 = 0;
  v23 = 0;
  result.mFile = v23;
  result.mError = v22;
  result.mLine = HIDWORD(v22);
  return result;
}

@end