@interface ADEspressoStillImageInferenceDescriptor
- (ADEspressoStillImageInferenceDescriptor)initWithNetworkProvider:(id)a3;
@end

@implementation ADEspressoStillImageInferenceDescriptor

- (ADEspressoStillImageInferenceDescriptor)initWithNetworkProvider:(id)a3
{
  v4 = a3;
  v5 = [v4 url];
  v6 = [v4 layoutNamesDict];
  v15.receiver = self;
  v15.super_class = ADEspressoStillImageInferenceDescriptor;
  v7 = [(ADEspressoInferenceDescriptor *)&v15 initWithUrl:v5 layoutNames:v6];

  if (v7)
  {
    v8 = [v4 descriptorForBuffer:@"rgb" isInput:1 pixelFormat:1111970369];
    colorInput = v7->_colorInput;
    v7->_colorInput = v8;

    v10 = [v4 descriptorForBuffer:@"jasper" isInput:1 pixelFormat:1717856627];
    jasperInput = v7->_jasperInput;
    v7->_jasperInput = v10;

    v12 = [v4 descriptorForBuffer:@"depth" isInput:0 pixelFormat:1717856627];
    depthOutput = v7->_depthOutput;
    v7->_depthOutput = v12;
  }

  return v7;
}

@end