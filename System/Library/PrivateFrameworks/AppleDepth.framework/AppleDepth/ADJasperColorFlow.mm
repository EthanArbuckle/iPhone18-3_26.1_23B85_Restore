@interface ADJasperColorFlow
- (ADJasperColorFlow)initWithExecutor:(id)a3;
- (void)processIfMatch:(id)a3;
- (void)pushColor:(double)a3 pose:(double)a4 calibration:(double)a5 metadata:(double)a6 timestamp:(uint64_t)a7;
- (void)pushPointCloud:(double)a3 pose:(double)a4 calibration:(double)a5 timestamp:(double)a6;
@end

@implementation ADJasperColorFlow

- (void)processIfMatch:(id)a3
{
  v4 = a3;
  if ([(ADFlow *)self shouldProcessMatch:v4])
  {
    objc_opt_new();
    v5 = [v4 matchedObjectsForStream:0];
    [v5 firstObject];
    objc_claimAutoreleasedReturnValue();

    [v4 matchedObjectsForStream:1];
    [objc_claimAutoreleasedReturnValue() count];
    operator new[]();
  }
}

- (void)pushPointCloud:(double)a3 pose:(double)a4 calibration:(double)a5 timestamp:(double)a6
{
  v10 = [a1[4] pushData:a8 streamIndex:1 timestamp:a9 pose:a6 calibration:{a2, a3, a4, a5}];
  [a1 processIfMatch:?];
}

- (void)pushColor:(double)a3 pose:(double)a4 calibration:(double)a5 metadata:(double)a6 timestamp:(uint64_t)a7
{
  v10 = [a1[4] pushData:a8 streamIndex:0 timestamp:a9 pose:a6 calibration:{a2, a3, a4, a5}];
  [a1 processIfMatch:?];
}

- (ADJasperColorFlow)initWithExecutor:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = ADJasperColorFlow;
  v6 = [(ADJasperColorFlow *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_executor, a3);
    v8 = [objc_alloc(MEMORY[0x277CED120]) initWithStreamCount:2 allowedMatchTimeInterval:0.05];
    streamSync = v7->_streamSync;
    v7->_streamSync = v8;

    [(ADStreamSync *)v7->_streamSync setStream:0 queueSize:1];
    [(ADStreamSync *)v7->_streamSync setStream:1 queueSize:4 aggregationCount:-1 allowedAggregationInterval:0.07];
    v10 = [(ADJasperColorExecutor *)v7->_executor pipeline];
    v11 = [v10 processedDepthOutputDescriptor];
    v12 = [(ADJasperColorExecutor *)v7->_executor pipeline];
    v13 = [v12 processedConfidenceOutputDescriptor];
    v14 = [ADFlowFrameOutputPool poolWithDepthDescriptor:v11 confidenceDescriptor:v13 layout:[(ADExecutor *)v7->_executor layout]];
    frameOutputPool = v7->_frameOutputPool;
    v7->_frameOutputPool = v14;
  }

  return v7;
}

@end