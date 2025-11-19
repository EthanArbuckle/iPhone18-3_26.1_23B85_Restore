@interface MTRGroupsClusterGetGroupMembershipParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRGroupsClusterGetGroupMembershipParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRGroupsClusterGetGroupMembershipParams

- (MTRGroupsClusterGetGroupMembershipParams)init
{
  v8.receiver = self;
  v8.super_class = MTRGroupsClusterGetGroupMembershipParams;
  v2 = [(MTRGroupsClusterGetGroupMembershipParams *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA60] array];
    groupList = v2->_groupList;
    v2->_groupList = v3;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRGroupsClusterGetGroupMembershipParams);
  v5 = [(MTRGroupsClusterGetGroupMembershipParams *)self groupList];
  [(MTRGroupsClusterGetGroupMembershipParams *)v4 setGroupList:v5];

  v6 = [(MTRGroupsClusterGetGroupMembershipParams *)self timedInvokeTimeoutMs];
  [(MTRGroupsClusterGetGroupMembershipParams *)v4 setTimedInvokeTimeoutMs:v6];

  v7 = [(MTRGroupsClusterGetGroupMembershipParams *)self serverSideProcessingTimeout];
  [(MTRGroupsClusterGetGroupMembershipParams *)v4 setServerSideProcessingTimeout:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: groupList:%@ >", v5, self->_groupList];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0uLL;
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v4 = [(MTRGroupsClusterGetGroupMembershipParams *)self groupList];
  v5 = [v4 count] == 0;

  if (!v5)
  {
    operator new();
  }

  v18 = 0uLL;
  sub_2393D9C18(0x62FuLL, 0, &v15);
  if (v15)
  {
    sub_2393C7B90(buf);
    v21 = 0;
    v22 = 0;
    v20 = &unk_284BB83A8;
    v23 = 0;
    sub_238EA16C4(&v20, &v15, 0);
    sub_2393C7BF0(buf, &v20, 0xFFFFFFFF);
    v6 = sub_238F19E04(&v18, buf, 0x100uLL);
    v8 = v6;
    if (v6 || (v6 = sub_238DD2EFC(buf, &v15), v8 = v6, v6))
    {
      v9 = v7;
    }

    else
    {
      sub_238DD2F90(a3, &v15);
      v6 = sub_2393C7114(a3, 21, 256);
      v9 = v14;
      v8 = v6;
    }

    v10 = v6 & 0xFFFFFFFF00000000;
    v20 = &unk_284BB83A8;
    sub_238EA1758(&v22);
    sub_238EA1758(&v21);
  }

  else
  {
    v9 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v10 = 0x2B400000000;
    v8 = 11;
  }

  sub_238EA1758(&v15);
  sub_238EA1790(&v16);
  v11 = *MEMORY[0x277D85DE8];
  v12 = v10 | v8;
  v13 = v9;
  result.mFile = v13;
  result.mError = v12;
  result.mLine = HIDWORD(v12);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRGroupsClusterGetGroupMembershipParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x2D100000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end