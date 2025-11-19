@interface ADDensifiedLiDARFocusAssistFlow
- (ADDensifiedLiDARFocusAssistFlow)initWithExecutor:(id)a3;
- (void)handleMatch:(id)a3;
- (void)pushColor:(double)a3 pose:(double)a4 calibration:(double)a5 metadata:(double)a6 timestamp:(uint64_t)a7;
- (void)pushPointCloud:(double)a3 pose:(double)a4 calibration:(double)a5 timestamp:(double)a6;
- (void)setDelegate:(id)a3;
@end

@implementation ADDensifiedLiDARFocusAssistFlow

- (void)handleMatch:(id)a3
{
  v4 = a3;
  v5 = [v4 matchedObjectsForStream:0];
  v6 = [v5 firstObject];

  v7 = [v4 matchedObjectsForStream:1];
  v8 = [v6 data];

  v32 = [v6 calibration];
  v31 = [v6 metadata];
  [v6 timestamp];
  v10 = v9;
  v40 = 0;
  texture = 0;
  v11 = objc_opt_new();
  for (i = 0; [v7 count] > i; ++i)
  {
    v13 = [v7 objectAtIndexedSubscript:i];
    v14 = [v13 data];
    [v11 addObject:v14];

    v15 = [v7 objectAtIndexedSubscript:i];
    v16 = [v15 calibration];
    [v16 cameraToPlatformTransform];
    v35 = v18;
    v36 = v17;
    v33 = v20;
    v34 = v19;
  }

  v21 = objc_alloc(MEMORY[0x277CED040]);
  LODWORD(v22) = 1.0;
  v23 = [v21 initWithIntrinsics:0 cameraToPlatformTransform:*MEMORY[0x277D860B0] pixelSize:*(MEMORY[0x277D860B0] + 16) referenceDimensions:*(MEMORY[0x277D860B0] + 32) distortionModel:{v36, v35, v34, v33, v22, 0, 0}];
  v37 = v4;
  executor = self->_executor;
  v38 = 0;
  v25 = [(ADDensifiedLiDARFocusAssistExecutor *)executor executeWithColor:v8 timestamp:v11 pointClouds:v23 lidarCalibration:v31 colorMetadata:v32 colorCameraCalibration:&v40 outputDepthMap:v10 outputConfidenceMap:&texture outputCalibration:&v38];
  v26 = v38;
  v27 = objc_opt_new();
  v28 = objc_opt_new();
  [v28 setColor:v8];
  [v28 setPointClouds:v11];
  if (self->_canDelegateFailure && v25)
  {
    v29 = [(ADDensifiedLiDARFocusAssistFlow *)self delegate];
    [v6 timestamp];
    [v29 didFailOnFrame:v28 input:@"failed execution of DensifiedLiDARFocusAssist" message:v25 error:?];
LABEL_10:

    goto LABEL_11;
  }

  if (self->_canDelegateProcess && !v25)
  {
    [v27 setConfidence:texture];
    [v27 setDepth:v40];
    v30 = [v26 dictionaryRepresentation];
    [v27 setFiguresOfMerit:v30];

    CVPixelBufferRelease(texture);
    CVPixelBufferRelease(v40);
    v29 = [(ADDensifiedLiDARFocusAssistFlow *)self delegate];
    [v29 didProcessFrame:v28 input:v27 output:v10];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)pushColor:(double)a3 pose:(double)a4 calibration:(double)a5 metadata:(double)a6 timestamp:(uint64_t)a7
{
  v11 = [a1[4] pushData:a8 streamIndex:0 timestamp:a9 pose:a10 calibration:a6 meta:{a2, a3, a4, a5}];
  if (v11)
  {
    [a1 handleMatch:v11];
  }
}

- (void)pushPointCloud:(double)a3 pose:(double)a4 calibration:(double)a5 timestamp:(double)a6
{
  v10 = [a1[4] pushData:a8 streamIndex:1 timestamp:a9 pose:a6 calibration:{a2, a3, a4, a5}];
  if (v10)
  {
    [a1 handleMatch:v10];
  }
}

- (ADDensifiedLiDARFocusAssistFlow)initWithExecutor:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ADDensifiedLiDARFocusAssistFlow;
  v6 = [(ADDensifiedLiDARFocusAssistFlow *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_executor, a3);
    v8 = [objc_alloc(MEMORY[0x277CED120]) initWithStreamCount:2 allowedMatchTimeInterval:1.0];
    streamSync = v7->_streamSync;
    v7->_streamSync = v8;

    [(ADStreamSync *)v7->_streamSync setStream:0 queueSize:1];
    [(ADStreamSync *)v7->_streamSync setStream:1 queueSize:10 aggregationCount:-1 allowedAggregationInterval:1.0];
  }

  return v7;
}

- (void)setDelegate:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_delegate, a3);
  delegate = self->_delegate;
  if (delegate)
  {
    LOBYTE(delegate) = objc_opt_respondsToSelector();
  }

  self->_canDelegateProcess = delegate & 1;
  v6 = self->_delegate;
  if (v6)
  {
    LOBYTE(v6) = objc_opt_respondsToSelector();
  }

  self->_canDelegateFailure = v6 & 1;
}

@end