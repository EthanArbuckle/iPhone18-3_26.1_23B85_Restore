@interface _MLCANESliceParameters
+ (id)sliceUnitParametersWith:(id)with;
- (_MLCANESliceParameters)initWithSliceParams:(id)params;
@end

@implementation _MLCANESliceParameters

+ (id)sliceUnitParametersWith:(id)with
{
  withCopy = with;
  v5 = [[self alloc] initWithSliceParams:withCopy];

  return v5;
}

- (_MLCANESliceParameters)initWithSliceParams:(id)params
{
  paramsCopy = params;
  v9.receiver = self;
  v9.super_class = _MLCANESliceParameters;
  v6 = [(_MLCANESliceParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sliceParams, params);
  }

  return v7;
}

@end