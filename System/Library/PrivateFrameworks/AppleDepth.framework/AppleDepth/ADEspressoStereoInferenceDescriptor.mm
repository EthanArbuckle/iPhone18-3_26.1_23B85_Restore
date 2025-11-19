@interface ADEspressoStereoInferenceDescriptor
- (ADEspressoStereoInferenceDescriptor)initWithNetworkProvider:(id)a3 inputColorFormat:(unsigned int)a4 outputDisparityFormat:(unsigned int)a5;
@end

@implementation ADEspressoStereoInferenceDescriptor

- (ADEspressoStereoInferenceDescriptor)initWithNetworkProvider:(id)a3 inputColorFormat:(unsigned int)a4 outputDisparityFormat:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v8 = a3;
  v9 = [v8 url];
  v10 = [v8 layoutNamesDict];
  v21.receiver = self;
  v21.super_class = ADEspressoStereoInferenceDescriptor;
  v11 = [(ADEspressoInferenceDescriptor *)&v21 initWithUrl:v9 layoutNames:v10];

  if (v11)
  {
    v12 = [v8 descriptorForBuffer:@"i0" isInput:1 pixelFormat:v6];
    referenceInput = v11->_referenceInput;
    v11->_referenceInput = v12;

    v14 = [v8 descriptorForBuffer:@"i1" isInput:1 pixelFormat:v6];
    auxiliaryInput = v11->_auxiliaryInput;
    v11->_auxiliaryInput = v14;

    v16 = [v8 descriptorForBuffer:@"d" isInput:0 pixelFormat:v5];
    disparityOutput = v11->_disparityOutput;
    v11->_disparityOutput = v16;

    referenceNoiseSigmaInput = v11->_referenceNoiseSigmaInput;
    v11->_referenceNoiseSigmaInput = 0;

    auxiliaryNoiseSigmaInput = v11->_auxiliaryNoiseSigmaInput;
    v11->_auxiliaryNoiseSigmaInput = 0;
  }

  return v11;
}

@end