@interface MTRWaterHeaterManagementClusterBoostParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRWaterHeaterManagementClusterBoostParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRWaterHeaterManagementClusterBoostParams

- (MTRWaterHeaterManagementClusterBoostParams)init
{
  v8.receiver = self;
  v8.super_class = MTRWaterHeaterManagementClusterBoostParams;
  v2 = [(MTRWaterHeaterManagementClusterBoostParams *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    boostInfo = v2->_boostInfo;
    v2->_boostInfo = v3;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRWaterHeaterManagementClusterBoostParams);
  v5 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
  [(MTRWaterHeaterManagementClusterBoostParams *)v4 setBoostInfo:v5];

  v6 = [(MTRWaterHeaterManagementClusterBoostParams *)self timedInvokeTimeoutMs];
  [(MTRWaterHeaterManagementClusterBoostParams *)v4 setTimedInvokeTimeoutMs:v6];

  v7 = [(MTRWaterHeaterManagementClusterBoostParams *)self serverSideProcessingTimeout];
  [(MTRWaterHeaterManagementClusterBoostParams *)v4 setServerSideProcessingTimeout:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: boostInfo:%@ >", v5, self->_boostInfo];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v43 = 0;
  LOBYTE(v44) = 0;
  LOBYTE(v45) = 0;
  v46 = 0;
  LOBYTE(v48) = 0;
  LOBYTE(v49) = 0;
  v42[0] = 0;
  v42[1] = 0;
  v41 = v42;
  v5 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
  v6 = [v5 duration];
  v43 = [v6 unsignedIntValue];

  v7 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
  v8 = [v7 oneShot];

  if (v8)
  {
    v44 = 1;
    v9 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
    v10 = [v9 oneShot];
    HIBYTE(v44) = [v10 BOOLValue];
  }

  v11 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
  v12 = [v11 emergencyBoost];

  if (v12)
  {
    v45 = 1;
    v13 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
    v14 = [v13 emergencyBoost];
    HIBYTE(v45) = [v14 BOOLValue];
  }

  v15 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
  v16 = [v15 temporarySetpoint];

  if (v16)
  {
    v46 = 1;
    v47 = 0;
    v17 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
    v18 = [v17 temporarySetpoint];
    v47 = [v18 shortValue];
  }

  v19 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
  v20 = [v19 targetPercentage];

  if (v20)
  {
    v48 = 1;
    v21 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
    v22 = [v21 targetPercentage];
    HIBYTE(v48) = [v22 unsignedCharValue];
  }

  v23 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
  v24 = [v23 targetReheat];

  if (v24)
  {
    v49 = 1;
    v25 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
    v26 = [v25 targetReheat];
    HIBYTE(v49) = [v26 unsignedCharValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v40);
  if (v40)
  {
    sub_2393C7B90(v35);
    v37 = 0;
    v38 = 0;
    v36 = &unk_284BB83A8;
    v39 = 0;
    sub_238EA16C4(&v36, &v40, 0);
    sub_2393C7BF0(v35, &v36, 0xFFFFFFFF);
    v27 = sub_238F32DCC(&v43, v35, 0x100uLL);
    v29 = v27;
    if (v27 || (v27 = sub_238DD2EFC(v35, &v40), v29 = v27, v27))
    {
      v30 = v28;
    }

    else
    {
      sub_238DD2F90(a3, &v40);
      v27 = sub_2393C7114(a3, 21, 256);
      v30 = v34;
      v29 = v27;
    }

    v31 = v27 & 0xFFFFFFFF00000000;
    v36 = &unk_284BB83A8;
    sub_238EA1758(&v38);
    sub_238EA1758(&v37);
  }

  else
  {
    v30 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v31 = 0x3EFA00000000;
    v29 = 11;
  }

  sub_238EA1758(&v40);
  sub_238EA1790(&v41);
  v32 = v31 | v29;
  v33 = v30;
  result.mFile = v33;
  result.mError = v32;
  result.mLine = HIDWORD(v32);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRWaterHeaterManagementClusterBoostParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x3F1700000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end