@interface ADEspressoJasperColorInferenceDescriptor
- (ADEspressoJasperColorInferenceDescriptor)initWithNetworkProvider:(id)a3;
@end

@implementation ADEspressoJasperColorInferenceDescriptor

- (ADEspressoJasperColorInferenceDescriptor)initWithNetworkProvider:(id)a3
{
  v4 = a3;
  v5 = [v4 url];
  v6 = [v4 layoutNamesDict];
  v18.receiver = self;
  v18.super_class = ADEspressoJasperColorInferenceDescriptor;
  v7 = [(ADEspressoInferenceDescriptor *)&v18 initWithUrl:v5 layoutNames:v6];

  if (v7)
  {
    v8 = [v4 descriptorForBuffer:@"rgb" isInput:1 pixelFormat:1111970369];
    colorInput = v7->_colorInput;
    v7->_colorInput = v8;

    v10 = [v4 descriptorForBuffer:@"jasper" isInput:1 pixelFormat:1717855600];
    jasperInput = v7->_jasperInput;
    v7->_jasperInput = v10;

    v12 = [v4 descriptorForBuffer:@"depth" isInput:0 pixelFormat:1717855600];
    depthOutput = v7->_depthOutput;
    v7->_depthOutput = v12;

    v14 = [v4 descriptorForBuffer:@"confidence" isInput:0 pixelFormat:1278226534];
    confidenceOutput = v7->_confidenceOutput;
    v7->_confidenceOutput = v14;

    alphaMapOutput = v7->_alphaMapOutput;
    v7->_alphaMapOutput = 0;
  }

  return v7;
}

@end