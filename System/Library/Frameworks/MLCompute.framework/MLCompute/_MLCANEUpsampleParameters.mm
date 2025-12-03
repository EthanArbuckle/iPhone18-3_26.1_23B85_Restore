@interface _MLCANEUpsampleParameters
+ (id)upsampleUnitParametersWith:(id)with scaleFactorX:(float)x scaleFactorY:(float)y;
- (_MLCANEUpsampleParameters)initWithUpsampleParams:(id)params scaleFactorX:(float)x scaleFactorY:(float)y;
@end

@implementation _MLCANEUpsampleParameters

+ (id)upsampleUnitParametersWith:(id)with scaleFactorX:(float)x scaleFactorY:(float)y
{
  withCopy = with;
  v9 = [self alloc];
  *&v10 = x;
  *&v11 = y;
  v12 = [v9 initWithUpsampleParams:withCopy scaleFactorX:v10 scaleFactorY:v11];

  return v12;
}

- (_MLCANEUpsampleParameters)initWithUpsampleParams:(id)params scaleFactorX:(float)x scaleFactorY:(float)y
{
  paramsCopy = params;
  v13.receiver = self;
  v13.super_class = _MLCANEUpsampleParameters;
  v10 = [(_MLCANEUpsampleParameters *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_upsampleParams, params);
    v11->_scaleFactorX = x;
    v11->_scaleFactorY = y;
  }

  return v11;
}

@end