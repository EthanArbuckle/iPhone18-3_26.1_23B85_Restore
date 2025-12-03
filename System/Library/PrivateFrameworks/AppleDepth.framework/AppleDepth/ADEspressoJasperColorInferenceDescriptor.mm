@interface ADEspressoJasperColorInferenceDescriptor
- (ADEspressoJasperColorInferenceDescriptor)initWithNetworkProvider:(id)provider;
@end

@implementation ADEspressoJasperColorInferenceDescriptor

- (ADEspressoJasperColorInferenceDescriptor)initWithNetworkProvider:(id)provider
{
  providerCopy = provider;
  v5 = [providerCopy url];
  layoutNamesDict = [providerCopy layoutNamesDict];
  v18.receiver = self;
  v18.super_class = ADEspressoJasperColorInferenceDescriptor;
  v7 = [(ADEspressoInferenceDescriptor *)&v18 initWithUrl:v5 layoutNames:layoutNamesDict];

  if (v7)
  {
    v8 = [providerCopy descriptorForBuffer:@"rgb" isInput:1 pixelFormat:1111970369];
    colorInput = v7->_colorInput;
    v7->_colorInput = v8;

    v10 = [providerCopy descriptorForBuffer:@"jasper" isInput:1 pixelFormat:1717855600];
    jasperInput = v7->_jasperInput;
    v7->_jasperInput = v10;

    v12 = [providerCopy descriptorForBuffer:@"depth" isInput:0 pixelFormat:1717855600];
    depthOutput = v7->_depthOutput;
    v7->_depthOutput = v12;

    v14 = [providerCopy descriptorForBuffer:@"confidence" isInput:0 pixelFormat:1278226534];
    confidenceOutput = v7->_confidenceOutput;
    v7->_confidenceOutput = v14;

    alphaMapOutput = v7->_alphaMapOutput;
    v7->_alphaMapOutput = 0;
  }

  return v7;
}

@end