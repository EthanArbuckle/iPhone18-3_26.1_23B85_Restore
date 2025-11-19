@interface MTRDeviceEnergyManagementClusterRequestConstraintBasedForecastParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRDeviceEnergyManagementClusterRequestConstraintBasedForecastParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRDeviceEnergyManagementClusterRequestConstraintBasedForecastParams

- (MTRDeviceEnergyManagementClusterRequestConstraintBasedForecastParams)init
{
  v9.receiver = self;
  v9.super_class = MTRDeviceEnergyManagementClusterRequestConstraintBasedForecastParams;
  v2 = [(MTRDeviceEnergyManagementClusterRequestConstraintBasedForecastParams *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA60] array];
    constraints = v2->_constraints;
    v2->_constraints = v3;

    cause = v2->_cause;
    v2->_cause = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDeviceEnergyManagementClusterRequestConstraintBasedForecastParams);
  v5 = [(MTRDeviceEnergyManagementClusterRequestConstraintBasedForecastParams *)self constraints];
  [(MTRDeviceEnergyManagementClusterRequestConstraintBasedForecastParams *)v4 setConstraints:v5];

  v6 = [(MTRDeviceEnergyManagementClusterRequestConstraintBasedForecastParams *)self cause];
  [(MTRDeviceEnergyManagementClusterRequestConstraintBasedForecastParams *)v4 setCause:v6];

  v7 = [(MTRDeviceEnergyManagementClusterRequestConstraintBasedForecastParams *)self timedInvokeTimeoutMs];
  [(MTRDeviceEnergyManagementClusterRequestConstraintBasedForecastParams *)v4 setTimedInvokeTimeoutMs:v7];

  v8 = [(MTRDeviceEnergyManagementClusterRequestConstraintBasedForecastParams *)self serverSideProcessingTimeout];
  [(MTRDeviceEnergyManagementClusterRequestConstraintBasedForecastParams *)v4 setServerSideProcessingTimeout:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: constraints:%@ cause:%@; >", v5, self->_constraints, self->_cause];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0uLL;
  v21 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  v4 = [(MTRDeviceEnergyManagementClusterRequestConstraintBasedForecastParams *)self constraints];
  v5 = [v4 count] == 0;

  if (!v5)
  {
    operator new();
  }

  v20 = 0uLL;
  v6 = [(MTRDeviceEnergyManagementClusterRequestConstraintBasedForecastParams *)self cause];
  v21 = [v6 unsignedCharValue];

  sub_2393D9C18(0x62FuLL, 0, &v17);
  if (v17)
  {
    sub_2393C7B90(buf);
    v24 = 0;
    v25 = 0;
    v23 = &unk_284BB83A8;
    v26 = 0;
    sub_238EA16C4(&v23, &v17, 0);
    sub_2393C7BF0(buf, &v23, 0xFFFFFFFF);
    v7 = sub_238F0ED18(&v20, buf, 0x100uLL);
    v9 = v7;
    if (v7 || (v7 = sub_238DD2EFC(buf, &v17), v9 = v7, v7))
    {
      v10 = v8;
    }

    else
    {
      sub_238DD2F90(a3, &v17);
      v7 = sub_2393C7114(a3, 21, 256);
      v10 = v15;
      v9 = v7;
    }

    v11 = v7 & 0xFFFFFFFF00000000;
    v23 = &unk_284BB83A8;
    sub_238EA1758(&v25);
    sub_238EA1758(&v24);
  }

  else
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v11 = 0x44A400000000;
    v9 = 11;
  }

  sub_238EA1758(&v17);
  sub_238EA1790(&v18);
  v12 = *MEMORY[0x277D85DE8];
  v13 = v11 | v9;
  v14 = v10;
  result.mFile = v14;
  result.mError = v13;
  result.mLine = HIDWORD(v13);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRDeviceEnergyManagementClusterRequestConstraintBasedForecastParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x44C100000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end