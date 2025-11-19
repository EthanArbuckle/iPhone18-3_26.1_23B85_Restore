@interface _MLCANESliceParameters
+ (id)sliceUnitParametersWith:(id)a3;
- (_MLCANESliceParameters)initWithSliceParams:(id)a3;
@end

@implementation _MLCANESliceParameters

+ (id)sliceUnitParametersWith:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSliceParams:v4];

  return v5;
}

- (_MLCANESliceParameters)initWithSliceParams:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _MLCANESliceParameters;
  v6 = [(_MLCANESliceParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sliceParams, a3);
  }

  return v7;
}

@end