@interface MTRDeviceEnergyManagementClusterModifyForecastRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRDeviceEnergyManagementClusterModifyForecastRequestParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRDeviceEnergyManagementClusterModifyForecastRequestParams

- (MTRDeviceEnergyManagementClusterModifyForecastRequestParams)init
{
  v11.receiver = self;
  v11.super_class = MTRDeviceEnergyManagementClusterModifyForecastRequestParams;
  v2 = [(MTRDeviceEnergyManagementClusterModifyForecastRequestParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    forecastID = v2->_forecastID;
    v2->_forecastID = &unk_284C3E4C8;

    v5 = [MEMORY[0x277CBEA60] array];
    slotAdjustments = v3->_slotAdjustments;
    v3->_slotAdjustments = v5;

    cause = v3->_cause;
    v3->_cause = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDeviceEnergyManagementClusterModifyForecastRequestParams);
  v5 = [(MTRDeviceEnergyManagementClusterModifyForecastRequestParams *)self forecastID];
  [(MTRDeviceEnergyManagementClusterModifyForecastRequestParams *)v4 setForecastID:v5];

  v6 = [(MTRDeviceEnergyManagementClusterModifyForecastRequestParams *)self slotAdjustments];
  [(MTRDeviceEnergyManagementClusterModifyForecastRequestParams *)v4 setSlotAdjustments:v6];

  v7 = [(MTRDeviceEnergyManagementClusterModifyForecastRequestParams *)self cause];
  [(MTRDeviceEnergyManagementClusterModifyForecastRequestParams *)v4 setCause:v7];

  v8 = [(MTRDeviceEnergyManagementClusterModifyForecastRequestParams *)self timedInvokeTimeoutMs];
  [(MTRDeviceEnergyManagementClusterModifyForecastRequestParams *)v4 setTimedInvokeTimeoutMs:v8];

  v9 = [(MTRDeviceEnergyManagementClusterModifyForecastRequestParams *)self serverSideProcessingTimeout];
  [(MTRDeviceEnergyManagementClusterModifyForecastRequestParams *)v4 setServerSideProcessingTimeout:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: forecastID:%@ slotAdjustments:%@; cause:%@; >", v5, self->_forecastID, self->_slotAdjustments, self->_cause];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  v4 = [(MTRDeviceEnergyManagementClusterModifyForecastRequestParams *)self forecastID];
  v21 = [v4 unsignedIntValue];

  v5 = [(MTRDeviceEnergyManagementClusterModifyForecastRequestParams *)self slotAdjustments];
  v6 = [v5 count] == 0;

  if (!v6)
  {
    operator new();
  }

  v22 = 0;
  v23 = 0;
  v7 = [(MTRDeviceEnergyManagementClusterModifyForecastRequestParams *)self cause];
  v24 = [v7 unsignedCharValue];

  sub_2393D9C18(0x62FuLL, 0, &v18);
  if (v18)
  {
    sub_2393C7B90(buf);
    v27 = 0;
    v28 = 0;
    v26 = &unk_284BB83A8;
    v29 = 0;
    sub_238EA16C4(&v26, &v18, 0);
    sub_2393C7BF0(buf, &v26, 0xFFFFFFFF);
    v8 = sub_238F0EB04(&v21, buf, 0x100uLL);
    v10 = v8;
    if (v8 || (v8 = sub_238DD2EFC(buf, &v18), v10 = v8, v8))
    {
      v11 = v9;
    }

    else
    {
      sub_238DD2F90(a3, &v18);
      v8 = sub_2393C7114(a3, 21, 256);
      v11 = v16;
      v10 = v8;
    }

    v12 = v8 & 0xFFFFFFFF00000000;
    v26 = &unk_284BB83A8;
    sub_238EA1758(&v28);
    sub_238EA1758(&v27);
  }

  else
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v12 = 0x442C00000000;
    v10 = 11;
  }

  sub_238EA1758(&v18);
  sub_238EA1790(&v19);
  v13 = *MEMORY[0x277D85DE8];
  v14 = v12 | v10;
  v15 = v11;
  result.mFile = v15;
  result.mError = v14;
  result.mLine = HIDWORD(v14);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRDeviceEnergyManagementClusterModifyForecastRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x444900000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end