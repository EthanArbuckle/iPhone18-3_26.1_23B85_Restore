@interface _MLCANEUpsampleParameters
+ (id)upsampleUnitParametersWith:(id)a3 scaleFactorX:(float)a4 scaleFactorY:(float)a5;
- (_MLCANEUpsampleParameters)initWithUpsampleParams:(id)a3 scaleFactorX:(float)a4 scaleFactorY:(float)a5;
@end

@implementation _MLCANEUpsampleParameters

+ (id)upsampleUnitParametersWith:(id)a3 scaleFactorX:(float)a4 scaleFactorY:(float)a5
{
  v8 = a3;
  v9 = [a1 alloc];
  *&v10 = a4;
  *&v11 = a5;
  v12 = [v9 initWithUpsampleParams:v8 scaleFactorX:v10 scaleFactorY:v11];

  return v12;
}

- (_MLCANEUpsampleParameters)initWithUpsampleParams:(id)a3 scaleFactorX:(float)a4 scaleFactorY:(float)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = _MLCANEUpsampleParameters;
  v10 = [(_MLCANEUpsampleParameters *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_upsampleParams, a3);
    v11->_scaleFactorX = a4;
    v11->_scaleFactorY = a5;
  }

  return v11;
}

@end