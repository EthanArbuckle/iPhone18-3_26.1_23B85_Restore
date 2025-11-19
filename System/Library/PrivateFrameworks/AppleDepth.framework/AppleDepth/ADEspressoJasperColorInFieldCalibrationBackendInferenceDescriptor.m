@interface ADEspressoJasperColorInFieldCalibrationBackendInferenceDescriptor
- (ADEspressoJasperColorInFieldCalibrationBackendInferenceDescriptor)initWithNetworkProvider:(id)a3 espressoEngine:(unint64_t)a4;
@end

@implementation ADEspressoJasperColorInFieldCalibrationBackendInferenceDescriptor

- (ADEspressoJasperColorInFieldCalibrationBackendInferenceDescriptor)initWithNetworkProvider:(id)a3 espressoEngine:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 url];
  v8 = [v6 layoutNamesDict];
  v18.receiver = self;
  v18.super_class = ADEspressoJasperColorInFieldCalibrationBackendInferenceDescriptor;
  v9 = [(ADEspressoInferenceDescriptor *)&v18 initWithUrl:v7 layoutNames:v8];

  if (v9)
  {
    if (a4 - 3 >= 2)
    {
      v10 = 1717855600;
    }

    else
    {
      v10 = 1751410032;
    }

    v11 = [v6 descriptorForBuffer:@"Backend/inputs/image:0" isInput:1 pixelFormat:1111970369];
    colorInput = v9->_colorInput;
    v9->_colorInput = v11;

    v13 = [v6 descriptorForBuffer:@"Backend/inputs/jasper_image:0" isInput:1 pixelFormat:v10];
    jasperInput = v9->_jasperInput;
    v9->_jasperInput = v13;

    v15 = [v6 descriptorForBuffer:@"backend_output:0" isInput:0 pixelFormat:v10];
    featuresOutput = v9->_featuresOutput;
    v9->_featuresOutput = v15;
  }

  return v9;
}

@end