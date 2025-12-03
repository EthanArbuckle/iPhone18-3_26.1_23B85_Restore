@interface MTRJointFabricDatastoreClusterUpdateNodeParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRJointFabricDatastoreClusterUpdateNodeParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterUpdateNodeParams

- (MTRJointFabricDatastoreClusterUpdateNodeParams)init
{
  v9.receiver = self;
  v9.super_class = MTRJointFabricDatastoreClusterUpdateNodeParams;
  v2 = [(MTRJointFabricDatastoreClusterUpdateNodeParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    nodeID = v2->_nodeID;
    v2->_nodeID = &unk_284C3E4C8;

    friendlyName = v3->_friendlyName;
    v3->_friendlyName = &stru_284BD0DD8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterUpdateNodeParams);
  nodeID = [(MTRJointFabricDatastoreClusterUpdateNodeParams *)self nodeID];
  [(MTRJointFabricDatastoreClusterUpdateNodeParams *)v4 setNodeID:nodeID];

  friendlyName = [(MTRJointFabricDatastoreClusterUpdateNodeParams *)self friendlyName];
  [(MTRJointFabricDatastoreClusterUpdateNodeParams *)v4 setFriendlyName:friendlyName];

  timedInvokeTimeoutMs = [(MTRJointFabricDatastoreClusterUpdateNodeParams *)self timedInvokeTimeoutMs];
  [(MTRJointFabricDatastoreClusterUpdateNodeParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRJointFabricDatastoreClusterUpdateNodeParams *)self serverSideProcessingTimeout];
  [(MTRJointFabricDatastoreClusterUpdateNodeParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: nodeID:%@ friendlyName:%@; >", v5, self->_nodeID, self->_friendlyName];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  unsignedLongLongValue = 0;
  v24 = 0uLL;
  v22[0] = 0;
  v22[1] = 0;
  v21 = v22;
  nodeID = [(MTRJointFabricDatastoreClusterUpdateNodeParams *)self nodeID];
  unsignedLongLongValue = [nodeID unsignedLongLongValue];

  friendlyName = [(MTRJointFabricDatastoreClusterUpdateNodeParams *)self friendlyName];
  sub_238DB9BD8(v15, [friendlyName UTF8String], objc_msgSend(friendlyName, "lengthOfBytesUsingEncoding:", 4));

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
    v7 = sub_238F1B6B4(&unsignedLongLongValue, v15, 0x100uLL);
    v9 = v7;
    if (v7 || (v7 = sub_238DD2EFC(v15, &v20), v9 = v7, v7))
    {
      v10 = v8;
    }

    else
    {
      sub_238DD2F90(reader, &v20);
      v7 = sub_2393C7114(reader, 21, 256);
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
    v11 = 0x9E0E00000000;
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

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRJointFabricDatastoreClusterUpdateNodeParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x9E2B00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end