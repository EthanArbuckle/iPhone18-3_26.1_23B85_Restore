@interface ADEspressoMonocularV2InferenceDescriptor
- (ADEspressoMonocularV2InferenceDescriptor)initWithNetworkProvider:(id)provider inputColorFormat:(unsigned int)format disparityFormat:(unsigned int)disparityFormat;
@end

@implementation ADEspressoMonocularV2InferenceDescriptor

- (ADEspressoMonocularV2InferenceDescriptor)initWithNetworkProvider:(id)provider inputColorFormat:(unsigned int)format disparityFormat:(unsigned int)disparityFormat
{
  v5 = *&disparityFormat;
  v6 = *&format;
  providerCopy = provider;
  v9 = [providerCopy url];
  layoutNamesDict = [providerCopy layoutNamesDict];
  v19.receiver = self;
  v19.super_class = ADEspressoMonocularV2InferenceDescriptor;
  v11 = [(ADEspressoInferenceDescriptor *)&v19 initWithUrl:v9 layoutNames:layoutNamesDict];

  if (v11)
  {
    v12 = [providerCopy descriptorForBuffer:@"rgb_images" isInput:1 pixelFormat:v6];
    colorInput = v11->_colorInput;
    v11->_colorInput = v12;

    v14 = [providerCopy descriptorForBuffer:@"prev_prediction" isInput:1 pixelFormat:v5];
    prevDisparityInput = v11->_prevDisparityInput;
    v11->_prevDisparityInput = v14;

    v16 = [providerCopy descriptorForBuffer:@"output" isInput:0 pixelFormat:v5];
    disparityOutput = v11->_disparityOutput;
    v11->_disparityOutput = v16;
  }

  return v11;
}

@end