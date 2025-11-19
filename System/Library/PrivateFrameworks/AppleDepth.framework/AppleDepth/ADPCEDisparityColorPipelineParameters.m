@interface ADPCEDisparityColorPipelineParameters
- (ADPCEDisparityColorPipelineParameters)init;
@end

@implementation ADPCEDisparityColorPipelineParameters

- (ADPCEDisparityColorPipelineParameters)init
{
  v3.receiver = self;
  v3.super_class = ADPCEDisparityColorPipelineParameters;
  result = [(ADPipelineParameters *)&v3 init];
  if (result)
  {
    result->_minDisparity = 0.03;
    result->_maxDisparity = 3.4028e38;
    result->_pceBias = NAN;
    result->_outputDisparityBias = NAN;
    result->_trainingWidth = -1;
    result->_disparityScaleForModelZoom = NAN;
  }

  return result;
}

@end