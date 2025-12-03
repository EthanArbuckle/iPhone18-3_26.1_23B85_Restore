@interface ADEspressoMonocularVideoInferenceDescriptor
- (ADEspressoMonocularVideoInferenceDescriptor)initWithNetworkProvider:(id)provider inputColorFormat:(unsigned int)format outputDisparityFormat:(unsigned int)disparityFormat;
@end

@implementation ADEspressoMonocularVideoInferenceDescriptor

- (ADEspressoMonocularVideoInferenceDescriptor)initWithNetworkProvider:(id)provider inputColorFormat:(unsigned int)format outputDisparityFormat:(unsigned int)disparityFormat
{
  v5 = *&disparityFormat;
  v6 = *&format;
  providerCopy = provider;
  v9 = providerCopy;
  if (v5 == 1751411059)
  {
    v10 = 1278226536;
  }

  else
  {
    v10 = 1278226534;
  }

  v11 = [providerCopy url];
  layoutNamesDict = [v9 layoutNamesDict];
  v29.receiver = self;
  v29.super_class = ADEspressoMonocularVideoInferenceDescriptor;
  v13 = [(ADEspressoInferenceDescriptor *)&v29 initWithUrl:v11 layoutNames:layoutNamesDict];

  if (v13)
  {
    v14 = [v9 descriptorForBuffer:@"rgb" isInput:1 pixelFormat:v6];
    colorInput = v13->_colorInput;
    v13->_colorInput = v14;

    v16 = [v9 descriptorForBuffer:@"recurrent" isInput:1 pixelFormat:v10];
    prevDepthFeaturesInput = v13->_prevDepthFeaturesInput;
    v13->_prevDepthFeaturesInput = v16;

    v18 = [v9 descriptorForBuffer:@"flow_matching" isInput:1 pixelFormat:v10];
    prevColorFeaturesInput = v13->_prevColorFeaturesInput;
    v13->_prevColorFeaturesInput = v18;

    v20 = [v9 descriptorForBuffer:@"scale" isInput:1 pixelFormat:v10];
    outputScale = v13->_outputScale;
    v13->_outputScale = v20;

    v22 = [v9 descriptorForBuffer:@"cvx_controller_regression_layer_x1_prediction" isInput:0 pixelFormat:v5];
    disparityOutput = v13->_disparityOutput;
    v13->_disparityOutput = v22;

    v24 = [v9 descriptorForBuffer:@"out_recurrent" isInput:0 pixelFormat:v10];
    depthFeaturesOutput = v13->_depthFeaturesOutput;
    v13->_depthFeaturesOutput = v24;

    v26 = [v9 descriptorForBuffer:@"out_flow_matching" isInput:0 pixelFormat:v10];
    colorFeaturesOutput = v13->_colorFeaturesOutput;
    v13->_colorFeaturesOutput = v26;
  }

  return v13;
}

@end