@interface MTRJointFabricDatastoreClusterUpdateKeySetParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRJointFabricDatastoreClusterUpdateKeySetParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterUpdateKeySetParams);
  groupKeySet = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)v4 setGroupKeySet:groupKeySet];

  timedInvokeTimeoutMs = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self timedInvokeTimeoutMs];
  [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self serverSideProcessingTimeout];
  [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  unsignedShortValue = 0;
  unsignedCharValue = 0;
  LOBYTE(v53) = 0;
  v54 = 0;
  LOBYTE(unsignedLongLongValue) = 0;
  v56 = 0;
  LOBYTE(v57) = 0;
  v58 = 0;
  LOBYTE(unsignedLongLongValue2) = 0;
  v60 = 0;
  LOBYTE(v61) = 0;
  v62 = 0;
  LOBYTE(unsignedLongLongValue3) = 0;
  v64 = 0;
  unsignedCharValue2 = 0;
  v50[0] = 0;
  v50[1] = 0;
  v49 = v50;
  groupKeySet = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  groupKeySetID = [groupKeySet groupKeySetID];
  unsignedShortValue = [groupKeySetID unsignedShortValue];

  groupKeySet2 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  groupKeySecurityPolicy = [groupKeySet2 groupKeySecurityPolicy];
  unsignedCharValue = [groupKeySecurityPolicy unsignedCharValue];

  groupKeySet3 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  epochKey0 = [groupKeySet3 epochKey0];

  if (epochKey0)
  {
    v53 = 0uLL;
    v54 = 1;
    groupKeySet4 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
    epochKey02 = [groupKeySet4 epochKey0];
    sub_238DB6950(v43, [epochKey02 bytes], objc_msgSend(epochKey02, "length"));

    v53 = v43[0];
  }

  groupKeySet5 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  epochStartTime0 = [groupKeySet5 epochStartTime0];

  if (epochStartTime0)
  {
    unsignedLongLongValue = 0;
    v56 = 1;
    groupKeySet6 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
    epochStartTime02 = [groupKeySet6 epochStartTime0];
    unsignedLongLongValue = [epochStartTime02 unsignedLongLongValue];
  }

  groupKeySet7 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  epochKey1 = [groupKeySet7 epochKey1];

  if (epochKey1)
  {
    v57 = 0uLL;
    v58 = 1;
    groupKeySet8 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
    epochKey12 = [groupKeySet8 epochKey1];
    sub_238DB6950(v43, [epochKey12 bytes], objc_msgSend(epochKey12, "length"));

    v57 = v43[0];
  }

  groupKeySet9 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  epochStartTime1 = [groupKeySet9 epochStartTime1];

  if (epochStartTime1)
  {
    unsignedLongLongValue2 = 0;
    v60 = 1;
    groupKeySet10 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
    epochStartTime12 = [groupKeySet10 epochStartTime1];
    unsignedLongLongValue2 = [epochStartTime12 unsignedLongLongValue];
  }

  groupKeySet11 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  epochKey2 = [groupKeySet11 epochKey2];

  if (epochKey2)
  {
    v61 = 0uLL;
    v62 = 1;
    groupKeySet12 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
    epochKey22 = [groupKeySet12 epochKey2];
    sub_238DB6950(v43, [epochKey22 bytes], objc_msgSend(epochKey22, "length"));

    v61 = v43[0];
  }

  groupKeySet13 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  epochStartTime2 = [groupKeySet13 epochStartTime2];

  if (epochStartTime2)
  {
    unsignedLongLongValue3 = 0;
    v64 = 1;
    groupKeySet14 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
    epochStartTime22 = [groupKeySet14 epochStartTime2];
    unsignedLongLongValue3 = [epochStartTime22 unsignedLongLongValue];
  }

  groupKeySet15 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self groupKeySet];
  groupKeyMulticastPolicy = [groupKeySet15 groupKeyMulticastPolicy];
  unsignedCharValue2 = [groupKeyMulticastPolicy unsignedCharValue];

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
    v35 = sub_238F1AED4(&unsignedShortValue, v43, 0x100uLL);
    v37 = v35;
    if (v35 || (v35 = sub_238DD2EFC(v43, &v48), v37 = v35, v35))
    {
      v38 = v36;
    }

    else
    {
      sub_238DD2F90(reader, &v48);
      v35 = sub_2393C7114(reader, 21, 256);
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

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRJointFabricDatastoreClusterUpdateKeySetParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x9A7D00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end