@interface MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams);
  v5 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self nodeID];
  [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)v4 setNodeID:v5];

  v6 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self endpointID];
  [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)v4 setEndpointID:v6];

  v7 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self binding];
  [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)v4 setBinding:v7];

  v8 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self timedInvokeTimeoutMs];
  [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)v4 setTimedInvokeTimeoutMs:v8];

  v9 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self serverSideProcessingTimeout];
  [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)v4 setServerSideProcessingTimeout:v9];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v43 = 0;
  v45 = 0;
  v47 = 0;
  v38[0] = 0;
  v38[1] = 0;
  v37 = v38;
  v5 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self nodeID];
  v39 = [v5 unsignedLongLongValue];

  v6 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self endpointID];
  v40 = [v6 unsignedShortValue];

  v7 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self binding];
  v8 = [v7 node];

  if (v8)
  {
    v41 = 1;
    v42 = 0;
    v9 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self binding];
    v10 = [v9 node];
    v42 = [v10 unsignedLongLongValue];
  }

  v11 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self binding];
  v12 = [v11 group];

  if (v12)
  {
    v43 = 1;
    v44 = 0;
    v13 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self binding];
    v14 = [v13 group];
    v44 = [v14 unsignedShortValue];
  }

  v15 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self binding];
  v16 = [v15 endpoint];

  if (v16)
  {
    v45 = 1;
    v46 = 0;
    v17 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self binding];
    v18 = [v17 endpoint];
    v46 = [v18 unsignedShortValue];
  }

  v19 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self binding];
  v20 = [v19 cluster];

  if (v20)
  {
    v47 = 1;
    v48 = 0;
    v21 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self binding];
    v22 = [v21 cluster];
    v48 = [v22 unsignedIntValue];
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
    v23 = sub_238F1BA30(&v39, v31, 0x100uLL);
    v25 = v23;
    if (v23 || (v23 = sub_238DD2EFC(v31, &v36), v25 = v23, v23))
    {
      v26 = v24;
    }

    else
    {
      sub_238DD2F90(a3, &v36);
      v23 = sub_2393C7114(a3, 21, 256);
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

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRJointFabricDatastoreClusterAddBindingToEndpointForNodeParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x9FF500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end