@interface _MLCANENormalizationParameters
+ (id)normalizationUnitParametersWith:(id)with gocParams:(id)params neuronParams:(id)neuronParams;
- (_MLCANENormalizationParameters)initWithNormalizationParams:(id)params gocParams:(id)gocParams neuronParams:(id)neuronParams;
@end

@implementation _MLCANENormalizationParameters

+ (id)normalizationUnitParametersWith:(id)with gocParams:(id)params neuronParams:(id)neuronParams
{
  neuronParamsCopy = neuronParams;
  paramsCopy = params;
  withCopy = with;
  v11 = [[self alloc] initWithNormalizationParams:withCopy gocParams:paramsCopy neuronParams:neuronParamsCopy];

  return v11;
}

- (_MLCANENormalizationParameters)initWithNormalizationParams:(id)params gocParams:(id)gocParams neuronParams:(id)neuronParams
{
  paramsCopy = params;
  gocParamsCopy = gocParams;
  neuronParamsCopy = neuronParams;
  v15.receiver = self;
  v15.super_class = _MLCANENormalizationParameters;
  v12 = [(_MLCANENormalizationParameters *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_normalizationParams, params);
    objc_storeStrong(&v13->_gocParams, gocParams);
    objc_storeStrong(&v13->_neuronParams, neuronParams);
  }

  return v13;
}

@end