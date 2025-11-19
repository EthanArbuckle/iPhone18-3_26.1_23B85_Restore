@interface ADEspressoJasperToColorTransformCorrectionBackendInfrerenceDescriptor
- (ADEspressoJasperToColorTransformCorrectionBackendInfrerenceDescriptor)initWithNetworkProvider:(id)a3;
@end

@implementation ADEspressoJasperToColorTransformCorrectionBackendInfrerenceDescriptor

- (ADEspressoJasperToColorTransformCorrectionBackendInfrerenceDescriptor)initWithNetworkProvider:(id)a3
{
  v4 = a3;
  v5 = [v4 url];
  v6 = [v4 layoutNamesDict];
  v15.receiver = self;
  v15.super_class = ADEspressoJasperToColorTransformCorrectionBackendInfrerenceDescriptor;
  v7 = [(ADEspressoInferenceDescriptor *)&v15 initWithUrl:v5 layoutNames:v6];

  if (v7)
  {
    v8 = [v4 descriptorForBuffer:@"Backend/inputs/image:0" isInput:1 pixelFormat:1111970369];
    colorInput = v7->_colorInput;
    v7->_colorInput = v8;

    v10 = [v4 descriptorForBuffer:@"Backend/inputs/jasper_image:0" isInput:1 pixelFormat:1717855600];
    jasperInput = v7->_jasperInput;
    v7->_jasperInput = v10;

    v12 = [v4 descriptorForBuffer:@"backend_output:0" isInput:0 pixelFormat:1278226534];
    featuresOutput = v7->_featuresOutput;
    v7->_featuresOutput = v12;
  }

  return v7;
}

@end