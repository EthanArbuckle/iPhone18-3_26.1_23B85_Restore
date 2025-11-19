@interface _MLCANEReductionParameters
+ (id)reductionUnitParametersWith:(id)a3;
- (_MLCANEReductionParameters)initWithReductionParams:(id)a3;
@end

@implementation _MLCANEReductionParameters

+ (id)reductionUnitParametersWith:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithReductionParams:v4];

  return v5;
}

- (_MLCANEReductionParameters)initWithReductionParams:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _MLCANEReductionParameters;
  v6 = [(_MLCANEReductionParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reductionParams, a3);
  }

  return v7;
}

@end