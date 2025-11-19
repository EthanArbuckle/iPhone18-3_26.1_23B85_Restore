@interface ADMonocularV2PipelineParameters
- (ADMonocularV2PipelineParameters)init;
@end

@implementation ADMonocularV2PipelineParameters

- (ADMonocularV2PipelineParameters)init
{
  v3.receiver = self;
  v3.super_class = ADMonocularV2PipelineParameters;
  result = [(ADPipelineParameters *)&v3 init];
  if (result)
  {
    result->_networkVariantOverride = 0;
  }

  return result;
}

@end