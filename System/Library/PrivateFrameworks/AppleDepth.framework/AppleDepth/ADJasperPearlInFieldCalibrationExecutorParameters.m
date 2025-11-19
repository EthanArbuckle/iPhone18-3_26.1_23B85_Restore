@interface ADJasperPearlInFieldCalibrationExecutorParameters
- (ADJasperPearlInFieldCalibrationExecutorParameters)init;
@end

@implementation ADJasperPearlInFieldCalibrationExecutorParameters

- (ADJasperPearlInFieldCalibrationExecutorParameters)init
{
  v7.receiver = self;
  v7.super_class = ADJasperPearlInFieldCalibrationExecutorParameters;
  v2 = [(ADExecutorParameters *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pipelineParameters = v2->_pipelineParameters;
    v2->_pipelineParameters = v3;

    v5 = [(ADExecutorParameters *)v2 logger];
    [(ADJasperPearlInFieldCalibrationPipelineParameters *)v2->_pipelineParameters setLogger:v5];

    [(ADJasperPearlInFieldCalibrationPipelineParameters *)v2->_pipelineParameters setIsReportTelemetry:1];
  }

  return v2;
}

@end