@interface _MLCANEArithmeticParameters
+ (id)arithmeticUnitParametersWith:(id)with;
- (_MLCANEArithmeticParameters)initWithArithmeticParams:(id)params;
@end

@implementation _MLCANEArithmeticParameters

+ (id)arithmeticUnitParametersWith:(id)with
{
  withCopy = with;
  v5 = [[self alloc] initWithArithmeticParams:withCopy];

  return v5;
}

- (_MLCANEArithmeticParameters)initWithArithmeticParams:(id)params
{
  paramsCopy = params;
  v9.receiver = self;
  v9.super_class = _MLCANEArithmeticParameters;
  v6 = [(_MLCANEArithmeticParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_arithmeticParams, params);
  }

  return v7;
}

@end