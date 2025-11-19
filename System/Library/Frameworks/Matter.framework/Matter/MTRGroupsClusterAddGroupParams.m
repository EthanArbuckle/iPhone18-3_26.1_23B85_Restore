@interface MTRGroupsClusterAddGroupParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRGroupsClusterAddGroupParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRGroupsClusterAddGroupParams

- (MTRGroupsClusterAddGroupParams)init
{
  v9.receiver = self;
  v9.super_class = MTRGroupsClusterAddGroupParams;
  v2 = [(MTRGroupsClusterAddGroupParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    groupID = v2->_groupID;
    v2->_groupID = &unk_284C3E4C8;

    groupName = v3->_groupName;
    v3->_groupName = &stru_284BD0DD8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRGroupsClusterAddGroupParams);
  v5 = [(MTRGroupsClusterAddGroupParams *)self groupID];
  [(MTRGroupsClusterAddGroupParams *)v4 setGroupID:v5];

  v6 = [(MTRGroupsClusterAddGroupParams *)self groupName];
  [(MTRGroupsClusterAddGroupParams *)v4 setGroupName:v6];

  v7 = [(MTRGroupsClusterAddGroupParams *)self timedInvokeTimeoutMs];
  [(MTRGroupsClusterAddGroupParams *)v4 setTimedInvokeTimeoutMs:v7];

  v8 = [(MTRGroupsClusterAddGroupParams *)self serverSideProcessingTimeout];
  [(MTRGroupsClusterAddGroupParams *)v4 setServerSideProcessingTimeout:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: groupID:%@ groupName:%@; >", v5, self->_groupID, self->_groupName];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v23 = 0;
  v24 = 0uLL;
  v22[0] = 0;
  v22[1] = 0;
  v21 = v22;
  v5 = [(MTRGroupsClusterAddGroupParams *)self groupID];
  v23 = [v5 unsignedShortValue];

  v6 = [(MTRGroupsClusterAddGroupParams *)self groupName];
  sub_238DB9BD8(v15, [v6 UTF8String], objc_msgSend(v6, "lengthOfBytesUsingEncoding:", 4));

  v24 = v15[0];
  sub_2393D9C18(0x62FuLL, 0, &v20);
  if (v20)
  {
    sub_2393C7B90(v15);
    v17 = 0;
    v18 = 0;
    v16 = &unk_284BB83A8;
    v19 = 0;
    sub_238EA16C4(&v16, &v20, 0);
    sub_2393C7BF0(v15, &v16, 0xFFFFFFFF);
    v7 = sub_238F19B48(&v23, v15, 0x100uLL);
    v9 = v7;
    if (v7 || (v7 = sub_238DD2EFC(v15, &v20), v9 = v7, v7))
    {
      v10 = v8;
    }

    else
    {
      sub_238DD2F90(a3, &v20);
      v7 = sub_2393C7114(a3, 21, 256);
      v10 = v14;
      v9 = v7;
    }

    v11 = v7 & 0xFFFFFFFF00000000;
    v16 = &unk_284BB83A8;
    sub_238EA1758(&v18);
    sub_238EA1758(&v17);
  }

  else
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v11 = 0x10400000000;
    v9 = 11;
  }

  sub_238EA1758(&v20);
  sub_238EA1790(&v21);
  v12 = v11 | v9;
  v13 = v10;
  result.mFile = v13;
  result.mError = v12;
  result.mLine = HIDWORD(v12);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRGroupsClusterAddGroupParams *)self _encodeToTLVReader:v12, v5];
  if (v7)
  {
    if (a3)
    {
      v8 = sub_23921C1E4(MTRError, v7, v6);
      v9 = 0;
LABEL_7:
      *a3 = v8;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = sub_238EE60DC(v12, 0);
    v9 = v10;
    if (a3 && !v10)
    {
      v8 = sub_23921C1E4(MTRError, 0x12100000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end