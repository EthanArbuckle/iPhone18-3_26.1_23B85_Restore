@interface ADJasperColorInfieldCalibrationFlow
- (ADJasperColorInfieldCalibrationFlow)initWithExecutor:(id)executor andIntersessionData:(id)data andExtrinsicsFlowMode:(int64_t)mode;
- (void)handleMatch:(id)match;
- (void)pushColor:(double)color pose:(double)pose calibration:(double)calibration metadata:(double)metadata timestamp:(uint64_t)timestamp;
- (void)pushPointCloud:(double)cloud pose:(double)pose calibration:(double)calibration timestamp:(double)timestamp;
@end

@implementation ADJasperColorInfieldCalibrationFlow

- (void)handleMatch:(id)match
{
  matchCopy = match;
  v3 = [matchCopy matchedObjectsForStream:0];
  [v3 firstObject];
  objc_claimAutoreleasedReturnValue();

  [matchCopy matchedObjectsForStream:1];
  [objc_claimAutoreleasedReturnValue() count];
  operator new[]();
}

- (void)pushPointCloud:(double)cloud pose:(double)pose calibration:(double)calibration timestamp:(double)timestamp
{
  v10 = [self[5] pushData:a8 streamIndex:1 timestamp:a9 pose:timestamp calibration:{a2, cloud, pose, calibration}];
  if (v10)
  {
    [self handleMatch:v10];
  }
}

- (void)pushColor:(double)color pose:(double)pose calibration:(double)calibration metadata:(double)metadata timestamp:(uint64_t)timestamp
{
  v11 = [self[5] pushData:a8 streamIndex:0 timestamp:a9 pose:a10 calibration:metadata meta:{a2, color, pose, calibration}];
  if (v11)
  {
    [self handleMatch:v11];
  }
}

- (ADJasperColorInfieldCalibrationFlow)initWithExecutor:(id)executor andIntersessionData:(id)data andExtrinsicsFlowMode:(int64_t)mode
{
  executorCopy = executor;
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = ADJasperColorInfieldCalibrationFlow;
  v11 = [(ADJasperColorInfieldCalibrationFlow *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_isFirstFrame = 1;
    v11->_extrinsicsMode = mode;
    objc_storeStrong(&v11->_intersessionData, data);
    objc_storeStrong(&v12->_executor, executor);
    v13 = objc_opt_new();
    lastExecutionResult = v12->_lastExecutionResult;
    v12->_lastExecutionResult = v13;

    v15 = [objc_alloc(MEMORY[0x277CED120]) initWithStreamCount:2 allowedMatchTimeInterval:0.0199999996];
    streamSync = v12->_streamSync;
    v12->_streamSync = v15;

    [(ADStreamSync *)v12->_streamSync setStream:0 queueSize:10];
    [(ADStreamSync *)v12->_streamSync setStream:1 queueSize:10 aggregationCount:-1 allowedAggregationInterval:0.0549999997];
  }

  return v12;
}

@end