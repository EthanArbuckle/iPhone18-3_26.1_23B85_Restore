@interface ADStereoExecutorParameters
- (ADStereoExecutorParameters)init;
- (id)initForPipeline:(id)a3;
@end

@implementation ADStereoExecutorParameters

- (id)initForPipeline:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ADStereoExecutorParameters;
  v5 = [(ADExecutorParameters *)&v9 init];
  if (v5)
  {
    v6 = [v4 pipelineParameters];
    pipelineParameters = v5->_pipelineParameters;
    v5->_pipelineParameters = v6;
  }

  return v5;
}

- (ADStereoExecutorParameters)init
{
  v7.receiver = self;
  v7.super_class = ADStereoExecutorParameters;
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