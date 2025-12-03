@interface ADEspressoStillImageInferenceDescriptor
- (ADEspressoStillImageInferenceDescriptor)initWithNetworkProvider:(id)provider;
@end

@implementation ADEspressoStillImageInferenceDescriptor

- (ADEspressoStillImageInferenceDescriptor)initWithNetworkProvider:(id)provider
{
  providerCopy = provider;
  v5 = [providerCopy url];
  layoutNamesDict = [providerCopy layoutNamesDict];
  v15.receiver = self;
  v15.super_class = ADEspressoStillImageInferenceDescriptor;
  v7 = [(ADEspressoInferenceDescriptor *)&v15 initWithUrl:v5 layoutNames:layoutNamesDict];

  if (v7)
  {
    v8 = [providerCopy descriptorForBuffer:@"rgb" isInput:1 pixelFormat:1111970369];
    colorInput = v7->_colorInput;
    v7->_colorInput = v8;

    v10 = [providerCopy descriptorForBuffer:@"jasper" isInput:1 pixelFormat:1717856627];
    jasperInput = v7->_jasperInput;
    v7->_jasperInput = v10;

    v12 = [providerCopy descriptorForBuffer:@"depth" isInput:0 pixelFormat:1717856627];
    depthOutput = v7->_depthOutput;
    v7->_depthOutput = v12;
  }

  return v7;
}

@end