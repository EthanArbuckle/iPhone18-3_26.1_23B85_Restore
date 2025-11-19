@interface MTRColorControlClusterColorLoopSetParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRColorControlClusterColorLoopSetParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRColorControlClusterColorLoopSetParams

- (MTRColorControlClusterColorLoopSetParams)init
{
  v14.receiver = self;
  v14.super_class = MTRColorControlClusterColorLoopSetParams;
  v2 = [(MTRColorControlClusterColorLoopSetParams *)&v14 init];
  v3 = v2;
  if (v2)
  {
    updateFlags = v2->_updateFlags;
    v2->_updateFlags = &unk_284C3E4C8;

    action = v3->_action;
    v3->_action = &unk_284C3E4C8;

    direction = v3->_direction;
    v3->_direction = &unk_284C3E4C8;

    time = v3->_time;
    v3->_time = &unk_284C3E4C8;

    startHue = v3->_startHue;
    v3->_startHue = &unk_284C3E4C8;

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
  v4 = objc_alloc_init(MTRColorControlClusterColorLoopSetParams);
  v5 = [(MTRColorControlClusterColorLoopSetParams *)self updateFlags];
  [(MTRColorControlClusterColorLoopSetParams *)v4 setUpdateFlags:v5];

  v6 = [(MTRColorControlClusterColorLoopSetParams *)self action];
  [(MTRColorControlClusterColorLoopSetParams *)v4 setAction:v6];

  v7 = [(MTRColorControlClusterColorLoopSetParams *)self direction];
  [(MTRColorControlClusterColorLoopSetParams *)v4 setDirection:v7];

  v8 = [(MTRColorControlClusterColorLoopSetParams *)self time];
  [(MTRColorControlClusterColorLoopSetParams *)v4 setTime:v8];

  v9 = [(MTRColorControlClusterColorLoopSetParams *)self startHue];
  [(MTRColorControlClusterColorLoopSetParams *)v4 setStartHue:v9];

  v10 = [(MTRColorControlClusterColorLoopSetParams *)self optionsMask];
  [(MTRColorControlClusterColorLoopSetParams *)v4 setOptionsMask:v10];

  v11 = [(MTRColorControlClusterColorLoopSetParams *)self optionsOverride];
  [(MTRColorControlClusterColorLoopSetParams *)v4 setOptionsOverride:v11];

  v12 = [(MTRColorControlClusterColorLoopSetParams *)self timedInvokeTimeoutMs];
  [(MTRColorControlClusterColorLoopSetParams *)v4 setTimedInvokeTimeoutMs:v12];

  v13 = [(MTRColorControlClusterColorLoopSetParams *)self serverSideProcessingTimeout];
  [(MTRColorControlClusterColorLoopSetParams *)v4 setServerSideProcessingTimeout:v13];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: updateFlags:%@ action:%@; direction:%@; time:%@; startHue:%@; optionsMask:%@; optionsOverride:%@; >", v5, self->_updateFlags, self->_action, self->_direction, self->_time, self->_startHue, self->_optionsMask, self->_optionsOverride];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  v5 = [(MTRColorControlClusterColorLoopSetParams *)self updateFlags];
  LOBYTE(v28) = [v5 unsignedCharValue];

  v6 = [(MTRColorControlClusterColorLoopSetParams *)self action];
  HIBYTE(v28) = [v6 unsignedCharValue];

  v7 = [(MTRColorControlClusterColorLoopSetParams *)self direction];
  v29 = [v7 unsignedCharValue];

  v8 = [(MTRColorControlClusterColorLoopSetParams *)self time];
  LOWORD(v30) = [v8 unsignedShortValue];

  v9 = [(MTRColorControlClusterColorLoopSetParams *)self startHue];
  HIWORD(v30) = [v9 unsignedShortValue];

  v10 = [(MTRColorControlClusterColorLoopSetParams *)self optionsMask];
  LOBYTE(v31) = [v10 unsignedCharValue];

  v11 = [(MTRColorControlClusterColorLoopSetParams *)self optionsOverride];
  HIBYTE(v31) = [v11 unsignedCharValue];

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
    v12 = sub_238F09AF4(&v28, v20, 0x100uLL);
    v14 = v12;
    if (v12 || (v12 = sub_238DD2EFC(v20, &v25), v14 = v12, v12))
    {
      v15 = v13;
    }

    else
    {
      sub_238DD2F90(a3, &v25);
      v12 = sub_2393C7114(a3, 21, 256);
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
    v16 = 0x672B00000000;
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

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRColorControlClusterColorLoopSetParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x674800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end