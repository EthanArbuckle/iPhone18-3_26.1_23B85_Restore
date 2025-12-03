@interface MTRGroupKeyManagementClusterKeySetWriteParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRGroupKeyManagementClusterKeySetWriteParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRGroupKeyManagementClusterKeySetWriteParams

- (MTRGroupKeyManagementClusterKeySetWriteParams)init
{
  v8.receiver = self;
  v8.super_class = MTRGroupKeyManagementClusterKeySetWriteParams;
  v2 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)&v8 init];
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
  v4 = objc_alloc_init(MTRGroupKeyManagementClusterKeySetWriteParams);
  groupKeySet = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
  [(MTRGroupKeyManagementClusterKeySetWriteParams *)v4 setGroupKeySet:groupKeySet];

  timedInvokeTimeoutMs = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self timedInvokeTimeoutMs];
  [(MTRGroupKeyManagementClusterKeySetWriteParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self serverSideProcessingTimeout];
  [(MTRGroupKeyManagementClusterKeySetWriteParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

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
  LOBYTE(v51) = 0;
  v52 = 0;
  LOBYTE(unsignedLongLongValue) = 0;
  v54 = 0;
  LOBYTE(v55) = 0;
  v56 = 0;
  LOBYTE(unsignedLongLongValue2) = 0;
  v58 = 0;
  LOBYTE(v59) = 0;
  v60 = 0;
  LOBYTE(unsignedLongLongValue3) = 0;
  v62 = 0;
  v48[0] = 0;
  v48[1] = 0;
  v47 = v48;
  groupKeySet = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
  groupKeySetID = [groupKeySet groupKeySetID];
  unsignedShortValue = [groupKeySetID unsignedShortValue];

  groupKeySet2 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
  groupKeySecurityPolicy = [groupKeySet2 groupKeySecurityPolicy];
  unsignedCharValue = [groupKeySecurityPolicy unsignedCharValue];

  groupKeySet3 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
  epochKey0 = [groupKeySet3 epochKey0];

  if (epochKey0)
  {
    v51 = 0uLL;
    v52 = 1;
    groupKeySet4 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
    epochKey02 = [groupKeySet4 epochKey0];
    sub_238DB6950(v41, [epochKey02 bytes], objc_msgSend(epochKey02, "length"));

    v51 = v41[0];
  }

  groupKeySet5 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
  epochStartTime0 = [groupKeySet5 epochStartTime0];

  if (epochStartTime0)
  {
    unsignedLongLongValue = 0;
    v54 = 1;
    groupKeySet6 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
    epochStartTime02 = [groupKeySet6 epochStartTime0];
    unsignedLongLongValue = [epochStartTime02 unsignedLongLongValue];
  }

  groupKeySet7 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
  epochKey1 = [groupKeySet7 epochKey1];

  if (epochKey1)
  {
    v55 = 0uLL;
    v56 = 1;
    groupKeySet8 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
    epochKey12 = [groupKeySet8 epochKey1];
    sub_238DB6950(v41, [epochKey12 bytes], objc_msgSend(epochKey12, "length"));

    v55 = v41[0];
  }

  groupKeySet9 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
  epochStartTime1 = [groupKeySet9 epochStartTime1];

  if (epochStartTime1)
  {
    unsignedLongLongValue2 = 0;
    v58 = 1;
    groupKeySet10 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
    epochStartTime12 = [groupKeySet10 epochStartTime1];
    unsignedLongLongValue2 = [epochStartTime12 unsignedLongLongValue];
  }

  groupKeySet11 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
  epochKey2 = [groupKeySet11 epochKey2];

  if (epochKey2)
  {
    v59 = 0uLL;
    v60 = 1;
    groupKeySet12 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
    epochKey22 = [groupKeySet12 epochKey2];
    sub_238DB6950(v41, [epochKey22 bytes], objc_msgSend(epochKey22, "length"));

    v59 = v41[0];
  }

  groupKeySet13 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
  epochStartTime2 = [groupKeySet13 epochStartTime2];

  if (epochStartTime2)
  {
    unsignedLongLongValue3 = 0;
    v62 = 1;
    groupKeySet14 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
    epochStartTime22 = [groupKeySet14 epochStartTime2];
    unsignedLongLongValue3 = [epochStartTime22 unsignedLongLongValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v46);
  if (v46)
  {
    sub_2393C7B90(v41);
    v43 = 0;
    v44 = 0;
    v42 = &unk_284BB83A8;
    v45 = 0;
    sub_238EA16C4(&v42, &v46, 0);
    sub_2393C7BF0(v41, &v42, 0xFFFFFFFF);
    v33 = sub_238F193DC(&unsignedShortValue, v41, 0x100uLL);
    v35 = v33;
    if (v33 || (v33 = sub_238DD2EFC(v41, &v46), v35 = v33, v33))
    {
      v36 = v34;
    }

    else
    {
      sub_238DD2F90(reader, &v46);
      v33 = sub_2393C7114(reader, 21, 256);
      v36 = v40;
      v35 = v33;
    }

    v37 = v33 & 0xFFFFFFFF00000000;
    v42 = &unk_284BB83A8;
    sub_238EA1758(&v44);
    sub_238EA1758(&v43);
  }

  else
  {
    v36 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v37 = 0x272E00000000;
    v35 = 11;
  }

  sub_238EA1758(&v46);
  sub_238EA1790(&v47);
  v38 = v37 | v35;
  v39 = v36;
  result.mFile = v39;
  result.mError = v38;
  result.mLine = HIDWORD(v38);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x274B00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end