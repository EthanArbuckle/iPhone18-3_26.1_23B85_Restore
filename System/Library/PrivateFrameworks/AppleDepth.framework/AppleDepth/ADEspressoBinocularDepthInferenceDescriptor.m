@interface ADEspressoBinocularDepthInferenceDescriptor
- (ADEspressoBinocularDepthInferenceDescriptor)initWithNetworkProvider:(id)a3 prioritization:(int64_t)a4 espressoEngine:(unint64_t)a5;
@end

@implementation ADEspressoBinocularDepthInferenceDescriptor

- (ADEspressoBinocularDepthInferenceDescriptor)initWithNetworkProvider:(id)a3 prioritization:(int64_t)a4 espressoEngine:(unint64_t)a5
{
  v8 = a3;
  v9 = [v8 url];
  v10 = [v8 layoutNamesDict];
  v27.receiver = self;
  v27.super_class = ADEspressoBinocularDepthInferenceDescriptor;
  v11 = [(ADEspressoInferenceDescriptor *)&v27 initWithUrl:v9 layoutNames:v10];

  if (v11)
  {
    v12 = a5 - 3 >= 2;
    if (a5 - 3 >= 2)
    {
      v13 = 1717856627;
    }

    else
    {
      v13 = 1751411059;
    }

    if (v12)
    {
      v14 = 1278226534;
    }

    else
    {
      v14 = 1278226536;
    }

    if (a4 == 2)
    {
      v15 = 1111970369;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v8 descriptorForBuffer:@"i1" isInput:1 pixelFormat:v15];
    referenceColorInput = v11->_referenceColorInput;
    v11->_referenceColorInput = v16;

    v18 = [v8 descriptorForBuffer:@"i0" isInput:1 pixelFormat:v15];
    auxiliaryColorInput = v11->_auxiliaryColorInput;
    v11->_auxiliaryColorInput = v18;

    v20 = [v8 descriptorForBuffer:@"/_regression_layer/Add" isInput:0 pixelFormat:v13];
    auxiliaryDisparityOutput = v11->_auxiliaryDisparityOutput;
    v11->_auxiliaryDisparityOutput = v20;

    v22 = [v8 descriptorForBuffer:@"/_regression_layer/Relu_2" isInput:0 pixelFormat:v14];
    auxiliaryConfidenceOutput = v11->_auxiliaryConfidenceOutput;
    v11->_auxiliaryConfidenceOutput = v22;

    v24 = [v8 descriptorForBuffer:@"/Gather" isInput:0 pixelFormat:v14];
    auxiliarySegmentationOutput = v11->_auxiliarySegmentationOutput;
    v11->_auxiliarySegmentationOutput = v24;
  }

  return v11;
}

@end