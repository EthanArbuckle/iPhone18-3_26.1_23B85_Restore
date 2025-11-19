@interface _MLCANEArithmeticParameters
+ (id)arithmeticUnitParametersWith:(id)a3;
- (_MLCANEArithmeticParameters)initWithArithmeticParams:(id)a3;
@end

@implementation _MLCANEArithmeticParameters

+ (id)arithmeticUnitParametersWith:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithArithmeticParams:v4];

  return v5;
}

- (_MLCANEArithmeticParameters)initWithArithmeticParams:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _MLCANEArithmeticParameters;
  v6 = [(_MLCANEArithmeticParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_arithmeticParams, a3);
  }

  return v7;
}

@end