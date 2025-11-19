@interface ADEspressoDensifiedLiDARFocusAssistInferenceDescriptor
- (ADEspressoDensifiedLiDARFocusAssistInferenceDescriptor)initWithNetworkProvider:(id)a3 espressoEngine:(unint64_t)a4;
@end

@implementation ADEspressoDensifiedLiDARFocusAssistInferenceDescriptor

- (ADEspressoDensifiedLiDARFocusAssistInferenceDescriptor)initWithNetworkProvider:(id)a3 espressoEngine:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 - 3 >= 2)
  {
    v8 = 1717855600;
  }

  else
  {
    v8 = 1751410032;
  }

  if (a4 - 3 >= 2)
  {
    v9 = 1278226534;
  }

  else
  {
    v9 = 1278226536;
  }

  v10 = [v6 url];
  v11 = [v7 layoutNamesDict];
  v22.receiver = self;
  v22.super_class = ADEspressoDensifiedLiDARFocusAssistInferenceDescriptor;
  v12 = [(ADEspressoInferenceDescriptor *)&v22 initWithUrl:v10 layoutNames:v11];

  if (v12)
  {
    v13 = [v7 descriptorForBuffer:@"rgb" isInput:1 pixelFormat:1111970369];
    colorInput = v12->_colorInput;
    v12->_colorInput = v13;

    v15 = [v7 descriptorForBuffer:@"jasper" isInput:1 pixelFormat:v8];
    lidarInput = v12->_lidarInput;
    v12->_lidarInput = v15;

    v17 = [v7 descriptorForBuffer:@"depth" isInput:0 pixelFormat:v8];
    depthOutput = v12->_depthOutput;
    v12->_depthOutput = v17;

    v19 = [v7 descriptorForBuffer:@"confidence" isInput:0 pixelFormat:v9];
    uncertaintyOutput = v12->_uncertaintyOutput;
    v12->_uncertaintyOutput = v19;
  }

  return v12;
}

@end