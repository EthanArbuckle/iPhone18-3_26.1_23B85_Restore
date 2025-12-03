@interface MTRLevelControlClusterMoveWithOnOffParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRLevelControlClusterMoveWithOnOffParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRLevelControlClusterMoveWithOnOffParams

- (MTRLevelControlClusterMoveWithOnOffParams)init
{
  v11.receiver = self;
  v11.super_class = MTRLevelControlClusterMoveWithOnOffParams;
  v2 = [(MTRLevelControlClusterMoveWithOnOffParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    moveMode = v2->_moveMode;
    v2->_moveMode = &unk_284C3E4C8;

    rate = v3->_rate;
    v3->_rate = 0;

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
  v4 = objc_alloc_init(MTRLevelControlClusterMoveWithOnOffParams);
  moveMode = [(MTRLevelControlClusterMoveWithOnOffParams *)self moveMode];
  [(MTRLevelControlClusterMoveWithOnOffParams *)v4 setMoveMode:moveMode];

  rate = [(MTRLevelControlClusterMoveWithOnOffParams *)self rate];
  [(MTRLevelControlClusterMoveWithOnOffParams *)v4 setRate:rate];

  optionsMask = [(MTRLevelControlClusterMoveWithOnOffParams *)self optionsMask];
  [(MTRLevelControlClusterMoveWithOnOffParams *)v4 setOptionsMask:optionsMask];

  optionsOverride = [(MTRLevelControlClusterMoveWithOnOffParams *)self optionsOverride];
  [(MTRLevelControlClusterMoveWithOnOffParams *)v4 setOptionsOverride:optionsOverride];

  timedInvokeTimeoutMs = [(MTRLevelControlClusterMoveWithOnOffParams *)self timedInvokeTimeoutMs];
  [(MTRLevelControlClusterMoveWithOnOffParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRLevelControlClusterMoveWithOnOffParams *)self serverSideProcessingTimeout];
  [(MTRLevelControlClusterMoveWithOnOffParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

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
  unsignedCharValue = 0;
  v26 = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  moveMode = [(MTRLevelControlClusterMoveWithOnOffParams *)self moveMode];
  LOBYTE(v26) = [moveMode unsignedCharValue];

  rate = [(MTRLevelControlClusterMoveWithOnOffParams *)self rate];

  if (rate)
  {
    *(&v26 + 1) = 256;
    rate2 = [(MTRLevelControlClusterMoveWithOnOffParams *)self rate];
    BYTE1(v26) = [rate2 unsignedCharValue];
  }

  optionsMask = [(MTRLevelControlClusterMoveWithOnOffParams *)self optionsMask];
  HIBYTE(v26) = [optionsMask unsignedCharValue];

  optionsOverride = [(MTRLevelControlClusterMoveWithOnOffParams *)self optionsOverride];
  unsignedCharValue = [optionsOverride unsignedCharValue];

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
    v10 = sub_238F1D75C(&v26, v18, 0x100uLL);
    v12 = v10;
    if (v10 || (v10 = sub_238DD2EFC(v18, &v23), v12 = v10, v10))
    {
      v13 = v11;
    }

    else
    {
      sub_238DD2F90(reader, &v23);
      v10 = sub_2393C7114(reader, 21, 256);
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
    v14 = 0x8D200000000;
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

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRLevelControlClusterMoveWithOnOffParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x8EF00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end