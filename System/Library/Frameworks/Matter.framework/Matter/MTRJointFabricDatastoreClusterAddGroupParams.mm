@interface MTRJointFabricDatastoreClusterAddGroupParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRJointFabricDatastoreClusterAddGroupParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterAddGroupParams

- (MTRJointFabricDatastoreClusterAddGroupParams)init
{
  v13.receiver = self;
  v13.super_class = MTRJointFabricDatastoreClusterAddGroupParams;
  v2 = [(MTRJointFabricDatastoreClusterAddGroupParams *)&v13 init];
  v3 = v2;
  if (v2)
  {
    groupID = v2->_groupID;
    v2->_groupID = &unk_284C3E4C8;

    friendlyName = v3->_friendlyName;
    v3->_friendlyName = &stru_284BD0DD8;

    groupKeySetID = v3->_groupKeySetID;
    v3->_groupKeySetID = 0;

    groupCAT = v3->_groupCAT;
    v3->_groupCAT = 0;

    groupCATVersion = v3->_groupCATVersion;
    v3->_groupCATVersion = 0;

    groupPermission = v3->_groupPermission;
    v3->_groupPermission = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterAddGroupParams);
  groupID = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupID];
  [(MTRJointFabricDatastoreClusterAddGroupParams *)v4 setGroupID:groupID];

  friendlyName = [(MTRJointFabricDatastoreClusterAddGroupParams *)self friendlyName];
  [(MTRJointFabricDatastoreClusterAddGroupParams *)v4 setFriendlyName:friendlyName];

  groupKeySetID = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupKeySetID];
  [(MTRJointFabricDatastoreClusterAddGroupParams *)v4 setGroupKeySetID:groupKeySetID];

  groupCAT = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupCAT];
  [(MTRJointFabricDatastoreClusterAddGroupParams *)v4 setGroupCAT:groupCAT];

  groupCATVersion = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupCATVersion];
  [(MTRJointFabricDatastoreClusterAddGroupParams *)v4 setGroupCATVersion:groupCATVersion];

  groupPermission = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupPermission];
  [(MTRJointFabricDatastoreClusterAddGroupParams *)v4 setGroupPermission:groupPermission];

  timedInvokeTimeoutMs = [(MTRJointFabricDatastoreClusterAddGroupParams *)self timedInvokeTimeoutMs];
  [(MTRJointFabricDatastoreClusterAddGroupParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRJointFabricDatastoreClusterAddGroupParams *)self serverSideProcessingTimeout];
  [(MTRJointFabricDatastoreClusterAddGroupParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: groupID:%@ friendlyName:%@; groupKeySetID:%@; groupCAT:%@; groupCATVersion:%@; groupPermission:%@; >", v5, self->_groupID, self->_friendlyName, self->_groupKeySetID, self->_groupCAT, self->_groupCATVersion, self->_groupPermission];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  unsignedShortValue = 0;
  v33 = 0;
  LOBYTE(unsignedShortValue3) = 0;
  v35 = 0;
  LOBYTE(unsignedShortValue4) = 0;
  v37 = 0;
  unsignedCharValue = 0;
  v31 = 0uLL;
  LOBYTE(unsignedShortValue2) = 0;
  v29[0] = 0;
  v29[1] = 0;
  v28 = v29;
  groupID = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupID];
  unsignedShortValue = [groupID unsignedShortValue];

  friendlyName = [(MTRJointFabricDatastoreClusterAddGroupParams *)self friendlyName];
  sub_238DB9BD8(v22, [friendlyName UTF8String], objc_msgSend(friendlyName, "lengthOfBytesUsingEncoding:", 4));

  v31 = v22[0];
  groupKeySetID = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupKeySetID];

  if (groupKeySetID)
  {
    unsignedShortValue2 = 0;
    v33 = 1;
    groupKeySetID2 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupKeySetID];
    unsignedShortValue2 = [groupKeySetID2 unsignedShortValue];
  }

  groupCAT = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupCAT];

  if (groupCAT)
  {
    unsignedShortValue3 = 0;
    v35 = 1;
    groupCAT2 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupCAT];
    unsignedShortValue3 = [groupCAT2 unsignedShortValue];
  }

  groupCATVersion = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupCATVersion];

  if (groupCATVersion)
  {
    unsignedShortValue4 = 0;
    v37 = 1;
    groupCATVersion2 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupCATVersion];
    unsignedShortValue4 = [groupCATVersion2 unsignedShortValue];
  }

  groupPermission = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupPermission];
  unsignedCharValue = [groupPermission unsignedCharValue];

  sub_2393D9C18(0x62FuLL, 0, &v27);
  if (v27)
  {
    sub_2393C7B90(v22);
    v24 = 0;
    v25 = 0;
    v23 = &unk_284BB83A8;
    v26 = 0;
    sub_238EA16C4(&v23, &v27, 0);
    sub_2393C7BF0(v22, &v23, 0xFFFFFFFF);
    v14 = sub_238F1AFBC(&unsignedShortValue, v22, 0x100uLL);
    v16 = v14;
    if (v14 || (v14 = sub_238DD2EFC(v22, &v27), v16 = v14, v14))
    {
      v17 = v15;
    }

    else
    {
      sub_238DD2F90(reader, &v27);
      v14 = sub_2393C7114(reader, 21, 256);
      v17 = v21;
      v16 = v14;
    }

    v18 = v14 & 0xFFFFFFFF00000000;
    v23 = &unk_284BB83A8;
    sub_238EA1758(&v25);
    sub_238EA1758(&v24);
  }

  else
  {
    v17 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v18 = 0x9B2B00000000;
    v16 = 11;
  }

  sub_238EA1758(&v27);
  sub_238EA1790(&v28);
  v19 = v18 | v16;
  v20 = v17;
  result.mFile = v20;
  result.mError = v19;
  result.mLine = HIDWORD(v19);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self _encodeToTLVReader:v12, v5];
  if (v7)
  {
    if (value)
    {
      v8 = sub_23921C1E4(MTRError, v7, v6);
      v9 = 0;
LABEL_7:
      *value = v8;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = sub_238EE60DC(v12, 0);
    v9 = v10;
    if (value && !v10)
    {
      v8 = sub_23921C1E4(MTRError, 0x9B4800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end