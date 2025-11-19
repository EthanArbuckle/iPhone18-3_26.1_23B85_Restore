@interface ADJasperColorInfieldCalibrationFlow
- (ADJasperColorInfieldCalibrationFlow)initWithExecutor:(id)a3 andIntersessionData:(id)a4 andExtrinsicsFlowMode:(int64_t)a5;
- (void)handleMatch:(id)a3;
- (void)pushColor:(double)a3 pose:(double)a4 calibration:(double)a5 metadata:(double)a6 timestamp:(uint64_t)a7;
- (void)pushPointCloud:(double)a3 pose:(double)a4 calibration:(double)a5 timestamp:(double)a6;
@end

@implementation ADJasperColorInfieldCalibrationFlow

- (void)handleMatch:(id)a3
{
  v4 = a3;
  v3 = [v4 matchedObjectsForStream:0];
  [v3 firstObject];
  objc_claimAutoreleasedReturnValue();

  [v4 matchedObjectsForStream:1];
  [objc_claimAutoreleasedReturnValue() count];
  operator new[]();
}

- (void)pushPointCloud:(double)a3 pose:(double)a4 calibration:(double)a5 timestamp:(double)a6
{
  v10 = [a1[5] pushData:a8 streamIndex:1 timestamp:a9 pose:a6 calibration:{a2, a3, a4, a5}];
  if (v10)
  {
    [a1 handleMatch:v10];
  }
}

- (void)pushColor:(double)a3 pose:(double)a4 calibration:(double)a5 metadata:(double)a6 timestamp:(uint64_t)a7
{
  v11 = [a1[5] pushData:a8 streamIndex:0 timestamp:a9 pose:a10 calibration:a6 meta:{a2, a3, a4, a5}];
  if (v11)
  {
    [a1 handleMatch:v11];
  }
}

- (ADJasperColorInfieldCalibrationFlow)initWithExecutor:(id)a3 andIntersessionData:(id)a4 andExtrinsicsFlowMode:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = ADJasperColorInfieldCalibrationFlow;
  v11 = [(ADJasperColorInfieldCalibrationFlow *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_isFirstFrame = 1;
    v11->_extrinsicsMode = a5;
    objc_storeStrong(&v11->_intersessionData, a4);
    objc_storeStrong(&v12->_executor, a3);
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