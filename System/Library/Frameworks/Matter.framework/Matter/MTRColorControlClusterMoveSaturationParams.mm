@interface MTRColorControlClusterMoveSaturationParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRColorControlClusterMoveSaturationParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRColorControlClusterMoveSaturationParams

- (MTRColorControlClusterMoveSaturationParams)init
{
  v11.receiver = self;
  v11.super_class = MTRColorControlClusterMoveSaturationParams;
  v2 = [(MTRColorControlClusterMoveSaturationParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    moveMode = v2->_moveMode;
    v2->_moveMode = &unk_284C3E4C8;

    rate = v3->_rate;
    v3->_rate = &unk_284C3E4C8;

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
  v4 = objc_alloc_init(MTRColorControlClusterMoveSaturationParams);
  moveMode = [(MTRColorControlClusterMoveSaturationParams *)self moveMode];
  [(MTRColorControlClusterMoveSaturationParams *)v4 setMoveMode:moveMode];

  rate = [(MTRColorControlClusterMoveSaturationParams *)self rate];
  [(MTRColorControlClusterMoveSaturationParams *)v4 setRate:rate];

  optionsMask = [(MTRColorControlClusterMoveSaturationParams *)self optionsMask];
  [(MTRColorControlClusterMoveSaturationParams *)v4 setOptionsMask:optionsMask];

  optionsOverride = [(MTRColorControlClusterMoveSaturationParams *)self optionsOverride];
  [(MTRColorControlClusterMoveSaturationParams *)v4 setOptionsOverride:optionsOverride];

  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveSaturationParams *)self timedInvokeTimeoutMs];
  [(MTRColorControlClusterMoveSaturationParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRColorControlClusterMoveSaturationParams *)self serverSideProcessingTimeout];
  [(MTRColorControlClusterMoveSaturationParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: moveMode:%@ rate:%@; optionsMask:%@; optionsOverride:%@; >", v5, self->_moveMode, self->_rate, self->_optionsMask, self->_optionsOverride];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v25 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  moveMode = [(MTRColorControlClusterMoveSaturationParams *)self moveMode];
  LOBYTE(v25) = [moveMode unsignedCharValue];

  rate = [(MTRColorControlClusterMoveSaturationParams *)self rate];
  BYTE1(v25) = [rate unsignedCharValue];

  optionsMask = [(MTRColorControlClusterMoveSaturationParams *)self optionsMask];
  BYTE2(v25) = [optionsMask unsignedCharValue];

  optionsOverride = [(MTRColorControlClusterMoveSaturationParams *)self optionsOverride];
  HIBYTE(v25) = [optionsOverride unsignedCharValue];

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
    v9 = sub_238F08774(&v25, v17, 0x100uLL);
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
    v13 = 0x62B800000000;
    v12 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v11 = 11;
  }

  sub_238EA1758(&v22);
  sub_238EA1790(&v23);
  v14 = v11 | v13;
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
  v7 = [(MTRColorControlClusterMoveSaturationParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x62D500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end