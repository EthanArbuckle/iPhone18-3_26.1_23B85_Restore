@interface ADStereoPipelineParameters
- (ADStereoPipelineParameters)init;
@end

@implementation ADStereoPipelineParameters

- (ADStereoPipelineParameters)init
{
  v3.receiver = self;
  v3.super_class = ADStereoPipelineParameters;
  result = [(ADPipelineParameters *)&v3 init];
  if (result)
  {
    result->_networkVariantOverride = 0;
  }

  return result;
}

@end