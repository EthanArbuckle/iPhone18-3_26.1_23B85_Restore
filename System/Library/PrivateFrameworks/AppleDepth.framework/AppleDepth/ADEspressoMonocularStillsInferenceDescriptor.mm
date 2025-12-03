@interface ADEspressoMonocularStillsInferenceDescriptor
- (ADEspressoMonocularStillsInferenceDescriptor)initWithNetworkProvider:(id)provider;
@end

@implementation ADEspressoMonocularStillsInferenceDescriptor

- (ADEspressoMonocularStillsInferenceDescriptor)initWithNetworkProvider:(id)provider
{
  providerCopy = provider;
  v5 = [providerCopy url];
  layoutNamesDict = [providerCopy layoutNamesDict];
  v13.receiver = self;
  v13.super_class = ADEspressoMonocularStillsInferenceDescriptor;
  v7 = [(ADEspressoInferenceDescriptor *)&v13 initWithUrl:v5 layoutNames:layoutNamesDict];

  if (v7)
  {
    v8 = [providerCopy descriptorForBuffer:@"rgb" isInput:1 pixelFormat:1111970369];
    colorInput = v7->_colorInput;
    v7->_colorInput = v8;

    v10 = [providerCopy descriptorForBuffer:@"pred_inv_depth_x1" isInput:0 pixelFormat:1751411059];
    disparityOutput = v7->_disparityOutput;
    v7->_disparityOutput = v10;
  }

  return v7;
}

@end