@interface MTRGroupsClusterViewGroupResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRGroupsClusterViewGroupResponseParams)init;
- (MTRGroupsClusterViewGroupResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRGroupsClusterViewGroupResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRGroupsClusterViewGroupResponseParams

- (MTRGroupsClusterViewGroupResponseParams)init
{
  v9.receiver = self;
  v9.super_class = MTRGroupsClusterViewGroupResponseParams;
  v2 = [(MTRGroupsClusterViewGroupResponseParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    status = v2->_status;
    v2->_status = &unk_284C3E4C8;

    groupID = v3->_groupID;
    v3->_groupID = &unk_284C3E4C8;

    groupName = v3->_groupName;
    v3->_groupName = &stru_284BD0DD8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRGroupsClusterViewGroupResponseParams);
  status = [(MTRGroupsClusterViewGroupResponseParams *)self status];
  [(MTRGroupsClusterViewGroupResponseParams *)v4 setStatus:status];

  groupID = [(MTRGroupsClusterViewGroupResponseParams *)self groupID];
  [(MTRGroupsClusterViewGroupResponseParams *)v4 setGroupID:groupID];

  groupName = [(MTRGroupsClusterViewGroupResponseParams *)self groupName];
  [(MTRGroupsClusterViewGroupResponseParams *)v4 setGroupName:groupName];

  timedInvokeTimeoutMs = [(MTRGroupsClusterViewGroupResponseParams *)self timedInvokeTimeoutMs];
  [(MTRGroupsClusterViewGroupResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: status:%@ groupID:%@; groupName:%@; >", v5, self->_status, self->_groupID, self->_groupName];;

  return v6;
}

- (MTRGroupsClusterViewGroupResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v18.receiver = self;
  v18.super_class = MTRGroupsClusterViewGroupResponseParams;
  v7 = [(MTRGroupsClusterViewGroupResponseParams *)&v18 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:4 commandID:1 error:error];
  if (v17)
  {
    sub_2393C5AAC(v16);
    sub_2393C5ADC(v16, *(v17 + 1), *(v17 + 3));
    v8 = sub_2393C6FD0(v16, 256);
    if (!v8)
    {
      v12[0] = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v8 = sub_238F19D4C(v12, v16);
      if (!v8)
      {
        v8 = [(MTRGroupsClusterViewGroupResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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
  sub_238EA1758(&v17);
LABEL_10:

  return v10;
}

- (MTRGroupsClusterViewGroupResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRGroupsClusterViewGroupResponseParams;
  v4 = [(MTRGroupsClusterViewGroupResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRGroupsClusterViewGroupResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRGroupsClusterViewGroupResponseParams *)self setStatus:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(struct + 1)];
  [(MTRGroupsClusterViewGroupResponseParams *)self setGroupID:v6];

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(struct + 1) length:*(struct + 2) encoding:4];
  [(MTRGroupsClusterViewGroupResponseParams *)self setGroupName:v7];

  groupName = [(MTRGroupsClusterViewGroupResponseParams *)self groupName];

  if (groupName)
  {
    v9 = 0;
  }

  else
  {
    v9 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  }

  if (groupName)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x25E0000002FLL;
  }

  result.mFile = v9;
  result.mError = v10;
  result.mLine = HIDWORD(v10);
  return result;
}

@end