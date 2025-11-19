@interface _MLCANENeuronParameters
- (_MLCANENeuronParameters)initWithNeuronParams:(id)a3 neuronType:(int)a4;
@end

@implementation _MLCANENeuronParameters

- (_MLCANENeuronParameters)initWithNeuronParams:(id)a3 neuronType:(int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _MLCANENeuronParameters;
  v8 = [(_MLCANENeuronParameters *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_neuronParams, a3);
    v9->_type = a4;
  }

  return v9;
}

@end