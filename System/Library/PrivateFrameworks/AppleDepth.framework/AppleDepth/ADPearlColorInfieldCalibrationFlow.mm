@interface ADPearlColorInfieldCalibrationFlow
- (ADPearlColorInfieldCalibrationFlow)initWithExecutor:(id)executor andIntersessionData:(id)data;
- (void)handleMatch:(id)match;
- (void)pushColor:(double)color pose:(double)pose calibration:(double)calibration metadata:(double)metadata timestamp:(uint64_t)timestamp;
- (void)pushPearlDepth:(double)depth pose:(double)pose depthCalibration:(double)calibration irToDepthTransform:(__n128)transform timestamp:(__n128)timestamp;
@end

@implementation ADPearlColorInfieldCalibrationFlow

- (void)handleMatch:(id)match
{
  matchCopy = match;
  [(ADPearlColorInFieldCalibrationResult *)self->_lastExecutionResult setExecuted:0];
  v4 = [matchCopy matchedObjectsForStream:0];
  firstObject = [v4 firstObject];

  v42 = firstObject;
  v6 = [matchCopy matchedObjectsForStream:1];
  firstObject2 = [v6 firstObject];

  data = [firstObject data];

  calibration = [firstObject calibration];
  data2 = [firstObject2 data];

  calibration2 = [firstObject2 calibration];
  metadata = [firstObject2 metadata];
  v38 = [metadata objectForKeyedSubscript:self->_transformKey];
  *&v43 = ADCommonUtils::matrixNxMFromArrayColumnFirst<4ul,4ul,simd_float4x4>(v38).n128_u64[0];
  v36 = v11;
  v37 = v10;
  v35 = v12;
  [firstObject2 pose];
  v33 = v14;
  v34 = v13;
  v31 = v16;
  v32 = v15;
  [firstObject timestamp];
  v18 = v17;
  v19 = [(ADPearlColorInFieldCalibrationExecutor *)self->_executor preprocessInputColorFrame:data pearlDepth:data2 pearlPoses:calibration2 pceCameraCalibration:calibration pearlCameraCalibrationTransform:v34 colorCameraCalibration:v33 timestamp:v32, v31, v43, v37, v36, v35, *&v17];
  v44 = objc_opt_new();
  v20 = objc_opt_new();
  [v20 setColor:data];
  [v20 setPearl:data2];
  delegate = [(ADFlow *)self delegate];
  if (delegate)
  {
    delegate2 = [(ADFlow *)self delegate];
    v23 = objc_opt_respondsToSelector();
  }

  else
  {
    v23 = 0;
  }

  delegate3 = [(ADFlow *)self delegate];
  if (delegate3)
  {
    delegate4 = [(ADFlow *)self delegate];
    v26 = objc_opt_respondsToSelector();

    if (v19)
    {
LABEL_6:
      v27 = v44;
      if ((v23 & 1) == 0)
      {
        goto LABEL_14;
      }

      delegate5 = [(ADFlow *)self delegate];
      [v42 timestamp];
      [delegate5 didFailOnFrame:v20 input:@"failed preprocessing input stage" message:v19 error:?];
LABEL_12:
      v27 = v44;
LABEL_13:

      goto LABEL_14;
    }
  }

  else
  {
    v26 = 0;

    if (v19)
    {
      goto LABEL_6;
    }
  }

  v29 = [(ADPearlColorInFieldCalibrationExecutor *)self->_executor executePreprocessedInputsWithInterSessionData:self->_intersessionData outResult:self->_lastExecutionResult];
  if (v29)
  {
    v27 = v44;
    if ((v23 & 1) == 0)
    {
      goto LABEL_14;
    }

    delegate5 = [(ADFlow *)self delegate];
    [v42 timestamp];
    [delegate5 didFailOnFrame:v20 input:@"failed execute preprocessed stage" message:v29 error:?];
    goto LABEL_12;
  }

  v27 = v44;
  if (v26)
  {
    dictionaryRepresentation = [(ADPearlColorInFieldCalibrationResult *)self->_lastExecutionResult dictionaryRepresentation];
    [v44 setFiguresOfMerit:dictionaryRepresentation];

    [v44 setDepth:data2];
    delegate5 = [(ADFlow *)self delegate];
    v27 = v44;
    [delegate5 didProcessFrame:v20 input:v44 output:v18];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)pushColor:(double)color pose:(double)pose calibration:(double)calibration metadata:(double)metadata timestamp:(uint64_t)timestamp
{
  v10 = [self[4] pushData:a8 streamIndex:0 timestamp:a9 pose:metadata calibration:{a2, color, pose, calibration}];
  if (v10)
  {
    [self handleMatch:v10];
  }
}

- (void)pushPearlDepth:(double)depth pose:(double)pose depthCalibration:(double)calibration irToDepthTransform:(__n128)transform timestamp:(__n128)timestamp
{
  v29[1] = *MEMORY[0x277D85DE8];
  v27[0] = transform;
  v27[1] = timestamp;
  v27[2] = a8;
  v27[3] = a9;
  v19 = a12;
  v20 = ADCommonUtils::matrixNxMToArrayColumnFirst<4ul,4ul,simd_float4x4>(v27);
  v28 = *(self + 48);
  v29[0] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v22 = [*(self + 32) pushData:a11 streamIndex:1 timestamp:v19 pose:v21 calibration:a13 meta:{a2, depth, pose, calibration}];
  if (v22)
  {
    [self handleMatch:v22];
  }
}

- (ADPearlColorInfieldCalibrationFlow)initWithExecutor:(id)executor andIntersessionData:(id)data
{
  executorCopy = executor;
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = ADPearlColorInfieldCalibrationFlow;
  v9 = [(ADPearlColorInfieldCalibrationFlow *)&v17 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithCString:"inputIrToDepthTransform" encoding:4];
    transformKey = v9->_transformKey;
    v9->_transformKey = v10;

    objc_storeStrong(&v9->_intersessionData, data);
    objc_storeStrong(&v9->_executor, executor);
    v12 = objc_opt_new();
    lastExecutionResult = v9->_lastExecutionResult;
    v9->_lastExecutionResult = v12;

    v14 = [objc_alloc(MEMORY[0x277CED120]) initWithStreamCount:2 allowedMatchTimeInterval:0.00999999978];
    streamSync = v9->_streamSync;
    v9->_streamSync = v14;

    [(ADStreamSync *)v9->_streamSync setStream:0 queueSize:10];
    [(ADStreamSync *)v9->_streamSync setStream:1 queueSize:10 aggregationCount:1 allowedAggregationInterval:0.0];
  }

  return v9;
}

@end