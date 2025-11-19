@interface MTRBarrierControlClusterBarrierControlGoToPercentParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRBarrierControlClusterBarrierControlGoToPercentParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRBarrierControlClusterBarrierControlGoToPercentParams

- (MTRBarrierControlClusterBarrierControlGoToPercentParams)init
{
  v8.receiver = self;
  v8.super_class = MTRBarrierControlClusterBarrierControlGoToPercentParams;
  v2 = [(MTRBarrierControlClusterBarrierControlGoToPercentParams *)&v8 init];
  v3 = v2;
  if (v2)
  {
    percentOpen = v2->_percentOpen;
    v2->_percentOpen = &unk_284C40A48;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRBarrierControlClusterBarrierControlGoToPercentParams);
  v5 = [(MTRBarrierControlClusterBarrierControlGoToPercentParams *)self percentOpen];
  [(MTRBarrierControlClusterBarrierControlGoToPercentParams *)v4 setPercentOpen:v5];

  v6 = [(MTRBarrierControlClusterBarrierControlGoToPercentParams *)self timedInvokeTimeoutMs];
  [(MTRBarrierControlClusterBarrierControlGoToPercentParams *)v4 setTimedInvokeTimeoutMs:v6];

  v7 = [(MTRBarrierControlClusterBarrierControlGoToPercentParams *)self serverSideProcessingTimeout];
  [(MTRBarrierControlClusterBarrierControlGoToPercentParams *)v4 setServerSideProcessingTimeout:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: percentOpen:%@ >", v5, self->_percentOpen];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v3 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm";
  v4 = 0xD340000002DLL;
  result.mFile = v3;
  result.mError = v4;
  result.mLine = HIDWORD(v4);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRBarrierControlClusterBarrierControlGoToPercentParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xD4500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end