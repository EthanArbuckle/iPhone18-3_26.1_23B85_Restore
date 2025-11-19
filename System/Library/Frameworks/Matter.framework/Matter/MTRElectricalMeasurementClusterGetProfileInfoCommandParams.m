@interface MTRElectricalMeasurementClusterGetProfileInfoCommandParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRElectricalMeasurementClusterGetProfileInfoCommandParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRElectricalMeasurementClusterGetProfileInfoCommandParams

- (MTRElectricalMeasurementClusterGetProfileInfoCommandParams)init
{
  v7.receiver = self;
  v7.super_class = MTRElectricalMeasurementClusterGetProfileInfoCommandParams;
  v2 = [(MTRElectricalMeasurementClusterGetProfileInfoCommandParams *)&v7 init];
  v3 = v2;
  if (v2)
  {
    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRElectricalMeasurementClusterGetProfileInfoCommandParams);
  v5 = [(MTRElectricalMeasurementClusterGetProfileInfoCommandParams *)self timedInvokeTimeoutMs];
  [(MTRElectricalMeasurementClusterGetProfileInfoCommandParams *)v4 setTimedInvokeTimeoutMs:v5];

  v6 = [(MTRElectricalMeasurementClusterGetProfileInfoCommandParams *)self serverSideProcessingTimeout];
  [(MTRElectricalMeasurementClusterGetProfileInfoCommandParams *)v4 setServerSideProcessingTimeout:v6];

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"<%@: >", v4];

  return v5;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v3 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm";
  v4 = 0x2FE80000002DLL;
  result.mFile = v3;
  result.mError = v4;
  result.mLine = HIDWORD(v4);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRElectricalMeasurementClusterGetProfileInfoCommandParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x2FF900000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end