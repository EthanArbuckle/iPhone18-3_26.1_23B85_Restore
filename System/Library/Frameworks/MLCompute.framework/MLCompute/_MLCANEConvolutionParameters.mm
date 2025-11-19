@interface _MLCANEConvolutionParameters
+ (id)convolutionUnitParametersWith:(id)a3 biasParams:(id)a4 neuronParams:(id)a5;
- (_MLCANEConvolutionParameters)initWithConvolutionParams:(id)a3 biasParams:(id)a4 neuronParams:(id)a5;
@end

@implementation _MLCANEConvolutionParameters

+ (id)convolutionUnitParametersWith:(id)a3 biasParams:(id)a4 neuronParams:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithConvolutionParams:v10 biasParams:v9 neuronParams:v8];

  return v11;
}

- (_MLCANEConvolutionParameters)initWithConvolutionParams:(id)a3 biasParams:(id)a4 neuronParams:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _MLCANEConvolutionParameters;
  v12 = [(_MLCANEConvolutionParameters *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_convolutionParams, a3);
    objc_storeStrong(&v13->_biasParams, a4);
    objc_storeStrong(&v13->_neuronParams, a5);
  }

  return v13;
}

@end