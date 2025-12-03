@interface _MLCANEConvolutionParameters
+ (id)convolutionUnitParametersWith:(id)with biasParams:(id)params neuronParams:(id)neuronParams;
- (_MLCANEConvolutionParameters)initWithConvolutionParams:(id)params biasParams:(id)biasParams neuronParams:(id)neuronParams;
@end

@implementation _MLCANEConvolutionParameters

+ (id)convolutionUnitParametersWith:(id)with biasParams:(id)params neuronParams:(id)neuronParams
{
  neuronParamsCopy = neuronParams;
  paramsCopy = params;
  withCopy = with;
  v11 = [[self alloc] initWithConvolutionParams:withCopy biasParams:paramsCopy neuronParams:neuronParamsCopy];

  return v11;
}

- (_MLCANEConvolutionParameters)initWithConvolutionParams:(id)params biasParams:(id)biasParams neuronParams:(id)neuronParams
{
  paramsCopy = params;
  biasParamsCopy = biasParams;
  neuronParamsCopy = neuronParams;
  v15.receiver = self;
  v15.super_class = _MLCANEConvolutionParameters;
  v12 = [(_MLCANEConvolutionParameters *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_convolutionParams, params);
    objc_storeStrong(&v13->_biasParams, biasParams);
    objc_storeStrong(&v13->_neuronParams, neuronParams);
  }

  return v13;
}

@end