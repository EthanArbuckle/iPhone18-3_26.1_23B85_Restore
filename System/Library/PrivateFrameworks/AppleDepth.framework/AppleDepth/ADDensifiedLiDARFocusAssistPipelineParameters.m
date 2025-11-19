@interface ADDensifiedLiDARFocusAssistPipelineParameters
- (id)initForDevice:(id)a3;
@end

@implementation ADDensifiedLiDARFocusAssistPipelineParameters

- (id)initForDevice:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v12.receiver = self;
    v12.super_class = ADDensifiedLiDARFocusAssistPipelineParameters;
    v5 = [(ADPipelineParameters *)&v12 initForDevice:v4];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ADDensifiedLiDARFocusAssistPipelineParameters;
    v5 = [(ADPipelineParameters *)&v13 init];
  }

  v6 = v5;
  if (v5)
  {
    v7 = objc_opt_new();
    pointCloudFilter = v6->_pointCloudFilter;
    v6->_pointCloudFilter = v7;

    LODWORD(v9) = 1061997773;
    [(ADJasperPointCloudFilterParameters *)v6->_pointCloudFilter setConfidenceThreshold:v9];
    [(ADJasperPointCloudFilterParameters *)v6->_pointCloudFilter setMinDistance:0.0];
    LODWORD(v10) = 1203982336;
    [(ADJasperPointCloudFilterParameters *)v6->_pointCloudFilter setMaxDistance:v10];
    [(ADJasperPointCloudFilterParameters *)v6->_pointCloudFilter setShortRangeDepthThreshold:0.0];
    [(ADJasperPointCloudFilterParameters *)v6->_pointCloudFilter setEchoMode:2];
    v6->_confidenceUnits = 3;
  }

  return v6;
}

@end