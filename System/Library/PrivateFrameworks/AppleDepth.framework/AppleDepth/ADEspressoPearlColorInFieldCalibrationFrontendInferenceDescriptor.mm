@interface ADEspressoPearlColorInFieldCalibrationFrontendInferenceDescriptor
- (ADEspressoPearlColorInFieldCalibrationFrontendInferenceDescriptor)initWithNetworkProvider:(id)provider espressoEngine:(unint64_t)engine networkFlowType:(int)type;
@end

@implementation ADEspressoPearlColorInFieldCalibrationFrontendInferenceDescriptor

- (ADEspressoPearlColorInFieldCalibrationFrontendInferenceDescriptor)initWithNetworkProvider:(id)provider espressoEngine:(unint64_t)engine networkFlowType:(int)type
{
  v5 = *&type;
  providerCopy = provider;
  v9 = [providerCopy url];
  layoutNamesDict = [providerCopy layoutNamesDict];
  v35.receiver = self;
  v35.super_class = ADEspressoPearlColorInFieldCalibrationFrontendInferenceDescriptor;
  v11 = [(ADEspressoInferenceDescriptor *)&v35 initWithUrl:v9 layoutNames:layoutNamesDict];

  if (v11)
  {
    if (engine - 3 >= 2)
    {
      v12 = 1278226534;
    }

    else
    {
      v12 = 1278226536;
    }

    rotationZOutput = v11->_rotationZOutput;
    v11->_rotationZOutput = 0;

    errorZOutput = v11->_errorZOutput;
    v11->_errorZOutput = 0;

    if ([ADPearlColorInFieldCalibrationPipeline isZUsedFor:v5])
    {
      v15 = [providerCopy descriptorForBuffer:@"rotz" isInput:0 pixelFormat:v12];
      v16 = v11->_rotationZOutput;
      v11->_rotationZOutput = v15;

      v17 = [providerCopy descriptorForBuffer:@"stdz" isInput:0 pixelFormat:v12];
      v18 = v11->_errorZOutput;
      v11->_errorZOutput = v17;

      v19 = @"stdy";
      v20 = @"stdx";
      v21 = @"roty";
      v22 = @"rotx";
      v23 = @"feat_vec_tb";
    }

    else
    {
      v19 = @"pred_error_roty:0";
      v20 = @"pred_error_rotx:0";
      v21 = @"pred_roty:0";
      v22 = @"pred_rotx:0";
      v23 = @"frontend_input:0";
    }

    v24 = [providerCopy descriptorForBuffer:v23 isInput:1 pixelFormat:v12];
    featuresInput = v11->_featuresInput;
    v11->_featuresInput = v24;

    v26 = [providerCopy descriptorForBuffer:v22 isInput:0 pixelFormat:v12];
    rotationXOutput = v11->_rotationXOutput;
    v11->_rotationXOutput = v26;

    v28 = [providerCopy descriptorForBuffer:v21 isInput:0 pixelFormat:v12];
    rotationYOutput = v11->_rotationYOutput;
    v11->_rotationYOutput = v28;

    v30 = [providerCopy descriptorForBuffer:v20 isInput:0 pixelFormat:v12];
    errorXOutput = v11->_errorXOutput;
    v11->_errorXOutput = v30;

    v32 = [providerCopy descriptorForBuffer:v19 isInput:0 pixelFormat:v12];
    errorYOutput = v11->_errorYOutput;
    v11->_errorYOutput = v32;
  }

  return v11;
}

@end