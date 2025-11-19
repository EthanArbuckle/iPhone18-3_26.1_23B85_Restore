@interface MTRThermostatClusterAddThermostatSuggestionParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRThermostatClusterAddThermostatSuggestionParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRThermostatClusterAddThermostatSuggestionParams

- (MTRThermostatClusterAddThermostatSuggestionParams)init
{
  v10.receiver = self;
  v10.super_class = MTRThermostatClusterAddThermostatSuggestionParams;
  v2 = [(MTRThermostatClusterAddThermostatSuggestionParams *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] data];
    presetHandle = v2->_presetHandle;
    v2->_presetHandle = v3;

    effectiveTime = v2->_effectiveTime;
    v2->_effectiveTime = 0;

    expirationInMinutes = v2->_expirationInMinutes;
    v2->_expirationInMinutes = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRThermostatClusterAddThermostatSuggestionParams);
  v5 = [(MTRThermostatClusterAddThermostatSuggestionParams *)self presetHandle];
  [(MTRThermostatClusterAddThermostatSuggestionParams *)v4 setPresetHandle:v5];

  v6 = [(MTRThermostatClusterAddThermostatSuggestionParams *)self effectiveTime];
  [(MTRThermostatClusterAddThermostatSuggestionParams *)v4 setEffectiveTime:v6];

  v7 = [(MTRThermostatClusterAddThermostatSuggestionParams *)self expirationInMinutes];
  [(MTRThermostatClusterAddThermostatSuggestionParams *)v4 setExpirationInMinutes:v7];

  v8 = [(MTRThermostatClusterAddThermostatSuggestionParams *)self timedInvokeTimeoutMs];
  [(MTRThermostatClusterAddThermostatSuggestionParams *)v4 setTimedInvokeTimeoutMs:v8];

  v9 = [(MTRThermostatClusterAddThermostatSuggestionParams *)self serverSideProcessingTimeout];
  [(MTRThermostatClusterAddThermostatSuggestionParams *)v4 setServerSideProcessingTimeout:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_presetHandle base64EncodedStringWithOptions:0];
  v7 = [v3 stringWithFormat:@"<%@: presetHandle:%@ effectiveTime:%@; expirationInMinutes:%@; >", v5, v6, self->_effectiveTime, self->_expirationInMinutes];;

  return v7;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v27 = 0;
  v28 = 0;
  v25 = 0uLL;
  LOBYTE(v26) = 0;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  v5 = [(MTRThermostatClusterAddThermostatSuggestionParams *)self presetHandle];
  sub_238DB6950(v17, [v5 bytes], objc_msgSend(v5, "length"));

  v25 = v17[0];
  v6 = [(MTRThermostatClusterAddThermostatSuggestionParams *)self effectiveTime];

  if (v6)
  {
    v26 = 0;
    v27 = 1;
    v7 = [(MTRThermostatClusterAddThermostatSuggestionParams *)self effectiveTime];
    v26 = [v7 unsignedIntValue];
  }

  v8 = [(MTRThermostatClusterAddThermostatSuggestionParams *)self expirationInMinutes];
  v28 = [v8 unsignedShortValue];

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
    v9 = sub_238F29E9C(&v25, v17, 0x100uLL);
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
    v13 = 0x5F2A00000000;
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
  v7 = [(MTRThermostatClusterAddThermostatSuggestionParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x5F4700000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end