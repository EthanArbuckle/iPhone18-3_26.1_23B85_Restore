@interface MTRJointFabricDatastoreClusterUpdateGroupParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRJointFabricDatastoreClusterUpdateGroupParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterUpdateGroupParams

- (MTRJointFabricDatastoreClusterUpdateGroupParams)init
{
  v13.receiver = self;
  v13.super_class = MTRJointFabricDatastoreClusterUpdateGroupParams;
  v2 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)&v13 init];
  v3 = v2;
  if (v2)
  {
    groupID = v2->_groupID;
    v2->_groupID = &unk_284C3E4C8;

    friendlyName = v3->_friendlyName;
    v3->_friendlyName = 0;

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
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterUpdateGroupParams);
  v5 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self groupID];
  [(MTRJointFabricDatastoreClusterUpdateGroupParams *)v4 setGroupID:v5];

  v6 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self friendlyName];
  [(MTRJointFabricDatastoreClusterUpdateGroupParams *)v4 setFriendlyName:v6];

  v7 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self groupKeySetID];
  [(MTRJointFabricDatastoreClusterUpdateGroupParams *)v4 setGroupKeySetID:v7];

  v8 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self groupCAT];
  [(MTRJointFabricDatastoreClusterUpdateGroupParams *)v4 setGroupCAT:v8];

  v9 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self groupCATVersion];
  [(MTRJointFabricDatastoreClusterUpdateGroupParams *)v4 setGroupCATVersion:v9];

  v10 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self groupPermission];
  [(MTRJointFabricDatastoreClusterUpdateGroupParams *)v4 setGroupPermission:v10];

  v11 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self timedInvokeTimeoutMs];
  [(MTRJointFabricDatastoreClusterUpdateGroupParams *)v4 setTimedInvokeTimeoutMs:v11];

  v12 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self serverSideProcessingTimeout];
  [(MTRJointFabricDatastoreClusterUpdateGroupParams *)v4 setServerSideProcessingTimeout:v12];

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
  v31 = 0;
  LOBYTE(v32) = 0;
  v33 = 0;
  LOBYTE(v34) = 0;
  v35 = 0;
  LOBYTE(v36) = 0;
  v37 = 0;
  LOBYTE(v38) = 0;
  v39 = 0;
  v40 = 0;
  v30[0] = 0;
  v30[1] = 0;
  v29 = v30;
  v5 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self groupID];
  v31 = [v5 unsignedShortValue];

  v6 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self friendlyName];

  if (v6)
  {
    v32 = 0uLL;
    v33 = 1;
    v7 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self friendlyName];
    sub_238DB9BD8(v23, [v7 UTF8String], objc_msgSend(v7, "lengthOfBytesUsingEncoding:", 4));

    v32 = v23[0];
  }

  v8 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self groupKeySetID];

  if (v8)
  {
    v34 = 0;
    v35 = 1;
    v9 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self groupKeySetID];
    v34 = [v9 unsignedShortValue];
  }

  v10 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self groupCAT];

  if (v10)
  {
    v36 = 0;
    v37 = 1;
    v11 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self groupCAT];
    v36 = [v11 unsignedShortValue];
  }

  v12 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self groupCATVersion];

  if (v12)
  {
    v38 = 0;
    v39 = 1;
    v13 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self groupCATVersion];
    v38 = [v13 unsignedShortValue];
  }

  v14 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self groupPermission];
  v40 = [v14 unsignedCharValue];

  sub_2393D9C18(0x62FuLL, 0, &v28);
  if (v28)
  {
    sub_2393C7B90(v23);
    v25 = 0;
    v26 = 0;
    v24 = &unk_284BB83A8;
    v27 = 0;
    sub_238EA16C4(&v24, &v28, 0);
    sub_2393C7BF0(v23, &v24, 0xFFFFFFFF);
    v15 = sub_238F1B198(&v31, v23, 0x100uLL);
    v17 = v15;
    if (v15 || (v15 = sub_238DD2EFC(v23, &v28), v17 = v15, v15))
    {
      v18 = v16;
    }

    else
    {
      sub_238DD2F90(a3, &v28);
      v15 = sub_2393C7114(a3, 21, 256);
      v18 = v22;
      v17 = v15;
    }

    v19 = v15 & 0xFFFFFFFF00000000;
    v24 = &unk_284BB83A8;
    sub_238EA1758(&v26);
    sub_238EA1758(&v25);
  }

  else
  {
    v18 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v19 = 0x9BAC00000000;
    v17 = 11;
  }

  sub_238EA1758(&v28);
  sub_238EA1790(&v29);
  v20 = v19 | v17;
  v21 = v18;
  result.mFile = v21;
  result.mError = v20;
  result.mLine = HIDWORD(v20);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRJointFabricDatastoreClusterUpdateGroupParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x9BC900000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end