@interface ADPCEDisparityColorExecutorParameters
- (id)initForInputSource:(unint64_t)a3;
- (id)initForPipelineParameters:(id)a3 inputSource:(unint64_t)a4;
@end

@implementation ADPCEDisparityColorExecutorParameters

- (id)initForInputSource:(unint64_t)a3
{
  v5 = objc_opt_new();
  v6 = [(ADPCEDisparityColorExecutorParameters *)self initForPipelineParameters:v5 inputSource:a3];

  return v6;
}

- (id)initForPipelineParameters:(id)a3 inputSource:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ADPCEDisparityColorExecutorParameters;
  v8 = [(ADExecutorParameters *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pipelineParameters, a3);
    v9->_temporalConsistencyActive = 1;
    v9->_disparityPreprocessingActive = 1;
    v9->_disparityPostprocessingActive = 1;
    v9->_disparityRotation = a4 == 2;
    v9->_disparityInvalidValue = 0x1FFF;
  }

  return v9;
}

@end