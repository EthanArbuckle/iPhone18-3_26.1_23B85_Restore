@interface MTRGroupsClusterAddGroupResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)struct;
- (MTRGroupsClusterAddGroupResponseParams)init;
- (MTRGroupsClusterAddGroupResponseParams)initWithDecodableStruct:(const DecodableType *)struct;
- (MTRGroupsClusterAddGroupResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRGroupsClusterAddGroupResponseParams

- (MTRGroupsClusterAddGroupResponseParams)init
{
  v8.receiver = self;
  v8.super_class = MTRGroupsClusterAddGroupResponseParams;
  v2 = [(MTRGroupsClusterAddGroupResponseParams *)&v8 init];
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
  v4 = objc_alloc_init(MTRGroupsClusterAddGroupResponseParams);
  status = [(MTRGroupsClusterAddGroupResponseParams *)self status];
  [(MTRGroupsClusterAddGroupResponseParams *)v4 setStatus:status];

  groupID = [(MTRGroupsClusterAddGroupResponseParams *)self groupID];
  [(MTRGroupsClusterAddGroupResponseParams *)v4 setGroupID:groupID];

  timedInvokeTimeoutMs = [(MTRGroupsClusterAddGroupResponseParams *)self timedInvokeTimeoutMs];
  [(MTRGroupsClusterAddGroupResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

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

- (MTRGroupsClusterAddGroupResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v16.receiver = self;
  v16.super_class = MTRGroupsClusterAddGroupResponseParams;
  v7 = [(MTRGroupsClusterAddGroupResponseParams *)&v16 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:4 commandID:0 error:error];
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
        v8 = [(MTRGroupsClusterAddGroupResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTRGroupsClusterAddGroupResponseParams)initWithDecodableStruct:(const DecodableType *)struct
{
  v10.receiver = self;
  v10.super_class = MTRGroupsClusterAddGroupResponseParams;
  v4 = [(MTRGroupsClusterAddGroupResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRGroupsClusterAddGroupResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRGroupsClusterAddGroupResponseParams *)self setStatus:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*&struct[2].var0];
  [(MTRGroupsClusterAddGroupResponseParams *)self setGroupID:v6];

  v7 = 0;
  v8 = 0;
  result.mFile = v8;
  result.mError = v7;
  result.mLine = HIDWORD(v7);
  return result;
}

@end