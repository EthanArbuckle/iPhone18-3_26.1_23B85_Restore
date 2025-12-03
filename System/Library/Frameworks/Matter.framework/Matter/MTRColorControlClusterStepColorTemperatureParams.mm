@interface MTRColorControlClusterStepColorTemperatureParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRColorControlClusterStepColorTemperatureParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRColorControlClusterStepColorTemperatureParams

- (MTRColorControlClusterStepColorTemperatureParams)init
{
  v14.receiver = self;
  v14.super_class = MTRColorControlClusterStepColorTemperatureParams;
  v2 = [(MTRColorControlClusterStepColorTemperatureParams *)&v14 init];
  v3 = v2;
  if (v2)
  {
    stepMode = v2->_stepMode;
    v2->_stepMode = &unk_284C3E4C8;

    stepSize = v3->_stepSize;
    v3->_stepSize = &unk_284C3E4C8;

    transitionTime = v3->_transitionTime;
    v3->_transitionTime = &unk_284C3E4C8;

    colorTemperatureMinimumMireds = v3->_colorTemperatureMinimumMireds;
    v3->_colorTemperatureMinimumMireds = &unk_284C3E4C8;

    colorTemperatureMaximumMireds = v3->_colorTemperatureMaximumMireds;
    v3->_colorTemperatureMaximumMireds = &unk_284C3E4C8;

    optionsMask = v3->_optionsMask;
    v3->_optionsMask = &unk_284C3E4C8;

    optionsOverride = v3->_optionsOverride;
    v3->_optionsOverride = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRColorControlClusterStepColorTemperatureParams);
  stepMode = [(MTRColorControlClusterStepColorTemperatureParams *)self stepMode];
  [(MTRColorControlClusterStepColorTemperatureParams *)v4 setStepMode:stepMode];

  stepSize = [(MTRColorControlClusterStepColorTemperatureParams *)self stepSize];
  [(MTRColorControlClusterStepColorTemperatureParams *)v4 setStepSize:stepSize];

  transitionTime = [(MTRColorControlClusterStepColorTemperatureParams *)self transitionTime];
  [(MTRColorControlClusterStepColorTemperatureParams *)v4 setTransitionTime:transitionTime];

  colorTemperatureMinimumMireds = [(MTRColorControlClusterStepColorTemperatureParams *)self colorTemperatureMinimumMireds];
  [(MTRColorControlClusterStepColorTemperatureParams *)v4 setColorTemperatureMinimumMireds:colorTemperatureMinimumMireds];

  colorTemperatureMaximumMireds = [(MTRColorControlClusterStepColorTemperatureParams *)self colorTemperatureMaximumMireds];
  [(MTRColorControlClusterStepColorTemperatureParams *)v4 setColorTemperatureMaximumMireds:colorTemperatureMaximumMireds];

  optionsMask = [(MTRColorControlClusterStepColorTemperatureParams *)self optionsMask];
  [(MTRColorControlClusterStepColorTemperatureParams *)v4 setOptionsMask:optionsMask];

  optionsOverride = [(MTRColorControlClusterStepColorTemperatureParams *)self optionsOverride];
  [(MTRColorControlClusterStepColorTemperatureParams *)v4 setOptionsOverride:optionsOverride];

  timedInvokeTimeoutMs = [(MTRColorControlClusterStepColorTemperatureParams *)self timedInvokeTimeoutMs];
  [(MTRColorControlClusterStepColorTemperatureParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRColorControlClusterStepColorTemperatureParams *)self serverSideProcessingTimeout];
  [(MTRColorControlClusterStepColorTemperatureParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: stepMode:%@ stepSize:%@; transitionTime:%@; colorTemperatureMinimumMireds:%@; colorTemperatureMaximumMireds:%@; optionsMask:%@; optionsOverride:%@; >", v5, self->_stepMode, self->_stepSize, self->_transitionTime, self->_colorTemperatureMinimumMireds, self->_colorTemperatureMaximumMireds, self->_optionsMask, self->_optionsOverride];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v28[0] = 0;
  v29 = 0;
  v30 = 0;
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  stepMode = [(MTRColorControlClusterStepColorTemperatureParams *)self stepMode];
  v28[0] = [stepMode unsignedCharValue];

  stepSize = [(MTRColorControlClusterStepColorTemperatureParams *)self stepSize];
  LOWORD(v29) = [stepSize unsignedShortValue];

  transitionTime = [(MTRColorControlClusterStepColorTemperatureParams *)self transitionTime];
  WORD1(v29) = [transitionTime unsignedShortValue];

  colorTemperatureMinimumMireds = [(MTRColorControlClusterStepColorTemperatureParams *)self colorTemperatureMinimumMireds];
  WORD2(v29) = [colorTemperatureMinimumMireds unsignedShortValue];

  colorTemperatureMaximumMireds = [(MTRColorControlClusterStepColorTemperatureParams *)self colorTemperatureMaximumMireds];
  HIWORD(v29) = [colorTemperatureMaximumMireds unsignedShortValue];

  optionsMask = [(MTRColorControlClusterStepColorTemperatureParams *)self optionsMask];
  LOBYTE(v30) = [optionsMask unsignedCharValue];

  optionsOverride = [(MTRColorControlClusterStepColorTemperatureParams *)self optionsOverride];
  HIBYTE(v30) = [optionsOverride unsignedCharValue];

  sub_2393D9C18(0x62FuLL, 0, &v25);
  if (v25)
  {
    sub_2393C7B90(v20);
    v22 = 0;
    v23 = 0;
    v21 = &unk_284BB83A8;
    v24 = 0;
    sub_238EA16C4(&v21, &v25, 0);
    sub_2393C7BF0(v20, &v21, 0xFFFFFFFF);
    v12 = sub_238F0A008(v28, v20, 0x100uLL);
    v14 = v12;
    if (v12 || (v12 = sub_238DD2EFC(v20, &v25), v14 = v12, v12))
    {
      v15 = v13;
    }

    else
    {
      sub_238DD2F90(reader, &v25);
      v12 = sub_2393C7114(reader, 21, 256);
      v15 = v19;
      v14 = v12;
    }

    v16 = v12 & 0xFFFFFFFF00000000;
    v21 = &unk_284BB83A8;
    sub_238EA1758(&v23);
    sub_238EA1758(&v22);
  }

  else
  {
    v16 = 0x686000000000;
    v15 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v14 = 11;
  }

  sub_238EA1758(&v25);
  sub_238EA1790(&v26);
  v17 = v14 | v16;
  v18 = v15;
  result.mFile = v18;
  result.mError = v17;
  result.mLine = HIDWORD(v17);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRColorControlClusterStepColorTemperatureParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x687D00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end