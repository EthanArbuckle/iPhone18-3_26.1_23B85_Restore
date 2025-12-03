@interface ADEspressoPearlColorInFieldCalibrationBackendInferenceDescriptor
- (ADEspressoPearlColorInFieldCalibrationBackendInferenceDescriptor)initWithNetworkProvider:(id)provider espressoEngine:(unint64_t)engine networkFlowType:(int)type;
@end

@implementation ADEspressoPearlColorInFieldCalibrationBackendInferenceDescriptor

- (ADEspressoPearlColorInFieldCalibrationBackendInferenceDescriptor)initWithNetworkProvider:(id)provider espressoEngine:(unint64_t)engine networkFlowType:(int)type
{
  v5 = *&type;
  providerCopy = provider;
  v9 = [providerCopy url];
  layoutNamesDict = [providerCopy layoutNamesDict];
  v29.receiver = self;
  v29.super_class = ADEspressoPearlColorInFieldCalibrationBackendInferenceDescriptor;
  v11 = [(ADEspressoInferenceDescriptor *)&v29 initWithUrl:v9 layoutNames:layoutNamesDict];

  if (v11)
  {
    if (engine - 3 > 1)
    {
      v20 = @"backend_output:0";
      v16 = @"Backend/inputs/jasper_image:0";
      v21 = 1717855600;
    }

    else
    {
      pearlMaskInput = v11->_pearlMaskInput;
      v11->_pearlMaskInput = 0;

      if ([ADPearlColorInFieldCalibrationPipeline isPearlMaskExpectedFor:v5])
      {
        v13 = v5 & 0xFFFFFFFE;
        if (v13 == 2)
        {
          v14 = @"mask_b";
        }

        else
        {
          v14 = @"mask";
        }

        v15 = [providerCopy descriptorForBuffer:v14 isInput:1 pixelFormat:1278226536];
        if (v13 == 2)
        {
          v16 = @"depth_input_b";
        }

        else
        {
          v16 = @"depth_input";
        }

        if (v13 == 2)
        {
          v17 = @"image_b";
        }

        else
        {
          v17 = @"image";
        }

        v18 = v11->_pearlMaskInput;
        v11->_pearlMaskInput = v15;

        v19 = v17;
        v20 = @"feat_vec";
        v21 = 1278226536;
        goto LABEL_17;
      }

      v20 = @"backend_output:0";
      v16 = @"Backend/inputs/jasper_image:0";
      v21 = 1751410032;
    }

    v19 = @"Backend/inputs/image:0";
LABEL_17:
    v22 = [providerCopy descriptorForBuffer:v19 isInput:1 pixelFormat:1111970369];
    colorInput = v11->_colorInput;
    v11->_colorInput = v22;

    v24 = [providerCopy descriptorForBuffer:v16 isInput:1 pixelFormat:v21];
    pearlInput = v11->_pearlInput;
    v11->_pearlInput = v24;

    v26 = [providerCopy descriptorForBuffer:v20 isInput:0 pixelFormat:v21];
    featuresOutput = v11->_featuresOutput;
    v11->_featuresOutput = v26;
  }

  return v11;
}

@end