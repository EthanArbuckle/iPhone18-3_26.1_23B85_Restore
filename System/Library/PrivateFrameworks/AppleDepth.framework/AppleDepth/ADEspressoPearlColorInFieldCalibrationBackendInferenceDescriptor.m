@interface ADEspressoPearlColorInFieldCalibrationBackendInferenceDescriptor
- (ADEspressoPearlColorInFieldCalibrationBackendInferenceDescriptor)initWithNetworkProvider:(id)a3 espressoEngine:(unint64_t)a4 networkFlowType:(int)a5;
@end

@implementation ADEspressoPearlColorInFieldCalibrationBackendInferenceDescriptor

- (ADEspressoPearlColorInFieldCalibrationBackendInferenceDescriptor)initWithNetworkProvider:(id)a3 espressoEngine:(unint64_t)a4 networkFlowType:(int)a5
{
  v5 = *&a5;
  v8 = a3;
  v9 = [v8 url];
  v10 = [v8 layoutNamesDict];
  v29.receiver = self;
  v29.super_class = ADEspressoPearlColorInFieldCalibrationBackendInferenceDescriptor;
  v11 = [(ADEspressoInferenceDescriptor *)&v29 initWithUrl:v9 layoutNames:v10];

  if (v11)
  {
    if (a4 - 3 > 1)
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

        v15 = [v8 descriptorForBuffer:v14 isInput:1 pixelFormat:1278226536];
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
    v22 = [v8 descriptorForBuffer:v19 isInput:1 pixelFormat:1111970369];
    colorInput = v11->_colorInput;
    v11->_colorInput = v22;

    v24 = [v8 descriptorForBuffer:v16 isInput:1 pixelFormat:v21];
    pearlInput = v11->_pearlInput;
    v11->_pearlInput = v24;

    v26 = [v8 descriptorForBuffer:v20 isInput:0 pixelFormat:v21];
    featuresOutput = v11->_featuresOutput;
    v11->_featuresOutput = v26;
  }

  return v11;
}

@end