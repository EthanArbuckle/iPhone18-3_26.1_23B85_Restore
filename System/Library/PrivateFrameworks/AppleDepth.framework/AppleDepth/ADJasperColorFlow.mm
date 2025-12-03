@interface ADJasperColorFlow
- (ADJasperColorFlow)initWithExecutor:(id)executor;
- (void)processIfMatch:(id)match;
- (void)pushColor:(double)color pose:(double)pose calibration:(double)calibration metadata:(double)metadata timestamp:(uint64_t)timestamp;
- (void)pushPointCloud:(double)cloud pose:(double)pose calibration:(double)calibration timestamp:(double)timestamp;
@end

@implementation ADJasperColorFlow

- (void)processIfMatch:(id)match
{
  matchCopy = match;
  if ([(ADFlow *)self shouldProcessMatch:matchCopy])
  {
    objc_opt_new();
    v5 = [matchCopy matchedObjectsForStream:0];
    [v5 firstObject];
    objc_claimAutoreleasedReturnValue();

    [matchCopy matchedObjectsForStream:1];
    [objc_claimAutoreleasedReturnValue() count];
    operator new[]();
  }
}

- (void)pushPointCloud:(double)cloud pose:(double)pose calibration:(double)calibration timestamp:(double)timestamp
{
  v10 = [self[4] pushData:a8 streamIndex:1 timestamp:a9 pose:timestamp calibration:{a2, cloud, pose, calibration}];
  [self processIfMatch:?];
}

- (void)pushColor:(double)color pose:(double)pose calibration:(double)calibration metadata:(double)metadata timestamp:(uint64_t)timestamp
{
  v10 = [self[4] pushData:a8 streamIndex:0 timestamp:a9 pose:metadata calibration:{a2, color, pose, calibration}];
  [self processIfMatch:?];
}

- (ADJasperColorFlow)initWithExecutor:(id)executor
{
  executorCopy = executor;
  v17.receiver = self;
  v17.super_class = ADJasperColorFlow;
  v6 = [(ADJasperColorFlow *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_executor, executor);
    v8 = [objc_alloc(MEMORY[0x277CED120]) initWithStreamCount:2 allowedMatchTimeInterval:0.05];
    streamSync = v7->_streamSync;
    v7->_streamSync = v8;

    [(ADStreamSync *)v7->_streamSync setStream:0 queueSize:1];
    [(ADStreamSync *)v7->_streamSync setStream:1 queueSize:4 aggregationCount:-1 allowedAggregationInterval:0.07];
    pipeline = [(ADJasperColorExecutor *)v7->_executor pipeline];
    processedDepthOutputDescriptor = [pipeline processedDepthOutputDescriptor];
    pipeline2 = [(ADJasperColorExecutor *)v7->_executor pipeline];
    processedConfidenceOutputDescriptor = [pipeline2 processedConfidenceOutputDescriptor];
    v14 = [ADFlowFrameOutputPool poolWithDepthDescriptor:processedDepthOutputDescriptor confidenceDescriptor:processedConfidenceOutputDescriptor layout:[(ADExecutor *)v7->_executor layout]];
    frameOutputPool = v7->_frameOutputPool;
    v7->_frameOutputPool = v14;
  }

  return v7;
}

@end