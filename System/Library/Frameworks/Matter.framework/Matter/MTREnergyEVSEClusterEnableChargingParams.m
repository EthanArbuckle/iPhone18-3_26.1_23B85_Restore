@interface MTREnergyEVSEClusterEnableChargingParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTREnergyEVSEClusterEnableChargingParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTREnergyEVSEClusterEnableChargingParams

- (MTREnergyEVSEClusterEnableChargingParams)init
{
  v10.receiver = self;
  v10.super_class = MTREnergyEVSEClusterEnableChargingParams;
  v2 = [(MTREnergyEVSEClusterEnableChargingParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    chargingEnabledUntil = v2->_chargingEnabledUntil;
    v2->_chargingEnabledUntil = 0;

    minimumChargeCurrent = v3->_minimumChargeCurrent;
    v3->_minimumChargeCurrent = &unk_284C3E4C8;

    maximumChargeCurrent = v3->_maximumChargeCurrent;
    v3->_maximumChargeCurrent = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTREnergyEVSEClusterEnableChargingParams);
  v5 = [(MTREnergyEVSEClusterEnableChargingParams *)self chargingEnabledUntil];
  [(MTREnergyEVSEClusterEnableChargingParams *)v4 setChargingEnabledUntil:v5];

  v6 = [(MTREnergyEVSEClusterEnableChargingParams *)self minimumChargeCurrent];
  [(MTREnergyEVSEClusterEnableChargingParams *)v4 setMinimumChargeCurrent:v6];

  v7 = [(MTREnergyEVSEClusterEnableChargingParams *)self maximumChargeCurrent];
  [(MTREnergyEVSEClusterEnableChargingParams *)v4 setMaximumChargeCurrent:v7];

  v8 = [(MTREnergyEVSEClusterEnableChargingParams *)self timedInvokeTimeoutMs];
  [(MTREnergyEVSEClusterEnableChargingParams *)v4 setTimedInvokeTimeoutMs:v8];

  v9 = [(MTREnergyEVSEClusterEnableChargingParams *)self serverSideProcessingTimeout];
  [(MTREnergyEVSEClusterEnableChargingParams *)v4 setServerSideProcessingTimeout:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: chargingEnabledUntil:%@ minimumChargeCurrent:%@; maximumChargeCurrent:%@; >", v5, self->_chargingEnabledUntil, self->_minimumChargeCurrent, self->_maximumChargeCurrent];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  LOBYTE(v25) = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  v5 = [(MTREnergyEVSEClusterEnableChargingParams *)self chargingEnabledUntil];

  if (v5)
  {
    v25 = 0;
    v26 = 1;
    v6 = [(MTREnergyEVSEClusterEnableChargingParams *)self chargingEnabledUntil];
    v25 = [v6 unsignedIntValue];
  }

  v7 = [(MTREnergyEVSEClusterEnableChargingParams *)self minimumChargeCurrent];
  v27 = [v7 longLongValue];

  v8 = [(MTREnergyEVSEClusterEnableChargingParams *)self maximumChargeCurrent];
  v28 = [v8 longLongValue];

  sub_2393D9C18(0x62FuLL, 0, &v22);
  if (v22)
  {
    sub_2393C7B90(v17);
    v19 = 0;
    v20 = 0;
    v18 = &unk_284BB83A8;
    v21 = 0;
    sub_238EA16C4(&v18, &v22, 0);
    sub_2393C7BF0(v17, &v18, 0xFFFFFFFF);
    v9 = sub_238F163C4(&v25, v17, 0x100uLL);
    v11 = v9;
    if (v9 || (v9 = sub_238DD2EFC(v17, &v22), v11 = v9, v9))
    {
      v12 = v10;
    }

    else
    {
      sub_238DD2F90(a3, &v22);
      v9 = sub_2393C7114(a3, 21, 256);
      v12 = v16;
      v11 = v9;
    }

    v13 = v9 & 0xFFFFFFFF00000000;
    v18 = &unk_284BB83A8;
    sub_238EA1758(&v20);
    sub_238EA1758(&v19);
  }

  else
  {
    v12 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v13 = 0x461800000000;
    v11 = 11;
  }

  sub_238EA1758(&v22);
  sub_238EA1790(&v23);
  v14 = v13 | v11;
  v15 = v12;
  result.mFile = v15;
  result.mError = v14;
  result.mLine = HIDWORD(v14);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTREnergyEVSEClusterEnableChargingParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x463500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end