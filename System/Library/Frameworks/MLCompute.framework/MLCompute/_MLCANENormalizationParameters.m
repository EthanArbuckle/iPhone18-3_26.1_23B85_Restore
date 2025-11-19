@interface _MLCANENormalizationParameters
+ (id)normalizationUnitParametersWith:(id)a3 gocParams:(id)a4 neuronParams:(id)a5;
- (_MLCANENormalizationParameters)initWithNormalizationParams:(id)a3 gocParams:(id)a4 neuronParams:(id)a5;
@end

@implementation _MLCANENormalizationParameters

+ (id)normalizationUnitParametersWith:(id)a3 gocParams:(id)a4 neuronParams:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithNormalizationParams:v10 gocParams:v9 neuronParams:v8];

  return v11;
}

- (_MLCANENormalizationParameters)initWithNormalizationParams:(id)a3 gocParams:(id)a4 neuronParams:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _MLCANENormalizationParameters;
  v12 = [(_MLCANENormalizationParameters *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_normalizationParams, a3);
    objc_storeStrong(&v13->_gocParams, a4);
    objc_storeStrong(&v13->_neuronParams, a5);
  }

  return v13;
}

@end