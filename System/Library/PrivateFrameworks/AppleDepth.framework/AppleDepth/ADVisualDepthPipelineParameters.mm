@interface ADVisualDepthPipelineParameters
- (ADVisualDepthPipelineParameters)init;
@end

@implementation ADVisualDepthPipelineParameters

- (ADVisualDepthPipelineParameters)init
{
  v3.receiver = self;
  v3.super_class = ADVisualDepthPipelineParameters;
  return [(ADPipelineParameters *)&v3 init];
}

@end