@interface MTRGroupsClusterRemoveGroupResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)struct;
- (MTRGroupsClusterRemoveGroupResponseParams)init;
- (MTRGroupsClusterRemoveGroupResponseParams)initWithDecodableStruct:(const DecodableType *)struct;
- (MTRGroupsClusterRemoveGroupResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRGroupsClusterRemoveGroupResponseParams

- (MTRGroupsClusterRemoveGroupResponseParams)init
{
  v8.receiver = self;
  v8.super_class = MTRGroupsClusterRemoveGroupResponseParams;
  v2 = [(MTRGroupsClusterRemoveGroupResponseParams *)&v8 init];
  v3 = v2;
  if (v2)
  {
    status = v2->_status;
    v2->_status = &unk_284C3E4C8;

    groupID = v3->_groupID;
    v3->_groupID = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRGroupsClusterRemoveGroupResponseParams);
  status = [(MTRGroupsClusterRemoveGroupResponseParams *)self status];
  [(MTRGroupsClusterRemoveGroupResponseParams *)v4 setStatus:status];

  groupID = [(MTRGroupsClusterRemoveGroupResponseParams *)self groupID];
  [(MTRGroupsClusterRemoveGroupResponseParams *)v4 setGroupID:groupID];

  timedInvokeTimeoutMs = [(MTRGroupsClusterRemoveGroupResponseParams *)self timedInvokeTimeoutMs];
  [(MTRGroupsClusterRemoveGroupResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: status:%@ groupID:%@; >", v5, self->_status, self->_groupID];;

  return v6;
}

- (MTRGroupsClusterRemoveGroupResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v16.receiver = self;
  v16.super_class = MTRGroupsClusterRemoveGroupResponseParams;
  v7 = [(MTRGroupsClusterRemoveGroupResponseParams *)&v16 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:4 commandID:3 error:error];
  if (v15)
  {
    sub_2393C5AAC(v14);
    sub_2393C5ADC(v14, *(v15 + 1), *(v15 + 3));
    v8 = sub_2393C6FD0(v14, 256);
    if (!v8)
    {
      v12[0] = 0;
      v13 = 0;
      v8 = sub_238F11258(v12, v14);
      if (!v8)
      {
        v8 = [(MTRGroupsClusterRemoveGroupResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTRGroupsClusterRemoveGroupResponseParams)initWithDecodableStruct:(const DecodableType *)struct
{
  v10.receiver = self;
  v10.super_class = MTRGroupsClusterRemoveGroupResponseParams;
  v4 = [(MTRGroupsClusterRemoveGroupResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRGroupsClusterRemoveGroupResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRGroupsClusterRemoveGroupResponseParams *)self setStatus:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*&struct[2].var0];
  [(MTRGroupsClusterRemoveGroupResponseParams *)self setGroupID:v6];

  v7 = 0;
  v8 = 0;
  result.mFile = v8;
  result.mError = v7;
  result.mLine = HIDWORD(v7);
  return result;
}

@end