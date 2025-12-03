@interface MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams

- (MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams)init
{
  v11.receiver = self;
  v11.super_class = MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams;
  v2 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    nodeID = v2->_nodeID;
    v2->_nodeID = &unk_284C3E4C8;

    endpointID = v3->_endpointID;
    v3->_endpointID = &unk_284C3E4C8;

    v6 = objc_opt_new();
    binding = v3->_binding;
    v3->_binding = v6;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams);
  nodeID = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self nodeID];
  [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)v4 setNodeID:nodeID];

  endpointID = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self endpointID];
  [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)v4 setEndpointID:endpointID];

  binding = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self binding];
  [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)v4 setBinding:binding];

  timedInvokeTimeoutMs = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self timedInvokeTimeoutMs];
  [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self serverSideProcessingTimeout];
  [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: nodeID:%@ endpointID:%@; binding:%@; >", v5, self->_nodeID, self->_endpointID, self->_binding];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  unsignedLongLongValue = 0;
  unsignedShortValue = 0;
  v41 = 0;
  v43 = 0;
  v45 = 0;
  v47 = 0;
  v38[0] = 0;
  v38[1] = 0;
  v37 = v38;
  nodeID = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self nodeID];
  unsignedLongLongValue = [nodeID unsignedLongLongValue];

  endpointID = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self endpointID];
  unsignedShortValue = [endpointID unsignedShortValue];

  binding = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self binding];
  node = [binding node];

  if (node)
  {
    v41 = 1;
    unsignedLongLongValue2 = 0;
    binding2 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self binding];
    node2 = [binding2 node];
    unsignedLongLongValue2 = [node2 unsignedLongLongValue];
  }

  binding3 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self binding];
  group = [binding3 group];

  if (group)
  {
    v43 = 1;
    unsignedShortValue2 = 0;
    binding4 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self binding];
    group2 = [binding4 group];
    unsignedShortValue2 = [group2 unsignedShortValue];
  }

  binding5 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self binding];
  endpoint = [binding5 endpoint];

  if (endpoint)
  {
    v45 = 1;
    unsignedShortValue3 = 0;
    binding6 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self binding];
    endpoint2 = [binding6 endpoint];
    unsignedShortValue3 = [endpoint2 unsignedShortValue];
  }

  binding7 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self binding];
  cluster = [binding7 cluster];

  if (cluster)
  {
    v47 = 1;
    unsignedIntValue = 0;
    binding8 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self binding];
    cluster2 = [binding8 cluster];
    unsignedIntValue = [cluster2 unsignedIntValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v36);
  if (v36)
  {
    sub_2393C7B90(v31);
    v33 = 0;
    v34 = 0;
    v32 = &unk_284BB83A8;
    v35 = 0;
    sub_238EA16C4(&v32, &v36, 0);
    sub_2393C7BF0(v31, &v32, 0xFFFFFFFF);
    v23 = sub_238F1BA30(&unsignedLongLongValue, v31, 0x100uLL);
    v25 = v23;
    if (v23 || (v23 = sub_238DD2EFC(v31, &v36), v25 = v23, v23))
    {
      v26 = v24;
    }

    else
    {
      sub_238DD2F90(reader, &v36);
      v23 = sub_2393C7114(reader, 21, 256);
      v26 = v30;
      v25 = v23;
    }

    v27 = v23 & 0xFFFFFFFF00000000;
    v32 = &unk_284BB83A8;
    sub_238EA1758(&v34);
    sub_238EA1758(&v33);
  }

  else
  {
    v26 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v27 = 0x9FD800000000;
    v25 = 11;
  }

  sub_238EA1758(&v36);
  sub_238EA1790(&v37);
  v28 = v27 | v25;
  v29 = v26;
  result.mFile = v29;
  result.mError = v28;
  result.mLine = HIDWORD(v28);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x9FF500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end