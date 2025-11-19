@interface MTRGroupKeyManagementClusterKeySetWriteParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRGroupKeyManagementClusterKeySetWriteParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRGroupKeyManagementClusterKeySetWriteParams);
  v5 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
  [(MTRGroupKeyManagementClusterKeySetWriteParams *)v4 setGroupKeySet:v5];

  v6 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self timedInvokeTimeoutMs];
  [(MTRGroupKeyManagementClusterKeySetWriteParams *)v4 setTimedInvokeTimeoutMs:v6];

  v7 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self serverSideProcessingTimeout];
  [(MTRGroupKeyManagementClusterKeySetWriteParams *)v4 setServerSideProcessingTimeout:v7];

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
  v49 = 0;
  v50 = 0;
  LOBYTE(v51) = 0;
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
  v48[0] = 0;
  v48[1] = 0;
  v47 = v48;
  v5 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
  v6 = [v5 groupKeySetID];
  v49 = [v6 unsignedShortValue];

  v7 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
  v8 = [v7 groupKeySecurityPolicy];
  v50 = [v8 unsignedCharValue];

  v9 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
  v10 = [v9 epochKey0];

  if (v10)
  {
    v51 = 0uLL;
    v52 = 1;
    v11 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
    v12 = [v11 epochKey0];
    sub_238DB6950(v41, [v12 bytes], objc_msgSend(v12, "length"));

    v51 = v41[0];
  }

  v13 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
  v14 = [v13 epochStartTime0];

  if (v14)
  {
    v53 = 0;
    v54 = 1;
    v15 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
    v16 = [v15 epochStartTime0];
    v53 = [v16 unsignedLongLongValue];
  }

  v17 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
  v18 = [v17 epochKey1];

  if (v18)
  {
    v55 = 0uLL;
    v56 = 1;
    v19 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
    v20 = [v19 epochKey1];
    sub_238DB6950(v41, [v20 bytes], objc_msgSend(v20, "length"));

    v55 = v41[0];
  }

  v21 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
  v22 = [v21 epochStartTime1];

  if (v22)
  {
    v57 = 0;
    v58 = 1;
    v23 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
    v24 = [v23 epochStartTime1];
    v57 = [v24 unsignedLongLongValue];
  }

  v25 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
  v26 = [v25 epochKey2];

  if (v26)
  {
    v59 = 0uLL;
    v60 = 1;
    v27 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
    v28 = [v27 epochKey2];
    sub_238DB6950(v41, [v28 bytes], objc_msgSend(v28, "length"));

    v59 = v41[0];
  }

  v29 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
  v30 = [v29 epochStartTime2];

  if (v30)
  {
    v61 = 0;
    v62 = 1;
    v31 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self groupKeySet];
    v32 = [v31 epochStartTime2];
    v61 = [v32 unsignedLongLongValue];
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
    v33 = sub_238F193DC(&v49, v41, 0x100uLL);
    v35 = v33;
    if (v33 || (v33 = sub_238DD2EFC(v41, &v46), v35 = v33, v33))
    {
      v36 = v34;
    }

    else
    {
      sub_238DD2F90(a3, &v46);
      v33 = sub_2393C7114(a3, 21, 256);
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

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x274B00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end