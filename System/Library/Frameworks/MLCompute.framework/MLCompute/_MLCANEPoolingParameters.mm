@interface _MLCANEPoolingParameters
+ (id)poolingUnitParametersWith:(id)a3;
- (_MLCANEPoolingParameters)initWithPoolingParams:(id)a3;
@end

@implementation _MLCANEPoolingParameters

+ (id)poolingUnitParametersWith:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPoolingParams:v4];

  return v5;
}

- (_MLCANEPoolingParameters)initWithPoolingParams:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _MLCANEPoolingParameters;
  v6 = [(_MLCANEPoolingParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_poolingParams, a3);
  }

  return v7;
}

@end