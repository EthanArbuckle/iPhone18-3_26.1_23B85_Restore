@interface ADMonocularExecutorParameters
- (id)initForPipeline:(id)a3;
@end

@implementation ADMonocularExecutorParameters

- (id)initForPipeline:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ADMonocularExecutorParameters;
  v5 = [(ADExecutorParameters *)&v9 init];
  if (v5)
  {
    v6 = [v4 pipelineParameters];
    pipelineParameters = v5->_pipelineParameters;
    v5->_pipelineParameters = v6;
  }

  return v5;
}

@end