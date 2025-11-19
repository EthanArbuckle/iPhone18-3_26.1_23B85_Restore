@interface _MLCANESoftmaxParameters
+ (id)softmaxUnitParametersWith:(id)a3 neuronParams:(id)a4 gocParams:(id)a5;
- (_MLCANESoftmaxParameters)initWithSoftmaxParams:(id)a3 neuronParams:(id)a4 gocParams:(id)a5;
@end

@implementation _MLCANESoftmaxParameters

+ (id)softmaxUnitParametersWith:(id)a3 neuronParams:(id)a4 gocParams:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithSoftmaxParams:v10 neuronParams:v9 gocParams:v8];

  return v11;
}

- (_MLCANESoftmaxParameters)initWithSoftmaxParams:(id)a3 neuronParams:(id)a4 gocParams:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _MLCANESoftmaxParameters;
  v12 = [(_MLCANESoftmaxParameters *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_softmaxParams, a3);
    objc_storeStrong(&v13->_neuronParams, a4);
    objc_storeStrong(&v13->_gocParams, a5);
  }

  return v13;
}

@end