@interface ADPCEDisparityColorExecutorParameters
- (id)initForInputSource:(unint64_t)source;
- (id)initForPipelineParameters:(id)parameters inputSource:(unint64_t)source;
@end

@implementation ADPCEDisparityColorExecutorParameters

- (id)initForInputSource:(unint64_t)source
{
  v5 = objc_opt_new();
  v6 = [(ADPCEDisparityColorExecutorParameters *)self initForPipelineParameters:v5 inputSource:source];

  return v6;
}

- (id)initForPipelineParameters:(id)parameters inputSource:(unint64_t)source
{
  parametersCopy = parameters;
  v11.receiver = self;
  v11.super_class = ADPCEDisparityColorExecutorParameters;
  v8 = [(ADExecutorParameters *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pipelineParameters, parameters);
    v9->_temporalConsistencyActive = 1;
    v9->_disparityPreprocessingActive = 1;
    v9->_disparityPostprocessingActive = 1;
    v9->_disparityRotation = source == 2;
    v9->_disparityInvalidValue = 0x1FFF;
  }

  return v9;
}

@end