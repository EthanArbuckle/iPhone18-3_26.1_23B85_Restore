@interface MTRGroupKeyManagementClusterKeySetReadResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRGroupKeyManagementClusterKeySetReadResponseParams)init;
- (MTRGroupKeyManagementClusterKeySetReadResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRGroupKeyManagementClusterKeySetReadResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRGroupKeyManagementClusterKeySetReadResponseParams);
  groupKeySet = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
  [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)v4 setGroupKeySet:groupKeySet];

  timedInvokeTimeoutMs = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self timedInvokeTimeoutMs];
  [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

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

- (MTRGroupKeyManagementClusterKeySetReadResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRGroupKeyManagementClusterKeySetReadResponseParams;
  v4 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self setGroupKeySet:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*struct];
  groupKeySet = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
  [groupKeySet setGroupKeySetID:v6];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 2)];
  groupKeySet2 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
  [groupKeySet2 setGroupKeySecurityPolicy:v8];

  if (*(struct + 24))
  {
    groupKeySet4 = [MEMORY[0x277CBEA90] dataWithBytes:*(struct + 1) length:*(struct + 2)];
    groupKeySet3 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [groupKeySet3 setEpochKey0:groupKeySet4];
  }

  else
  {
    groupKeySet4 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [groupKeySet4 setEpochKey0:0];
  }

  if (*(struct + 40))
  {
    groupKeySet6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(struct + 4)];
    groupKeySet5 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [groupKeySet5 setEpochStartTime0:groupKeySet6];
  }

  else
  {
    groupKeySet6 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [groupKeySet6 setEpochStartTime0:0];
  }

  if (*(struct + 64))
  {
    groupKeySet8 = [MEMORY[0x277CBEA90] dataWithBytes:*(struct + 6) length:*(struct + 7)];
    groupKeySet7 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [groupKeySet7 setEpochKey1:groupKeySet8];
  }

  else
  {
    groupKeySet8 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [groupKeySet8 setEpochKey1:0];
  }

  if (*(struct + 80))
  {
    groupKeySet10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(struct + 9)];
    groupKeySet9 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [groupKeySet9 setEpochStartTime1:groupKeySet10];
  }

  else
  {
    groupKeySet10 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [groupKeySet10 setEpochStartTime1:0];
  }

  if (*(struct + 104))
  {
    groupKeySet12 = [MEMORY[0x277CBEA90] dataWithBytes:*(struct + 11) length:*(struct + 12)];
    groupKeySet11 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [groupKeySet11 setEpochKey2:groupKeySet12];
  }

  else
  {
    groupKeySet12 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [groupKeySet12 setEpochKey2:0];
  }

  if (*(struct + 120))
  {
    groupKeySet14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(struct + 14)];
    groupKeySet13 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [groupKeySet13 setEpochStartTime2:groupKeySet14];
  }

  else
  {
    groupKeySet14 = [(MTRGroupKeyManagementClusterKeySetReadResponseParams *)self groupKeySet];
    [groupKeySet14 setEpochStartTime2:0];
  }

  v22 = 0;
  v23 = 0;
  result.mFile = v23;
  result.mError = v22;
  result.mLine = HIDWORD(v22);
  return result;
}

@end