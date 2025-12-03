@interface ADEspressoJasperToColorTransformCorrectionBackendInfrerenceDescriptor
- (ADEspressoJasperToColorTransformCorrectionBackendInfrerenceDescriptor)initWithNetworkProvider:(id)provider;
@end

@implementation ADEspressoJasperToColorTransformCorrectionBackendInfrerenceDescriptor

- (ADEspressoJasperToColorTransformCorrectionBackendInfrerenceDescriptor)initWithNetworkProvider:(id)provider
{
  providerCopy = provider;
  v5 = [providerCopy url];
  layoutNamesDict = [providerCopy layoutNamesDict];
  v15.receiver = self;
  v15.super_class = ADEspressoJasperToColorTransformCorrectionBackendInfrerenceDescriptor;
  v7 = [(ADEspressoInferenceDescriptor *)&v15 initWithUrl:v5 layoutNames:layoutNamesDict];

  if (v7)
  {
    v8 = [providerCopy descriptorForBuffer:@"Backend/inputs/image:0" isInput:1 pixelFormat:1111970369];
    colorInput = v7->_colorInput;
    v7->_colorInput = v8;

    v10 = [providerCopy descriptorForBuffer:@"Backend/inputs/jasper_image:0" isInput:1 pixelFormat:1717855600];
    jasperInput = v7->_jasperInput;
    v7->_jasperInput = v10;

    v12 = [providerCopy descriptorForBuffer:@"backend_output:0" isInput:0 pixelFormat:1278226534];
    featuresOutput = v7->_featuresOutput;
    v7->_featuresOutput = v12;
  }

  return v7;
}

@end