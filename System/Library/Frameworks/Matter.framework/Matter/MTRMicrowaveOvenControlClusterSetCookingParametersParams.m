@interface MTRMicrowaveOvenControlClusterSetCookingParametersParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRMicrowaveOvenControlClusterSetCookingParametersParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRMicrowaveOvenControlClusterSetCookingParametersParams);
  v5 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self cookMode];
  [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)v4 setCookMode:v5];

  v6 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self cookTime];
  [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)v4 setCookTime:v6];

  v7 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self powerSetting];
  [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)v4 setPowerSetting:v7];

  v8 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self wattSettingIndex];
  [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)v4 setWattSettingIndex:v8];

  v9 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self startAfterSetting];
  [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)v4 setStartAfterSetting:v9];

  v10 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self timedInvokeTimeoutMs];
  [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)v4 setTimedInvokeTimeoutMs:v10];

  v11 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self serverSideProcessingTimeout];
  [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)v4 setServerSideProcessingTimeout:v11];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  LOBYTE(v31) = 0;
  v32 = 0;
  LOBYTE(v34) = 0;
  LOBYTE(v35) = 0;
  LOBYTE(v36) = 0;
  v30[0] = 0;
  v30[1] = 0;
  v29 = v30;
  v5 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self cookMode];

  if (v5)
  {
    v31 = 1;
    v6 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self cookMode];
    HIBYTE(v31) = [v6 unsignedCharValue];
  }

  v7 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self cookTime];

  if (v7)
  {
    v32 = 1;
    v33 = 0;
    v8 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self cookTime];
    v33 = [v8 unsignedIntValue];
  }

  v9 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self powerSetting];

  if (v9)
  {
    v34 = 1;
    v10 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self powerSetting];
    HIBYTE(v34) = [v10 unsignedCharValue];
  }

  v11 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self wattSettingIndex];

  if (v11)
  {
    v35 = 1;
    v12 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self wattSettingIndex];
    HIBYTE(v35) = [v12 unsignedCharValue];
  }

  v13 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self startAfterSetting];

  if (v13)
  {
    v36 = 1;
    v14 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self startAfterSetting];
    HIBYTE(v36) = [v14 BOOLValue];
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
      sub_238DD2F90(a3, &v28);
      v15 = sub_2393C7114(a3, 21, 256);
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

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x335800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end