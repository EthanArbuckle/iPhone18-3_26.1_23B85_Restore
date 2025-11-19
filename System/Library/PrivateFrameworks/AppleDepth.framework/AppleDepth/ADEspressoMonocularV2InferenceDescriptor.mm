@interface ADEspressoMonocularV2InferenceDescriptor
- (ADEspressoMonocularV2InferenceDescriptor)initWithNetworkProvider:(id)a3 inputColorFormat:(unsigned int)a4 disparityFormat:(unsigned int)a5;
@end

@implementation ADEspressoMonocularV2InferenceDescriptor

- (ADEspressoMonocularV2InferenceDescriptor)initWithNetworkProvider:(id)a3 inputColorFormat:(unsigned int)a4 disparityFormat:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v8 = a3;
  v9 = [v8 url];
  v10 = [v8 layoutNamesDict];
  v19.receiver = self;
  v19.super_class = ADEspressoMonocularV2InferenceDescriptor;
  v11 = [(ADEspressoInferenceDescriptor *)&v19 initWithUrl:v9 layoutNames:v10];

  if (v11)
  {
    v12 = [v8 descriptorForBuffer:@"rgb_images" isInput:1 pixelFormat:v6];
    colorInput = v11->_colorInput;
    v11->_colorInput = v12;

    v14 = [v8 descriptorForBuffer:@"prev_prediction" isInput:1 pixelFormat:v5];
    prevDisparityInput = v11->_prevDisparityInput;
    v11->_prevDisparityInput = v14;

    v16 = [v8 descriptorForBuffer:@"output" isInput:0 pixelFormat:v5];
    disparityOutput = v11->_disparityOutput;
    v11->_disparityOutput = v16;
  }

  return v11;
}

@end