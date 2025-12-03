@interface MTRMicrowaveOvenControlClusterSetCookingParametersParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRMicrowaveOvenControlClusterSetCookingParametersParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRMicrowaveOvenControlClusterSetCookingParametersParams

- (MTRMicrowaveOvenControlClusterSetCookingParametersParams)init
{
  v12.receiver = self;
  v12.super_class = MTRMicrowaveOvenControlClusterSetCookingParametersParams;
  v2 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)&v12 init];
  v3 = v2;
  if (v2)
  {
    cookMode = v2->_cookMode;
    v2->_cookMode = 0;

    cookTime = v3->_cookTime;
    v3->_cookTime = 0;

    powerSetting = v3->_powerSetting;
    v3->_powerSetting = 0;

    wattSettingIndex = v3->_wattSettingIndex;
    v3->_wattSettingIndex = 0;

    startAfterSetting = v3->_startAfterSetting;
    v3->_startAfterSetting = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRMicrowaveOvenControlClusterSetCookingParametersParams);
  cookMode = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self cookMode];
  [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)v4 setCookMode:cookMode];

  cookTime = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self cookTime];
  [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)v4 setCookTime:cookTime];

  powerSetting = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self powerSetting];
  [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)v4 setPowerSetting:powerSetting];

  wattSettingIndex = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self wattSettingIndex];
  [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)v4 setWattSettingIndex:wattSettingIndex];

  startAfterSetting = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self startAfterSetting];
  [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)v4 setStartAfterSetting:startAfterSetting];

  timedInvokeTimeoutMs = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self timedInvokeTimeoutMs];
  [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self serverSideProcessingTimeout];
  [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: cookMode:%@ cookTime:%@; powerSetting:%@; wattSettingIndex:%@; startAfterSetting:%@; >", v5, self->_cookMode, self->_cookTime, self->_powerSetting, self->_wattSettingIndex, self->_startAfterSetting];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  LOBYTE(v31) = 0;
  v32 = 0;
  LOBYTE(v34) = 0;
  LOBYTE(v35) = 0;
  LOBYTE(v36) = 0;
  v30[0] = 0;
  v30[1] = 0;
  v29 = v30;
  cookMode = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self cookMode];

  if (cookMode)
  {
    v31 = 1;
    cookMode2 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self cookMode];
    HIBYTE(v31) = [cookMode2 unsignedCharValue];
  }

  cookTime = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self cookTime];

  if (cookTime)
  {
    v32 = 1;
    unsignedIntValue = 0;
    cookTime2 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self cookTime];
    unsignedIntValue = [cookTime2 unsignedIntValue];
  }

  powerSetting = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self powerSetting];

  if (powerSetting)
  {
    v34 = 1;
    powerSetting2 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self powerSetting];
    HIBYTE(v34) = [powerSetting2 unsignedCharValue];
  }

  wattSettingIndex = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self wattSettingIndex];

  if (wattSettingIndex)
  {
    v35 = 1;
    wattSettingIndex2 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self wattSettingIndex];
    HIBYTE(v35) = [wattSettingIndex2 unsignedCharValue];
  }

  startAfterSetting = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self startAfterSetting];

  if (startAfterSetting)
  {
    v36 = 1;
    startAfterSetting2 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self startAfterSetting];
    HIBYTE(v36) = [startAfterSetting2 BOOLValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v28);
  if (v28)
  {
    sub_2393C7B90(v23);
    v25 = 0;
    v26 = 0;
    v24 = &unk_284BB83A8;
    v27 = 0;
    sub_238EA16C4(&v24, &v28, 0);
    sub_2393C7BF0(v23, &v24, 0xFFFFFFFF);
    v15 = sub_238F1F4E0(&v31, v23, 0x100uLL);
    v17 = v15;
    if (v15 || (v15 = sub_238DD2EFC(v23, &v28), v17 = v15, v15))
    {
      v18 = v16;
    }

    else
    {
      sub_238DD2F90(reader, &v28);
      v15 = sub_2393C7114(reader, 21, 256);
      v18 = v22;
      v17 = v15;
    }

    v19 = v15 & 0xFFFFFFFF00000000;
    v24 = &unk_284BB83A8;
    sub_238EA1758(&v26);
    sub_238EA1758(&v25);
  }

  else
  {
    v18 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v19 = 0x333B00000000;
    v17 = 11;
  }

  sub_238EA1758(&v28);
  sub_238EA1790(&v29);
  v20 = v19 | v17;
  v21 = v18;
  result.mFile = v21;
  result.mError = v20;
  result.mLine = HIDWORD(v20);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x335800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end