@interface _MLCANENeuronParameters
- (_MLCANENeuronParameters)initWithNeuronParams:(id)params neuronType:(int)type;
@end

@implementation _MLCANENeuronParameters

- (_MLCANENeuronParameters)initWithNeuronParams:(id)params neuronType:(int)type
{
  paramsCopy = params;
  v11.receiver = self;
  v11.super_class = _MLCANENeuronParameters;
  v8 = [(_MLCANENeuronParameters *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_neuronParams, params);
    v9->_type = type;
  }

  return v9;
}

@end