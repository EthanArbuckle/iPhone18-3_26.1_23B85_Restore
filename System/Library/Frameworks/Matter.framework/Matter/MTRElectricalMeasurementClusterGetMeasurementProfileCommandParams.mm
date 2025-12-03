@interface MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams

- (MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams)init
{
  v10.receiver = self;
  v10.super_class = MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams;
  v2 = [(MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    attributeId = v2->_attributeId;
    v2->_attributeId = &unk_284C40A48;

    startTime = v3->_startTime;
    v3->_startTime = &unk_284C40A48;

    numberOfIntervals = v3->_numberOfIntervals;
    v3->_numberOfIntervals = &unk_284C40A48;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams);
  attributeId = [(MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams *)self attributeId];
  [(MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams *)v4 setAttributeId:attributeId];

  startTime = [(MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams *)self startTime];
  [(MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams *)v4 setStartTime:startTime];

  numberOfIntervals = [(MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams *)self numberOfIntervals];
  [(MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams *)v4 setNumberOfIntervals:numberOfIntervals];

  timedInvokeTimeoutMs = [(MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams *)self timedInvokeTimeoutMs];
  [(MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams *)self serverSideProcessingTimeout];
  [(MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: attributeId:%@ startTime:%@; numberOfIntervals:%@; >", v5, self->_attributeId, self->_startTime, self->_numberOfIntervals];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v3 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm";
  v4 = 0x305E0000002DLL;
  result.mFile = v3;
  result.mError = v4;
  result.mLine = HIDWORD(v4);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x306F00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end