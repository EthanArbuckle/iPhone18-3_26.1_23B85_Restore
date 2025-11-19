@interface ADDensifiedLiDARFocusAssistExecutorParameters
- (ADDensifiedLiDARFocusAssistExecutorParameters)init;
- (ADDensifiedLiDARFocusAssistExecutorParameters)initWithPipelineParameters:(id)a3;
@end

@implementation ADDensifiedLiDARFocusAssistExecutorParameters

- (ADDensifiedLiDARFocusAssistExecutorParameters)initWithPipelineParameters:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ADDensifiedLiDARFocusAssistExecutorParameters;
  v6 = [(ADExecutorParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineParameters, a3);
  }

  return v7;
}

- (ADDensifiedLiDARFocusAssistExecutorParameters)init
{
  v6.receiver = self;
  v6.super_class = ADDensifiedLiDARFocusAssistExecutorParameters;
  v2 = [(ADExecutorParameters *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pipelineParameters = v2->_pipelineParameters;
    v2->_pipelineParameters = v3;

    v2->_autoSetColorROI = 0;
  }

  return v2;
}

@end