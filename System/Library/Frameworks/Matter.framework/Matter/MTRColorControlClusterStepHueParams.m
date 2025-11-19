@interface MTRColorControlClusterStepHueParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRColorControlClusterStepHueParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRColorControlClusterStepHueParams

- (MTRColorControlClusterStepHueParams)init
{
  v12.receiver = self;
  v12.super_class = MTRColorControlClusterStepHueParams;
  v2 = [(MTRColorControlClusterStepHueParams *)&v12 init];
  v3 = v2;
  if (v2)
  {
    stepMode = v2->_stepMode;
    v2->_stepMode = &unk_284C3E4C8;

    stepSize = v3->_stepSize;
    v3->_stepSize = &unk_284C3E4C8;

    transitionTime = v3->_transitionTime;
    v3->_transitionTime = &unk_284C3E4C8;

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
  v4 = objc_alloc_init(MTRColorControlClusterStepHueParams);
  v5 = [(MTRColorControlClusterStepHueParams *)self stepMode];
  [(MTRColorControlClusterStepHueParams *)v4 setStepMode:v5];

  v6 = [(MTRColorControlClusterStepHueParams *)self stepSize];
  [(MTRColorControlClusterStepHueParams *)v4 setStepSize:v6];

  v7 = [(MTRColorControlClusterStepHueParams *)self transitionTime];
  [(MTRColorControlClusterStepHueParams *)v4 setTransitionTime:v7];

  v8 = [(MTRColorControlClusterStepHueParams *)self optionsMask];
  [(MTRColorControlClusterStepHueParams *)v4 setOptionsMask:v8];

  v9 = [(MTRColorControlClusterStepHueParams *)self optionsOverride];
  [(MTRColorControlClusterStepHueParams *)v4 setOptionsOverride:v9];

  v10 = [(MTRColorControlClusterStepHueParams *)self timedInvokeTimeoutMs];
  [(MTRColorControlClusterStepHueParams *)v4 setTimedInvokeTimeoutMs:v10];

  v11 = [(MTRColorControlClusterStepHueParams *)self serverSideProcessingTimeout];
  [(MTRColorControlClusterStepHueParams *)v4 setServerSideProcessingTimeout:v11];

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
  v26 = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v5 = [(MTRColorControlClusterStepHueParams *)self stepMode];
  LOBYTE(v26) = [v5 unsignedCharValue];

  v6 = [(MTRColorControlClusterStepHueParams *)self stepSize];
  BYTE1(v26) = [v6 unsignedCharValue];

  v7 = [(MTRColorControlClusterStepHueParams *)self transitionTime];
  BYTE2(v26) = [v7 unsignedCharValue];

  v8 = [(MTRColorControlClusterStepHueParams *)self optionsMask];
  HIBYTE(v26) = [v8 unsignedCharValue];

  v9 = [(MTRColorControlClusterStepHueParams *)self optionsOverride];
  v27 = [v9 unsignedCharValue];

  sub_2393D9C18(0x62FuLL, 0, &v23);
  if (v23)
  {
    sub_2393C7B90(v18);
    v20 = 0;
    v21 = 0;
    v19 = &unk_284BB83A8;
    v22 = 0;
    sub_238EA16C4(&v19, &v23, 0);
    sub_2393C7BF0(v18, &v19, 0xFFFFFFFF);
    v10 = sub_238F08958(&v26, v18, 0x100uLL);
    v12 = v10;
    if (v10 || (v10 = sub_238DD2EFC(v18, &v23), v12 = v10, v10))
    {
      v13 = v11;
    }

    else
    {
      sub_238DD2F90(a3, &v23);
      v10 = sub_2393C7114(a3, 21, 256);
      v13 = v17;
      v12 = v10;
    }

    v14 = v10 & 0xFFFFFFFF00000000;
    v19 = &unk_284BB83A8;
    sub_238EA1758(&v21);
    sub_238EA1758(&v20);
  }

  else
  {
    v14 = 0x61F600000000;
    v13 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v12 = 11;
  }

  sub_238EA1758(&v23);
  sub_238EA1790(&v24);
  v15 = v12 | v14;
  v16 = v13;
  result.mFile = v16;
  result.mError = v15;
  result.mLine = HIDWORD(v15);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRColorControlClusterStepHueParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x621300000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end