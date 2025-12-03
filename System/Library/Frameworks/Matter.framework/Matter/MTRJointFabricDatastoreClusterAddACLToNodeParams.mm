@interface MTRJointFabricDatastoreClusterAddACLToNodeParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRJointFabricDatastoreClusterAddACLToNodeParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterAddACLToNodeParams

- (MTRJointFabricDatastoreClusterAddACLToNodeParams)init
{
  v10.receiver = self;
  v10.super_class = MTRJointFabricDatastoreClusterAddACLToNodeParams;
  v2 = [(MTRJointFabricDatastoreClusterAddACLToNodeParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    nodeID = v2->_nodeID;
    v2->_nodeID = &unk_284C3E4C8;

    v5 = objc_opt_new();
    aclEntry = v3->_aclEntry;
    v3->_aclEntry = v5;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterAddACLToNodeParams);
  nodeID = [(MTRJointFabricDatastoreClusterAddACLToNodeParams *)self nodeID];
  [(MTRJointFabricDatastoreClusterAddACLToNodeParams *)v4 setNodeID:nodeID];

  aclEntry = [(MTRJointFabricDatastoreClusterAddACLToNodeParams *)self aclEntry];
  [(MTRJointFabricDatastoreClusterAddACLToNodeParams *)v4 setAclEntry:aclEntry];

  timedInvokeTimeoutMs = [(MTRJointFabricDatastoreClusterAddACLToNodeParams *)self timedInvokeTimeoutMs];
  [(MTRJointFabricDatastoreClusterAddACLToNodeParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRJointFabricDatastoreClusterAddACLToNodeParams *)self serverSideProcessingTimeout];
  [(MTRJointFabricDatastoreClusterAddACLToNodeParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: nodeID:%@ aclEntry:%@; >", v5, self->_nodeID, self->_aclEntry];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v47 = *MEMORY[0x277D85DE8];
  v33[1] = 0;
  unsignedLongLongValue = 0;
  v35 = 0;
  LOBYTE(v36) = 0;
  v38 = 0;
  LOBYTE(v39) = 0;
  v41 = 0;
  v32 = v33;
  v33[0] = 0;
  nodeID = [(MTRJointFabricDatastoreClusterAddACLToNodeParams *)self nodeID];
  unsignedLongLongValue = [nodeID unsignedLongLongValue];

  aclEntry = [(MTRJointFabricDatastoreClusterAddACLToNodeParams *)self aclEntry];
  privilege = [aclEntry privilege];
  LOBYTE(v35) = [privilege unsignedCharValue];

  aclEntry2 = [(MTRJointFabricDatastoreClusterAddACLToNodeParams *)self aclEntry];
  authMode = [aclEntry2 authMode];
  HIBYTE(v35) = [authMode unsignedCharValue];

  aclEntry3 = [(MTRJointFabricDatastoreClusterAddACLToNodeParams *)self aclEntry];
  subjects = [aclEntry3 subjects];
  v11 = subjects == 0;

  if (!v11)
  {
    v36 = 0;
    v37 = 0;
    v38 = 1;
    aclEntry4 = [(MTRJointFabricDatastoreClusterAddACLToNodeParams *)self aclEntry];
    subjects2 = [aclEntry4 subjects];
    v14 = [subjects2 count] == 0;

    if (!v14)
    {
      operator new();
    }

    v36 = 0;
    v37 = 0;
  }

  aclEntry5 = [(MTRJointFabricDatastoreClusterAddACLToNodeParams *)self aclEntry];
  targets = [aclEntry5 targets];
  v17 = targets == 0;

  if (!v17)
  {
    v39 = 0;
    v40 = 0;
    v41 = 1;
    aclEntry6 = [(MTRJointFabricDatastoreClusterAddACLToNodeParams *)self aclEntry];
    targets2 = [aclEntry6 targets];
    v20 = [targets2 count] == 0;

    if (!v20)
    {
      operator new();
    }

    v39 = 0;
    v40 = 0;
  }

  sub_2393D9C18(0x62FuLL, 0, &v31);
  if (v31)
  {
    sub_2393C7B90(buf);
    v44 = 0;
    v45 = 0;
    v43 = &unk_284BB83A8;
    v46 = 0;
    sub_238EA16C4(&v43, &v31, 0);
    sub_2393C7BF0(buf, &v43, 0xFFFFFFFF);
    v21 = sub_238F1BCA4(&unsignedLongLongValue, buf, 0x100uLL);
    v23 = v21;
    if (v21 || (v21 = sub_238DD2EFC(buf, &v31), v23 = v21, v21))
    {
      v24 = v22;
    }

    else
    {
      sub_238DD2F90(reader, &v31);
      v21 = sub_2393C7114(reader, 21, 256);
      v24 = v29;
      v23 = v21;
    }

    v25 = v21 & 0xFFFFFFFF00000000;
    v43 = &unk_284BB83A8;
    sub_238EA1758(&v45);
    sub_238EA1758(&v44);
  }

  else
  {
    v24 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v25 = 0xA0D200000000;
    v23 = 11;
  }

  sub_238EA1758(&v31);
  sub_238EA1790(&v32);
  v26 = *MEMORY[0x277D85DE8];
  v27 = v25 | v23;
  v28 = v24;
  result.mFile = v28;
  result.mError = v27;
  result.mLine = HIDWORD(v27);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRJointFabricDatastoreClusterAddACLToNodeParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xA0EF00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end