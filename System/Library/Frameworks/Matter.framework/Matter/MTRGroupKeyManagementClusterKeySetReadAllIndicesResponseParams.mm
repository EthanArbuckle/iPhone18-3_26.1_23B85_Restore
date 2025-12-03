@interface MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams)init;
- (MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams

- (MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams)init
{
  v7.receiver = self;
  v7.super_class = MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams;
  v2 = [(MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams *)&v7 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    groupKeySetIDs = v2->_groupKeySetIDs;
    v2->_groupKeySetIDs = array;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams);
  groupKeySetIDs = [(MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams *)self groupKeySetIDs];
  [(MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams *)v4 setGroupKeySetIDs:groupKeySetIDs];

  timedInvokeTimeoutMs = [(MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams *)self timedInvokeTimeoutMs];
  [(MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: groupKeySetIDs:%@ >", v5, self->_groupKeySetIDs];;

  return v6;
}

- (MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v15.receiver = self;
  v15.super_class = MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams;
  v7 = [(MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:63 commandID:5 error:error];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      sub_2393C5AAC(v12);
      sub_2393C5ADC(v12, 0, 0);
      v8 = sub_238EFD1FC(v12, v13);
      if (!v8)
      {
        v8 = [(MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams;
  v4 = [(MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  sub_2393C5AAC(v13);
  v11 = 0;
  v12 = 0;
  sub_2393C5BDC(v13, struct);
  while (sub_238DD5C4C(&v11))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v13[36]];
    [v5 addObject:v6];
  }

  if (v11 == 33 || (v7 = v11, !v11))
  {
    [(MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams *)self setGroupKeySetIDs:v5, v11];

    v8 = 0;
    v7 = 0;
  }

  else
  {
    v8 = v12;
  }

  v9 = v7;
  v10 = v8;
  result.mFile = v10;
  result.mError = v9;
  result.mLine = HIDWORD(v9);
  return result;
}

@end