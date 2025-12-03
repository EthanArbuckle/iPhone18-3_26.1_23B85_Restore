@interface MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams

- (MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams)init
{
  v10.receiver = self;
  v10.super_class = MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams;
  v2 = [(MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    endpointID = v2->_endpointID;
    v2->_endpointID = &unk_284C3E4C8;

    nodeID = v3->_nodeID;
    v3->_nodeID = &unk_284C3E4C8;

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
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams);
  endpointID = [(MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams *)self endpointID];
  [(MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams *)v4 setEndpointID:endpointID];

  nodeID = [(MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams *)self nodeID];
  [(MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams *)v4 setNodeID:nodeID];

  friendlyName = [(MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams *)self friendlyName];
  [(MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams *)v4 setFriendlyName:friendlyName];

  timedInvokeTimeoutMs = [(MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams *)self timedInvokeTimeoutMs];
  [(MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams *)self serverSideProcessingTimeout];
  [(MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: endpointID:%@ nodeID:%@; friendlyName:%@; >", v5, self->_endpointID, self->_nodeID, self->_friendlyName];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  unsignedShortValue = 0;
  v26 = 0uLL;
  unsignedLongLongValue = 0;
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  endpointID = [(MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams *)self endpointID];
  unsignedShortValue = [endpointID unsignedShortValue];

  nodeID = [(MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams *)self nodeID];
  unsignedLongLongValue = [nodeID unsignedLongLongValue];

  friendlyName = [(MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams *)self friendlyName];
  sub_238DB9BD8(v16, [friendlyName UTF8String], objc_msgSend(friendlyName, "lengthOfBytesUsingEncoding:", 4));

  v26 = v16[0];
  sub_2393D9C18(0x62FuLL, 0, &v21);
  if (v21)
  {
    sub_2393C7B90(v16);
    v18 = 0;
    v19 = 0;
    v17 = &unk_284BB83A8;
    v20 = 0;
    sub_238EA16C4(&v17, &v21, 0);
    sub_2393C7BF0(v16, &v17, 0xFFFFFFFF);
    v8 = sub_238F1B7C0(&unsignedShortValue, v16, 0x100uLL);
    v10 = v8;
    if (v8 || (v8 = sub_238DD2EFC(v16, &v21), v10 = v8, v8))
    {
      v11 = v9;
    }

    else
    {
      sub_238DD2F90(reader, &v21);
      v8 = sub_2393C7114(reader, 21, 256);
      v11 = v15;
      v10 = v8;
    }

    v12 = v8 & 0xFFFFFFFF00000000;
    v17 = &unk_284BB83A8;
    sub_238EA1758(&v19);
    sub_238EA1758(&v18);
  }

  else
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v12 = 0x9EB800000000;
    v10 = 11;
  }

  sub_238EA1758(&v21);
  sub_238EA1790(&v22);
  v13 = v12 | v10;
  v14 = v11;
  result.mFile = v14;
  result.mError = v13;
  result.mLine = HIDWORD(v13);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRJointFabricDatastoreClusterUpdateEndpointForNodeParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x9ED500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end