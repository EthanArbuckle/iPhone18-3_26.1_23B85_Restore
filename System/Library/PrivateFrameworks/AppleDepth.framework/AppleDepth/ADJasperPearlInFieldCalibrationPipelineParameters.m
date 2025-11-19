@interface ADJasperPearlInFieldCalibrationPipelineParameters
- (ADJasperPearlInFieldCalibrationPipelineParameters)init;
@end

@implementation ADJasperPearlInFieldCalibrationPipelineParameters

- (ADJasperPearlInFieldCalibrationPipelineParameters)init
{
  v12.receiver = self;
  v12.super_class = ADJasperPearlInFieldCalibrationPipelineParameters;
  v2 = [(ADJasperPearlInFieldCalibrationPipelineParameters *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_stepsToExecute = 4;
    v2->_skipISF = 0;
    v4 = objc_opt_new();
    pointCloudFilterParameters = v3->_pointCloudFilterParameters;
    v3->_pointCloudFilterParameters = v4;

    LODWORD(v6) = 1061997773;
    [(ADJasperPointCloudFilterParameters *)v3->_pointCloudFilterParameters setConfidenceThreshold:v6];
    [(ADJasperPointCloudFilterParameters *)v3->_pointCloudFilterParameters setEchoMode:0];
    LODWORD(v7) = 1167867904;
    [(ADJasperPointCloudFilterParameters *)v3->_pointCloudFilterParameters setMaxDistance:v7];
    LODWORD(v8) = 1143930880;
    [(ADJasperPointCloudFilterParameters *)v3->_pointCloudFilterParameters setMinDistance:v8];
    v9 = objc_opt_new();
    pointCloudAggregationParameters = v3->_pointCloudAggregationParameters;
    v3->_pointCloudAggregationParameters = v9;

    [(ADAggregationParameters *)v3->_pointCloudAggregationParameters setAggregationSize:4];
    [(ADAggregationParameters *)v3->_pointCloudAggregationParameters setMaxPointCloudAge:1.0];
  }

  return v3;
}

@end