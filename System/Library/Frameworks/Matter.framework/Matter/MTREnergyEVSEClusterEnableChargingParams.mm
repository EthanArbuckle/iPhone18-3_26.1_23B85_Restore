@interface MTREnergyEVSEClusterEnableChargingParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTREnergyEVSEClusterEnableChargingParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTREnergyEVSEClusterEnableChargingParams);
  chargingEnabledUntil = [(MTREnergyEVSEClusterEnableChargingParams *)self chargingEnabledUntil];
  [(MTREnergyEVSEClusterEnableChargingParams *)v4 setChargingEnabledUntil:chargingEnabledUntil];

  minimumChargeCurrent = [(MTREnergyEVSEClusterEnableChargingParams *)self minimumChargeCurrent];
  [(MTREnergyEVSEClusterEnableChargingParams *)v4 setMinimumChargeCurrent:minimumChargeCurrent];

  maximumChargeCurrent = [(MTREnergyEVSEClusterEnableChargingParams *)self maximumChargeCurrent];
  [(MTREnergyEVSEClusterEnableChargingParams *)v4 setMaximumChargeCurrent:maximumChargeCurrent];

  timedInvokeTimeoutMs = [(MTREnergyEVSEClusterEnableChargingParams *)self timedInvokeTimeoutMs];
  [(MTREnergyEVSEClusterEnableChargingParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTREnergyEVSEClusterEnableChargingParams *)self serverSideProcessingTimeout];
  [(MTREnergyEVSEClusterEnableChargingParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  LOBYTE(unsignedIntValue) = 0;
  v26 = 0;
  longLongValue = 0;
  longLongValue2 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  chargingEnabledUntil = [(MTREnergyEVSEClusterEnableChargingParams *)self chargingEnabledUntil];

  if (chargingEnabledUntil)
  {
    unsignedIntValue = 0;
    v26 = 1;
    chargingEnabledUntil2 = [(MTREnergyEVSEClusterEnableChargingParams *)self chargingEnabledUntil];
    unsignedIntValue = [chargingEnabledUntil2 unsignedIntValue];
  }

  minimumChargeCurrent = [(MTREnergyEVSEClusterEnableChargingParams *)self minimumChargeCurrent];
  longLongValue = [minimumChargeCurrent longLongValue];

  maximumChargeCurrent = [(MTREnergyEVSEClusterEnableChargingParams *)self maximumChargeCurrent];
  longLongValue2 = [maximumChargeCurrent longLongValue];

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
    v9 = sub_238F163C4(&unsignedIntValue, v17, 0x100uLL);
    v11 = v9;
    if (v9 || (v9 = sub_238DD2EFC(v17, &v22), v11 = v9, v9))
    {
      v12 = v10;
    }

    else
    {
      sub_238DD2F90(reader, &v22);
      v9 = sub_2393C7114(reader, 21, 256);
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

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTREnergyEVSEClusterEnableChargingParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x463500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end