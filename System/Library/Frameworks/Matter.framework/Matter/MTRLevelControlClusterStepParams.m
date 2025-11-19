@interface MTRLevelControlClusterStepParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRLevelControlClusterStepParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRLevelControlClusterStepParams

- (MTRLevelControlClusterStepParams)init
{
  v12.receiver = self;
  v12.super_class = MTRLevelControlClusterStepParams;
  v2 = [(MTRLevelControlClusterStepParams *)&v12 init];
  v3 = v2;
  if (v2)
  {
    stepMode = v2->_stepMode;
    v2->_stepMode = &unk_284C3E4C8;

    stepSize = v3->_stepSize;
    v3->_stepSize = &unk_284C3E4C8;

    transitionTime = v3->_transitionTime;
    v3->_transitionTime = 0;

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRLevelControlClusterStepParams);
  v5 = [(MTRLevelControlClusterStepParams *)self stepMode];
  [(MTRLevelControlClusterStepParams *)v4 setStepMode:v5];

  v6 = [(MTRLevelControlClusterStepParams *)self stepSize];
  [(MTRLevelControlClusterStepParams *)v4 setStepSize:v6];

  v7 = [(MTRLevelControlClusterStepParams *)self transitionTime];
  [(MTRLevelControlClusterStepParams *)v4 setTransitionTime:v7];

  v8 = [(MTRLevelControlClusterStepParams *)self optionsMask];
  [(MTRLevelControlClusterStepParams *)v4 setOptionsMask:v8];

  v9 = [(MTRLevelControlClusterStepParams *)self optionsOverride];
  [(MTRLevelControlClusterStepParams *)v4 setOptionsOverride:v9];

  v10 = [(MTRLevelControlClusterStepParams *)self timedInvokeTimeoutMs];
  [(MTRLevelControlClusterStepParams *)v4 setTimedInvokeTimeoutMs:v10];

  v11 = [(MTRLevelControlClusterStepParams *)self serverSideProcessingTimeout];
  [(MTRLevelControlClusterStepParams *)v4 setServerSideProcessingTimeout:v11];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: stepMode:%@ stepSize:%@; transitionTime:%@; optionsMask:%@; optionsOverride:%@; >", v5, self->_stepMode, self->_stepSize, self->_transitionTime, self->_optionsMask, self->_optionsOverride];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v27 = 0;
  LOBYTE(v28) = 0;
  v29 = 0;
  v30 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v5 = [(MTRLevelControlClusterStepParams *)self stepMode];
  LOBYTE(v27) = [v5 unsignedCharValue];

  v6 = [(MTRLevelControlClusterStepParams *)self stepSize];
  HIBYTE(v27) = [v6 unsignedCharValue];

  v7 = [(MTRLevelControlClusterStepParams *)self transitionTime];

  if (v7)
  {
    v28 = 0;
    v29 = 1;
    v8 = [(MTRLevelControlClusterStepParams *)self transitionTime];
    v28 = [v8 unsignedShortValue];
  }

  v9 = [(MTRLevelControlClusterStepParams *)self optionsMask];
  LOBYTE(v30) = [v9 unsignedCharValue];

  v10 = [(MTRLevelControlClusterStepParams *)self optionsOverride];
  HIBYTE(v30) = [v10 unsignedCharValue];

  sub_2393D9C18(0x62FuLL, 0, &v24);
  if (v24)
  {
    sub_2393C7B90(v19);
    v21 = 0;
    v22 = 0;
    v20 = &unk_284BB83A8;
    v23 = 0;
    sub_238EA16C4(&v20, &v24, 0);
    sub_2393C7BF0(v19, &v20, 0xFFFFFFFF);
    v11 = sub_238F1D8E8(&v27, v19, 0x100uLL);
    v13 = v11;
    if (v11 || (v11 = sub_238DD2EFC(v19, &v24), v13 = v11, v11))
    {
      v14 = v12;
    }

    else
    {
      sub_238DD2F90(a3, &v24);
      v11 = sub_2393C7114(a3, 21, 256);
      v14 = v18;
      v13 = v11;
    }

    v15 = v11 & 0xFFFFFFFF00000000;
    v20 = &unk_284BB83A8;
    sub_238EA1758(&v22);
    sub_238EA1758(&v21);
  }

  else
  {
    v15 = 0x7B100000000;
    v14 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v13 = 11;
  }

  sub_238EA1758(&v24);
  sub_238EA1790(&v25);
  v16 = v13 | v15;
  v17 = v14;
  result.mFile = v17;
  result.mError = v16;
  result.mLine = HIDWORD(v16);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRLevelControlClusterStepParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x7CE00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end