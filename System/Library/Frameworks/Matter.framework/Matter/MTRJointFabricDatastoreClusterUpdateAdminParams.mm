@interface MTRJointFabricDatastoreClusterUpdateAdminParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRJointFabricDatastoreClusterUpdateAdminParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterUpdateAdminParams

- (MTRJointFabricDatastoreClusterUpdateAdminParams)init
{
  v10.receiver = self;
  v10.super_class = MTRJointFabricDatastoreClusterUpdateAdminParams;
  v2 = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    nodeID = v2->_nodeID;
    v2->_nodeID = 0;

    friendlyName = v3->_friendlyName;
    v3->_friendlyName = 0;

    icac = v3->_icac;
    v3->_icac = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterUpdateAdminParams);
  nodeID = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self nodeID];
  [(MTRJointFabricDatastoreClusterUpdateAdminParams *)v4 setNodeID:nodeID];

  friendlyName = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self friendlyName];
  [(MTRJointFabricDatastoreClusterUpdateAdminParams *)v4 setFriendlyName:friendlyName];

  icac = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self icac];
  [(MTRJointFabricDatastoreClusterUpdateAdminParams *)v4 setIcac:icac];

  timedInvokeTimeoutMs = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self timedInvokeTimeoutMs];
  [(MTRJointFabricDatastoreClusterUpdateAdminParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self serverSideProcessingTimeout];
  [(MTRJointFabricDatastoreClusterUpdateAdminParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  nodeID = self->_nodeID;
  friendlyName = self->_friendlyName;
  v8 = [(NSData *)self->_icac base64EncodedStringWithOptions:0];
  v9 = [v3 stringWithFormat:@"<%@: nodeID:%@ friendlyName:%@; icac:%@; >", v5, nodeID, friendlyName, v8];;

  return v9;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  LOBYTE(unsignedLongLongValue) = 0;
  v28 = 0;
  LOBYTE(v29) = 0;
  v30 = 0;
  LOBYTE(v31) = 0;
  v32 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  nodeID = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self nodeID];

  if (nodeID)
  {
    unsignedLongLongValue = 0;
    v28 = 1;
    nodeID2 = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self nodeID];
    unsignedLongLongValue = [nodeID2 unsignedLongLongValue];
  }

  friendlyName = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self friendlyName];

  if (friendlyName)
  {
    v29 = 0uLL;
    v30 = 1;
    friendlyName2 = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self friendlyName];
    sub_238DB9BD8(v19, [friendlyName2 UTF8String], objc_msgSend(friendlyName2, "lengthOfBytesUsingEncoding:", 4));

    v29 = v19[0];
  }

  icac = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self icac];

  if (icac)
  {
    v31 = 0uLL;
    v32 = 1;
    icac2 = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self icac];
    sub_238DB6950(v19, [icac2 bytes], objc_msgSend(icac2, "length"));

    v31 = v19[0];
  }

  sub_2393D9C18(0x62FuLL, 0, &v24);
  if (v24)
  {
    sub_2393C7B90(v19);
    v21 = 0;
    v22 = 0;
    v20 = &unk_284BB83A8;
    v23 = 0;
    sub_238EA16C4(&v20, &v24, 0);
    sub_2393C7BF0(v19, &v20, 0xFFFFFFFF);
    v11 = sub_238F1B524(&unsignedLongLongValue, v19, 0x100uLL);
    v13 = v11;
    if (v11 || (v11 = sub_238DD2EFC(v19, &v24), v13 = v11, v11))
    {
      v14 = v12;
    }

    else
    {
      sub_238DD2F90(reader, &v24);
      v11 = sub_2393C7114(reader, 21, 256);
      v14 = v18;
      v13 = v11;
    }

    v15 = v11 & 0xFFFFFFFF00000000;
    v20 = &unk_284BB83A8;
    sub_238EA1758(&v22);
    sub_238EA1758(&v21);
  }

  else
  {
    v14 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v15 = 0x9CC600000000;
    v13 = 11;
  }

  sub_238EA1758(&v24);
  sub_238EA1790(&v25);
  v16 = v15 | v13;
  v17 = v14;
  result.mFile = v17;
  result.mError = v16;
  result.mLine = HIDWORD(v16);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x9CE300000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end