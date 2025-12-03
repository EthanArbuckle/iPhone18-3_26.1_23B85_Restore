@interface MTRColorControlClusterEnhancedMoveToHueAndSaturationParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRColorControlClusterEnhancedMoveToHueAndSaturationParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRColorControlClusterEnhancedMoveToHueAndSaturationParams

- (MTRColorControlClusterEnhancedMoveToHueAndSaturationParams)init
{
  v12.receiver = self;
  v12.super_class = MTRColorControlClusterEnhancedMoveToHueAndSaturationParams;
  v2 = [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)&v12 init];
  v3 = v2;
  if (v2)
  {
    enhancedHue = v2->_enhancedHue;
    v2->_enhancedHue = &unk_284C3E4C8;

    saturation = v3->_saturation;
    v3->_saturation = &unk_284C3E4C8;

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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams);
  enhancedHue = [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)self enhancedHue];
  [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)v4 setEnhancedHue:enhancedHue];

  saturation = [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)self saturation];
  [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)v4 setSaturation:saturation];

  transitionTime = [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)self transitionTime];
  [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)v4 setTransitionTime:transitionTime];

  optionsMask = [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)self optionsMask];
  [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)v4 setOptionsMask:optionsMask];

  optionsOverride = [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)self optionsOverride];
  [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)v4 setOptionsOverride:optionsOverride];

  timedInvokeTimeoutMs = [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)self timedInvokeTimeoutMs];
  [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)self serverSideProcessingTimeout];
  [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: enhancedHue:%@ saturation:%@; transitionTime:%@; optionsMask:%@; optionsOverride:%@; >", v5, self->_enhancedHue, self->_saturation, self->_transitionTime, self->_optionsMask, self->_optionsOverride];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  unsignedShortValue = 0;
  unsignedCharValue = 0;
  v28 = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  enhancedHue = [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)self enhancedHue];
  unsignedShortValue = [enhancedHue unsignedShortValue];

  saturation = [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)self saturation];
  unsignedCharValue = [saturation unsignedCharValue];

  transitionTime = [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)self transitionTime];
  LOWORD(v28) = [transitionTime unsignedShortValue];

  optionsMask = [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)self optionsMask];
  BYTE2(v28) = [optionsMask unsignedCharValue];

  optionsOverride = [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)self optionsOverride];
  HIBYTE(v28) = [optionsOverride unsignedCharValue];

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
    v10 = sub_238F0995C(&unsignedShortValue, v18, 0x100uLL);
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
    v14 = 0x66B800000000;
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
  v7 = [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x66D500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end