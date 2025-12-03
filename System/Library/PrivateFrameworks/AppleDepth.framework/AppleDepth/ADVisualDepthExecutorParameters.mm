@interface ADVisualDepthExecutorParameters
- (id)initForPipeline:(id)pipeline;
@end

@implementation ADVisualDepthExecutorParameters

- (id)initForPipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  v9.receiver = self;
  v9.super_class = ADVisualDepthExecutorParameters;
  v5 = [(ADExecutorParameters *)&v9 init];
  if (v5)
  {
    pipelineParameters = [pipelineCopy pipelineParameters];
    pipelineParameters = v5->_pipelineParameters;
    v5->_pipelineParameters = pipelineParameters;
  }

  return v5;
}

@end