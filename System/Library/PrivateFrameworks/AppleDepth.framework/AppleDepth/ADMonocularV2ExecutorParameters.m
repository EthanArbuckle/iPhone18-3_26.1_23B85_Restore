@interface ADMonocularV2ExecutorParameters
- (ADMonocularV2ExecutorParameters)init;
- (id)initForPipeline:(id)a3;
@end

@implementation ADMonocularV2ExecutorParameters

- (id)initForPipeline:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ADMonocularV2ExecutorParameters;
  v5 = [(ADExecutorParameters *)&v9 init];
  if (v5)
  {
    v6 = [v4 pipelineParameters];
    pipelineParameters = v5->_pipelineParameters;
    v5->_pipelineParameters = v6;
  }

  return v5;
}

- (ADMonocularV2ExecutorParameters)init
{
  v7.receiver = self;
  v7.super_class = ADMonocularV2ExecutorParameters;
  v2 = [(ADExecutorParameters *)&v7 init];
  if (v2 && (v3 = objc_opt_new(), pipelineParameters = v2->_pipelineParameters, v2->_pipelineParameters = v3, pipelineParameters, !v2->_pipelineParameters))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

@end