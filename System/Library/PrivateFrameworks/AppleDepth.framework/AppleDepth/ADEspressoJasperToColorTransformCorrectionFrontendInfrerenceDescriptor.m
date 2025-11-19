@interface ADEspressoJasperToColorTransformCorrectionFrontendInfrerenceDescriptor
- (ADEspressoJasperToColorTransformCorrectionFrontendInfrerenceDescriptor)initWithNetworkProvider:(id)a3;
@end

@implementation ADEspressoJasperToColorTransformCorrectionFrontendInfrerenceDescriptor

- (ADEspressoJasperToColorTransformCorrectionFrontendInfrerenceDescriptor)initWithNetworkProvider:(id)a3
{
  v4 = a3;
  v5 = [v4 url];
  v6 = [v4 layoutNamesDict];
  v15.receiver = self;
  v15.super_class = ADEspressoJasperToColorTransformCorrectionFrontendInfrerenceDescriptor;
  v7 = [(ADEspressoInferenceDescriptor *)&v15 initWithUrl:v5 layoutNames:v6];

  if (v7)
  {
    v8 = [v4 descriptorForBuffer:@"frontend_input:0" isInput:1 pixelFormat:1278226534];
    featuresInput = v7->_featuresInput;
    v7->_featuresInput = v8;

    v10 = [v4 descriptorForBuffer:@"pred_value:0" isInput:0 pixelFormat:1278226534];
    anglesOutput = v7->_anglesOutput;
    v7->_anglesOutput = v10;

    v12 = [v4 descriptorForBuffer:@"pred_error:0" isInput:0 pixelFormat:1278226534];
    errorsOutput = v7->_errorsOutput;
    v7->_errorsOutput = v12;
  }

  return v7;
}

@end