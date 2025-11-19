@interface ADPearlColorInFieldCalibrationExecutorParameters
- (ADPearlColorInFieldCalibrationExecutorParameters)init;
- (ADPearlColorInFieldCalibrationExecutorParameters)initWithPipelineParameters:(id)a3;
- (id)initForPipeline:(id)a3;
@end

@implementation ADPearlColorInFieldCalibrationExecutorParameters

- (id)initForPipeline:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ADPearlColorInFieldCalibrationExecutorParameters;
  v5 = [(ADExecutorParameters *)&v9 init];
  if (v5)
  {
    v6 = [v4 pipelineParameters];
    pipelineParameters = v5->_pipelineParameters;
    v5->_pipelineParameters = v6;
  }

  v5->_reportTelemetry = 1;

  return v5;
}

- (ADPearlColorInFieldCalibrationExecutorParameters)initWithPipelineParameters:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ADPearlColorInFieldCalibrationExecutorParameters;
  v6 = [(ADExecutorParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineParameters, a3);
  }

  v7->_reportTelemetry = 1;

  return v7;
}

- (ADPearlColorInFieldCalibrationExecutorParameters)init
{
  v6.receiver = self;
  v6.super_class = ADPearlColorInFieldCalibrationExecutorParameters;
  v2 = [(ADExecutorParameters *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ADPearlColorInFieldCalibrationPipelineParameters);
    pipelineParameters = v2->_pipelineParameters;
    v2->_pipelineParameters = v3;
  }

  return v2;
}

@end