@interface _MLCANESoftmaxParameters
+ (id)softmaxUnitParametersWith:(id)with neuronParams:(id)params gocParams:(id)gocParams;
- (_MLCANESoftmaxParameters)initWithSoftmaxParams:(id)params neuronParams:(id)neuronParams gocParams:(id)gocParams;
@end

@implementation _MLCANESoftmaxParameters

+ (id)softmaxUnitParametersWith:(id)with neuronParams:(id)params gocParams:(id)gocParams
{
  gocParamsCopy = gocParams;
  paramsCopy = params;
  withCopy = with;
  v11 = [[self alloc] initWithSoftmaxParams:withCopy neuronParams:paramsCopy gocParams:gocParamsCopy];

  return v11;
}

- (_MLCANESoftmaxParameters)initWithSoftmaxParams:(id)params neuronParams:(id)neuronParams gocParams:(id)gocParams
{
  paramsCopy = params;
  neuronParamsCopy = neuronParams;
  gocParamsCopy = gocParams;
  v15.receiver = self;
  v15.super_class = _MLCANESoftmaxParameters;
  v12 = [(_MLCANESoftmaxParameters *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_softmaxParams, params);
    objc_storeStrong(&v13->_neuronParams, neuronParams);
    objc_storeStrong(&v13->_gocParams, gocParams);
  }

  return v13;
}

@end