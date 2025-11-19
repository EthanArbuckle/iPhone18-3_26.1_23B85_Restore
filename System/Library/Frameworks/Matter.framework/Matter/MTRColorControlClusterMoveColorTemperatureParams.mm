@interface MTRColorControlClusterMoveColorTemperatureParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRColorControlClusterMoveColorTemperatureParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRColorControlClusterMoveColorTemperatureParams

- (MTRColorControlClusterMoveColorTemperatureParams)init
{
  v13.receiver = self;
  v13.super_class = MTRColorControlClusterMoveColorTemperatureParams;
  v2 = [(MTRColorControlClusterMoveColorTemperatureParams *)&v13 init];
  v3 = v2;
  if (v2)
  {
    moveMode = v2->_moveMode;
    v2->_moveMode = &unk_284C3E4C8;

    rate = v3->_rate;
    v3->_rate = &unk_284C3E4C8;

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRColorControlClusterMoveColorTemperatureParams);
  v5 = [(MTRColorControlClusterMoveColorTemperatureParams *)self moveMode];
  [(MTRColorControlClusterMoveColorTemperatureParams *)v4 setMoveMode:v5];

  v6 = [(MTRColorControlClusterMoveColorTemperatureParams *)self rate];
  [(MTRColorControlClusterMoveColorTemperatureParams *)v4 setRate:v6];

  v7 = [(MTRColorControlClusterMoveColorTemperatureParams *)self colorTemperatureMinimumMireds];
  [(MTRColorControlClusterMoveColorTemperatureParams *)v4 setColorTemperatureMinimumMireds:v7];

  v8 = [(MTRColorControlClusterMoveColorTemperatureParams *)self colorTemperatureMaximumMireds];
  [(MTRColorControlClusterMoveColorTemperatureParams *)v4 setColorTemperatureMaximumMireds:v8];

  v9 = [(MTRColorControlClusterMoveColorTemperatureParams *)self optionsMask];
  [(MTRColorControlClusterMoveColorTemperatureParams *)v4 setOptionsMask:v9];

  v10 = [(MTRColorControlClusterMoveColorTemperatureParams *)self optionsOverride];
  [(MTRColorControlClusterMoveColorTemperatureParams *)v4 setOptionsOverride:v10];

  v11 = [(MTRColorControlClusterMoveColorTemperatureParams *)self timedInvokeTimeoutMs];
  [(MTRColorControlClusterMoveColorTemperatureParams *)v4 setTimedInvokeTimeoutMs:v11];

  v12 = [(MTRColorControlClusterMoveColorTemperatureParams *)self serverSideProcessingTimeout];
  [(MTRColorControlClusterMoveColorTemperatureParams *)v4 setServerSideProcessingTimeout:v12];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: moveMode:%@ rate:%@; colorTemperatureMinimumMireds:%@; colorTemperatureMaximumMireds:%@; optionsMask:%@; optionsOverride:%@; >", v5, self->_moveMode, self->_rate, self->_colorTemperatureMinimumMireds, self->_colorTemperatureMaximumMireds, self->_optionsMask, self->_optionsOverride];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v27[0] = 0;
  v28 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v5 = [(MTRColorControlClusterMoveColorTemperatureParams *)self moveMode];
  v27[0] = [v5 unsignedCharValue];

  v6 = [(MTRColorControlClusterMoveColorTemperatureParams *)self rate];
  LOWORD(v28) = [v6 unsignedShortValue];

  v7 = [(MTRColorControlClusterMoveColorTemperatureParams *)self colorTemperatureMinimumMireds];
  WORD1(v28) = [v7 unsignedShortValue];

  v8 = [(MTRColorControlClusterMoveColorTemperatureParams *)self colorTemperatureMaximumMireds];
  WORD2(v28) = [v8 unsignedShortValue];

  v9 = [(MTRColorControlClusterMoveColorTemperatureParams *)self optionsMask];
  BYTE6(v28) = [v9 unsignedCharValue];

  v10 = [(MTRColorControlClusterMoveColorTemperatureParams *)self optionsOverride];
  HIBYTE(v28) = [v10 unsignedCharValue];

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
    v11 = sub_238F09E2C(v27, v19, 0x100uLL);
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
    v15 = 0x67ED00000000;
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
  v7 = [(MTRColorControlClusterMoveColorTemperatureParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x680A00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end