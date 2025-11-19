@interface ADBinocularDepthPipelineParameters
- (ADBinocularDepthPipelineParameters)init;
@end

@implementation ADBinocularDepthPipelineParameters

- (ADBinocularDepthPipelineParameters)init
{
  v3.receiver = self;
  v3.super_class = ADBinocularDepthPipelineParameters;
  result = [(ADPipelineParameters *)&v3 init];
  if (result)
  {
    result->_confidenceUnits = 0;
    result->_rectifiedCameraFieldOfViewWidth = 1.4661;
    result->_rectifiedCameraFieldOfViewHeight = 1.4661;
  }

  return result;
}

@end