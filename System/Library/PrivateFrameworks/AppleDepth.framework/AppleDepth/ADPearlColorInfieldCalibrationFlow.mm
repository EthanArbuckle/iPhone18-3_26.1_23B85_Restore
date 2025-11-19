@interface ADPearlColorInfieldCalibrationFlow
- (ADPearlColorInfieldCalibrationFlow)initWithExecutor:(id)a3 andIntersessionData:(id)a4;
- (void)handleMatch:(id)a3;
- (void)pushColor:(double)a3 pose:(double)a4 calibration:(double)a5 metadata:(double)a6 timestamp:(uint64_t)a7;
- (void)pushPearlDepth:(double)a3 pose:(double)a4 depthCalibration:(double)a5 irToDepthTransform:(__n128)a6 timestamp:(__n128)a7;
@end

@implementation ADPearlColorInfieldCalibrationFlow

- (void)handleMatch:(id)a3
{
  v45 = a3;
  [(ADPearlColorInFieldCalibrationResult *)self->_lastExecutionResult setExecuted:0];
  v4 = [v45 matchedObjectsForStream:0];
  v5 = [v4 firstObject];

  v42 = v5;
  v6 = [v45 matchedObjectsForStream:1];
  v7 = [v6 firstObject];

  v8 = [v5 data];

  v41 = [v5 calibration];
  v9 = [v7 data];

  v40 = [v7 calibration];
  v39 = [v7 metadata];
  v38 = [v39 objectForKeyedSubscript:self->_transformKey];
  *&v43 = ADCommonUtils::matrixNxMFromArrayColumnFirst<4ul,4ul,simd_float4x4>(v38).n128_u64[0];
  v36 = v11;
  v37 = v10;
  v35 = v12;
  [v7 pose];
  v33 = v14;
  v34 = v13;
  v31 = v16;
  v32 = v15;
  [v5 timestamp];
  v18 = v17;
  v19 = [(ADPearlColorInFieldCalibrationExecutor *)self->_executor preprocessInputColorFrame:v8 pearlDepth:v9 pearlPoses:v40 pceCameraCalibration:v41 pearlCameraCalibrationTransform:v34 colorCameraCalibration:v33 timestamp:v32, v31, v43, v37, v36, v35, *&v17];
  v44 = objc_opt_new();
  v20 = objc_opt_new();
  [v20 setColor:v8];
  [v20 setPearl:v9];
  v21 = [(ADFlow *)self delegate];
  if (v21)
  {
    v22 = [(ADFlow *)self delegate];
    v23 = objc_opt_respondsToSelector();
  }

  else
  {
    v23 = 0;
  }

  v24 = [(ADFlow *)self delegate];
  if (v24)
  {
    v25 = [(ADFlow *)self delegate];
    v26 = objc_opt_respondsToSelector();

    if (v19)
    {
LABEL_6:
      v27 = v44;
      if ((v23 & 1) == 0)
      {
        goto LABEL_14;
      }

      v28 = [(ADFlow *)self delegate];
      [v42 timestamp];
      [v28 didFailOnFrame:v20 input:@"failed preprocessing input stage" message:v19 error:?];
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

    v28 = [(ADFlow *)self delegate];
    [v42 timestamp];
    [v28 didFailOnFrame:v20 input:@"failed execute preprocessed stage" message:v29 error:?];
    goto LABEL_12;
  }

  v27 = v44;
  if (v26)
  {
    v30 = [(ADPearlColorInFieldCalibrationResult *)self->_lastExecutionResult dictionaryRepresentation];
    [v44 setFiguresOfMerit:v30];

    [v44 setDepth:v9];
    v28 = [(ADFlow *)self delegate];
    v27 = v44;
    [v28 didProcessFrame:v20 input:v44 output:v18];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)pushColor:(double)a3 pose:(double)a4 calibration:(double)a5 metadata:(double)a6 timestamp:(uint64_t)a7
{
  v10 = [a1[4] pushData:a8 streamIndex:0 timestamp:a9 pose:a6 calibration:{a2, a3, a4, a5}];
  if (v10)
  {
    [a1 handleMatch:v10];
  }
}

- (void)pushPearlDepth:(double)a3 pose:(double)a4 depthCalibration:(double)a5 irToDepthTransform:(__n128)a6 timestamp:(__n128)a7
{
  v29[1] = *MEMORY[0x277D85DE8];
  v27[0] = a6;
  v27[1] = a7;
  v27[2] = a8;
  v27[3] = a9;
  v19 = a12;
  v20 = ADCommonUtils::matrixNxMToArrayColumnFirst<4ul,4ul,simd_float4x4>(v27);
  v28 = *(a1 + 48);
  v29[0] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v22 = [*(a1 + 32) pushData:a11 streamIndex:1 timestamp:v19 pose:v21 calibration:a13 meta:{a2, a3, a4, a5}];
  if (v22)
  {
    [a1 handleMatch:v22];
  }
}

- (ADPearlColorInfieldCalibrationFlow)initWithExecutor:(id)a3 andIntersessionData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = ADPearlColorInfieldCalibrationFlow;
  v9 = [(ADPearlColorInfieldCalibrationFlow *)&v17 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithCString:"inputIrToDepthTransform" encoding:4];
    transformKey = v9->_transformKey;
    v9->_transformKey = v10;

    objc_storeStrong(&v9->_intersessionData, a4);
    objc_storeStrong(&v9->_executor, a3);
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