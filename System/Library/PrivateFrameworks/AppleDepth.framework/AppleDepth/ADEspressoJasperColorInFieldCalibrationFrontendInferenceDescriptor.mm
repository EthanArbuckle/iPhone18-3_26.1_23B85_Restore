@interface ADEspressoJasperColorInFieldCalibrationFrontendInferenceDescriptor
- (ADEspressoJasperColorInFieldCalibrationFrontendInferenceDescriptor)initWithNetworkProvider:(id)a3 espressoEngine:(unint64_t)a4;
@end

@implementation ADEspressoJasperColorInFieldCalibrationFrontendInferenceDescriptor

- (ADEspressoJasperColorInFieldCalibrationFrontendInferenceDescriptor)initWithNetworkProvider:(id)a3 espressoEngine:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 url];
  v8 = [v6 layoutNamesDict];
  v26.receiver = self;
  v26.super_class = ADEspressoJasperColorInFieldCalibrationFrontendInferenceDescriptor;
  v9 = [(ADEspressoInferenceDescriptor *)&v26 initWithUrl:v7 layoutNames:v8];

  if (v9)
  {
    if (a4 - 3 >= 2)
    {
      v10 = 1278226534;
    }

    else
    {
      v10 = 1278226536;
    }

    v11 = [v6 descriptorForBuffer:@"frontend_input:0" isInput:1 pixelFormat:v10];
    featuresInput = v9->_featuresInput;
    v9->_featuresInput = v11;

    v13 = [v6 descriptorForBuffer:@"pred_rotx:0" isInput:0 pixelFormat:v10];
    rotationXOutput = v9->_rotationXOutput;
    v9->_rotationXOutput = v13;

    v15 = [v6 descriptorForBuffer:@"pred_roty:0" isInput:0 pixelFormat:v10];
    rotationYOutput = v9->_rotationYOutput;
    v9->_rotationYOutput = v15;

    v17 = [v6 descriptorForBuffer:@"pred_error_rotx:0" isInput:0 pixelFormat:v10];
    errorXOutput = v9->_errorXOutput;
    v9->_errorXOutput = v17;

    v19 = [v6 descriptorForBuffer:@"pred_error_roty:0" isInput:0 pixelFormat:v10];
    errorYOutput = v9->_errorYOutput;
    v9->_errorYOutput = v19;

    v21 = [v6 descriptorForBuffer:@"pred_rotz:0" isInput:0 pixelFormat:v10];
    rotationZOutput = v9->_rotationZOutput;
    v9->_rotationZOutput = v21;

    v23 = [v6 descriptorForBuffer:@"pred_error_rotz:0" isInput:0 pixelFormat:v10];
    errorZOutput = v9->_errorZOutput;
    v9->_errorZOutput = v23;
  }

  return v9;
}

@end