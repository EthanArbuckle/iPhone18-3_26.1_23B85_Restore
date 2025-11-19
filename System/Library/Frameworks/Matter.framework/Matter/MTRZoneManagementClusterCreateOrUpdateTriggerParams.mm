@interface MTRZoneManagementClusterCreateOrUpdateTriggerParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRZoneManagementClusterCreateOrUpdateTriggerParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRZoneManagementClusterCreateOrUpdateTriggerParams

- (MTRZoneManagementClusterCreateOrUpdateTriggerParams)init
{
  v8.receiver = self;
  v8.super_class = MTRZoneManagementClusterCreateOrUpdateTriggerParams;
  v2 = [(MTRZoneManagementClusterCreateOrUpdateTriggerParams *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    trigger = v2->_trigger;
    v2->_trigger = v3;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRZoneManagementClusterCreateOrUpdateTriggerParams);
  v5 = [(MTRZoneManagementClusterCreateOrUpdateTriggerParams *)self trigger];
  [(MTRZoneManagementClusterCreateOrUpdateTriggerParams *)v4 setTrigger:v5];

  v6 = [(MTRZoneManagementClusterCreateOrUpdateTriggerParams *)self timedInvokeTimeoutMs];
  [(MTRZoneManagementClusterCreateOrUpdateTriggerParams *)v4 setTimedInvokeTimeoutMs:v6];

  v7 = [(MTRZoneManagementClusterCreateOrUpdateTriggerParams *)self serverSideProcessingTimeout];
  [(MTRZoneManagementClusterCreateOrUpdateTriggerParams *)v4 setServerSideProcessingTimeout:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: trigger:%@ >", v5, self->_trigger];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v35[0] = 0;
  v37 = 0;
  v36 = 0;
  LOBYTE(v38) = 0;
  v34[0] = 0;
  v34[1] = 0;
  v33 = v34;
  v5 = [(MTRZoneManagementClusterCreateOrUpdateTriggerParams *)self trigger];
  v6 = [v5 zoneID];
  v35[0] = [v6 unsignedShortValue];

  v7 = [(MTRZoneManagementClusterCreateOrUpdateTriggerParams *)self trigger];
  v8 = [v7 initialDuration];
  LODWORD(v36) = [v8 unsignedIntValue];

  v9 = [(MTRZoneManagementClusterCreateOrUpdateTriggerParams *)self trigger];
  v10 = [v9 augmentationDuration];
  HIDWORD(v36) = [v10 unsignedIntValue];

  v11 = [(MTRZoneManagementClusterCreateOrUpdateTriggerParams *)self trigger];
  v12 = [v11 maxDuration];
  LODWORD(v37) = [v12 unsignedIntValue];

  v13 = [(MTRZoneManagementClusterCreateOrUpdateTriggerParams *)self trigger];
  v14 = [v13 blindDuration];
  HIDWORD(v37) = [v14 unsignedIntValue];

  v15 = [(MTRZoneManagementClusterCreateOrUpdateTriggerParams *)self trigger];
  v16 = [v15 sensitivity];

  if (v16)
  {
    v38 = 1;
    v17 = [(MTRZoneManagementClusterCreateOrUpdateTriggerParams *)self trigger];
    v18 = [v17 sensitivity];
    HIBYTE(v38) = [v18 unsignedCharValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v32);
  if (v32)
  {
    sub_2393C7B90(v27);
    v29 = 0;
    v30 = 0;
    v28 = &unk_284BB83A8;
    v31 = 0;
    sub_238EA16C4(&v28, &v32, 0);
    sub_2393C7BF0(v27, &v28, 0xFFFFFFFF);
    v19 = sub_238F34794(v35, v27, 0x100uLL);
    v21 = v19;
    if (v19 || (v19 = sub_238DD2EFC(v27, &v32), v21 = v19, v19))
    {
      v22 = v20;
    }

    else
    {
      sub_238DD2F90(a3, &v32);
      v19 = sub_2393C7114(a3, 21, 256);
      v22 = v26;
      v21 = v19;
    }

    v23 = v19 & 0xFFFFFFFF00000000;
    v28 = &unk_284BB83A8;
    sub_238EA1758(&v30);
    sub_238EA1758(&v29);
  }

  else
  {
    v22 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v23 = 0x83E100000000;
    v21 = 11;
  }

  sub_238EA1758(&v32);
  sub_238EA1790(&v33);
  v24 = v23 | v21;
  v25 = v22;
  result.mFile = v25;
  result.mError = v24;
  result.mLine = HIDWORD(v24);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRZoneManagementClusterCreateOrUpdateTriggerParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x83FE00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end