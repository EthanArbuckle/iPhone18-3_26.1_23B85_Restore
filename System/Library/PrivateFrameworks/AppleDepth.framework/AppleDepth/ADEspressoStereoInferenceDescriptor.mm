@interface ADEspressoStereoInferenceDescriptor
- (ADEspressoStereoInferenceDescriptor)initWithNetworkProvider:(id)provider inputColorFormat:(unsigned int)format outputDisparityFormat:(unsigned int)disparityFormat;
@end

@implementation ADEspressoStereoInferenceDescriptor

- (ADEspressoStereoInferenceDescriptor)initWithNetworkProvider:(id)provider inputColorFormat:(unsigned int)format outputDisparityFormat:(unsigned int)disparityFormat
{
  v5 = *&disparityFormat;
  v6 = *&format;
  providerCopy = provider;
  v9 = [providerCopy url];
  layoutNamesDict = [providerCopy layoutNamesDict];
  v21.receiver = self;
  v21.super_class = ADEspressoStereoInferenceDescriptor;
  v11 = [(ADEspressoInferenceDescriptor *)&v21 initWithUrl:v9 layoutNames:layoutNamesDict];

  if (v11)
  {
    v12 = [providerCopy descriptorForBuffer:@"i0" isInput:1 pixelFormat:v6];
    referenceInput = v11->_referenceInput;
    v11->_referenceInput = v12;

    v14 = [providerCopy descriptorForBuffer:@"i1" isInput:1 pixelFormat:v6];
    auxiliaryInput = v11->_auxiliaryInput;
    v11->_auxiliaryInput = v14;

    v16 = [providerCopy descriptorForBuffer:@"d" isInput:0 pixelFormat:v5];
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