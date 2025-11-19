@interface ADEspressoPCEDisparityColorInferenceDescriptor
- (ADEspressoPCEDisparityColorInferenceDescriptor)initWithNetworkProvider:(id)a3 inputColorFormat:(unsigned int)a4 disparityFormat:(unsigned int)a5;
@end

@implementation ADEspressoPCEDisparityColorInferenceDescriptor

- (ADEspressoPCEDisparityColorInferenceDescriptor)initWithNetworkProvider:(id)a3 inputColorFormat:(unsigned int)a4 disparityFormat:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v8 = a3;
  v9 = [v8 url];
  v10 = [v8 layoutNamesDict];
  v26.receiver = self;
  v26.super_class = ADEspressoPCEDisparityColorInferenceDescriptor;
  v11 = [(ADEspressoInferenceDescriptor *)&v26 initWithUrl:v9 layoutNames:v10];

  if (v11)
  {
    if (v5 == 1751411059)
    {
      v12 = 1278226536;
    }

    else
    {
      v12 = 1278226534;
    }

    v13 = [v8 descriptorForBuffer:@"rgb" isInput:1 pixelFormat:v6];
    colorInput = v11->_colorInput;
    v11->_colorInput = v13;

    v15 = [v8 descriptorForBuffer:@"pce" isInput:1 pixelFormat:v5];
    disparityInput = v11->_disparityInput;
    v11->_disparityInput = v15;

    v17 = [v8 descriptorForBuffer:@"prev_inv_depth" isInput:1 pixelFormat:v5];
    prevDisparityInput = v11->_prevDisparityInput;
    v11->_prevDisparityInput = v17;

    v19 = [v8 descriptorForBuffer:@"prev_flow_features" isInput:1 pixelFormat:v12];
    prevFeaturesInput = v11->_prevFeaturesInput;
    v11->_prevFeaturesInput = v19;

    v21 = [v8 descriptorForBuffer:@"inv_depth" isInput:0 pixelFormat:v5];
    disparityOutput = v11->_disparityOutput;
    v11->_disparityOutput = v21;

    v23 = [v8 descriptorForBuffer:@"flow_features" isInput:0 pixelFormat:v12];
    featuresOutput = v11->_featuresOutput;
    v11->_featuresOutput = v23;
  }

  return v11;
}

@end