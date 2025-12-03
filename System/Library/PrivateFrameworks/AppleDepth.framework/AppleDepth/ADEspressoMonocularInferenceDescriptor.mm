@interface ADEspressoMonocularInferenceDescriptor
- (ADEspressoMonocularInferenceDescriptor)initWithNetworkProvider:(id)provider;
@end

@implementation ADEspressoMonocularInferenceDescriptor

- (ADEspressoMonocularInferenceDescriptor)initWithNetworkProvider:(id)provider
{
  providerCopy = provider;
  v5 = [providerCopy url];
  layoutNamesDict = [providerCopy layoutNamesDict];
  v13.receiver = self;
  v13.super_class = ADEspressoMonocularInferenceDescriptor;
  v7 = [(ADEspressoInferenceDescriptor *)&v13 initWithUrl:v5 layoutNames:layoutNamesDict];

  if (v7)
  {
    v8 = [providerCopy descriptorForBuffer:@"image" isInput:1 pixelFormat:1111970369];
    colorInput = v7->_colorInput;
    v7->_colorInput = v8;

    v10 = [providerCopy descriptorForBuffer:@"prediction" isInput:0 pixelFormat:1717855600];
    depthOutput = v7->_depthOutput;
    v7->_depthOutput = v10;
  }

  return v7;
}

@end