@interface MTRJointFabricDatastoreClusterUpdateAdminParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRJointFabricDatastoreClusterUpdateAdminParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterUpdateAdminParams);
  v5 = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self nodeID];
  [(MTRJointFabricDatastoreClusterUpdateAdminParams *)v4 setNodeID:v5];

  v6 = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self friendlyName];
  [(MTRJointFabricDatastoreClusterUpdateAdminParams *)v4 setFriendlyName:v6];

  v7 = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self icac];
  [(MTRJointFabricDatastoreClusterUpdateAdminParams *)v4 setIcac:v7];

  v8 = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self timedInvokeTimeoutMs];
  [(MTRJointFabricDatastoreClusterUpdateAdminParams *)v4 setTimedInvokeTimeoutMs:v8];

  v9 = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self serverSideProcessingTimeout];
  [(MTRJointFabricDatastoreClusterUpdateAdminParams *)v4 setServerSideProcessingTimeout:v9];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  LOBYTE(v27) = 0;
  v28 = 0;
  LOBYTE(v29) = 0;
  v30 = 0;
  LOBYTE(v31) = 0;
  v32 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v5 = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self nodeID];

  if (v5)
  {
    v27 = 0;
    v28 = 1;
    v6 = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self nodeID];
    v27 = [v6 unsignedLongLongValue];
  }

  v7 = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self friendlyName];

  if (v7)
  {
    v29 = 0uLL;
    v30 = 1;
    v8 = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self friendlyName];
    sub_238DB9BD8(v19, [v8 UTF8String], objc_msgSend(v8, "lengthOfBytesUsingEncoding:", 4));

    v29 = v19[0];
  }

  v9 = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self icac];

  if (v9)
  {
    v31 = 0uLL;
    v32 = 1;
    v10 = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self icac];
    sub_238DB6950(v19, [v10 bytes], objc_msgSend(v10, "length"));

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
    v11 = sub_238F1B524(&v27, v19, 0x100uLL);
    v13 = v11;
    if (v11 || (v11 = sub_238DD2EFC(v19, &v24), v13 = v11, v11))
    {
      v14 = v12;
    }

    else
    {
      sub_238DD2F90(a3, &v24);
      v11 = sub_2393C7114(a3, 21, 256);
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

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRJointFabricDatastoreClusterUpdateAdminParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x9CE300000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end