@interface ADBinocularDepthExecutorParameters
- (id)initForPipeline:(id)pipeline;
@end

@implementation ADBinocularDepthExecutorParameters

- (id)initForPipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  v9.receiver = self;
  v9.super_class = ADBinocularDepthExecutorParameters;
  v5 = [(ADExecutorParameters *)&v9 init];
  if (v5)
  {
    pipelineParameters = [pipelineCopy pipelineParameters];
    pipelineParameters = v5->_pipelineParameters;
    v5->_pipelineParameters = pipelineParameters;

    v5->_coreAnalyticsEventInterval = 60.0;
    v5->_saturationCheckInterval = 5.0;
    v5->_saturationThreshold = 250.0;
  }

  return v5;
}

@end