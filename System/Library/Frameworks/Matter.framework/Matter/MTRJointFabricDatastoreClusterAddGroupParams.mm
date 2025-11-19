@interface MTRJointFabricDatastoreClusterAddGroupParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRJointFabricDatastoreClusterAddGroupParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterAddGroupParams);
  v5 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupID];
  [(MTRJointFabricDatastoreClusterAddGroupParams *)v4 setGroupID:v5];

  v6 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self friendlyName];
  [(MTRJointFabricDatastoreClusterAddGroupParams *)v4 setFriendlyName:v6];

  v7 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupKeySetID];
  [(MTRJointFabricDatastoreClusterAddGroupParams *)v4 setGroupKeySetID:v7];

  v8 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupCAT];
  [(MTRJointFabricDatastoreClusterAddGroupParams *)v4 setGroupCAT:v8];

  v9 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupCATVersion];
  [(MTRJointFabricDatastoreClusterAddGroupParams *)v4 setGroupCATVersion:v9];

  v10 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupPermission];
  [(MTRJointFabricDatastoreClusterAddGroupParams *)v4 setGroupPermission:v10];

  v11 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self timedInvokeTimeoutMs];
  [(MTRJointFabricDatastoreClusterAddGroupParams *)v4 setTimedInvokeTimeoutMs:v11];

  v12 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self serverSideProcessingTimeout];
  [(MTRJointFabricDatastoreClusterAddGroupParams *)v4 setServerSideProcessingTimeout:v12];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v30 = 0;
  v33 = 0;
  LOBYTE(v34) = 0;
  v35 = 0;
  LOBYTE(v36) = 0;
  v37 = 0;
  v38 = 0;
  v31 = 0uLL;
  LOBYTE(v32) = 0;
  v29[0] = 0;
  v29[1] = 0;
  v28 = v29;
  v5 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupID];
  v30 = [v5 unsignedShortValue];

  v6 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self friendlyName];
  sub_238DB9BD8(v22, [v6 UTF8String], objc_msgSend(v6, "lengthOfBytesUsingEncoding:", 4));

  v31 = v22[0];
  v7 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupKeySetID];

  if (v7)
  {
    v32 = 0;
    v33 = 1;
    v8 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupKeySetID];
    v32 = [v8 unsignedShortValue];
  }

  v9 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupCAT];

  if (v9)
  {
    v34 = 0;
    v35 = 1;
    v10 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupCAT];
    v34 = [v10 unsignedShortValue];
  }

  v11 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupCATVersion];

  if (v11)
  {
    v36 = 0;
    v37 = 1;
    v12 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupCATVersion];
    v36 = [v12 unsignedShortValue];
  }

  v13 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self groupPermission];
  v38 = [v13 unsignedCharValue];

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
    v14 = sub_238F1AFBC(&v30, v22, 0x100uLL);
    v16 = v14;
    if (v14 || (v14 = sub_238DD2EFC(v22, &v27), v16 = v14, v14))
    {
      v17 = v15;
    }

    else
    {
      sub_238DD2F90(a3, &v27);
      v14 = sub_2393C7114(a3, 21, 256);
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

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRJointFabricDatastoreClusterAddGroupParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x9B4800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end