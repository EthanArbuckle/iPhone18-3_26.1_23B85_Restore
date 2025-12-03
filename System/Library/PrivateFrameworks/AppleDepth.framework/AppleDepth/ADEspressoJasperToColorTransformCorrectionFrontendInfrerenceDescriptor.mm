@interface ADEspressoJasperToColorTransformCorrectionFrontendInfrerenceDescriptor
- (ADEspressoJasperToColorTransformCorrectionFrontendInfrerenceDescriptor)initWithNetworkProvider:(id)provider;
@end

@implementation ADEspressoJasperToColorTransformCorrectionFrontendInfrerenceDescriptor

- (ADEspressoJasperToColorTransformCorrectionFrontendInfrerenceDescriptor)initWithNetworkProvider:(id)provider
{
  providerCopy = provider;
  v5 = [providerCopy url];
  layoutNamesDict = [providerCopy layoutNamesDict];
  v15.receiver = self;
  v15.super_class = ADEspressoJasperToColorTransformCorrectionFrontendInfrerenceDescriptor;
  v7 = [(ADEspressoInferenceDescriptor *)&v15 initWithUrl:v5 layoutNames:layoutNamesDict];

  if (v7)
  {
    v8 = [providerCopy descriptorForBuffer:@"frontend_input:0" isInput:1 pixelFormat:1278226534];
    featuresInput = v7->_featuresInput;
    v7->_featuresInput = v8;

    v10 = [providerCopy descriptorForBuffer:@"pred_value:0" isInput:0 pixelFormat:1278226534];
    anglesOutput = v7->_anglesOutput;
    v7->_anglesOutput = v10;

    v12 = [providerCopy descriptorForBuffer:@"pred_error:0" isInput:0 pixelFormat:1278226534];
    errorsOutput = v7->_errorsOutput;
    v7->_errorsOutput = v12;
  }

  return v7;
}

@end