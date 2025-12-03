@interface _MLCANEReductionParameters
+ (id)reductionUnitParametersWith:(id)with;
- (_MLCANEReductionParameters)initWithReductionParams:(id)params;
@end

@implementation _MLCANEReductionParameters

+ (id)reductionUnitParametersWith:(id)with
{
  withCopy = with;
  v5 = [[self alloc] initWithReductionParams:withCopy];

  return v5;
}

- (_MLCANEReductionParameters)initWithReductionParams:(id)params
{
  paramsCopy = params;
  v9.receiver = self;
  v9.super_class = _MLCANEReductionParameters;
  v6 = [(_MLCANEReductionParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reductionParams, params);
  }

  return v7;
}

@end