@interface _MLCANEConcatParameters
+ (id)concatUnitParametersWith:(id)with;
- (_MLCANEConcatParameters)initWithConcatParams:(id)params;
@end

@implementation _MLCANEConcatParameters

+ (id)concatUnitParametersWith:(id)with
{
  withCopy = with;
  v5 = [[self alloc] initWithConcatParams:withCopy];

  return v5;
}

- (_MLCANEConcatParameters)initWithConcatParams:(id)params
{
  paramsCopy = params;
  v9.receiver = self;
  v9.super_class = _MLCANEConcatParameters;
  v6 = [(_MLCANEConcatParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_concatParams, params);
  }

  return v7;
}

@end