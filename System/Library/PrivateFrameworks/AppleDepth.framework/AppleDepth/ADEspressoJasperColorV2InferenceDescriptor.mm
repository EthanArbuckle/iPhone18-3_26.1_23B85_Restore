@interface ADEspressoJasperColorV2InferenceDescriptor
- (ADEspressoJasperColorV2InferenceDescriptor)initWithNetworkProvider:(id)provider espressoEngine:(unint64_t)engine lidarType:(unint64_t)type;
@end

@implementation ADEspressoJasperColorV2InferenceDescriptor

- (ADEspressoJasperColorV2InferenceDescriptor)initWithNetworkProvider:(id)provider espressoEngine:(unint64_t)engine lidarType:(unint64_t)type
{
  providerCopy = provider;
  v9 = providerCopy;
  if (engine - 3 >= 2)
  {
    v10 = 1717855600;
  }

  else
  {
    v10 = 1751410032;
  }

  if (engine - 3 >= 2)
  {
    v11 = 1278226534;
  }

  else
  {
    v11 = 1278226536;
  }

  v12 = [providerCopy url];
  layoutNamesDict = [v9 layoutNamesDict];
  v36.receiver = self;
  v36.super_class = ADEspressoJasperColorV2InferenceDescriptor;
  v14 = [(ADEspressoInferenceDescriptor *)&v36 initWithUrl:v12 layoutNames:layoutNamesDict];

  if (v14)
  {
    v15 = [v9 descriptorForBuffer:@"rgb" isInput:1 pixelFormat:1111970369];
    colorInput = v14->_colorInput;
    v14->_colorInput = v15;

    if (type == 1)
    {
      v17 = [v9 descriptorForBuffer:@"prev_rgb" isInput:1 pixelFormat:1111970369];
      v18 = @"prev_depth";
      v19 = v10;
    }

    else
    {
      v17 = [v9 descriptorForBuffer:@"prev_rgb_features" isInput:1 pixelFormat:v11];
      v18 = @"prev_depth_features";
      v19 = v11;
    }

    prevColorInput = v14->_prevColorInput;
    v14->_prevColorInput = v17;

    v21 = [v9 descriptorForBuffer:v18 isInput:1 pixelFormat:v19];
    prevDepthInput = v14->_prevDepthInput;
    v14->_prevDepthInput = v21;

    v23 = [v9 descriptorForBuffer:@"jasper" isInput:1 pixelFormat:v10];
    jasperInput = v14->_jasperInput;
    v14->_jasperInput = v23;

    v25 = [v9 descriptorForBuffer:@"prev_conf" isInput:1 pixelFormat:v11];
    prevUncertaintyInput = v14->_prevUncertaintyInput;
    v14->_prevUncertaintyInput = v25;

    v27 = [v9 descriptorForBuffer:@"depth" isInput:0 pixelFormat:v10];
    depthOutput = v14->_depthOutput;
    v14->_depthOutput = v27;

    v29 = [v9 descriptorForBuffer:@"confidence" isInput:0 pixelFormat:v11];
    uncertaintyOutput = v14->_uncertaintyOutput;
    v14->_uncertaintyOutput = v29;

    v31 = [v9 descriptorForBuffer:@"depth_features" isInput:0 pixelFormat:v11];
    depthFeaturesOutput = v14->_depthFeaturesOutput;
    v14->_depthFeaturesOutput = v31;

    v33 = [v9 descriptorForBuffer:@"rgb_features" isInput:0 pixelFormat:v11];
    colorFeaturesOutput = v14->_colorFeaturesOutput;
    v14->_colorFeaturesOutput = v33;
  }

  return v14;
}

@end