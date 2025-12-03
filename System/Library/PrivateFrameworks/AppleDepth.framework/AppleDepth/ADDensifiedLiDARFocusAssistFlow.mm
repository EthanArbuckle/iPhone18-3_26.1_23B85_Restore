@interface ADDensifiedLiDARFocusAssistFlow
- (ADDensifiedLiDARFocusAssistFlow)initWithExecutor:(id)executor;
- (void)handleMatch:(id)match;
- (void)pushColor:(double)color pose:(double)pose calibration:(double)calibration metadata:(double)metadata timestamp:(uint64_t)timestamp;
- (void)pushPointCloud:(double)cloud pose:(double)pose calibration:(double)calibration timestamp:(double)timestamp;
- (void)setDelegate:(id)delegate;
@end

@implementation ADDensifiedLiDARFocusAssistFlow

- (void)handleMatch:(id)match
{
  matchCopy = match;
  v5 = [matchCopy matchedObjectsForStream:0];
  firstObject = [v5 firstObject];

  v7 = [matchCopy matchedObjectsForStream:1];
  data = [firstObject data];

  calibration = [firstObject calibration];
  metadata = [firstObject metadata];
  [firstObject timestamp];
  v10 = v9;
  v40 = 0;
  texture = 0;
  v11 = objc_opt_new();
  for (i = 0; [v7 count] > i; ++i)
  {
    v13 = [v7 objectAtIndexedSubscript:i];
    data2 = [v13 data];
    [v11 addObject:data2];

    v15 = [v7 objectAtIndexedSubscript:i];
    calibration2 = [v15 calibration];
    [calibration2 cameraToPlatformTransform];
    v35 = v18;
    v36 = v17;
    v33 = v20;
    v34 = v19;
  }

  v21 = objc_alloc(MEMORY[0x277CED040]);
  LODWORD(v22) = 1.0;
  v23 = [v21 initWithIntrinsics:0 cameraToPlatformTransform:*MEMORY[0x277D860B0] pixelSize:*(MEMORY[0x277D860B0] + 16) referenceDimensions:*(MEMORY[0x277D860B0] + 32) distortionModel:{v36, v35, v34, v33, v22, 0, 0}];
  v37 = matchCopy;
  executor = self->_executor;
  v38 = 0;
  v25 = [(ADDensifiedLiDARFocusAssistExecutor *)executor executeWithColor:data timestamp:v11 pointClouds:v23 lidarCalibration:metadata colorMetadata:calibration colorCameraCalibration:&v40 outputDepthMap:v10 outputConfidenceMap:&texture outputCalibration:&v38];
  v26 = v38;
  v27 = objc_opt_new();
  v28 = objc_opt_new();
  [v28 setColor:data];
  [v28 setPointClouds:v11];
  if (self->_canDelegateFailure && v25)
  {
    delegate = [(ADDensifiedLiDARFocusAssistFlow *)self delegate];
    [firstObject timestamp];
    [delegate didFailOnFrame:v28 input:@"failed execution of DensifiedLiDARFocusAssist" message:v25 error:?];
LABEL_10:

    goto LABEL_11;
  }

  if (self->_canDelegateProcess && !v25)
  {
    [v27 setConfidence:texture];
    [v27 setDepth:v40];
    dictionaryRepresentation = [v26 dictionaryRepresentation];
    [v27 setFiguresOfMerit:dictionaryRepresentation];

    CVPixelBufferRelease(texture);
    CVPixelBufferRelease(v40);
    delegate = [(ADDensifiedLiDARFocusAssistFlow *)self delegate];
    [delegate didProcessFrame:v28 input:v27 output:v10];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)pushColor:(double)color pose:(double)pose calibration:(double)calibration metadata:(double)metadata timestamp:(uint64_t)timestamp
{
  v11 = [self[4] pushData:a8 streamIndex:0 timestamp:a9 pose:a10 calibration:metadata meta:{a2, color, pose, calibration}];
  if (v11)
  {
    [self handleMatch:v11];
  }
}

- (void)pushPointCloud:(double)cloud pose:(double)pose calibration:(double)calibration timestamp:(double)timestamp
{
  v10 = [self[4] pushData:a8 streamIndex:1 timestamp:a9 pose:timestamp calibration:{a2, cloud, pose, calibration}];
  if (v10)
  {
    [self handleMatch:v10];
  }
}

- (ADDensifiedLiDARFocusAssistFlow)initWithExecutor:(id)executor
{
  executorCopy = executor;
  v11.receiver = self;
  v11.super_class = ADDensifiedLiDARFocusAssistFlow;
  v6 = [(ADDensifiedLiDARFocusAssistFlow *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_executor, executor);
    v8 = [objc_alloc(MEMORY[0x277CED120]) initWithStreamCount:2 allowedMatchTimeInterval:1.0];
    streamSync = v7->_streamSync;
    v7->_streamSync = v8;

    [(ADStreamSync *)v7->_streamSync setStream:0 queueSize:1];
    [(ADStreamSync *)v7->_streamSync setStream:1 queueSize:10 aggregationCount:-1 allowedAggregationInterval:1.0];
  }

  return v7;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeStrong(&self->_delegate, delegate);
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