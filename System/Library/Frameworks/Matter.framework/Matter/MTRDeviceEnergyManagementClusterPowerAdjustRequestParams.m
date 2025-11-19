@interface MTRDeviceEnergyManagementClusterPowerAdjustRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRDeviceEnergyManagementClusterPowerAdjustRequestParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRDeviceEnergyManagementClusterPowerAdjustRequestParams

- (MTRDeviceEnergyManagementClusterPowerAdjustRequestParams)init
{
  v10.receiver = self;
  v10.super_class = MTRDeviceEnergyManagementClusterPowerAdjustRequestParams;
  v2 = [(MTRDeviceEnergyManagementClusterPowerAdjustRequestParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    power = v2->_power;
    v2->_power = &unk_284C3E4C8;

    duration = v3->_duration;
    v3->_duration = &unk_284C3E4C8;

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
  v4 = objc_alloc_init(MTRDeviceEnergyManagementClusterPowerAdjustRequestParams);
  v5 = [(MTRDeviceEnergyManagementClusterPowerAdjustRequestParams *)self power];
  [(MTRDeviceEnergyManagementClusterPowerAdjustRequestParams *)v4 setPower:v5];

  v6 = [(MTRDeviceEnergyManagementClusterPowerAdjustRequestParams *)self duration];
  [(MTRDeviceEnergyManagementClusterPowerAdjustRequestParams *)v4 setDuration:v6];

  v7 = [(MTRDeviceEnergyManagementClusterPowerAdjustRequestParams *)self cause];
  [(MTRDeviceEnergyManagementClusterPowerAdjustRequestParams *)v4 setCause:v7];

  v8 = [(MTRDeviceEnergyManagementClusterPowerAdjustRequestParams *)self timedInvokeTimeoutMs];
  [(MTRDeviceEnergyManagementClusterPowerAdjustRequestParams *)v4 setTimedInvokeTimeoutMs:v8];

  v9 = [(MTRDeviceEnergyManagementClusterPowerAdjustRequestParams *)self serverSideProcessingTimeout];
  [(MTRDeviceEnergyManagementClusterPowerAdjustRequestParams *)v4 setServerSideProcessingTimeout:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: power:%@ duration:%@; cause:%@; >", v5, self->_power, self->_duration, self->_cause];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v23[1] = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v22 = v23;
  v23[0] = 0;
  v5 = [(MTRDeviceEnergyManagementClusterPowerAdjustRequestParams *)self power];
  v24 = [v5 longLongValue];

  v6 = [(MTRDeviceEnergyManagementClusterPowerAdjustRequestParams *)self duration];
  v25 = [v6 unsignedIntValue];

  v7 = [(MTRDeviceEnergyManagementClusterPowerAdjustRequestParams *)self cause];
  v26 = [v7 unsignedCharValue];

  sub_2393D9C18(0x62FuLL, 0, &v21);
  if (v21)
  {
    sub_2393C7B90(v16);
    v18 = 0;
    v19 = 0;
    v17 = &unk_284BB83A8;
    v20 = 0;
    sub_238EA16C4(&v17, &v21, 0);
    sub_2393C7BF0(v16, &v17, 0xFFFFFFFF);
    v8 = sub_238F0E884(&v24, v16, 0x100uLL);
    v10 = v8;
    if (v8 || (v8 = sub_238DD2EFC(v16, &v21), v10 = v8, v8))
    {
      v11 = v9;
    }

    else
    {
      sub_238DD2F90(a3, &v21);
      v8 = sub_2393C7114(a3, 21, 256);
      v11 = v15;
      v10 = v8;
    }

    v12 = v8 & 0xFFFFFFFF00000000;
    v17 = &unk_284BB83A8;
    sub_238EA1758(&v19);
    sub_238EA1758(&v18);
  }

  else
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v12 = 0x427A00000000;
    v10 = 11;
  }

  sub_238EA1758(&v21);
  sub_238EA1790(&v22);
  v13 = v12 | v10;
  v14 = v11;
  result.mFile = v14;
  result.mError = v13;
  result.mLine = HIDWORD(v13);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRDeviceEnergyManagementClusterPowerAdjustRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x429700000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end