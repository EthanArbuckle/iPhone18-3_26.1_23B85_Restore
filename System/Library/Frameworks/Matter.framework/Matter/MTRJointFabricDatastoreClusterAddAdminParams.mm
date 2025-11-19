@interface MTRJointFabricDatastoreClusterAddAdminParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRJointFabricDatastoreClusterAddAdminParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterAddAdminParams

- (MTRJointFabricDatastoreClusterAddAdminParams)init
{
  v12.receiver = self;
  v12.super_class = MTRJointFabricDatastoreClusterAddAdminParams;
  v2 = [(MTRJointFabricDatastoreClusterAddAdminParams *)&v12 init];
  v3 = v2;
  if (v2)
  {
    nodeID = v2->_nodeID;
    v2->_nodeID = &unk_284C3E4C8;

    friendlyName = v3->_friendlyName;
    v3->_friendlyName = &stru_284BD0DD8;

    vendorID = v3->_vendorID;
    v3->_vendorID = &unk_284C3E4C8;

    v7 = [MEMORY[0x277CBEA90] data];
    icac = v3->_icac;
    v3->_icac = v7;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterAddAdminParams);
  v5 = [(MTRJointFabricDatastoreClusterAddAdminParams *)self nodeID];
  [(MTRJointFabricDatastoreClusterAddAdminParams *)v4 setNodeID:v5];

  v6 = [(MTRJointFabricDatastoreClusterAddAdminParams *)self friendlyName];
  [(MTRJointFabricDatastoreClusterAddAdminParams *)v4 setFriendlyName:v6];

  v7 = [(MTRJointFabricDatastoreClusterAddAdminParams *)self vendorID];
  [(MTRJointFabricDatastoreClusterAddAdminParams *)v4 setVendorID:v7];

  v8 = [(MTRJointFabricDatastoreClusterAddAdminParams *)self icac];
  [(MTRJointFabricDatastoreClusterAddAdminParams *)v4 setIcac:v8];

  v9 = [(MTRJointFabricDatastoreClusterAddAdminParams *)self timedInvokeTimeoutMs];
  [(MTRJointFabricDatastoreClusterAddAdminParams *)v4 setTimedInvokeTimeoutMs:v9];

  v10 = [(MTRJointFabricDatastoreClusterAddAdminParams *)self serverSideProcessingTimeout];
  [(MTRJointFabricDatastoreClusterAddAdminParams *)v4 setServerSideProcessingTimeout:v10];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  nodeID = self->_nodeID;
  friendlyName = self->_friendlyName;
  vendorID = self->_vendorID;
  v9 = [(NSData *)self->_icac base64EncodedStringWithOptions:0];
  v10 = [v3 stringWithFormat:@"<%@: nodeID:%@ friendlyName:%@; vendorID:%@; icac:%@; >", v5, nodeID, friendlyName, vendorID, v9];;

  return v10;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v28 = 0uLL;
  v26 = 0uLL;
  v25 = 0;
  v27 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  v5 = [(MTRJointFabricDatastoreClusterAddAdminParams *)self nodeID];
  v25 = [v5 unsignedLongLongValue];

  v6 = [(MTRJointFabricDatastoreClusterAddAdminParams *)self friendlyName];
  sub_238DB9BD8(v17, [v6 UTF8String], objc_msgSend(v6, "lengthOfBytesUsingEncoding:", 4));

  v26 = v17[0];
  v7 = [(MTRJointFabricDatastoreClusterAddAdminParams *)self vendorID];
  v27 = [v7 unsignedShortValue];

  v8 = [(MTRJointFabricDatastoreClusterAddAdminParams *)self icac];
  sub_238DB6950(v17, [v8 bytes], objc_msgSend(v8, "length"));

  v28 = v17[0];
  sub_2393D9C18(0x62FuLL, 0, &v22);
  if (v22)
  {
    sub_2393C7B90(v17);
    v19 = 0;
    v20 = 0;
    v18 = &unk_284BB83A8;
    v21 = 0;
    sub_238EA16C4(&v18, &v22, 0);
    sub_2393C7BF0(v17, &v18, 0xFFFFFFFF);
    v9 = sub_238F1B374(&v25, v17, 0x100uLL);
    v11 = v9;
    if (v9 || (v9 = sub_238DD2EFC(v17, &v22), v11 = v9, v9))
    {
      v12 = v10;
    }

    else
    {
      sub_238DD2F90(a3, &v22);
      v9 = sub_2393C7114(a3, 21, 256);
      v12 = v16;
      v11 = v9;
    }

    v13 = v9 & 0xFFFFFFFF00000000;
    v18 = &unk_284BB83A8;
    sub_238EA1758(&v20);
    sub_238EA1758(&v19);
  }

  else
  {
    v12 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v13 = 0x9C5C00000000;
    v11 = 11;
  }

  sub_238EA1758(&v22);
  sub_238EA1790(&v23);
  v14 = v13 | v11;
  v15 = v12;
  result.mFile = v15;
  result.mError = v14;
  result.mLine = HIDWORD(v14);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRJointFabricDatastoreClusterAddAdminParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x9C7900000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end