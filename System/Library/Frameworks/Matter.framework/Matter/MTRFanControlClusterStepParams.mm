@interface MTRFanControlClusterStepParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRFanControlClusterStepParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRFanControlClusterStepParams

- (MTRFanControlClusterStepParams)init
{
  v10.receiver = self;
  v10.super_class = MTRFanControlClusterStepParams;
  v2 = [(MTRFanControlClusterStepParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    direction = v2->_direction;
    v2->_direction = &unk_284C3E4C8;

    wrap = v3->_wrap;
    v3->_wrap = 0;

    lowestOff = v3->_lowestOff;
    v3->_lowestOff = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRFanControlClusterStepParams);
  direction = [(MTRFanControlClusterStepParams *)self direction];
  [(MTRFanControlClusterStepParams *)v4 setDirection:direction];

  wrap = [(MTRFanControlClusterStepParams *)self wrap];
  [(MTRFanControlClusterStepParams *)v4 setWrap:wrap];

  lowestOff = [(MTRFanControlClusterStepParams *)self lowestOff];
  [(MTRFanControlClusterStepParams *)v4 setLowestOff:lowestOff];

  timedInvokeTimeoutMs = [(MTRFanControlClusterStepParams *)self timedInvokeTimeoutMs];
  [(MTRFanControlClusterStepParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRFanControlClusterStepParams *)self serverSideProcessingTimeout];
  [(MTRFanControlClusterStepParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: direction:%@ wrap:%@; lowestOff:%@; >", v5, self->_direction, self->_wrap, self->_lowestOff];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  *v26 = 0;
  LOBYTE(v27) = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  direction = [(MTRFanControlClusterStepParams *)self direction];
  v26[0] = [direction unsignedCharValue];

  wrap = [(MTRFanControlClusterStepParams *)self wrap];

  if (wrap)
  {
    *&v26[1] = 1;
    wrap2 = [(MTRFanControlClusterStepParams *)self wrap];
    v26[2] = [wrap2 BOOLValue];
  }

  lowestOff = [(MTRFanControlClusterStepParams *)self lowestOff];

  if (lowestOff)
  {
    v27 = 1;
    lowestOff2 = [(MTRFanControlClusterStepParams *)self lowestOff];
    HIBYTE(v27) = [lowestOff2 BOOLValue];
  }

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
    v10 = sub_238F177A0(v26, v18, 0x100uLL);
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
    v13 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v14 = 0x60C700000000;
    v12 = 11;
  }

  sub_238EA1758(&v23);
  sub_238EA1790(&v24);
  v15 = v14 | v12;
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
  v7 = [(MTRFanControlClusterStepParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x60E400000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end