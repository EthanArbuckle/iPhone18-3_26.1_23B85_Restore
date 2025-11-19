@interface ADEspressoMonocularStillsInferenceDescriptor
- (ADEspressoMonocularStillsInferenceDescriptor)initWithNetworkProvider:(id)a3;
@end

@implementation ADEspressoMonocularStillsInferenceDescriptor

- (ADEspressoMonocularStillsInferenceDescriptor)initWithNetworkProvider:(id)a3
{
  v4 = a3;
  v5 = [v4 url];
  v6 = [v4 layoutNamesDict];
  v13.receiver = self;
  v13.super_class = ADEspressoMonocularStillsInferenceDescriptor;
  v7 = [(ADEspressoInferenceDescriptor *)&v13 initWithUrl:v5 layoutNames:v6];

  if (v7)
  {
    v8 = [v4 descriptorForBuffer:@"rgb" isInput:1 pixelFormat:1111970369];
    colorInput = v7->_colorInput;
    v7->_colorInput = v8;

    v10 = [v4 descriptorForBuffer:@"pred_inv_depth_x1" isInput:0 pixelFormat:1751411059];
    disparityOutput = v7->_disparityOutput;
    v7->_disparityOutput = v10;
  }

  return v7;
}

@end