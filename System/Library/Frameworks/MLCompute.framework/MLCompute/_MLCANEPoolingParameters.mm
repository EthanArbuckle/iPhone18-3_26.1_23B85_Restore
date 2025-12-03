@interface _MLCANEPoolingParameters
+ (id)poolingUnitParametersWith:(id)with;
- (_MLCANEPoolingParameters)initWithPoolingParams:(id)params;
@end

@implementation _MLCANEPoolingParameters

+ (id)poolingUnitParametersWith:(id)with
{
  withCopy = with;
  v5 = [[self alloc] initWithPoolingParams:withCopy];

  return v5;
}

- (_MLCANEPoolingParameters)initWithPoolingParams:(id)params
{
  paramsCopy = params;
  v9.receiver = self;
  v9.super_class = _MLCANEPoolingParameters;
  v6 = [(_MLCANEPoolingParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_poolingParams, params);
  }

  return v7;
}

@end