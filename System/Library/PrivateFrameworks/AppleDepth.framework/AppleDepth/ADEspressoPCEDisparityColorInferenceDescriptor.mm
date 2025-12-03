@interface ADEspressoPCEDisparityColorInferenceDescriptor
- (ADEspressoPCEDisparityColorInferenceDescriptor)initWithNetworkProvider:(id)provider inputColorFormat:(unsigned int)format disparityFormat:(unsigned int)disparityFormat;
@end

@implementation ADEspressoPCEDisparityColorInferenceDescriptor

- (ADEspressoPCEDisparityColorInferenceDescriptor)initWithNetworkProvider:(id)provider inputColorFormat:(unsigned int)format disparityFormat:(unsigned int)disparityFormat
{
  v5 = *&disparityFormat;
  v6 = *&format;
  providerCopy = provider;
  v9 = [providerCopy url];
  layoutNamesDict = [providerCopy layoutNamesDict];
  v26.receiver = self;
  v26.super_class = ADEspressoPCEDisparityColorInferenceDescriptor;
  v11 = [(ADEspressoInferenceDescriptor *)&v26 initWithUrl:v9 layoutNames:layoutNamesDict];

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

    v13 = [providerCopy descriptorForBuffer:@"rgb" isInput:1 pixelFormat:v6];
    colorInput = v11->_colorInput;
    v11->_colorInput = v13;

    v15 = [providerCopy descriptorForBuffer:@"pce" isInput:1 pixelFormat:v5];
    disparityInput = v11->_disparityInput;
    v11->_disparityInput = v15;

    v17 = [providerCopy descriptorForBuffer:@"prev_inv_depth" isInput:1 pixelFormat:v5];
    prevDisparityInput = v11->_prevDisparityInput;
    v11->_prevDisparityInput = v17;

    v19 = [providerCopy descriptorForBuffer:@"prev_flow_features" isInput:1 pixelFormat:v12];
    prevFeaturesInput = v11->_prevFeaturesInput;
    v11->_prevFeaturesInput = v19;

    v21 = [providerCopy descriptorForBuffer:@"inv_depth" isInput:0 pixelFormat:v5];
    disparityOutput = v11->_disparityOutput;
    v11->_disparityOutput = v21;

    v23 = [providerCopy descriptorForBuffer:@"flow_features" isInput:0 pixelFormat:v12];
    featuresOutput = v11->_featuresOutput;
    v11->_featuresOutput = v23;
  }

  return v11;
}

@end