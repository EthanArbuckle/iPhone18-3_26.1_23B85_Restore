@interface MTRWaterHeaterManagementClusterBoostParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRWaterHeaterManagementClusterBoostParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRWaterHeaterManagementClusterBoostParams);
  boostInfo = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
  [(MTRWaterHeaterManagementClusterBoostParams *)v4 setBoostInfo:boostInfo];

  timedInvokeTimeoutMs = [(MTRWaterHeaterManagementClusterBoostParams *)self timedInvokeTimeoutMs];
  [(MTRWaterHeaterManagementClusterBoostParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRWaterHeaterManagementClusterBoostParams *)self serverSideProcessingTimeout];
  [(MTRWaterHeaterManagementClusterBoostParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  unsignedIntValue = 0;
  LOBYTE(v44) = 0;
  LOBYTE(v45) = 0;
  v46 = 0;
  LOBYTE(v48) = 0;
  LOBYTE(v49) = 0;
  v42[0] = 0;
  v42[1] = 0;
  v41 = v42;
  boostInfo = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
  duration = [boostInfo duration];
  unsignedIntValue = [duration unsignedIntValue];

  boostInfo2 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
  oneShot = [boostInfo2 oneShot];

  if (oneShot)
  {
    v44 = 1;
    boostInfo3 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
    oneShot2 = [boostInfo3 oneShot];
    HIBYTE(v44) = [oneShot2 BOOLValue];
  }

  boostInfo4 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
  emergencyBoost = [boostInfo4 emergencyBoost];

  if (emergencyBoost)
  {
    v45 = 1;
    boostInfo5 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
    emergencyBoost2 = [boostInfo5 emergencyBoost];
    HIBYTE(v45) = [emergencyBoost2 BOOLValue];
  }

  boostInfo6 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
  temporarySetpoint = [boostInfo6 temporarySetpoint];

  if (temporarySetpoint)
  {
    v46 = 1;
    shortValue = 0;
    boostInfo7 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
    temporarySetpoint2 = [boostInfo7 temporarySetpoint];
    shortValue = [temporarySetpoint2 shortValue];
  }

  boostInfo8 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
  targetPercentage = [boostInfo8 targetPercentage];

  if (targetPercentage)
  {
    v48 = 1;
    boostInfo9 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
    targetPercentage2 = [boostInfo9 targetPercentage];
    HIBYTE(v48) = [targetPercentage2 unsignedCharValue];
  }

  boostInfo10 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
  targetReheat = [boostInfo10 targetReheat];

  if (targetReheat)
  {
    v49 = 1;
    boostInfo11 = [(MTRWaterHeaterManagementClusterBoostParams *)self boostInfo];
    targetReheat2 = [boostInfo11 targetReheat];
    HIBYTE(v49) = [targetReheat2 unsignedCharValue];
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
    v27 = sub_238F32DCC(&unsignedIntValue, v35, 0x100uLL);
    v29 = v27;
    if (v27 || (v27 = sub_238DD2EFC(v35, &v40), v29 = v27, v27))
    {
      v30 = v28;
    }

    else
    {
      sub_238DD2F90(reader, &v40);
      v27 = sub_2393C7114(reader, 21, 256);
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

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRWaterHeaterManagementClusterBoostParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x3F1700000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end