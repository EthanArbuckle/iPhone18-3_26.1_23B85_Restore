@interface _MLCANETransposeParameters
+ (id)transposeUnitParametersWith:(id)with;
- (_MLCANETransposeParameters)initWithTransposeParams:(id)params;
@end

@implementation _MLCANETransposeParameters

+ (id)transposeUnitParametersWith:(id)with
{
  withCopy = with;
  v5 = [[self alloc] initWithTransposeParams:withCopy];

  return v5;
}

- (_MLCANETransposeParameters)initWithTransposeParams:(id)params
{
  paramsCopy = params;
  v9.receiver = self;
  v9.super_class = _MLCANETransposeParameters;
  v6 = [(_MLCANETransposeParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transposeParams, params);
  }

  return v7;
}

@end