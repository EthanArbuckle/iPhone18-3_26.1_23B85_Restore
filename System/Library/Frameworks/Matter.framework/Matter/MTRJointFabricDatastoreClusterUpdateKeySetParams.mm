@interface MTRJointFabricDatastoreClusterUpdateKeySetParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRJointFabricDatastoreClusterUpdateKeySetParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterUpdateKeySetParams

- (MTRJointFabricDatastoreClusterUpdateKeySetParams)init
{
  v8.receiver = self;
  v8.super_class = MTRJointFabricDatastoreClusterUpdateKeySetParams;
  v2 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    groupKeySet = v2->_groupKeySet;
    v2->_groupKeySet = v3;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterUpdateKeySetParams);
  v5 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)v4 setGroupKeySet:v5];

  v6 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self timedInvokeTimeoutMs];
  [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)v4 setTimedInvokeTimeoutMs:v6];

  v7 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self serverSideProcessingTimeout];
  [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)v4 setServerSideProcessingTimeout:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: groupKeySet:%@ >", v5, self->_groupKeySet];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v51 = 0;
  v52 = 0;
  LOBYTE(v53) = 0;
  v54 = 0;
  LOBYTE(v55) = 0;
  v56 = 0;
  LOBYTE(v57) = 0;
  v58 = 0;
  LOBYTE(v59) = 0;
  v60 = 0;
  LOBYTE(v61) = 0;
  v62 = 0;
  LOBYTE(v63) = 0;
  v64 = 0;
  v65 = 0;
  v50[0] = 0;
  v50[1] = 0;
  v49 = v50;
  v5 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  v6 = [v5 groupKeySetID];
  v51 = [v6 unsignedShortValue];

  v7 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  v8 = [v7 groupKeySecurityPolicy];
  v52 = [v8 unsignedCharValue];

  v9 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  v10 = [v9 epochKey0];

  if (v10)
  {
    v53 = 0uLL;
    v54 = 1;
    v11 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
    v12 = [v11 epochKey0];
    sub_238DB6950(v43, [v12 bytes], objc_msgSend(v12, "length"));

    v53 = v43[0];
  }

  v13 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  v14 = [v13 epochStartTime0];

  if (v14)
  {
    v55 = 0;
    v56 = 1;
    v15 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
    v16 = [v15 epochStartTime0];
    v55 = [v16 unsignedLongLongValue];
  }

  v17 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  v18 = [v17 epochKey1];

  if (v18)
  {
    v57 = 0uLL;
    v58 = 1;
    v19 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
    v20 = [v19 epochKey1];
    sub_238DB6950(v43, [v20 bytes], objc_msgSend(v20, "length"));

    v57 = v43[0];
  }

  v21 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  v22 = [v21 epochStartTime1];

  if (v22)
  {
    v59 = 0;
    v60 = 1;
    v23 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
    v24 = [v23 epochStartTime1];
    v59 = [v24 unsignedLongLongValue];
  }

  v25 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  v26 = [v25 epochKey2];

  if (v26)
  {
    v61 = 0uLL;
    v62 = 1;
    v27 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
    v28 = [v27 epochKey2];
    sub_238DB6950(v43, [v28 bytes], objc_msgSend(v28, "length"));

    v61 = v43[0];
  }

  v29 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  v30 = [v29 epochStartTime2];

  if (v30)
  {
    v63 = 0;
    v64 = 1;
    v31 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
    v32 = [v31 epochStartTime2];
    v63 = [v32 unsignedLongLongValue];
  }

  v33 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  v34 = [v33 groupKeyMulticastPolicy];
  v65 = [v34 unsignedCharValue];

  sub_2393D9C18(0x62FuLL, 0, &v48);
  if (v48)
  {
    sub_2393C7B90(v43);
    v45 = 0;
    v46 = 0;
    v44 = &unk_284BB83A8;
    v47 = 0;
    sub_238EA16C4(&v44, &v48, 0);
    sub_2393C7BF0(v43, &v44, 0xFFFFFFFF);
    v35 = sub_238F1AED4(&v51, v43, 0x100uLL);
    v37 = v35;
    if (v35 || (v35 = sub_238DD2EFC(v43, &v48), v37 = v35, v35))
    {
      v38 = v36;
    }

    else
    {
      sub_238DD2F90(a3, &v48);
      v35 = sub_2393C7114(a3, 21, 256);
      v38 = v42;
      v37 = v35;
    }

    v39 = v35 & 0xFFFFFFFF00000000;
    v44 = &unk_284BB83A8;
    sub_238EA1758(&v46);
    sub_238EA1758(&v45);
  }

  else
  {
    v38 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v39 = 0x9A6000000000;
    v37 = 11;
  }

  sub_238EA1758(&v48);
  sub_238EA1790(&v49);
  v40 = v39 | v37;
  v41 = v38;
  result.mFile = v41;
  result.mError = v40;
  result.mLine = HIDWORD(v40);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x9A7D00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end