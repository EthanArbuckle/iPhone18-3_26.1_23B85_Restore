@interface ADEspressoJasperColorInFieldCalibrationBackendInferenceDescriptor
- (ADEspressoJasperColorInFieldCalibrationBackendInferenceDescriptor)initWithNetworkProvider:(id)provider espressoEngine:(unint64_t)engine;
@end

@implementation ADEspressoJasperColorInFieldCalibrationBackendInferenceDescriptor

- (ADEspressoJasperColorInFieldCalibrationBackendInferenceDescriptor)initWithNetworkProvider:(id)provider espressoEngine:(unint64_t)engine
{
  providerCopy = provider;
  v7 = [providerCopy url];
  layoutNamesDict = [providerCopy layoutNamesDict];
  v18.receiver = self;
  v18.super_class = ADEspressoJasperColorInFieldCalibrationBackendInferenceDescriptor;
  v9 = [(ADEspressoInferenceDescriptor *)&v18 initWithUrl:v7 layoutNames:layoutNamesDict];

  if (v9)
  {
    if (engine - 3 >= 2)
    {
      v10 = 1717855600;
    }

    else
    {
      v10 = 1751410032;
    }

    v11 = [providerCopy descriptorForBuffer:@"Backend/inputs/image:0" isInput:1 pixelFormat:1111970369];
    colorInput = v9->_colorInput;
    v9->_colorInput = v11;

    v13 = [providerCopy descriptorForBuffer:@"Backend/inputs/jasper_image:0" isInput:1 pixelFormat:v10];
    jasperInput = v9->_jasperInput;
    v9->_jasperInput = v13;

    v15 = [providerCopy descriptorForBuffer:@"backend_output:0" isInput:0 pixelFormat:v10];
    featuresOutput = v9->_featuresOutput;
    v9->_featuresOutput = v15;
  }

  return v9;
}

@end