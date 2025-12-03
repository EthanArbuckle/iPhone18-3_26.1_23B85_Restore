@interface ADEspressoStereoV2InferenceDescriptor
- (ADEspressoStereoV2InferenceDescriptor)initWithNetworkProvider:(id)provider inputColorFormat:(unsigned int)format outputDisparityFormat:(unsigned int)disparityFormat;
@end

@implementation ADEspressoStereoV2InferenceDescriptor

- (ADEspressoStereoV2InferenceDescriptor)initWithNetworkProvider:(id)provider inputColorFormat:(unsigned int)format outputDisparityFormat:(unsigned int)disparityFormat
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
  v33.receiver = self;
  v33.super_class = ADEspressoStereoV2InferenceDescriptor;
  v13 = [(ADEspressoInferenceDescriptor *)&v33 initWithUrl:v11 layoutNames:layoutNamesDict];

  if (v13)
  {
    v14 = [v9 descriptorForBuffer:@"rgb_ref" isInput:1 pixelFormat:v6];
    referenceInput = v13->_referenceInput;
    v13->_referenceInput = v14;

    v16 = [v9 descriptorForBuffer:@"rgb_aux" isInput:1 pixelFormat:v6];
    auxiliaryInput = v13->_auxiliaryInput;
    v13->_auxiliaryInput = v16;

    v18 = [v9 descriptorForBuffer:@"recurrent" isInput:1 pixelFormat:v10];
    prevDepthFeaturesInput = v13->_prevDepthFeaturesInput;
    v13->_prevDepthFeaturesInput = v18;

    v20 = [v9 descriptorForBuffer:@"flow_matching_x4" isInput:1 pixelFormat:v10];
    prevColorFeaturesInput = v13->_prevColorFeaturesInput;
    v13->_prevColorFeaturesInput = v20;

    v22 = [v9 descriptorForBuffer:@"temporal_smoothness_k1" isInput:1 pixelFormat:v10];
    temporalSmoothingCurrentFeaturesRatioMinInput = v13->_temporalSmoothingCurrentFeaturesRatioMinInput;
    v13->_temporalSmoothingCurrentFeaturesRatioMinInput = v22;

    v24 = [v9 descriptorForBuffer:@"temporal_smoothness_k2" isInput:1 pixelFormat:v10];
    temporalSmoothingPreviousFeaturesRatioMinInput = v13->_temporalSmoothingPreviousFeaturesRatioMinInput;
    v13->_temporalSmoothingPreviousFeaturesRatioMinInput = v24;

    v26 = [v9 descriptorForBuffer:@"out_pred" isInput:0 pixelFormat:v5];
    disparityOutput = v13->_disparityOutput;
    v13->_disparityOutput = v26;

    v28 = [v9 descriptorForBuffer:@"out_recurrent" isInput:0 pixelFormat:v10];
    depthFeaturesOutput = v13->_depthFeaturesOutput;
    v13->_depthFeaturesOutput = v28;

    v30 = [v9 descriptorForBuffer:@"out_flow_matching_x4" isInput:0 pixelFormat:v10];
    colorFeaturesOutput = v13->_colorFeaturesOutput;
    v13->_colorFeaturesOutput = v30;
  }

  return v13;
}

@end