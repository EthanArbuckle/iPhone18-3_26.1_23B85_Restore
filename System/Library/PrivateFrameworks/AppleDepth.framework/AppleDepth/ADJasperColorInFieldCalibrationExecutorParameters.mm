@interface ADJasperColorInFieldCalibrationExecutorParameters
- (ADJasperColorInFieldCalibrationExecutorParameters)init;
- (ADJasperColorInFieldCalibrationExecutorParameters)initWithPipelineParameters:(id)parameters;
- (id)initForDevice:(id)device;
@end

@implementation ADJasperColorInFieldCalibrationExecutorParameters

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ADJasperColorInFieldCalibrationExecutorParameters;
  v5 = [(ADExecutorParameters *)&v9 initForDevice:deviceCopy];
  if (v5)
  {
    v6 = [[ADJasperColorInFieldCalibrationPipelineParameters alloc] initForDevice:deviceCopy];
    v7 = v5[7];
    v5[7] = v6;

    *(v5 + 48) = 1;
  }

  return v5;
}

- (ADJasperColorInFieldCalibrationExecutorParameters)initWithPipelineParameters:(id)parameters
{
  parametersCopy = parameters;
  v9.receiver = self;
  v9.super_class = ADJasperColorInFieldCalibrationExecutorParameters;
  v6 = [(ADExecutorParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineParameters, parameters);
  }

  v7->_reportTelemetry = 1;

  return v7;
}

- (ADJasperColorInFieldCalibrationExecutorParameters)init
{
  v6.receiver = self;
  v6.super_class = ADJasperColorInFieldCalibrationExecutorParameters;
  v2 = [(ADExecutorParameters *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ADJasperColorInFieldCalibrationPipelineParameters);
    pipelineParameters = v2->_pipelineParameters;
    v2->_pipelineParameters = v3;
  }

  return v2;
}

@end